MERGE INTO `sap-adapter.slt_staging.transfer_order_header` tgt
USING (
WITH ltak as
(select MANDT as client,
LGNUM as warehouse_no,
TANUM as to_number,
BWART as movement_type,
BWLVS as movement_type_1,
TBPRI as trnsfr_priority,
TRART as shipment_type,
BDATU as creation_date,
BZEIT as creation_time,
BNAME as user_number,
REFNR as group_number,
TBNUM as tr_number,
UBNUM as posting_chge_no,
VBELN as sales_document,
KQUIT as confirmation,
QDATU as confirmat_date,
MBLNR as material_doc,
MJAHR as mat_doc_year,
BETYP as req_type,
BENUM as req_number,
DRUKZ as print_code,
DRUCK as to_printed,
TEILK as partially_supp,
KR2SO as ind_immediately,
KR2KU as ind_accumulated,
KDISO as diff_immediat,
KZPLA as ind_planned,
PLDAT as execution_date,
RSNUM as reservation_number,
LZNUM as additional_number,
BDART as requirementtype,
PKNUM as control_cycle,
PKPOS as kanban_item,
KZLEI as performancedata,
KISTZ as act_time_req_in_to,
KISTP as reqmt_act_data,
PERNR as personnel_no,
SOLWM as plan_time_wm,
SOLEX as plan_time_ext,
ISTWM as actual_time_of_to,
ZEIEI as time_unit,
HRSTS as to_hr_status,
STDAT as start_date,
ENDAT as end_date,
STUZT as start_time,
ENUZT as end_time,
L2SKA as to_type,
MINWM as lean_wm,
LGTOR as door_for_whse,
LGBZO as staging_area,
KZVEP as packaging_in_wm,
SWABW as deviation_pln_actual,
AUSFB as to_proc_comment,
SPEZI as special_ref,
VBTYP as document_cat,
QUEUE as queue,
KGVNQ as separate_conf,
TAPRI as to_priority,
KVQUI as pick_confirmed,
HUCON as confirm_hu,
NOITM as number_of_items,
KZTRM as trm,
LATER as delayed_update,
PASSD as conf_transfrd,
MULTL as to_for_mult_del,
LFDAT as delivery_date,
LFUHR as timeofdelivery,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct ltak.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.ltak` as ltak
where ltak._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'transfer_order_header'),0))
select client as client_key,
warehouse_no as warehouse_no_key,
to_number as to_number_key,
*
From  ltak
UNION ALL
select null as client_key,
null as warehouse_no_key,
null as to_number_key,
ltak.*
From ltak as ltak
INNER JOIN `sap-adapter.slt_staging.transfer_order_header` as uji
ON ltak.client = uji.client
AND ltak.warehouse_no = uji.warehouse_no
AND ltak.to_number = uji.to_number
AND ltak.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.warehouse_no_key = tgt.warehouse_no
AND src.to_number_key = tgt.to_number
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
warehouse_no,
to_number,
movement_type,
movement_type_1,
trnsfr_priority,
shipment_type,
creation_date,
creation_time,
user_number,
group_number,
tr_number,
posting_chge_no,
sales_document,
confirmation,
confirmat_date,
material_doc,
mat_doc_year,
req_type,
req_number,
print_code,
to_printed,
partially_supp,
ind_immediately,
ind_accumulated,
diff_immediat,
ind_planned,
execution_date,
reservation_number,
additional_number,
requirementtype,
control_cycle,
kanban_item,
performancedata,
act_time_req_in_to,
reqmt_act_data,
personnel_no,
plan_time_wm,
plan_time_ext,
actual_time_of_to,
time_unit,
to_hr_status,
start_date,
end_date,
start_time,
end_time,
to_type,
lean_wm,
door_for_whse,
staging_area,
packaging_in_wm,
deviation_pln_actual,
to_proc_comment,
special_ref,
document_cat,
queue,
separate_conf,
to_priority,
pick_confirmed,
confirm_hu,
number_of_items,
trm,
delayed_update,
conf_transfrd,
to_for_mult_del,
delivery_date,
timeofdelivery,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.warehouse_no,
src.to_number,
src.movement_type,
src.movement_type_1,
src.trnsfr_priority,
src.shipment_type,
src.creation_date,
src.creation_time,
src.user_number,
src.group_number,
src.tr_number,
src.posting_chge_no,
src.sales_document,
src.confirmation,
src.confirmat_date,
src.material_doc,
src.mat_doc_year,
src.req_type,
src.req_number,
src.print_code,
src.to_printed,
src.partially_supp,
src.ind_immediately,
src.ind_accumulated,
src.diff_immediat,
src.ind_planned,
src.execution_date,
src.reservation_number,
src.additional_number,
src.requirementtype,
src.control_cycle,
src.kanban_item,
src.performancedata,
src.act_time_req_in_to,
src.reqmt_act_data,
src.personnel_no,
src.plan_time_wm,
src.plan_time_ext,
src.actual_time_of_to,
src.time_unit,
src.to_hr_status,
src.start_date,
src.end_date,
src.start_time,
src.end_time,
src.to_type,
src.lean_wm,
src.door_for_whse,
src.staging_area,
src.packaging_in_wm,
src.deviation_pln_actual,
src.to_proc_comment,
src.special_ref,
src.document_cat,
src.queue,
src.separate_conf,
src.to_priority,
src.pick_confirmed,
src.confirm_hu,
src.number_of_items,
src.trm,
src.delayed_update,
src.conf_transfrd,
src.to_for_mult_del,
src.delivery_date,
src.timeofdelivery,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'transfer_order_header' as table_name
    		,'ltak' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'transfer_order_header') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'transfer_order_header') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.transfer_order_header`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.transfer_order_header` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'transfer_order_header'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.transfer_order_header`))) AS inserted_record_count
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
    