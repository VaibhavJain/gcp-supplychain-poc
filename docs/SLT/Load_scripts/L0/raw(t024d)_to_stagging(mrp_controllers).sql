MERGE INTO `sap-adapter.slt_staging.mrp_controllers` tgt
USING (
WITH t024d as
(select MANDT as client,
WERKS as plant,
DISPO as mrp_controller,
DSNAM as controller_name,
DSTEL as tel_no_mrp_contrl,
EKGRP as purch_group,
MEMPF as recipient_name,
GSBER as business_area,
PRCTR as profit_center,
USRTYP as recipient_type,
USRKEY as recipient,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t024d.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t024d` as t024d
where t024d._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'mrp_controllers'),0))
select client as client_key,
plant as plant_key,
mrp_controller as mrp_controller_key,
*
From  t024d
UNION ALL
select null as client_key,
null as plant_key,
null as mrp_controller_key,
t024d.*
From t024d as t024d
INNER JOIN `sap-adapter.slt_staging.mrp_controllers` as uji
ON t024d.client = uji.client
AND t024d.plant = uji.plant
AND t024d.mrp_controller = uji.mrp_controller
AND t024d.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.plant_key = tgt.plant
AND src.mrp_controller_key = tgt.mrp_controller
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
plant,
mrp_controller,
controller_name,
tel_no_mrp_contrl,
purch_group,
recipient_name,
business_area,
profit_center,
recipient_type,
recipient,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.plant,
src.mrp_controller,
src.controller_name,
src.tel_no_mrp_contrl,
src.purch_group,
src.recipient_name,
src.business_area,
src.profit_center,
src.recipient_type,
src.recipient,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'mrp_controllers' as table_name
    		,'t024d' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'mrp_controllers') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'mrp_controllers') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.mrp_controllers`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.mrp_controllers` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'mrp_controllers'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.mrp_controllers`))) AS inserted_record_count
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
    