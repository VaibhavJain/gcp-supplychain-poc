CREATE OR REPLACE PROCEDURE `sap-adapter.scl_sap_control.generate_l2_layer_view_ddl`(IN project_name STRING)
BEGIN
DECLARE lv_ddl_result STRING;
DECLARE lv_dml STRING;
DECLARE x INT64 DEFAULT 1;
DECLARE maxv INT64 DEFAULT 0;
DECLARE input_value string;

create temp table distinct_tables(
row_num int64,
table_catalog string,
table_schema string,
table_name string
); 

insert into distinct_tables
select row_number() over(partition by 1 order by 1) as row_num,*
from 
(select distinct project_name as table_catalog,table_schema,table_name
          from sap-adapter.scl_sap_control.scl_l2_layer_view_columns);

EXECUTE IMMEDIATE "select max(row_num) from distinct_tables" INTO maxv;

WHILE x <= maxv
DO
EXECUTE IMMEDIATE "SELECT CONCAT(table_catalog,'|',table_schema,'|',table_name) as input_value from distinct_tables where row_num = " || x into input_value;

SET lv_dml = format("""
with create_view as (
select 
      CONCAT(table_catalog, '.', table_schema, '.', table_name) as table_name,
      ARRAY_AGG(
      STRUCT(column_name, view_column_name)
      ORDER BY ordinal_position
        ) AS columns
from   
(select '%s' as table_catalog,sgv.table_schema,sgv.table_name,sgv.column_name,sgv.ordinal_position,sgv.view_column_name
  from %s.scl_sap_control.scl_l2_layer_view_columns sgv
       join %s.%s.INFORMATION_SCHEMA.COLUMNS cl
    on '%s' = cl.table_catalog
   and sgv.table_schema = cl.table_schema
   and sgv.column_name = cl.column_name
   and sgv.table_name = cl.table_name
 where cl.table_name = '%s'
   and sgv.active_ind = 1)
group by table_catalog,table_schema,table_name)
select string_agg(CONCAT(
       '\\n',
       'create or replace view ',
       CONCAT(SUBSTR(table_name,1,INSTR(table_name,'.')-1),'.',SUBSTR(table_name,INSTR(table_name,'.')+1,INSTR(table_name,'.',1,2)-INSTR(table_name,'.')-1),'_view.',SUBSTR(table_name,INSTR(table_name,'.',1,2)+1,LENGTH(table_name) - INSTR(table_name,'.',1,2))),
       '_vw',
       '\\n',
       'as ',
       '\\n',
       'select ',
       (
  IFNULL(
    CONCAT(
      '\\n',
      (SELECT STRING_AGG(CONCAT('  ', '`',column_name,'`', ' as ',view_column_name),',\\n')
       FROM UNNEST(columns)),
      '\\n\\n'
    ),
    ''
  )
),
       ' from ',
       table_name,
       ';'),
            ' ')
   from create_view;""",
   project_name,
   SUBSTR(input_value,1,INSTR(input_value,'|')-1),
   SUBSTR(input_value,1,INSTR(input_value,'|')-1),
   SUBSTR(input_value,INSTR(input_value,'|')+1,INSTR(input_value,'|',1,2)-INSTR(input_value,'|')-1),
   project_name,
   SUBSTR(input_value,INSTR(input_value,'|',1,2)+1,LENGTH(input_value) - INSTR(input_value,'|',1,2)));

EXECUTE IMMEDIATE lv_dml into lv_ddl_result;
EXECUTE IMMEDIATE lv_ddl_result;
SET x = x + 1;
END WHILE;
END;