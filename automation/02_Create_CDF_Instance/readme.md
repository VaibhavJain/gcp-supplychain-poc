# **Create CDF Instance** 

This module handle opinionated Google Cloud Platform Data Fusion instances.

Deploy CDF instance using Terraform.

# **Specifications**

The CDF instance is created along with Instance ID, Private IP allocation, Region, Service Account, Basic/Enterprise/Developer, and enable stack driver logs.

# **Tools** 

Integrate Tool Google Cloud SDK,  Terraform to deploy the **IAC**.

**Step 1** 

Login to cloud console page. Create/validate the project ID and access.

**Step 2** 

Validate the access in IAM to execute the creation of resources from terraform, namely service account will execute the task.

**Step 3** 

Create CDF instance using Terraform.

**Step 4** 

Files to be validated during the procedure.

1.  instance_create.tf

2.  variables.tf

**Actions to be executed:**

1.  Terraform Init (To validate the plugin of provider)

2.  Terraform Plan (To validate the execution plan)

3.  Terraform Apply (To execute the plan)

**Step 5** 

Execute the code using terraform apply.

**Step 6** 

Code executed successfully and CDF instance is created.

**Observations:**

CDF instance created without instance ID - The Instance name sets up Instance ID.

Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the [Service Specific Terms](https://cloud.google.com/terms/service-terms#general-service-terms).

