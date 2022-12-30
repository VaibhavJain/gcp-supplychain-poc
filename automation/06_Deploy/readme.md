# **Deployment & Streaming Pipelines With BQ Dataset's**

09.09.2021

Parag Kapoor, Pradeep C.H <Content update required>

**SCM Twin**

# **Overview**

The document is to present the creation of the Bigquery dataset with
Deployment and Streaming of the Pipeline through Terraform and Shell Script.

# **Goals**

1.  Create BQ Dataset's

2.  Deploy Pipelines

3.  Streaming of Pipelines

# **Pre-Requisites** 

1.  Google cloud SDK

2.  Terraform 1.0.4

3.  google-beta-commands

Project Details: sap-adapters

Organization: Google

**Tools: Run locally from gcloud SDK, Terraform**

**Step 1:** Login to cloud console and validate the datafusion name

![](.//media/image3.png)
    
**Step 2:** Create a script for bq Dataset
creation, Deployment, and Streaming Call For Pipeline (deploy.tf)

resource \"google_bigquery_dataset\" \"dev-cs\" {

dataset_id = \"scmtwin_script\"

default_partition_expiration_ms = 0

delete_contents_on_destroy = false

description = \"SCM Dataset POC\"

friendly_name = \"scmtwint\"

labels = {

\"env\" = \"default\"

}

location = \"EU\"

project = \"sap-adapter\"

access {

role = \"OWNER\"

user_by_email = \"paragkapoor\@google.com\"

}

access {

role = \"OWNER\"

special_group = \"projectOwners\"

}

access {

role = \"READER\"

special_group = \"projectReaders\"

}

access {

role = \"WRITER\"

special_group = \"projectWriters\"

}

}

resource \"null_resource\" \"deploy\" {

\# \...

provisioner \"local-exec\" {

command = \"/bin/bash start.sh\"

}

}

**Notes**

1.  Set the name of the data set according to the requirements.

2.  Set the Roles as per the requirements.

**Step 3:** Create the shell script file the pipeline (start.sh).

gcloud auth login \$userid

gcloud config set project \$ProjectID

export AUTH_TOKEN=\$(gcloud auth print-access-token)

export INSTANCE_ID=cdf-odp-looker-dev-6-4-basic

export CDAP_ENDPOINT=\$(gcloud beta data-fusion instances describe \\

\--location=europe-west1 \\

\--format=\"value(apiEndpoint)\" \\

\${INSTANCE_ID})

curl -X PUT -H \"Authorization: Bearer \${AUTH_TOKEN}\"
\"\${CDAP_ENDPOINT}/v3/namespaces/default/apps/ddimen_pk_poc\" -d
\"@./scl-dev/ACDOCA.json\"

curl -X POST -H \"Authorization: Bearer \${AUTH_TOKEN}\"
\"\${CDAP_ENDPOINT}/v3/namespaces/default/apps/ddimention/workflows/DataPipelineWorkflow/start\"
-d \'{\"SAPApplicationServerHost\"=\"\$SAPApplicationServerHost\",
\"SAPSystemNumber\"=\"\$SAPSystemNumber\",
\"SAPLanguage\"=\"\$SAPLanguage\", \"SAPClient\"=\"\$SAPClient\",
\"NumberOfRowsToFetch\"=\"\$NumberOfRowsToFetch\",
\"Dataset\"=\"scmtwin_script\"}\'

**Notes**

Set the appropriate username, Project ID, CDF Instance ID, json with
    > path (download at the time of cloning repo) and Macro's for
    > streaming the pipeline

**Step 4:** Run the scripts from the gcloud SDK.

Files to be validated during the procedure.

1.  deploy.tf

2.  start.sh

**Actions to be executed:**

1.  Terraform Init (To validate the plugin of provider)

2.  Terraform Plan (To validate the execution plan)

3.  Terraform Apply (To execute the plan)

4.  Terraform Destroy (To destroy the created Infrastructure)

**Step 5**: Execute the script

1. Terraform init

![](.//media/image7.png)

2. Terraform plan

![](.//media/image6.png)

3. Terraform apply

![](.//media/image5.png)

4. Verify as below

![](.//media/image4.png)

![](.//media/image2.png)


Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the [Service Specific Terms](https://cloud.google.com/terms/service-terms#general-service-terms). 
