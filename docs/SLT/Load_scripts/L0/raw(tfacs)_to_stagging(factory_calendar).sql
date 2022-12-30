MERGE INTO `sap-adapter.slt_staging.factory_calendar` tgt
USING (
WITH tfacs as
(select IDENT as calendar_id,
JAHR as year_stored,
MON01 as days_in_month,
MON02 as days_in_month_1,
MON03 as days_in_month_2,
MON04 as days_in_month_3,
MON05 as days_in_month_4,
MON06 as days_in_month_5,
MON07 as days_in_month_6,
MON08 as days_in_month_7,
MON09 as days_in_month_8,
MON10 as days_in_month_9,
MON11 as days_in_month_10,
MON12 as days_in_month_11,
BASIS as start_days,
FENUM as number_of_days,
WENUM as no_workdays,
LOAD as buffer_flag,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct tfacs.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.tfacs` as tfacs
where tfacs._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'factory_calendar'),0))
select calendar_id as calendar_id_key,
year_stored as year_stored_key,
*
From  tfacs
UNION ALL
select null as calendar_id_key,
null as year_stored_key,
tfacs.*
From tfacs as tfacs
INNER JOIN `sap-adapter.slt_staging.factory_calendar` as uji
ON tfacs.calendar_id = uji.calendar_id
AND tfacs.year_stored = uji.year_stored
AND tfacs.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.calendar_id_key = tgt.calendar_id
AND src.year_stored_key = tgt.year_stored
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(calendar_id,
year_stored,
days_in_month,
days_in_month_1,
days_in_month_2,
days_in_month_3,
days_in_month_4,
days_in_month_5,
days_in_month_6,
days_in_month_7,
days_in_month_8,
days_in_month_9,
days_in_month_10,
days_in_month_11,
start_days,
number_of_days,
no_workdays,
buffer_flag,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.calendar_id,
src.year_stored,
src.days_in_month,
src.days_in_month_1,
src.days_in_month_2,
src.days_in_month_3,
src.days_in_month_4,
src.days_in_month_5,
src.days_in_month_6,
src.days_in_month_7,
src.days_in_month_8,
src.days_in_month_9,
src.days_in_month_10,
src.days_in_month_11,
src.start_days,
src.number_of_days,
src.no_workdays,
src.buffer_flag,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'factory_calendar' as table_name
    		,'tfacs' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'factory_calendar') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'factory_calendar') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.factory_calendar`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.factory_calendar` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'factory_calendar'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.factory_calendar`))) AS inserted_record_count
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
    