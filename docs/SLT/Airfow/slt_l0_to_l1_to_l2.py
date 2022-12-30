import os
import yaml
import pandas as pd
import re
from datetime import datetime
from airflow.operators.dummy_operator import DummyOperator
from airflow.utils.task_group import TaskGroup

from airflow import models
from airflow.operators.bash import BashOperator
from airflow.providers.google.cloud.operators.bigquery import (
    BigQueryCheckOperator,
    BigQueryCreateEmptyDatasetOperator,
    BigQueryCreateEmptyTableOperator,
    BigQueryDeleteDatasetOperator,
    BigQueryGetDataOperator,
    BigQueryInsertJobOperator,
    BigQueryIntervalCheckOperator,
    BigQueryValueCheckOperator,
)
from airflow.utils.dates import days_ago


FILE_NAME = os.path.join(os.path.dirname(__file__), '/home/airflow/gcs/dags/SLT/slt_l0_raw_staging.yaml')
print(FILE_NAME)
CONFIG_YAML = open(FILE_NAME)
CONFIG = yaml.load(CONFIG_YAML, Loader=yaml.FullLoader)

FILE_L1_DIMENSION=pd.read_csv(os.path.join(os.path.dirname(__file__),'l1_dimension_files.csv'))
FILE_L1_FACTS=pd.read_csv(os.path.join(os.path.dirname(__file__),'l1_fact_files.csv'))

PROJECT_ID = CONFIG['config']['project_id']
SLT_L0_RAW = CONFIG['config']['slt_l0_raw']
SLT_L0_STAGING = CONFIG['config']['slt_l0_staging']
SLT_L1_DIMENSION = CONFIG['config']['slt_l1_dimension']
SLT_L1_FACTS = CONFIG['config']['slt_l1_facts']
SLT_L2_CANONICAL = CONFIG['config']['slt_l2_canonical']
LOCATION = "US"



with models.DAG(
    'slt_l0_to_l1_to_l2',
    schedule_interval='@once',  # Override to match your needs
    start_date=days_ago(1),
    tags=["slt"],
    user_defined_macros={"projectid": PROJECT_ID, "slt_l0_staging": SLT_L0_STAGING, "slt_l1_dimension": SLT_L1_DIMENSION, "slt_l1_facts": SLT_L1_FACTS, "slt_l2_canonical": SLT_L2_CANONICAL},
) as slt_l0_raw_to_staging:
    start=DummyOperator(task_id='START')
    
    end=DummyOperator(task_id='END')
    
    with TaskGroup(group_id='DIMENSION') as tg1:

        job_order=[]
        total_files=len(FILE_L1_DIMENSION)
        i=-1
        v_job_order = None

        for file in FILE_L1_DIMENSION.itertuples():
            sqlfile=file.sql_file_names
            i = i+1
            select_query_job = BigQueryInsertJobOperator(
                task_id=re.sub('[^a-zA-Z0-9]','_',sqlfile),
                configuration={
                    "query": {
                        "query": "{% include 'L1/"+sqlfile+"'%}",
                        "useLegacySql": False,
                    }
                },
                location=LOCATION,
            )
            if i % 6 ==0:
                job_order.append(v_job_order)
                v_job_order = None
                v_job_order = select_query_job
            else:            
                v_job_order = v_job_order >> select_query_job

        job_order.append(v_job_order)


    with TaskGroup(group_id='FACTS') as tg2:

        job_order=[]
        total_files=len(FILE_L1_FACTS)
        i=-1
        v_job_order = None

        for file in FILE_L1_FACTS.itertuples():
            sqlfile=file.sql_file_names
            i = i+1
            select_query_job = BigQueryInsertJobOperator(
                task_id=re.sub('[^a-zA-Z0-9]','_',sqlfile),
                configuration={
                    "query": {
                        "query": "{% include 'L1/"+sqlfile+"'%}",
                        "useLegacySql": False,
                    }
                },
                location=LOCATION,
            )
            if i % 5 ==0:
                job_order.append(v_job_order)
                v_job_order = None
                v_job_order = select_query_job
            else:            
                v_job_order = v_job_order >> select_query_job

        job_order.append(v_job_order)

    with TaskGroup(group_id='CANONICAL') as tg3:

        select_query_job = BigQueryInsertJobOperator(
            task_id="load_caonical",
            configuration={
                "query": {
                    "query": "{% include 'L2/load_l2.sql' %}",
                    "useLegacySql": False,
                }
            },
            location=LOCATION,
        )

        select_query_job

    start >> tg1 >> tg2 >> tg3 >> end

