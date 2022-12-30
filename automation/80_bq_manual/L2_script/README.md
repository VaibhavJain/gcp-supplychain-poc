# Google Bigquery Basic_bq_dataset Table
The basic_bq example uses the root terraform-google-bigquery module to deploy a single dataset and a table with a basic schema. 

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| delete\_contents\_on\_destroy | (Optional) If set to true, delete all the tables in the dataset when destroying the resource; if tables are present, destroying the resource fails. | `bool` | `null` | no |
| project\_id | Project where the dataset and table are created. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| bigquery\_dataset | Bigquery dataset resource. |
| bigquery\_tables | Map of bigquery table resources being provisioned. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Setup
Update the contents of `terraform.tfvars` to match your test environment.

## Run example
`terraform init`
`terraform plan`
`terraform apply -var-file terraform.tfvars`

Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the [Service Specific Terms](https://cloud.google.com/terms/service-terms#general-service-terms).
