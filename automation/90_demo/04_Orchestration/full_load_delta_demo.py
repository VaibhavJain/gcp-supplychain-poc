#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

import os

from airflow import models
from airflow.operators.python import PythonOperator, BranchPythonOperator
from datetime import datetime
from airflow.operators.dummy import DummyOperator
from airflow.providers.google.cloud.operators.datafusion import (CloudDataFusionStartPipelineOperator)
from airflow.providers.google.cloud.sensors.datafusion import CloudDataFusionPipelineStateSensor
from airflow.utils import dates
from airflow.utils.state import State
from airflow.utils.dates import days_ago
from random import randint

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2020, 9, 20),
    'email': ['paragkapoor@google.com'],
    'email_on_failure': True,
    'email_on_retry': False,
    'schedule_interval': '@daily',
    'retries': 1
    #'retry_delay': timedelta(seconds=5),
}

with models.DAG(
    "Final-Demo-Delta",
    schedule_interval=None,
    start_date=dates.days_ago(1),
    catchup=False

) as dag:

    Pipeline1 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0ASSET1_delta',
        instance_name="sap-odp-test1-demo",
        runtime_args={'SAPSystemNumber': '00', 'SAPLanguage': 'EN', 'SAPClient': '100', 'SAPApplicationServerHost': '10.132.0.114', 'Dataset': 'finalodpsap'},
        namespace='default',
        asynchronous=True,
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="0ASSET1"
    )

    Pipeline2 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0PLANT1_delta',
        instance_name="sap-odp-test1-demo",
        runtime_args={'SAPSystemNumber': '00', 'SAPLanguage': 'EN', 'SAPClient': '100', 'SAPApplicationServerHost': '10.132.0.114', 'Dataset': 'finalodpsap'},
        namespace='default',
        asynchronous=True,
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="0BP_DEF_ADDRESS1"
    )

    Pipecheck1 = CloudDataFusionPipelineStateSensor(
        task_id="pipeline_state_sensor",
        pipeline_name='0ASSET1_delta',
        pipeline_id=Pipeline1.output,
        expected_statuses=set(["COMPLETED"]),
        instance_name='sap-odp-test1-demo',
        location='europe-west1',
        gcp_conn_id = 'google_cloud_default',
        dag = dag,
   )



Pipeline1 >> Pipecheck1 >> Pipeline2

