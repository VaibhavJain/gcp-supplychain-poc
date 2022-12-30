import os
import yaml
import pandas as pd
import re
from datetime import datetime
from airflow.operators.dummy_operator import DummyOperator

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

FILE_LIST=pd.read_csv(os.path.join(os.path.dirname(__file__),'l0_raw_staging_files.csv'))

PROJECT_ID = CONFIG['config']['project_id']
SLT_L0_RAW = CONFIG['config']['slt_l0_raw']
SLT_L0_STAGING = CONFIG['config']['slt_l0_staging']
SLT_L1_DIMENSION = CONFIG['config']['slt_l1_dimension']
SLT_L1_FACTS = CONFIG['config']['slt_l1_facts']
SLT_L2_CANONICAL = CONFIG['config']['slt_l2_canonical']
LOCATION = "US"



with models.DAG(
    'slt_l0_raw_to_staging',
    schedule_interval='@once',  # Override to match your needs
    start_date=days_ago(1),
    tags=["slt"],
    user_defined_macros={"projectid": PROJECT_ID, "slt_l0_raw": SLT_L0_RAW, "slt_l0_staging": SLT_L0_STAGING},
) as slt_l0_raw_to_staging:
    start=DummyOperator(task_id='START')
    
    end=DummyOperator(task_id='END')
    
    job_order=[]
    total_files=len(FILE_LIST)
    i=-1
    v_job_order = None

    for file in FILE_LIST.itertuples():
        sqlfile=file.sql_file_names
        i = i+1
        select_query_job = BigQueryInsertJobOperator(
            task_id=re.sub('[^a-zA-Z0-9]','',sqlfile),
            configuration={
                "query": {
                    "query": "{% include 'L0/"+sqlfile+"'%}",
                    "useLegacySql": False,
                }
            },
            location=LOCATION,
        )
        if i % 10 ==0:
            job_order.append(v_job_order)
            v_job_order = None
            v_job_order = start >> select_query_job
        elif i % 10 ==9:

            v_job_order = v_job_order >> select_query_job >> end 
        else:
            v_job_order = v_job_order >> select_query_job
        
    v_job_order = v_job_order >> end
    job_order.append(v_job_order)

 

job_order
