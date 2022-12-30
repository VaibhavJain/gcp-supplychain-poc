import os

from airflow import models
from airflow.operators.python import PythonOperator, BranchPythonOperator
from datetime import datetime
from airflow.operators.dummy import DummyOperator
from airflow.operators.bash import BashOperator
from airflow.providers.google.cloud.operators.datafusion import (CloudDataFusionStartPipelineOperator)
from airflow.utils import dates
from airflow.utils.state import State
from airflow.utils.dates import days_ago
from random import randint
from airflow.models import Variable

run_args = Variable.get("STAGING_ARGS", deserialize_json=True)
instance_var = Variable.get("INSTANCE", deserialize_json=True)

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

    "Pipeline_Staging_L0_Full",

    schedule_interval=None,

    start_date=dates.days_ago(1),

    catchup=False

) as dag:
    
    run_this_first = DummyOperator(
        task_id='Start',
    )
    
    run_this_last = DummyOperator(
        task_id='End',
    )

    Pipeline1 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0ASSET_ATTR_TEXT_asset_subnumber',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Asset_Subnumber"
    )

    Pipeline2 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0BP_DEF_ADDRESS_ATTR_business_partner_address',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Partner_Address"
    )
    Pipeline3 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0CUST_COMPC_ATTR_customer_company_data',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Company_Data"
    )
    Pipeline4 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0CUST_SALES_ATTR_customer_sales_data',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Sales_Data"
    )
    Pipeline5 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0CUSTOMER_ATTR_customer_master',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Master"
    )
    Pipeline6 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0FI_GL_4_general_ledger_line_items',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Line_Items"
    )
    Pipeline7 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0MAT_PLANT_ATTR_material_plant_data',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Material_Plant_Data"
    )
    Pipeline8 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0MAT_ST_LOC_ATTR_material_storage_location',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Storage_Location"
    )
    Pipeline9 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0MATERIAL_ATTR_material_master',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Material_Master"
    )
    Pipeline10 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0MATERIAL_TEXT_material_description',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Material_Description"
    )
    Pipeline11 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0PLANT_ATTR_plant_master',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Plant_Master"
    )
    Pipeline12 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0PP_MD_MATERIAL_material_data_source',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Material_Data_source"
    )
    Pipeline13 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0PRODORDER_ATTR_production_orders',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Production_Orders"
    )
    Pipeline14 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0VEN_PURORG_ATTR_supplier_purchasing_organization',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="purchasing_organization"
    )
    Pipeline15 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='0VENDOR_ATTR_supply_master',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Supply_Master"
    )
    Pipeline16 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_02_HDR_purchasing_header',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Purchasing_Header"
    )
    Pipeline17 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_02_ITM_purchasing_item',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Purchasing_Item"
    )
    Pipeline18 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_03_BF_material_movements',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Material_Movements"
    )
    Pipeline19 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_03_BX_stock_initialization',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Stock_Initialization"
    )
    Pipeline20 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_04_P_MATNR_material_production_planning',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Production_Planning"
    )
    Pipeline21 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_06_INV_invoice_verification_data',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Verification_Data"
    )
    Pipeline22 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_11_VAHDR_sales_document_header',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Document_Header"
    )
    Pipeline23 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_11_VAITM_sales_document_item_delta',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Item_Delta"
    )
    Pipeline24 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_11_VASCL_sales_document_schedule_line',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Schedule_Line"
    )
    Pipeline25 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_11_VASTH_order_header_data',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Order_Header_Data"
    )
    Pipeline26 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_11_VASTI_order_item_data',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Order_Item_Data"
    )
    Pipeline27 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_12_VCHDR_delivery_header',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Delivery_Header"
    )
    Pipeline28 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_12_VCITM_delivery_item',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Delivery_Item"
    )
    Pipeline29 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_12_VCSCL_schedule_line_delivery',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Line_Delivery"
    )
    Pipeline30 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_13_VDHDR_billing_document_header',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Billing_Document_Header"
    )
    Pipeline31 = CloudDataFusionStartPipelineOperator(
        location='europe-west1',
        pipeline_name='2LIS_13_VDITM_billing_document_item',
        instance_name=instance_var,
        runtime_args=run_args,
        namespace='default',
        pipeline_timeout='10 * 60',
        api_version='v1beta1',
        gcp_conn_id='google_cloud_default',
        dag=dag,
        task_id="Billing_Document_Item"
    )

    Pipeline1 >> Pipeline2 >> Pipeline3 >> Pipeline4 >> Pipeline5 >> Pipeline6 >> Pipeline7 >> Pipeline8 >> Pipeline9 >> Pipeline10
    Pipeline11 >> Pipeline12 >> Pipeline13 >> Pipeline14 >> Pipeline15 >> Pipeline16 >> Pipeline17 >> Pipeline18 >> Pipeline19 >> Pipeline20
    Pipeline21 >> Pipeline22 >> Pipeline23 >> Pipeline24 >> Pipeline25 >> Pipeline26 >> Pipeline27 >> Pipeline28 >> Pipeline29 >> Pipeline30 >> Pipeline31
    
    run_this_first >> [Pipeline1, Pipeline11, Pipeline21]
    [Pipeline10, Pipeline20, Pipeline31] >> run_this_last