/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "bigquery" {
  source                     = "terraform-google-modules/bigquery/google"
  dataset_id                 = var.dataset
  dataset_name               = var.dataset
  description                = "some description"
  project_id                 = var.project_id
  location                   = "EU"
  delete_contents_on_destroy = var.delete_contents_on_destroy
  tables = [
    {
      table_id           = "company_code_dimension",
      schema             = file("${var.path}/company_code_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "customer_dimension",
      schema             = file("${var.path}/customer_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "customer_sales_org_dimension",
      schema             = file("${var.path}/customer_sales_org_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "delivery_fact",
      schema             = file("${var.path}/delivery_fact.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "inventory_fact",
      schema             = file("${var.path}/inventory_fact.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "material_dimension",
      schema             = file("${var.path}/material_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "plant_dimension",
      schema             = file("${var.path}/plant_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "production_order_fact",
      schema             = file("${var.path}/production_order_fact.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "purchase_order_fact",
      schema             = file("${var.path}/purchase_order_fact.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "sales_order_fact",
      schema             = file("${var.path}/sales_order_fact.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "supplier_dimension",
      schema             = file("${var.path}/supplier_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    },
  {
      table_id           = "supplier_purchase_org_dimension",
      schema             = file("${var.path}/supplier_purchase_org_dimension.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    }
  ]
  dataset_labels = {
    env      = "dev"
    billable = "true"
  }
}
