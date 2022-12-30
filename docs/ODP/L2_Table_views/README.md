
### Version 1.0
### Overview

Building the framework for creating the views for the L2 Canonical.

Below is how the framework works.

1. Run below query to get all columns of Caninical tables with their column names along with the name they want to have in the view. Also included the active_ind column, which controls which column needs to be present in the view.

```sql
  select a.table_catalog,a.table_schema,a.table_name,a.column_name,a.ordinal_position,b.description,b.description as view_column_description,a.column_name as view_column_name,1 as active_ind
    from `{$projectid}.{$scl_l2_canonical}`.INFORMATION_SCHEMA.COLUMNS A
          INNER JOIN `{$projectid}.{$scl_l2_canonical}`.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS B
      on a.table_catalog = b.table_catalog
     and a.table_schema = b.table_schema
     and a.table_name = b.table_name
     and a.column_name = b.column_name
         INNER JOIN `{$projectid}.{$scl_l2_canonical}`.INFORMATION_SCHEMA.TABLES C
      on a.table_catalog = c.table_catalog
     and a.table_schema = c.table_schema
     and a.table_name = c.table_name
 where c.table_type = 'BASE TABLE'
 order by 1,2,3,5
```

1. Copy the above query output to google spreadsheet and name the file as scl_l2_layer_view_columns.xlsx.

Below is the sheet name.

scl_l2_layer_view_columns.xlsx

2. As we are creating the views for the existing table all this files which required to generate are are saved in the $scl_l2_canonical dataset.

3. Imported the scl_l2_layer_view_columns.xlsx sheet as an external table into the $scl_l2_canonical dataset with the table name scl_l2_layer_view_columns.

4. Developed a stored procedure which reads the data from the external table and compares column names with the L2 layer table columns. If it got matched then only it considers those columns.

5. Stored procedure details are as follows which accepts a input parameter Project Id.
   
   generate_l2_layer_view_ddl.sql

```sql
CALL `{$projectid}.{$scl_l0_control}.generate_l2_layer_view_ddl`('{$projectid}')
```

Once executed it creates the views in the below two datasets.

| DataSet                                                                     | Description                                                     |
|-----------------------------------------------------------------------------|-----------------------------------------------------------------|
| $scl_l2_canonical _view                                                     | This dataset has all the views created for each canonical table |


### Parameter variable for all scripts.


| Variable Name     | Value (description)                                                                              |
|-------------------|--------------------------------------------------------------------------------------------------|
| $projectid        | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| $scl_l0_control   | Control Dataset (scl_sap_control) - Dataset contains all control tables to create view and tables.   |
| $scl_l2_canonical | Canonical Dataset (scl_canonical) - Dataset which contains semantic view get data from l1 layer. |


  
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms