# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0-L1-L2)
### Version
### Version 1.0
## Overview
JSON file are created for L1 tables along with each column description, this json files are used by Terraform to create empty tables in BigQuery

Data sources - such as SAP HANA/SAP ECC by using SLT plugin. Transformations, which sit between inputs and outputs Sinks, which are outputs - such as Big Query.
In data integration from [Cloud data fusion using SLT plugin](https://cloud.google.com/data-fusion/docs/how-to/use-sap-slt-plugin) we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.
### Below are the list to L1 layer table which are getting data from the following L0 staging layer.


| L1 Tables                    | L0 Source Tables                                                                                                         |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| company_code_dimension       | company_codes,supplier_master_address_details                                                                            |
| customer_dimension           | customer_master,supplier_master_address_details                                                                          |
| customer_sales_org_dimension | customer_master,customer_sales,supplier_master_address_details                                                           |
| material_dimension           | material_master,plant_data,material_master_accounting_data                                                               |
| plant_dimension              | plant_details,supplier_master_address_details                                                                            |
| shipping_point_dimension     | shipping_point_data,supplier_master_address_details                                                                      |
| storage_location_dimension   | storage_location_details,determination_address,supplier_master_address_details                                           |
| supplier_code_dimension      | supplier_master_details,supplier_master_compnay_code_details,supplier_master_address_details                             |
| supplier_dimension           | supplier_master_details,supplier_master_address_details                                                                  |
| transportation_hub_dimension | transportation_scheduling_point,transportation_scheduling_point_text,supplier_master_address_details                     |
| valuation_area_dimension     | valuation_area_details                                                                                                   |
| warehouse_dimension          | warehouse_numbers_data,warehouse_numbers_text                                                                            |
| delivery_fact                | delivery_header,delivery_item                                                                                            |
| forecasting_fact             | planned_independent_requirement_material,independent_requirement_data                                                    |
| inventory_fact               | material_storage_location                                                                                                |
| production_order_fact        | production_order_header,production_order_master_details,production_order_item_details                                    |
| purchase_order_fact          | purchase_order_header_detail,purchase_order_item_detail,purchase_order_history_detail,purchae_order_schedule_line_detail |
| purchase_requisition_fact    | purchase_requisition_details,purchase_requisition_account_assignment                                                     |
| sales_order_fact             | sales_document_header,sales_document_item,sales_document_schedule                                                        |
| transfer_order_fact          | transfer_order_key,transfer_order_item                                                                                   |



Below are the list of json file which can be used to create the empty tables in bigquery.

|  Json Name                        |
|-----------------------------------|
| company_code_dimension.json       |
| customer_dimension.json           |
| customer_sales_org_dimension.json |
| material_dimension.json           |
| plant_dimension.json              |
| shipping_point_dimension.json     |
| storage_location_dimension.json   |
| supplier_code_dimension.json      |
| supplier_dimension.json           |
| transportation_hub_dimension.json |
| valuation_area_dimension.json     |
| warehouse_dimension.json          |
| delivery_fact.json                |
| forecasting_fact.json             |
| inventory_fact.json               |
| production_order_fact.json        |
| purchase_order_fact.json          |
| purchase_requisition_fact.json    |
| sales_order_fact.json             |
| transfer_order_fact.json          |

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

Script to convert the create table structure to the JSON.

```sql
select table_name,
      TO_JSON_STRING(ARRAY_AGG(
      STRUCT(name, type, mode,description)
      ORDER BY ordinal_position
        )) AS columns
from
(select a.table_name,a.column_name as name,a.data_type as type, case when a.is_nullable = 'NO'
                                                       then 'REQUIRED'
                                                       else 'NULLABLE'
                                                  end as mode,b.description as description,a.ordinal_position
      from `{$projectid}.{$slt_l1_dimension}`.INFORMATION_SCHEMA.COLUMNS A
          INNER JOIN `{$projectid}.{$slt_l1_dimension}`.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS B
      on a.table_catalog = b.table_catalog
     and a.table_schema = b.table_schema
     and a.table_name = b.table_name
     and a.column_name = b.column_name
UNION ALL
select a.table_name,a.column_name as name,a.data_type as type, case when a.is_nullable = 'NO'
                                                       then 'REQUIRED'
                                                       else 'NULLABLE'
                                                  end as mode,b.description as description,a.ordinal_position
    from `{$projectid}.{$slt_l1_facts}`.INFORMATION_SCHEMA.COLUMNS A
          INNER JOIN `{$projectid}.{$slt_l1_facts}`.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS B
      on a.table_catalog = b.table_catalog
     and a.table_schema = b.table_schema
     and a.table_name = b.table_name
     and a.column_name = b.column_name)
group by table_name
order by table_name
```

 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms