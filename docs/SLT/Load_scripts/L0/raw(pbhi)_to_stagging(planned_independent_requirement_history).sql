MERGE INTO `sap-adapter.slt_staging.planned_independent_requirement_history` tgt
USING (
WITH pbhi as
(select MANDT as client,
BDZEI as rqmts_pointer,
PDATU as finish_date,
LAEDA as last_change,
UZEIT as entry_time,
PBNUM as history,
AENAM as changed_by,
PLNMG as planned_qty,
ENTMG as withdrawal_qty,
ENTLI as date_type,
DBMNG as plnd_qty_in_db,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct pbhi.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.pbhi` as pbhi
where pbhi._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'planned_independent_requirement_history'),0))
select client as client_key,
rqmts_pointer as rqmts_pointer_key,
finish_date as finish_date_key,
last_change as last_change_key,
entry_time as entry_time_key,
*
From  pbhi
UNION ALL
select null as client_key,
null as rqmts_pointer_key,
null as finish_date_key,
null as last_change_key,
null as entry_time_key,
pbhi.*
From pbhi as pbhi
INNER JOIN `sap-adapter.slt_staging.planned_independent_requirement_history` as uji
ON pbhi.client = uji.client
AND pbhi.rqmts_pointer = uji.rqmts_pointer
AND pbhi.finish_date = uji.finish_date
AND pbhi.last_change = uji.last_change
AND pbhi.entry_time = uji.entry_time
AND pbhi.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.rqmts_pointer_key = tgt.rqmts_pointer
AND src.finish_date_key = tgt.finish_date
AND src.last_change_key = tgt.last_change
AND src.entry_time_key = tgt.entry_time
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
rqmts_pointer,
finish_date,
last_change,
entry_time,
history,
changed_by,
planned_qty,
withdrawal_qty,
date_type,
plnd_qty_in_db,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.rqmts_pointer,
src.finish_date,
src.last_change,
src.entry_time,
src.history,
src.changed_by,
src.planned_qty,
src.withdrawal_qty,
src.date_type,
src.plnd_qty_in_db,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'planned_independent_requirement_history' as table_name
    		,'pbhi' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'planned_independent_requirement_history') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'planned_independent_requirement_history') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.planned_independent_requirement_history`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.planned_independent_requirement_history` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'planned_independent_requirement_history'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.planned_independent_requirement_history`))) AS inserted_record_count
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
    