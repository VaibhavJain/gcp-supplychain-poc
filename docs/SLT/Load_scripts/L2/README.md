# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0 staging to L1 Dimensions & facts)
### Version 1.0
### Overview

Use these script to load the L2 layer table by reading the data from the L1/L0 Staging layer. This scripts are have VIEWS query which are use to load the data into L2 layer.

Data sources - such as SAP HANA/SAP ECC by using SLT plugin. Transformations, which sit between inputs and outputs sinks, which are outputs - such as Big Query.
In data integration from [Cloud data fusion using SLT plugin](https://cloud.google.com/data-fusion/docs/how-to/use-sap-slt-plugin) we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.

### There are 20 sql scripts 

| L2 Tables                    | L1/L0 Source Tables                                                                                                                                        |
|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| asset                        |                                                                                                                                                            |
| forecast                     | forecasting_fact                                                                                                                                           |
| inventory                    | material_movement_fact,inventory_fact,plant_dimension,valuation_area_dimension                                                                             |
| legal_entity                 | plant_dimension,customer_sales_org_dimension,company_code_dimension,supplier_code_dimension,valuation_area_dimension                                       |
| location                     | customer_dimension,supplier_dimension,plant_dimension,shipping_point_dimension,transportation_hub_dimension,storage_location_dimension                     |
| order                        | sales_order_fact,purchase_order_fact,delivery_fact,production_order_fact,valuation_area_dimension                                                          |
| product                      | material_dimension,material_description,product_hierarchy_description                                                                                      |


### Parameter variable for all scripts.


| Variable Name     | Value (description)                                                                              |
|-------------------|--------------------------------------------------------------------------------------------------|
| $projectid        | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| $slt_l0_raw       | Raw Dataset (slt_raw) - Dataset contains raw tables.                                             |
| $slt_l0_staging   | Staging Dataset (slt_staging) - Dataset contains staging tables.                                 |
| $slt_l0_control   | Control Dataset (slt_control) - Dataset contains all control tables to create view and tables.   |
| $slt_l1_dimension | Dimension Dataset (slt_dimension) - Dataset name which contains dimension tables.                |
| $slt_l1_facts     | Fact Dataset (slt_facts) - Dataset name which contains fact tables.                              |
| $slt_l2_canonical | Canonical Dataset (slt_canonical) - Dataset which contains semantic view get data from l1 layer. |


### Parameter variable for all DAG scripts.

| Variable Name         | Value (description)                                                                              |
|-----------------------|--------------------------------------------------------------------------------------------------|
| {{ projectid }}       | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| {{ slt_l0_raw }}      | Raw Dataset (slt_raw) - Dataset contains raw tables.                                             |
| {{ slt_l0_staging }}  | Staging Dataset (slt_staging) - Dataset contains staging tables.                                 |
| {{ slt_l0_control }}  | Control Dataset (slt_control) - Dataset contains all control tables to create view and tables.   |
| {{ slt_l1_dimension }}| Dimension Dataset (slt_dimension) - Dataset name which contains dimension tables.                |
| {{ slt_l1_facts }}    | Fact Dataset (slt_facts) - Dataset name which contains fact tables.                              |
| {{ slt_l2_canonical }}| Canonical Dataset (slt_canonical) - Dataset which contains semantic view get data from l1 layer. |

### Load Script

| Variable Name     | Value (description)                                                                              |
|-------------------|--------------------------------------------------------------------------------------------------|
| load_l2           | It as insert statement which read the data from L2 views and loads into L2 canonical table.      |

 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms