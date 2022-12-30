# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0-L1-L2)
### Version
### Version 1.0
## Overview
JSON file are created for L2 tables along with each column description, this json files are used by Terraform to create empty tables in BigQuery

Data sources - such as SAP HANA/SAP ECC by using SLT plugin. Transformations, which sit between inputs and outputs Sinks, which are outputs - such as Big Query.
In data integration from [Cloud data fusion using SLT plugin](https://cloud.google.com/data-fusion/docs/how-to/use-sap-slt-plugin) we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.
### Below are the list to L1 layer table which are getting data from the following L0 staging layer.


| L2 Tables                    | L1/L0 Source Tables                                                                                                                                        |
|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| asset                        |                                                                                                                                                            |
| forecast                     | forecasting_fact                                                                                                                                           |
| inventory                    | material_movement_fact,inventory_fact,plant_dimension,valuation_area_dimension                                                                             |
| legal_entity                 | plant_dimension,customer_sales_org_dimension,company_code_dimension,supplier_code_dimension,valuation_area_dimension                                       |
| location                     | customer_dimension,supplier_dimension,plant_dimension,shipping_point_dimension,transportation_hub_dimension,storage_location_dimension                     |
| order                        | sales_order_fact,purchase_order_fact,delivery_fact,production_order_fact,valuation_area_dimension                                                          |
| product                      | material_dimension,material_description,product_hierarchy_description                                                                                      |

Below are the list of json file which can be used to create the empty tables in bigquery.

|  Json Name                        |
|-----------------------------------|
| asset.json                        |
| forecast.json                     |
| inventory.json                    |
| legal_entity.json                 |
| location.json                     |
| order.json                        |
| product.json                      |


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
      from `{$projectid}.{$slt_l2_canonical}.`.INFORMATION_SCHEMA.COLUMNS A
          INNER JOIN `{$projectid}.{$slt_l2_canonical}`.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS B
      on a.table_catalog = b.table_catalog
     and a.table_schema = b.table_schema
     and a.table_name = b.table_name
     and a.column_name = b.column_name
         INNER JOIN `{$projectid}.{$slt_l2_canonical}`.INFORMATION_SCHEMA.TABLES C
      on a.table_catalog = c.table_catalog
     and a.table_schema = c.table_schema
     and a.table_name = c.table_name
     and c.table_type = 'BASE TABLE')
group by table_name
order by table_name
```

 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms