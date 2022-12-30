MERGE INTO `sap-adapter.slt_staging.profit_center_description` tgt
USING (
WITH cepct as
(select MANDT as client,
SPRAS as language_key,
PRCTR as profit_center,
DATBI as valid_to,
KOKRS as co_area,
KTEXT as name,
LTEXT as long_text,
MCTXT as profit_ctr_text,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct cepct.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.cepct` as cepct
where cepct._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'profit_center_description'),0))
select client as client_key,
language_key as language_key_key,
profit_center as profit_center_key,
valid_to as valid_to_key,
co_area as co_area_key,
*
From  cepct
UNION ALL
select null as client_key,
null as language_key_key,
null as profit_center_key,
null as valid_to_key,
null as co_area_key,
cepct.*
From cepct as cepct
INNER JOIN `sap-adapter.slt_staging.profit_center_description` as uji
ON cepct.client = uji.client
AND cepct.language_key = uji.language_key
AND cepct.profit_center = uji.profit_center
AND cepct.valid_to = uji.valid_to
AND cepct.co_area = uji.co_area
AND cepct.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.language_key_key = tgt.language_key
AND src.profit_center_key = tgt.profit_center
AND src.valid_to_key = tgt.valid_to
AND src.co_area_key = tgt.co_area
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
language_key,
profit_center,
valid_to,
co_area,
name,
long_text,
profit_ctr_text,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.language_key,
src.profit_center,
src.valid_to,
src.co_area,
src.name,
src.long_text,
src.profit_ctr_text,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'profit_center_description' as table_name
    		,'cepct' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'profit_center_description') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'profit_center_description') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.profit_center_description`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.profit_center_description` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'profit_center_description'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.profit_center_description`))) AS inserted_record_count
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
    