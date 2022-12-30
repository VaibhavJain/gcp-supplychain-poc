# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0 staging to L1 Dimensions & facts)
### Version 1.0
### Overview

Use these script to load the L1 layer table by reading the data from the L0 Staging layer. This scripts are have MERGE query which has logic to handle SCD type 2.

Data sources - such as SAP HANA/SAP ECC by using SLT plugin. Transformations, which sit between inputs and outputs sinks, which are outputs - such as Big Query.
In data integration from [Cloud data fusion using SLT plugin](https://cloud.google.com/data-fusion/docs/how-to/use-sap-slt-plugin) we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.

### There are 20 sql scripts 

| Script_Name                      | Source_Table_Name                                                                                                        |
|----------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| company_code_dimension.sql       | company_codes,supplier_master_address_details                                                                            |
| customer_dimension.sql           | customer_master,supplier_master_address_details                                                                          |
| customer_sales_org_dimension.sql | customer_master,customer_sales,supplier_master_address_details                                                           |
| material_dimension.sql           | material_master,plant_data,material_master_accounting_data                                                               |
| plant_dimension.sql              | plant_details,supplier_master_address_details                                                                            |
| shipping_point_dimension.sql     | shipping_point_data,supplier_master_address_details                                                                      |
| storage_location_dimension.sql   | storage_location_details,determination_address,supplier_master_address_details                                           |
| supplier_code_dimension.sql      | supplier_master_details,supplier_master_compnay_code_details,supplier_master_address_details                             |
| supplier_dimension.sql           | supplier_master_details,supplier_master_address_details                                                                  |
| transportation_hub_dimension.sql | transportation_scheduling_point,transportation_scheduling_point_text,supplier_master_address_details                     |
| valuation_area_dimension.sql     | valuation_area_details                                                                                                   |
| warehouse_dimension.sql          | warehouse_numbers_data,warehouse_numbers_text                                                                            |
| delivery_fact.sql                | delivery_header,delivery_item                                                                                            |
| forecasting_fact.sql             | planned_independent_requirement_material,independent_requirement_data                                                    |
| inventory_fact.sql               | material_storage_location                                                                                                |
| production_order_fact.sql        | production_order_header,production_order_master_details,production_order_item_details                                    |
| purchase_order_fact.sql          | purchase_order_header_detail,purchase_order_item_detail,purchase_order_history_detail,purchae_order_schedule_line_detail |
| purchase_requisition_fact.sql    | purchase_requisition_details,purchase_requisition_account_assignment                                                     |
| sales_order_fact.sql             | sales_document_header,sales_document_item,sales_document_schedule                                                        |
| transfer_order_fact.sql          | transfer_order_key,transfer_order_item                                                                                   |


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



Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms