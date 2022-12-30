MERGE INTO `{{ projectid }}.{{ slt_l1_dimension }}.warehouse_dimension` tgt
USING (
with tmp_scr AS(
SELECT  CONCAT(wnd.client,'-',wnd.warehouse_no) as warehouse_key
       ,wnd.client
       ,wnd.warehouse_no
       ,wnd.region
       ,wnt.language_key
       ,wnt.warehouse_no as warehouse_no_t300t
       ,wnt.whse_no_desc
       ,CASE WHEN wnd.dw_last_update_date > wnt.dw_last_update_date
             THEN wnd.dw_last_update_date
             ELSE wnt.dw_last_update_date
        END as input_last_update_date
       ,wnd.dw_active_indicator
  from `{{ projectid }}.{{ slt_l0_staging }}.warehouse_numbers_data` wnd
       inner join `{{ projectid }}.{{ slt_l0_staging }}.warehouse_numbers_text`  wnt
    on wnd.client = wnt.client
   and wnd.warehouse_no = wnt.warehouse_no
   and wnt.language_key = 'E'
 where wnd.dw_active_indicator = 'Y'
   and (wnd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'warehouse_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR wnt.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'warehouse_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_wd AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.warehouse_key as warehouse_join_key,t.*
  from tmp_wd t
UNION ALL 
SELECT NULL as warehouse_join_key,t.*
  from tmp_wd t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.warehouse_dimension` wd
    on wd.warehouse_key = t.warehouse_key
   AND wd.finalmd5key <> t.finalmd5key
 WHERE wd.dw_active_indicator = 'Y') scr
ON tgt.warehouse_key = scr.warehouse_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 warehouse_uuid
,warehouse_key
,client
,warehouse_no
,region
,language_key
,warehouse_no_t300t
,whse_no_desc
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.warehouse_key,scr.finalmd5key)))
,scr.warehouse_key
,scr.client
,scr.warehouse_no
,scr.region
,scr.language_key
,scr.warehouse_no_t300t
,scr.whse_no_desc
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'warehouse_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'warehouse_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'warehouse_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'warehouse_numbers_data,warehouse_numbers_text' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.warehouse_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.warehouse_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'warehouse_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.warehouse_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 
UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.source_table_names = scr.source_table_names
WHEN NOT MATCHED THEN
INSERT (table_name,
        full_delta_indicator,
        source_table_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.source_table_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);