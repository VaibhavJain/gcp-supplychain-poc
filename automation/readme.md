# **SCL - Digital Twin Automation**

This guide describes how to deploy, configure, and run data pipelines that use the CDF and BigQuery. You can use a source for batch-based and delta-based data extraction in Cloud Data Fusion through Operational Data Provisioning (ODP).

It enables bulk data integration from various applications with Cloud Data Fusion. You can configure and execute bulk data transfers from DataSources.

This document guides you to understand the automation structure and the use of it. 

# **Version**

Version 1.0

# **Tools** 

Integrate Tool Github, Terraform, Google Cloud SDK, Shell, and Composer.

# **Folder In sequential use**

-   Before Installation
-   Create CDF Instance
-   Tenant Project Peering
-   Dataproc Profile
-   BigQuery and Pipeline Deploy
-   Orchestration

**Before Installtion**: Setup the pre-requesites for the Automation.

**Create CDF Instance**: Create the new instance on Cloud Data Fusion.

After creating the CDF instance we need to connect to SAP resource. 

To create steps and reuse secure macros, see [Using Secure Keys](https://cdap.atlassian.net/wiki/spaces/DOCS/pages/801767425/Using+Secure+Keys).

**Step 1:**

Create HTTP call executor:

**Method Name:** Put

**URI:** namespaces/default/securekeys/\<mykey>

**Body:**

{

\"description\": \"secure login creds\",

\"data\": \"\<value>\",

\"properties\": {

}

}

![](.//media/image2.png)

**Step 2:**

Call the secure keys in below format:

![](.//media/image5.png)

For more information, see [Using Secure Keys](https://cdap.atlassian.net/wiki/spaces/DOCS/pages/801767425/Using+Secure+Keys).

**Tenant Project Peering**: You can connect the Cloud Data Fusion Instance to GCS Project.

Below are the steps to create the Project Peering:

1.   Information to be collected from the CDF Instance as per the below screenshot.

> ![](.//media/image6.png)
>
> a. Instance ID
>
> b. Region
>
> c. Service Account
>
> d. Tenant Project ID (double underlined)
> 
> e. Orchestration

2.   Open the VPC Peering from the VPC Networks as below.

> ![](.//media/image4.png)

-   Create Peering Connection

> ![](.//media/image3.png)

-   Fill the information as instructed below:

    -   Name (name of the peering network)

    -   VPC Network (select your VPC network used for the SAP)

    -   Select the Peering network as **in another project**.

    -   Project ID of Tenant as collected above.

    -   VPC network name (It consist of instance-id-region)

    -   Check on import and export custom routes

    -   Then click **Create** (it will create the tenant peered network).

**Dataproc Profile**: Create the Dataproc profile for running the pipelines. 

**BigQuery and Pipeline Deploy**: This script helps you to create the BigQuery Dataset and deployment of the Pipelines.

This folder consists of the following two scripts: 
1. Bqdatase.tf (terraform file)
2. Start.sh (shell script to call pipeline api's)
3. Variable.sh
-   Please use gcloud init before using the scripts.

-   Change the dataset name in bqdataset.tf according to the requirement. There are three datasets, one is for data load and other two are for dimensions and facts.

-   Set up the shell file for the execution of the pipelines.

    -   Provide the cloud information

    -   Set the CDF variables

    -   Set the name of the pipeline's

    -   Change the path of the JSON files according to download location

    -   Set the macros as the pipelines

[[l0-staging-full]{.ul}](https://github.com/cloudsufi/scl-twin/tree/master/automation/l0-staging-full)

This folder contains the combine script to run L0 cdf-piplines provided
in repo.

**orchestration**: Run the pipeline as per the schedule.


Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the [Service Specific Terms](https://cloud.google.com/terms/service-terms#general-service-terms).
