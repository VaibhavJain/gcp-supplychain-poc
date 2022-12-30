CREATE OR REPLACE PROCEDURE `{$ProjectId}.slt_control.generate_create_ddl`(IN src_dataset_name STRING, IN tgt_dateset_name STRING)
OPTIONS (strict_mode=true)
BEGIN
--DECLARE src_dataset_name STRING;
--DECLARE tgt_dateset_name STRING;
DECLARE src_table_name STRING;
DECLARE slt_dml STRING;
DECLARE lv_ddl_result STRING;
DECLARE lv_dml STRING;
DECLARE x INT64 DEFAULT 1;
DECLARE maxv INT64 DEFAULT 0;
DECLARE input_value string;

--set src_dataset_name = 'slt_raw';
--set tgt_dateset_name = 'slt_staging';
--set src_table_name = 'ACDOCA';


create temp table distinct_tables(
row_num int64,
table_name string
); 

set slt_dml = format("""
insert into distinct_tables
select row_number() over(partition by 1 order by 1) as row_num,en.table_name
from 
(select distinct SAP_table as table_name
          from slt_control.sap_to_bq_columns) en
inner join %s.INFORMATION_SCHEMA.TABLES tb
    on en.table_name = tb.table_name;
"""
,src_dataset_name);

EXECUTE IMMEDIATE slt_dml;

EXECUTE IMMEDIATE "select max(row_num) from distinct_tables" INTO maxv;


CREATE TEMP FUNCTION MakePartitionByExpression(
  column_name STRING, data_type STRING
) AS (
  IF(
    column_name = '_PARTITIONTIME',
    'DATE(_PARTITIONTIME)',
    IF(
      data_type = 'TIMESTAMP',
      CONCAT('DATE(', column_name, ')'),
      column_name
    )
  )
);
CREATE TEMP FUNCTION MakeDescription(description STRING) 
AS (
  CONCAT(' OPTIONS(description="',description,'")')
);
CREATE TEMP FUNCTION MakePartitionByClause(
  columns ARRAY<STRUCT<column_name STRING, data_type STRING, is_nullable STRING,  is_partitioning_column STRING, clustering_ordinal_position INT64, description STRING>>
) AS (
  IFNULL(
    CONCAT(
      'PARTITION BY ',
      (SELECT MakePartitionByExpression(column_name, data_type)
       FROM UNNEST(columns) WHERE is_partitioning_column = 'YES'),
      '\n'),
    ''
  )
);
CREATE TEMP FUNCTION MakeClusterByClause(
  columns ARRAY<STRUCT<column_name STRING, data_type STRING, is_nullable STRING,  is_partitioning_column STRING, clustering_ordinal_position INT64, description STRING>>
) AS (
  IFNULL(
    CONCAT(
      'CLUSTER BY ',
      (SELECT STRING_AGG(column_name, ', ' ORDER BY clustering_ordinal_position)
        FROM UNNEST(columns) WHERE clustering_ordinal_position IS NOT NULL),
      '\n'
    ),
    ''
  )
);
CREATE TEMP FUNCTION MakeNullable(data_type STRING, is_nullable STRING)
AS (
  IF(not STARTS_WITH(data_type, 'ARRAY<') and is_nullable = 'NO', ' NOT NULL', '')
);
CREATE TEMP FUNCTION MakeColumnList(
  columns ARRAY<STRUCT<column_name STRING, data_type STRING, is_nullable STRING,  is_partitioning_column STRING, clustering_ordinal_position INT64, description STRING>>
) AS (
  IFNULL(
    CONCAT(
      '(\n',
      (SELECT STRING_AGG(CONCAT('  ', '`',column_name,'`', ' ', data_type, MakeNullable(data_type, is_nullable),MakeDescription(description)),',\n')
       FROM UNNEST(columns)),
      '\n)\n'
    ),
    ''
  )
);
CREATE TEMP FUNCTION MakeOptionList(
  options ARRAY<STRUCT<option_name STRING, option_value STRING>>
) AS (
  IFNULL(
    CONCAT(
      'OPTIONS (\n',
      (SELECT STRING_AGG(CONCAT('  ', option_name, '=', option_value), ',\n') FROM UNNEST(options)),
      '\n)\n'),
    ''
  )
);

WHILE x <= maxv
DO
EXECUTE IMMEDIATE "SELECT table_name as scr_table_name from distinct_tables where row_num = " || x into src_table_name;

SET lv_dml = format("""
WITH Components AS (
select 
      CONCAT('`', table_catalog, '.', target_table_schema, '.', table_name, '`') as table_name,
      ARRAY_AGG(
      STRUCT(column_name, data_type, is_nullable, is_partitioning_column, clustering_ordinal_position,description)
      ORDER BY ordinal_position
        ) AS columns,
      ARRAY_AGG(
      STRUCT(option_name, option_value) 
      ORDER BY ordinal_position) 
      AS options
from   
(select 
       tb.table_catalog
      ,'%s' as target_table_schema
      ,en.bq_table as table_name
      ,en.Ext_Field_Name as column_name
      ,tb.table_schema
      ,en.Field_Description as description
      ,case when cl.column_name is null
            then case when en.Ext_Field_Name = 'dw_input_sequence'
                      then 'INT64'
                      when en.Ext_Field_Name = 'finalmd5key'
                      then 'STRING'
                      when en.Ext_Field_Name = 'dw_active_indicator'
                      then 'STRING'
                      when en.Ext_Field_Name = 'dw_start_date'
                      then 'DATETIME'
                      when en.Ext_Field_Name = 'dw_end_date'
                      then 'DATETIME'
                      when en.Ext_Field_Name = 'dw_last_update_date'
                      then 'DATETIME'
                      else cl.data_type
                 end
            else cl.data_type
       end data_type
      ,coalesce(cl.is_nullable,'NO') as is_nullable
      ,coalesce(cl.is_partitioning_column,'NO') as is_partitioning_column
      ,cl.clustering_ordinal_position
      ,row_number() over(partition by 1 order by 1) as ordinal_position
      ,tp.option_name
      ,tp.option_value
  from slt_control.sap_to_bq_columns en
       left join %s.INFORMATION_SCHEMA.TABLES tb
    on en.sap_table = tb.table_name
       left join %s.INFORMATION_SCHEMA.COLUMNS cl
    on en.sap_table = cl.table_name
   and en.SAP_Field = cl.column_name
       left join %s.INFORMATION_SCHEMA.TABLE_OPTIONS tp
    on tb.table_name = tp.table_name
 WHERE tb.table_type = 'BASE TABLE'
   and tb.table_name = '%s') t
GROUP BY table_catalog, target_table_schema, table_name
)
SELECT
  CONCAT(
    'CREATE OR REPLACE TABLE ',
    table_name,
    '\\n',
    MakeColumnList(columns),
    MakePartitionByClause(columns),
    MakeClusterByClause(columns),
    MakeOptionList(options))
FROM Components;
""",
tgt_dateset_name,src_dataset_name,src_dataset_name,src_dataset_name,src_table_name);
EXECUTE IMMEDIATE lv_dml INTO lv_ddl_result;
EXECUTE IMMEDIATE lv_ddl_result;
set x = x + 1;
END WHILE;
END;