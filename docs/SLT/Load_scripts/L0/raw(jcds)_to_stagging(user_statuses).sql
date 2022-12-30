MERGE INTO `sap-adapter.slt_staging.user_statuses` tgt
USING (
WITH jcds as
(select MANDT as client,
OBJNR as object_number,
STAT as status,
CHGNR as change_number,
USNAM as user,
UDATE as date,
UTIME as time,
TCODE as transaction_code,
CDTCODE as transaction,
INACT as status_inact,
CHIND as change_ind,
_DATAAGING as data_filter_value_for_data_agi,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct jcds.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.jcds` as jcds
where jcds._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'user_statuses'),0))
select client as client_key,
object_number as object_number_key,
status as status_key,
change_number as change_number_key,
*
From  jcds
UNION ALL
select null as client_key,
null as object_number_key,
null as status_key,
null as change_number_key,
jcds.*
From jcds as jcds
INNER JOIN `sap-adapter.slt_staging.user_statuses` as uji
ON jcds.client = uji.client
AND jcds.object_number = uji.object_number
AND jcds.status = uji.status
AND jcds.change_number = uji.change_number
AND jcds.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.object_number_key = tgt.object_number
AND src.status_key = tgt.status
AND src.change_number_key = tgt.change_number
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
object_number,
status,
change_number,
user,
date,
time,
transaction_code,
transaction,
status_inact,
change_ind,
data_filter_value_for_data_agi,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.object_number,
src.status,
src.change_number,
src.user,
src.date,
src.time,
src.transaction_code,
src.transaction,
src.status_inact,
src.change_ind,
src.data_filter_value_for_data_agi,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'user_statuses' as table_name
    		,'jcds' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'user_statuses') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'user_statuses') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.user_statuses`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.user_statuses` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'user_statuses'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.user_statuses`))) AS inserted_record_count
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
    