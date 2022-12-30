# **Google Composer Pipeline Orchestration**

**SCM Twin**

# **Overview**

The POC is to present the Orchestration of the Pipeline's.

# **Goals**

Deploy workflow to schedule and run the Pipeline's.

# **Specifications**

The Pipeline's must be deployed first before running or scheduling.

Project Details: sap-adapter

Organization: Google

**Tools: Integrate Tool Github and Terraform cloud to deploy the IAC**.

**Step 1**: Login to cloud console page and create/validate the project
ID and access.

![](.//media/image4.png)

**Step 2:** On the left pane of the menu, select **composer**.

![](.//media/image7.png)

**Step 3**: Enable the API and create the new environment with composer 2.

![](.//media/image8.png)

**Step 4**: Create the **Composer** (Apache Airflow) with appropriate
requirements.

**Step 5**: Click **DAGs**. Files provided with the Orchestration folder to
the DAG buckets is uploaded. 

![](.//media/image3.png)

**Step 6**: Now open the Airflow webserver, the task gets assigned as
per the files updated.

![](.//media/image5.png)

**Step 7**: To run the task, press the play button.

Parameters to be set in the file before the uploading.

\'email\': \[\'paragkapoor\@google.com\'\],

schedule_interval=**None**,

Please set email ID for the notifications, and schedule interval.
Please use [[https://crontab.guru/]{.ul}](https://crontab.guru/), if you do not
know how to set the cron job.

Exmp schedule_interval=\'5 4 \* \* \*\',

![](.//media/image2.png)

Pipeline1 = CloudDataFusionStartPipelineOperator(

location=\'europe-west1\',

pipeline_name=\'0ASSET_ATTR_TEXT_asset_subnumber_delta_demo_pk\',

instance_name=\"cdf-odp-looker-dev-6-4-basic\",

runtime_args={\'SAPSystemNumber\': \'00\', \'SAPLanguage\': \'EN\',
\'SAPClient\': \'100\',

\'SAPApplicationServerHost\': \'10.132.0.114\', \'Dataset\':
\'scmtwin_script_Demo\'},

namespace=\'default\',

pipeline_timeout=\'10 \* 60\',

api_version=\'v1beta1\',

gcp_conn_id=\'google_cloud_default\',

dag=dag,

task_id=\"asset_subnumber\"

**Set the pipeline parameters as per the requirements above**

Sample Code as below

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

**import** **os**

**from** **airflow** **import** models

**from** **airflow.operators.python** **import** PythonOperator,
BranchPythonOperator

**from** **datetime** **import** datetime

**from** **airflow.operators.dummy** **import** DummyOperator

**from** **airflow.operators.bash** **import** BashOperator

**from** **airflow.providers.google.cloud.operators.datafusion**
**import** (CloudDataFusionStartPipelineOperator)

**from** **airflow.utils** **import** dates

**from** **airflow.utils.state** **import** State

**from** **airflow.utils.dates** **import** days_ago

**from** **random** **import** randint

default_args = {

\'owner\': \'airflow\',

\'depends_on_past\': **False**,

\'start_date\': datetime(2020, 9, 20),

\'email\': \[\'paragkapoor\@google.com\'\],

\'email_on_failure\': **True**,

\'email_on_retry\': **False**,

\'schedule_interval\': \'\@daily\',

\'retries\': 1

*#\'retry_delay\': timedelta(seconds=5),*

}

**with** models.DAG(

\"pktest_data_fusion_new_test\",

schedule_interval=\'0 7 \* \* \*\',

start_date=dates.days_ago(1),

catchup=**False**

) **as** dag:

start_pipeline_task1 = CloudDataFusionStartPipelineOperator(

location=\'europe-west1\',

pipeline_name=\'Date_Dimension\',

instance_name=\"terraform-scm-twin\",

runtime_args={\'ProjectID\': \'dev-cs-1\',
\'TargetDatasetName\':\'scmtwin_demo1\'},

namespace=\'default\',

pipeline_timeout=\'10 \* 60\',

api_version=\'v1beta1\',

gcp_conn_id=\'google_cloud_default\',

dag=dag,

task_id=\"start_pipeline_async_new\"

)

start_pipeline_task2 = CloudDataFusionStartPipelineOperator(

location=\'europe-west1\',

pipeline_name=\'Date_Dimension_mod\',

instance_name=\"terraform-scm-twin\",

runtime_args={\'ProjectID\': \'dev-cs-1\', \'TargetDatasetName\':
\'scmtwin_demo2\'},

namespace=\'default\',

pipeline_timeout=\'10 \* 60\',

api_version=\'v1beta1\',

gcp_conn_id=\'google_cloud_default\',

dag=dag,

task_id=\"start_pipeline_async_Second\"

)

start_pipeline_task3 = CloudDataFusionStartPipelineOperator(

location=\'europe-west1\',

pipeline_name=\'scltwinsingle\',

instance_name=\"terraform-scm-twin\",

runtime_args={\'ProjectID\': \'dev-cs-1\', \'TargetDatasetName\':
\'scmtwin_demo3\'},

namespace=\'default\',

pipeline_timeout=\'10 \* 60\',

api_version=\'v1beta1\',

gcp_conn_id=\'google_cloud_default\',

dag=dag,

task_id=\"start_pipeline_async_Third\"

)

start_pipeline_task4 = CloudDataFusionStartPipelineOperator(

location=\'europe-west1\',

pipeline_name=\'ddimention\',

instance_name=\"terraform-scm-twin\",

runtime_args={\'ProjectID\': \'dev-cs-1\', \'TargetDatasetName\':
\'scmtwin_demo4\'},

namespace=\'default\',

pipeline_timeout=\'10 \* 60\',

api_version=\'v1beta1\',

gcp_conn_id=\'google_cloud_default\',

dag=dag,

task_id=\"start_pipeline_async_Forth\"

)

start_pipeline_task1 \>\> start_pipeline_task2

\[start_pipeline_task2, start_pipeline_task3\] \>\> start_pipeline_task4

\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

![](.//media/image6.png)

**Observations:**

1.  Composer instance is created.

2.  Pipeline workflow is updated and ready for the run.

Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the [Service Specific Terms](https://cloud.google.com/terms/service-terms#general-service-terms).
