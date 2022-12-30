MERGE INTO `sap-adapter.slt_staging.transportation_scheduling_point` tgt
USING (
WITH ttds as
(select MANDT as client,
TPLST as transportplanpt,
FABKL as factory_calend,
ADRNR as address,
TPSID as id_transp_syst,
VTPARN as tps_partner_no,
VTPART as partnerty,
KSCHL as output_type,
NKETP as ext_no_range,
TRAEND as change_shipment,
STTRG as overall_status,
TPSSF as status_filter,
TPSTX1 as text_id,
TPSTX2 as text_id_1,
TPSTX3 as text_id_2,
BUKRS as company_code,
STAGEW as stats_wgt_unit,
STAVOL as stats_vol_unit,
STADIS as stats_dist_unit,
STACUR as stat_curr_unit,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct ttds.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.ttds` as ttds
where ttds._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'transportation_scheduling_point'),0))
select client as client_key,
transportplanpt as transportplanpt_key,
*
From  ttds
UNION ALL
select null as client_key,
null as transportplanpt_key,
ttds.*
From ttds as ttds
INNER JOIN `sap-adapter.slt_staging.transportation_scheduling_point` as uji
ON ttds.client = uji.client
AND ttds.transportplanpt = uji.transportplanpt
AND ttds.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.transportplanpt_key = tgt.transportplanpt
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
transportplanpt,
factory_calend,
address,
id_transp_syst,
tps_partner_no,
partnerty,
output_type,
ext_no_range,
change_shipment,
overall_status,
status_filter,
text_id,
text_id_1,
text_id_2,
company_code,
stats_wgt_unit,
stats_vol_unit,
stats_dist_unit,
stat_curr_unit,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.transportplanpt,
src.factory_calend,
src.address,
src.id_transp_syst,
src.tps_partner_no,
src.partnerty,
src.output_type,
src.ext_no_range,
src.change_shipment,
src.overall_status,
src.status_filter,
src.text_id,
src.text_id_1,
src.text_id_2,
src.company_code,
src.stats_wgt_unit,
src.stats_vol_unit,
src.stats_dist_unit,
src.stat_curr_unit,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'transportation_scheduling_point' as table_name
    		,'ttds' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'transportation_scheduling_point') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'transportation_scheduling_point') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.transportation_scheduling_point`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.transportation_scheduling_point` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'transportation_scheduling_point'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.transportation_scheduling_point`))) AS inserted_record_count
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
    