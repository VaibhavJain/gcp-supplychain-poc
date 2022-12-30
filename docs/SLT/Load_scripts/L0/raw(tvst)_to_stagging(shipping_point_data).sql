MERGE INTO `sap-adapter.slt_staging.shipping_point_data` tgt
USING (
WITH tvst as
(select MANDT as client,
VSTEL as shipping_point,
FABKL as factory_calend,
VTRZT as rounding_upper,
ADRNR as address,
ALAND as country,
AZONE as departure_zone,
TXNAM_ADR as address_text,
TXNAM_KOP as letter_header,
TXNAM_FUS as footer_text_li,
TXNAM_GRU as greeting_text,
KSCHL as output_type,
SPRAS as message_language,
ANZAL as number,
VSZTP as date_time,
NACHA as transm_medium,
LAZBS as det_loadingtime,
RIZBS as det_pickpackti,
LAZZT as default_loading_time,
RIZZT as def_pickpackti,
KOQUI as pick_confirmat,
KOMSU as subsystem,
IMESS as display_info,
TXNAM_SDB as text_sds_sender,
ALW_SW as rte_sched_act,
LOADTG as load_time_w_days,
LOADTN as load_time_hrs,
PIPATG as pick_pack_wday,
PIPATN as pick_pack_time,
TSTRID as working_times,
ROUNDG as rounding_wkdys,
ROUNDN as rounding_wk_hrs,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct tvst.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.tvst` as tvst
where tvst._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipping_point_data'),0))
select client as client_key,
shipping_point as shipping_point_key,
*
From  tvst
UNION ALL
select null as client_key,
null as shipping_point_key,
tvst.*
From tvst as tvst
INNER JOIN `sap-adapter.slt_staging.shipping_point_data` as uji
ON tvst.client = uji.client
AND tvst.shipping_point = uji.shipping_point
AND tvst.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.shipping_point_key = tgt.shipping_point
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
shipping_point,
factory_calend,
rounding_upper,
address,
country,
departure_zone,
address_text,
letter_header,
footer_text_li,
greeting_text,
output_type,
message_language,
number,
date_time,
transm_medium,
det_loadingtime,
det_pickpackti,
default_loading_time,
def_pickpackti,
pick_confirmat,
subsystem,
display_info,
text_sds_sender,
rte_sched_act,
load_time_w_days,
load_time_hrs,
pick_pack_wday,
pick_pack_time,
working_times,
rounding_wkdys,
rounding_wk_hrs,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.shipping_point,
src.factory_calend,
src.rounding_upper,
src.address,
src.country,
src.departure_zone,
src.address_text,
src.letter_header,
src.footer_text_li,
src.greeting_text,
src.output_type,
src.message_language,
src.number,
src.date_time,
src.transm_medium,
src.det_loadingtime,
src.det_pickpackti,
src.default_loading_time,
src.def_pickpackti,
src.pick_confirmat,
src.subsystem,
src.display_info,
src.text_sds_sender,
src.rte_sched_act,
src.load_time_w_days,
src.load_time_hrs,
src.pick_pack_wday,
src.pick_pack_time,
src.working_times,
src.rounding_wkdys,
src.rounding_wk_hrs,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipping_point_data' as table_name
    		,'tvst' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipping_point_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipping_point_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipping_point_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipping_point_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipping_point_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipping_point_data`))) AS inserted_record_count
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
    