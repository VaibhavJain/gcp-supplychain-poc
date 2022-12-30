MERGE INTO `sap-adapter.slt_staging.shipment_cost_header` tgt
USING (
WITH vfkk as
(select MANDT as client,
FKNUM as shipmt_cost_no,
VBTYP as document_cat,
FKART as ship_cost_type,
STERM as determine_legs,
PRSDT as pricing_date,
BUDAT as settlement_date,
EXTI1 as external_id_1,
EXTI2 as external_id_2,
STBER as calculated,
STFRE as assigned,
STABR as transferred,
ERNAM as created_by,
ERDAT as created_on,
ERZET as entry_time,
AENAM as changed_by,
AEDAT as changed_on,
AEZET as time_of_change,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vfkk.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vfkk` as vfkk
where vfkk._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipment_cost_header'),0))
select client as client_key,
shipmt_cost_no as shipmt_cost_no_key,
*
From  vfkk
UNION ALL
select null as client_key,
null as shipmt_cost_no_key,
vfkk.*
From vfkk as vfkk
INNER JOIN `sap-adapter.slt_staging.shipment_cost_header` as uji
ON vfkk.client = uji.client
AND vfkk.shipmt_cost_no = uji.shipmt_cost_no
AND vfkk.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.shipmt_cost_no_key = tgt.shipmt_cost_no
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
shipmt_cost_no,
document_cat,
ship_cost_type,
determine_legs,
pricing_date,
settlement_date,
external_id_1,
external_id_2,
calculated,
assigned,
transferred,
created_by,
created_on,
entry_time,
changed_by,
changed_on,
time_of_change,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.shipmt_cost_no,
src.document_cat,
src.ship_cost_type,
src.determine_legs,
src.pricing_date,
src.settlement_date,
src.external_id_1,
src.external_id_2,
src.calculated,
src.assigned,
src.transferred,
src.created_by,
src.created_on,
src.entry_time,
src.changed_by,
src.changed_on,
src.time_of_change,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipment_cost_header' as table_name
    		,'vfkk' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_header') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_header') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipment_cost_header`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_header` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipment_cost_header'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_header`))) AS inserted_record_count
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
    