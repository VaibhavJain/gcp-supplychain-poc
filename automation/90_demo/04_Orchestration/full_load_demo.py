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
    "Final-Demo",
    schedule_interval=None,
    start_date=dates.days_ago(1),
    catchup=False

) as dag:

    Pipeline1 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0ASSET1',
        instance_name="sap-odp-test2-demo",
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
        pipeline_name='0BP_DEF_ADDRESS1',
        instance_name="sap-odp-test2-demo",
        runtime_args={'SAPSystemNumber': '00', 'SAPLanguage': 'EN', 'SAPClient': '100', 'SAPApplicationServerHost': '10.132.0.114', 'Dataset': 'finalodpsap'},
        namespace='default',
        asynchronous=True,
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="0BP_DEF_ADDRESS1"
    )

    Pipecheck1 = CloudDataFusionPipelineStateSensor(
        task_id="pipeline_state_sensor1",
        pipeline_name='0ASSET1',
        pipeline_id=Pipeline1.output,
        expected_statuses=set(["COMPLETED"]),
        instance_name='sap-odp-test2-demo',
        location='europe-west1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
    )

    Pipeline3 = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0PLANT1',
            instance_name="sap-odp-test2-demo",
            runtime_args={'SAPSystemNumber': '00', 'SAPLanguage': 'EN', 'SAPClient': '100',
                          'SAPApplicationServerHost': '10.132.0.114', 'Dataset': 'finalodpsap'},
            namespace='default',
            asynchronous=True,
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=dag,
            task_id="0PLANT1"
    )

    Pipeline4 = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0PP_MD_MATERIAL1',
            instance_name="sap-odp-test2-demo",
            runtime_args={'SAPSystemNumber': '00', 'SAPLanguage': 'EN', 'SAPClient': '100',
                          'SAPApplicationServerHost': '10.132.0.114', 'Dataset': 'finalodpsap'},
            namespace='default',
            api_version='v1beta1',
            asynchronous=True,
            gcp_conn_id='google_cloud_default',
            dag=dag,
            task_id="0PP_MD_MATERIAL1"
    )

    Pipecheck2 = CloudDataFusionPipelineStateSensor(
            task_id="pipeline_state_sensor2",
            pipeline_name='0BP_DEF_ADDRESS1',
            pipeline_id=Pipeline2.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='sap-odp-test2-demo',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=dag,
    )

Pipeline1 >> Pipecheck1 >> Pipeline3
Pipeline2 >> Pipecheck2 >> Pipeline4
