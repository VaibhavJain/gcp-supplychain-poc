MERGE INTO `sap-adapter.slt_staging.purchae_order_schedule_line_detail` tgt
USING (
WITH eket as
(select MANDT as client,
EBELN as purchasing_doc,
EBELP as item,
ETENR as schedule_line,
UNIQUEID as schedule_line_1,
EINDT as delivery_date,
SLFDT as stat_del_date,
LPEIN as delivery_date_1,
MENGE as scheduled_qty,
AMENG as previous_qty,
WEMNG as delivered,
WAMNG as issued,
UZEIT as delivery_date_time,
BANFN as purchase_req,
BNFPO as requisn_item,
ESTKZ as creation_ind,
QUNUM as quota_arr,
QUPOS as quota_arr_item,
MAHNZ as no_rem_exp,
BEDAT as purchorderdate,
RSNUM as reservation_number,
SERNR as bom_expl_number,
FIXKZ as fixing_ind,
GLMNG as qty_delivered,
DABMG as qty_reduced,
CHARG as batch,
LICHA as supplier_batch,
CHKOM as components_chg,
VERID as prod_version,
ABART as release_type,
MNG02 as committed_qty,
DAT01 as committed_date,
ALTDT as prev_deliv_date,
AULWE as route_schedule,
MBDAT as mat_avail_date,
MBUHR as matl_staging_tme,
LDDAT as loading_date,
LDUHR as loading_time,
TDDAT as transpplngdate,
TDUHR as tr_plan_time,
WADAT as goods_issue,
WAUHR as gi_time,
ELDAT as gr_end_date,
ELUHR as gr_end_time,
ANZSN as no_serial_no,
NODISP as res_purc_req,
GEO_ROUTE as georoute,
ROUTE_GTS as gtsroutecode,
GTS_IND as gds_traffic_ty,
TSP as fwd_agent,
CD_LOCNO as apo_location,
CD_LOCTYPE as apo_locatn_type,
HANDOVERDATE as handover_date,
HANDOVERTIME as handover_time,
STARTDATE as start_date,
ENDDATE as end_date,
_DATAAGING as data_filter_value_for_data_agi,
__CWM__MENGE as cw_sched_line_qty,
__CWM__DABMG as cw_mrp_reduced_qty,
__CWM__WEMNG as par_gr_qty,
TMS_REF_UUID as guid_of_sap_tm,
ARUN_REQ_DLVDATE as input_date,
FSH_RALLOC_QTY as alloc_qty,
FSH_SALLOC_QTY as allocated_stock,
FSH_OS_ID as order_sch_gr_id,
KEY_ID as budget_number,
OTB_VALUE as required_budget,
OTB_CURR as otb_currency,
OTB_RES_VALUE as reserved_budget,
OTB_SPEC_VALUE as special_release,
SPR_RSN_PROFILE as otb_reason_profile,
BUDG_TYPE as budget_type,
OTB_STATUS as otb_status,
OTB_REASON as reason,
CHECK_TYPE as type_of_otb_check,
DL_ID as dateline_id,
HANDOVER_DATE as transfer_date,
NO_SCEM as no_scem_contr,
DNG_DATE as rem_date,
DNG_TIME as reminder_time,
CNCL_ANCMNT_DONE as cancel_threat_made,
DATESHIFT_NUMBER as no_date_shifts,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct eket.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.eket` as eket
where eket._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'purchae_order_schedule_line_detail'),0))
select client as client_key,
purchasing_doc as purchasing_doc_key,
item as item_key,
schedule_line as schedule_line_key,
*
From  eket
UNION ALL
select null as client_key,
null as purchasing_doc_key,
null as item_key,
null as schedule_line_key,
eket.*
From eket as eket
INNER JOIN `sap-adapter.slt_staging.purchae_order_schedule_line_detail` as uji
ON eket.client = uji.client
AND eket.purchasing_doc = uji.purchasing_doc
AND eket.item = uji.item
AND eket.schedule_line = uji.schedule_line
AND eket.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.purchasing_doc_key = tgt.purchasing_doc
AND src.item_key = tgt.item
AND src.schedule_line_key = tgt.schedule_line
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
purchasing_doc,
item,
schedule_line,
schedule_line_1,
delivery_date,
stat_del_date,
delivery_date_1,
scheduled_qty,
previous_qty,
delivered,
issued,
delivery_date_time,
purchase_req,
requisn_item,
creation_ind,
quota_arr,
quota_arr_item,
no_rem_exp,
purchorderdate,
reservation_number,
bom_expl_number,
fixing_ind,
qty_delivered,
qty_reduced,
batch,
supplier_batch,
components_chg,
prod_version,
release_type,
committed_qty,
committed_date,
prev_deliv_date,
route_schedule,
mat_avail_date,
matl_staging_tme,
loading_date,
loading_time,
transpplngdate,
tr_plan_time,
goods_issue,
gi_time,
gr_end_date,
gr_end_time,
no_serial_no,
res_purc_req,
georoute,
gtsroutecode,
gds_traffic_ty,
fwd_agent,
apo_location,
apo_locatn_type,
handover_date,
handover_time,
start_date,
end_date,
data_filter_value_for_data_agi,
cw_sched_line_qty,
cw_mrp_reduced_qty,
par_gr_qty,
guid_of_sap_tm,
input_date,
alloc_qty,
allocated_stock,
order_sch_gr_id,
budget_number,
required_budget,
otb_currency,
reserved_budget,
special_release,
otb_reason_profile,
budget_type,
otb_status,
reason,
type_of_otb_check,
dateline_id,
transfer_date,
no_scem_contr,
rem_date,
reminder_time,
cancel_threat_made,
no_date_shifts,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.purchasing_doc,
src.item,
src.schedule_line,
src.schedule_line_1,
src.delivery_date,
src.stat_del_date,
src.delivery_date_1,
src.scheduled_qty,
src.previous_qty,
src.delivered,
src.issued,
src.delivery_date_time,
src.purchase_req,
src.requisn_item,
src.creation_ind,
src.quota_arr,
src.quota_arr_item,
src.no_rem_exp,
src.purchorderdate,
src.reservation_number,
src.bom_expl_number,
src.fixing_ind,
src.qty_delivered,
src.qty_reduced,
src.batch,
src.supplier_batch,
src.components_chg,
src.prod_version,
src.release_type,
src.committed_qty,
src.committed_date,
src.prev_deliv_date,
src.route_schedule,
src.mat_avail_date,
src.matl_staging_tme,
src.loading_date,
src.loading_time,
src.transpplngdate,
src.tr_plan_time,
src.goods_issue,
src.gi_time,
src.gr_end_date,
src.gr_end_time,
src.no_serial_no,
src.res_purc_req,
src.georoute,
src.gtsroutecode,
src.gds_traffic_ty,
src.fwd_agent,
src.apo_location,
src.apo_locatn_type,
src.handover_date,
src.handover_time,
src.start_date,
src.end_date,
src.data_filter_value_for_data_agi,
src.cw_sched_line_qty,
src.cw_mrp_reduced_qty,
src.par_gr_qty,
src.guid_of_sap_tm,
src.input_date,
src.alloc_qty,
src.allocated_stock,
src.order_sch_gr_id,
src.budget_number,
src.required_budget,
src.otb_currency,
src.reserved_budget,
src.special_release,
src.otb_reason_profile,
src.budget_type,
src.otb_status,
src.reason,
src.type_of_otb_check,
src.dateline_id,
src.transfer_date,
src.no_scem_contr,
src.rem_date,
src.reminder_time,
src.cancel_threat_made,
src.no_date_shifts,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'purchae_order_schedule_line_detail' as table_name
    		,'eket' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchae_order_schedule_line_detail') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchae_order_schedule_line_detail') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.purchae_order_schedule_line_detail`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.purchae_order_schedule_line_detail` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'purchae_order_schedule_line_detail'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.purchae_order_schedule_line_detail`))) AS inserted_record_count
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
    