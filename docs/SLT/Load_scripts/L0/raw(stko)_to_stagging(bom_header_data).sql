MERGE INTO `sap-adapter.slt_staging.bom_header_data` tgt
USING (
WITH stko as
(select MANDT as client,
STLTY as bom_category,
STLNR as bom,
STLAL as alternative,
STKOZ as counter,
DATUV as valid_from,
TECHV as tech_st_from,
AENNR as change_number,
LKENZ as deletion_ind,
LOEKZ as deletion_flag,
VGKZL as prev_hdr_countr,
ANDAT as created_on,
ANNAM as created_by,
AEDAT as changed_on,
AENAM as changed_by,
BMEIN as base_uom,
BMENG as base_quantity,
CADKZ as cad_indicator,
LABOR as lab_office,
LTXSP as long_text_lang,
STKTX as alt_text,
STLST as bom_status,
WRKAN as created_in_plt,
DVDAT as scheduled_on,
DVNAM as date_shifted_by,
AEHLP as helper_field,
ALEKZ as ale_indicator,
GUIDX as guid,
VALID_TO as valid_to_date,
ECN_TO as change_no_to,
BOM_VERSN as bom_version,
VERSNST as bom_version_status,
VERSNLASTIND as latest_version,
LASTCHANGEDATETIME as time_stamp,
BOM_AIN_IND as bom_to_ain_handover,
BOM_PREV_VERSN as predecessor_version,
DUMMY_STKO_INCL_EEW_PS as ext_include,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct stko.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.stko` as stko
where stko._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'bom_header_data'),0))
select client as client_key,
bom_category as bom_category_key,
bom as bom_key,
alternative as alternative_key,
counter as counter_key,
*
From  stko
UNION ALL
select null as client_key,
null as bom_category_key,
null as bom_key,
null as alternative_key,
null as counter_key,
stko.*
From stko as stko
INNER JOIN `sap-adapter.slt_staging.bom_header_data` as uji
ON stko.client = uji.client
AND stko.bom_category = uji.bom_category
AND stko.bom = uji.bom
AND stko.alternative = uji.alternative
AND stko.counter = uji.counter
AND stko.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.bom_category_key = tgt.bom_category
AND src.bom_key = tgt.bom
AND src.alternative_key = tgt.alternative
AND src.counter_key = tgt.counter
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
bom_category,
bom,
alternative,
counter,
valid_from,
tech_st_from,
change_number,
deletion_ind,
deletion_flag,
prev_hdr_countr,
created_on,
created_by,
changed_on,
changed_by,
base_uom,
base_quantity,
cad_indicator,
lab_office,
long_text_lang,
alt_text,
bom_status,
created_in_plt,
scheduled_on,
date_shifted_by,
helper_field,
ale_indicator,
guid,
valid_to_date,
change_no_to,
bom_version,
bom_version_status,
latest_version,
time_stamp,
bom_to_ain_handover,
predecessor_version,
ext_include,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.bom_category,
src.bom,
src.alternative,
src.counter,
src.valid_from,
src.tech_st_from,
src.change_number,
src.deletion_ind,
src.deletion_flag,
src.prev_hdr_countr,
src.created_on,
src.created_by,
src.changed_on,
src.changed_by,
src.base_uom,
src.base_quantity,
src.cad_indicator,
src.lab_office,
src.long_text_lang,
src.alt_text,
src.bom_status,
src.created_in_plt,
src.scheduled_on,
src.date_shifted_by,
src.helper_field,
src.ale_indicator,
src.guid,
src.valid_to_date,
src.change_no_to,
src.bom_version,
src.bom_version_status,
src.latest_version,
src.time_stamp,
src.bom_to_ain_handover,
src.predecessor_version,
src.ext_include,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'bom_header_data' as table_name
    		,'stko' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'bom_header_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'bom_header_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.bom_header_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.bom_header_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'bom_header_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.bom_header_data`))) AS inserted_record_count
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
    