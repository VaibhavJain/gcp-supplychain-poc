import os

from airflow import models
from airflow.operators.python import PythonOperator, BranchPythonOperator
from datetime import datetime
from airflow.operators.dummy import DummyOperator
from airflow.operators.bash import BashOperator
from airflow.providers.google.cloud.operators.datafusion import (CloudDataFusionStartPipelineOperator)
from airflow.providers.google.cloud.sensors.datafusion import CloudDataFusionPipelineStateSensor
from airflow.utils import dates
from airflow.utils.task_group import TaskGroup
from airflow.utils.state import State
from airflow.utils.dates import days_ago
from random import randint
from airflow.models import Variable

run_args = Variable.get("STAGING_ARGS", deserialize_json=True)
instance_var = Variable.get("INSTANCE", deserialize_json=True)
instance_check_var = Variable.get("PIPE_CHECK", deserialize_json=True)

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

    "Pipeline_Staging_L0_Delta_2",

    schedule_interval=None,

    start_date=dates.days_ago(1),

    catchup=False

) as Pipeline_Staging_L0_Delta_2:
    
    start=DummyOperator(task_id='START')
    
    end=DummyOperator(task_id='END')
    
    with TaskGroup(group_id='Staging_Delta_Group_1') as tg1:
        
        Pipeline1_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0ASSET_ATTR_TEXT_asset_subnumber_delta',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="Asset_Subnumber"
        )

        Pipechk1 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk1",
            pipeline_name='0ASSET_ATTR_TEXT_asset_subnumber_delta',
            pipeline_id=Pipeline1.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )
        
        Pipeline2_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0CUST_COMPC_ATTR_customer_company_data_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="customer_company_data"
        )

        Pipechk2 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk2",
            pipeline_name='0CUST_COMPC_ATTR_customer_company_data_delta_demo_pk',
            pipeline_id=Pipeline2.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name=instance_check_var,
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=dag,
        )
        
'''         Pipeline3_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0CUST_SALES_ATTR_customer_sales_data_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="customer_sales_data"
        )

        Pipechk3 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk3",
            pipeline_name='0CUST_SALES_ATTR_customer_sales_data_delta_demo_pk',
            pipeline_id=Pipeline3.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline4_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0CUSTOMER_ATTR_customer_master_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="customer_master_delta"
        )

        Pipechk4 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk4",
            pipeline_name='0CUSTOMER_ATTR_customer_master_delta_demo_pk',
            pipeline_id=Pipeline4.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline5_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0MAT_ST_LOC_ATTR_material_storage_location_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="material_storage_location"
        )

        Pipechk5 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk5",
            pipeline_name='0MAT_ST_LOC_ATTR_material_storage_location_delta_demo_pk',
            pipeline_id=Pipeline5.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline6_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0MAT_PLANT_ATTR_material_plant_data_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="material_plant_data"
        )

        Pipechk6 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk6",
            pipeline_name='0MAT_PLANT_ATTR_material_plant_data_delta_demo_pk',
            pipeline_id=Pipeline6.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline7_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0MATERIAL_ATTR_material_master_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="material_master_delta"
        )

        Pipechk7 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk7",
            pipeline_name='0MATERIAL_ATTR_material_master_delta_demo_pk',
            pipeline_id=Pipeline7.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline8_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0MATERIAL_TEXT_material_description_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="material_description"
        )

        Pipechk8 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk8",
            pipeline_name='0MATERIAL_TEXT_material_description_delta_demo_pk',
            pipeline_id=Pipeline8.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline9_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0PP_MD_MATERIAL_material_data_source_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="material_data_source"
        )

        Pipechk9 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk9",
            pipeline_name='0PP_MD_MATERIAL_material_data_source_delta_demo_pk',
            pipeline_id=Pipeline9.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline10_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0PLANT_ATTR_plant_master_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="plant_master"
        )

        Pipechk10 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk10",
            pipeline_name='0PLANT_ATTR_plant_master_delta_demo_pk',
            pipeline_id=Pipeline10.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline11_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0VENDOR_ATTR_supply_master_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="supply_master"
        )

        Pipechk11 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk11",
            pipeline_name='0VENDOR_ATTR_supply_master_delta_demo_pk',
            pipeline_id=Pipeline11.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline12_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0BP_DEF_ADDRESS_ATTR_business_partner_address_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="business_partner_address"
        )

        Pipechk12 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk12",
            pipeline_name='0BP_DEF_ADDRESS_ATTR_business_partner_address_delta_demo_pk',
            pipeline_id=Pipeline12.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline13_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0PRODORDER_ATTR_production_orders_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="production_orders"
        )

        Pipechk13 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk13",
            pipeline_name='0PRODORDER_ATTR_production_orders_delta_demo_pk',
            pipeline_id=Pipeline13.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline14_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='0VEN_PURORG_ATTR_supplier_purchasing_organization_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="supplier_purchasing_organization"
        )

        Pipechk14 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk14",
            pipeline_name='0VEN_PURORG_ATTR_supplier_purchasing_organization_delta_demo_pk',
            pipeline_id=Pipeline14.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name='cdf-odp-looker-dev-6-4-basic',
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )
        Pipeline1_delta >> Pipechk1 >> Pipeline2_delta >> Pipechk2 >> Pipeline3_delta >> Pipechk3 >> Pipeline4_delta >> Pipechk4
        Pipeline5_delta >> Pipechk5 >> Pipeline6_delta >> Pipechk6 >> Pipeline7_delta >> Pipechk7 >> Pipeline8_delta >> Pipechk8 >> Pipeline9_delta >> Pipechk9
        Pipeline10_delta >> Pipechk10 >> Pipeline11_delta >> Pipechk11 >> Pipeline12_delta >> Pipechk12 >> Pipeline13_delta >> Pipechk13 >> Pipeline14_delta >> Pipechk14

    with TaskGroup(group_id='Staging_Delta_Group_2') as tg2:
        
        Pipeline15_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='2LIS_03_BF_material_movements_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="material_movements"
        )

        Pipechk15 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk15",
            pipeline_name='2LIS_03_BF_material_movements_delta_demo_pk',
            pipeline_id=Pipeline15.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name=instance_check_var,
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )

        Pipeline16_delta = CloudDataFusionStartPipelineOperator(
            location='europe-west1',
            pipeline_name='2LIS_03_BX_stock_initialization_delta_demo_pk',
            instance_name=instance_var,
            runtime_args=run_args,
            namespace='default',
            pipeline_timeout='10 * 60',
            api_version='v1beta1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
            task_id="Stock_initialization"
        )

        Pipechk16 = CloudDataFusionPipelineStateSensor(
            task_id="Pipe-Chk16",
            pipeline_name='2LIS_03_BX_stock_initialization_delta_demo_pk',
            pipeline_id=Pipeline16.output,
            expected_statuses=set(["COMPLETED"]),
            instance_name=instance_check_var,
            location='europe-west1',
            gcp_conn_id='google_cloud_default',
            dag=Pipeline_Staging_L0_Delta_2,
        )
        
        Pipeline15_delta >> Pipechk15 >> Pipeline16_delta >> Pipechk16 '''