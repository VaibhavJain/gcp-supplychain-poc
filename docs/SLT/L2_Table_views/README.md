# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0 staging to L1 Dimensions & facts)
### Version 1.0
### Overview

Building the framework for creating the views for the L2 Canonical.

Below is how the framework works.

1. Run below query to get all columns of Caninical tables with their column names along with the name they want to have in the view. Also included the active_ind column, which controls which column needs to be present in the view.

```sql
  select a.table_catalog,a.table_schema,a.table_name,a.column_name,a.ordinal_position,b.description,b.description as view_column_description,a.column_name as view_column_name,1 as active_ind
    from `{$projectid}.{$slt_l2_canonical}`.INFORMATION_SCHEMA.COLUMNS A
          INNER JOIN `{$projectid}.{$slt_l2_canonical}`.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS B
      on a.table_catalog = b.table_catalog
     and a.table_schema = b.table_schema
     and a.table_name = b.table_name
     and a.column_name = b.column_name
         INNER JOIN `{$projectid}.{$slt_l2_canonical}`.INFORMATION_SCHEMA.TABLES C
      on a.table_catalog = c.table_catalog
     and a.table_schema = c.table_schema
     and a.table_name = c.table_name
 where c.table_type = 'BASE TABLE'
 order by 1,2,3,5
```

1. Copy the above query output to google spreadsheet and name the file as slt_l2_layer_view_columns.xlsx.

Below is the sheet name.

slt_l2_layer_view_columns.xlsx

2. As we are creating the views for the existing table all this files which required to generate are are saved in the $slt_l0_control dataset.

3. Imported the slt_l2_layer_view_columns.xlsx sheet as an external table into the $slt_l0_control dataset with the table name slt_l2_layer_view_columns.

4. Developed a stored procedure which reads the data from the external table and compares column names with the L2 layer table columns. If it got matched then only it considers those columns.

5. Stored procedure details are as follows which accepts a input parameter Project Id.
   
   generate_slt_l2_layer_view_ddl.sql

```sql
CALL `{$projectid}.{$slt_l0_control}.generate_slt_l2_layer_view_ddl`('{$projectid}')
```

Once executed it creates the views in the below two datasets.

| DataSet                                                                     | Description                                                     |
|-----------------------------------------------------------------------------|-----------------------------------------------------------------|
| $slt_l0_canonical _view                                                     | This dataset has all the views created for each canonical table |


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


  
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms