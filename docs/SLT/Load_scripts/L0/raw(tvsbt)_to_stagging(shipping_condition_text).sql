MERGE INTO `sap-adapter.slt_staging.shipping_condition_text` tgt
USING (
WITH tvsbt as
(select MANDT as client,
SPRAS as language_key,
VSBED as shp_cond,
VTEXT as description,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct tvsbt.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.tvsbt` as tvsbt
where tvsbt._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipping_condition_text'),0))
select client as client_key,
language_key as language_key_key,
shp_cond as shp_cond_key,
*
From  tvsbt
UNION ALL
select null as client_key,
null as language_key_key,
null as shp_cond_key,
tvsbt.*
From tvsbt as tvsbt
INNER JOIN `sap-adapter.slt_staging.shipping_condition_text` as uji
ON tvsbt.client = uji.client
AND tvsbt.language_key = uji.language_key
AND tvsbt.shp_cond = uji.shp_cond
AND tvsbt.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.language_key_key = tgt.language_key
AND src.shp_cond_key = tgt.shp_cond
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
language_key,
shp_cond,
description,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.language_key,
src.shp_cond,
src.description,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipping_condition_text' as table_name
    		,'tvsbt' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipping_condition_text') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipping_condition_text') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipping_condition_text`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipping_condition_text` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipping_condition_text'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipping_condition_text`))) AS inserted_record_count
    		,CURRENT_DATETIME() as last_update_date   
    )scr
    on tgt.table_name = scr.table_name
    WHEN MATCHED THEN 
    UPDATE set tgt.min_input_sequence_num = 0
    			,tgt.max_input_sequence_num = scr.max_input_sequence_num
    			,tgt.inserted_record_count = scr.inserted_record_count
    			,tgt.last_update_date = scr.last_update_date
    WHEN NOT MATCHED THEN
    INSERT (table_name,
    		sap_table_name,
    		full_delta_indicator,
    		min_input_sequence_num,
    		max_input_sequence_num,
    		inserted_record_count,
    		last_update_date)
    VALUES(scr.table_name,
    		scr.sap_table_name,
    		scr.full_delta_indicator,
    		scr.min_input_sequence_num,
    		scr.max_input_sequence_num,
    		scr.inserted_record_count,
    		scr.last_update_date);
    