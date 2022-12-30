# SCM Digital Twin Data Integration in Cloud Data Fusion


# Version

Version 1.0
 
# L1 Layer
# Overview

In this layer we are reading the data from the raw layer tables and creating the data warehouse with Dimensions and facts.
  
  
  ## List of Dimensions and Facts table.

| Dimensions       |
|----------------------|
| material_dimension     |
| plant_dimension        | 
| company_code_dimension   | 
| supplier_dimension      | 
| supplier_purchase_org_dimension      | 
| customer_dimension     | 
| customer_sales_org_dimension     | 

| Facts       | 
|----------------------|
| delivery_fact     |
| inventory_fact        | 
| production_order_fact   | 
| purchase_order_fact      | 
| sales_order_fact      |

Process is developed using the merge query which perform better as both the source and target database using Big Query.
Special care has been taking to see that when we read the data from raw we are getting all the data which need to procesed in one time. So that we will not hit the raw layer multiple time. In all above Dimensions and facts we are maintaining the data in SCD type 2.

> Note: Pipeline which is started with **L1_table_creation** need to run first. This pipeline will create the Dimensions and Facts tables with structure. Make sure that L1_table_creation ran only one time at beginning.

In automation process see that when we are orchestrating all the pipeline which are for dimension run first followed by facts.

One full load for all Dimension and Facts are done the we have to update the **full_delta_indicator** column in the **layer1_audit_table** table other than "F". So that same pipeline will behave as delta load.

Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at
https://cloud.google.com/terms/service-terms#general-service-terms
