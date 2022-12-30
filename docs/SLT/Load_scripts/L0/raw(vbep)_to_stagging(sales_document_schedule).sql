MERGE INTO `sap-adapter.slt_staging.sales_document_schedule` tgt
USING (
WITH vbep as
(select MANDT as client,
VBELN as sales_document,
POSNR as item,
ETENR as schedule_line,
ETTYP as sched_line_cat,
LFREL as item_rel_f_dlv,
EDATU as delivery_date,
EZEIT as arrival_time,
WMENG as order_quantity,
BMENG as confirmed_qty,
VRKME as sales_unit,
LMENG as required_qty,
MEINS as base_unit,
BDDAT as requirement_dte,
BDART as requirementtype,
PLART as planning_type,
VBELE as business_docum,
POSNE as items,
ETENE as schedule_line_1,
RSDAT as reservation_number,
IDNNR as maintenance_req,
BANFN as purchase_req,
BSART as order_type,
BSTYP as doc_category,
WEPOS as confirm_status,
REPOS as invoice_receipt,
LRGDT as returnpackaging,
PRGRS as date_type,
TDDAT as transpplngdate,
MBDAT as mat_avail_date,
LDDAT as loading_date,
WADAT as goods_issue,
CMENG as corr_qty,
LIFSP as delivery_block,
GRSTR as group_definition_of_structure,
ABART as release_type,
ABRUF as f_dlv_sched,
ROMS1 as committed_qty,
ROMS2 as size_2,
ROMS3 as size_3,
ROMEI as size_unit,
RFORM as formula_key,
UMVKZ as numerator,
UMVKN as denominat,
VERFP as avail_confirm,
BWART as movement_type,
BNFPO as requisn_item,
ETART as sched_line_type,
AUFNR as order_number,
PLNUM as planned_order,
SERNR as bom_expl_number,
AESKD as engin_change,
ABGES as guaranteed,
MBUHR as matl_staging_tme,
TDUHR as tr_plan_time,
LDUHR as loading_time,
WAUHR as gi_time,
AULWE as route_schedule,
HANDOVERDATE as handover_date,
HANDOVERTIME as handover_time,
DLVQTY_BU as delivered_qty,
DLVQTY_SU as delivered_qty_1,
OCDQTY_BU as open_quantity,
OCDQTY_SU as open_quantity_1,
ORDQTY_BU as open_quantity_2,
ORDQTY_SU as open_quantity_3,
CREA_DLVDATE as delivery_date_1,
REQ_DLVDATE as delivery_date_2,
BEDAR as reqmts_class,
_DATAAGING as data_filter_value_for_data_agi,
WAERK as doc_currency,
ODN_AMOUNT as open_delivery_amount,
HANDLE as guid_16,
LCCST as legal_status,
RRQQTY_BU as reqd_rqmt_qty,
CRQQTY_BU as confd_rqmt_qty,
DUMMY_SLSDOCSCHEDL_INCL_EEW_PS as dummy_function_in_length_1,
FSH_RALLOC_QTY as alloc_qty,
FSH_OS_ID as order_sch_gr_id,
FSH_PQR_RC as rejection_code,
MBDAT_DRS as mat_av_date_tpp,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbep.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbep` as vbep
where vbep._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'sales_document_schedule'),0))
select client as client_key,
sales_document as sales_document_key,
item as item_key,
schedule_line as schedule_line_key,
*
From  vbep
UNION ALL
select null as client_key,
null as sales_document_key,
null as item_key,
null as schedule_line_key,
vbep.*
From vbep as vbep
INNER JOIN `sap-adapter.slt_staging.sales_document_schedule` as uji
ON vbep.client = uji.client
AND vbep.sales_document = uji.sales_document
AND vbep.item = uji.item
AND vbep.schedule_line = uji.schedule_line
AND vbep.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.sales_document_key = tgt.sales_document
AND src.item_key = tgt.item
AND src.schedule_line_key = tgt.schedule_line
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
sales_document,
item,
schedule_line,
sched_line_cat,
item_rel_f_dlv,
delivery_date,
arrival_time,
order_quantity,
confirmed_qty,
sales_unit,
required_qty,
base_unit,
requirement_dte,
requirementtype,
planning_type,
business_docum,
items,
schedule_line_1,
reservation_number,
maintenance_req,
purchase_req,
order_type,
doc_category,
confirm_status,
invoice_receipt,
returnpackaging,
date_type,
transpplngdate,
mat_avail_date,
loading_date,
goods_issue,
corr_qty,
delivery_block,
group_definition_of_structure,
release_type,
f_dlv_sched,
committed_qty,
size_2,
size_3,
size_unit,
formula_key,
numerator,
denominat,
avail_confirm,
movement_type,
requisn_item,
sched_line_type,
order_number,
planned_order,
bom_expl_number,
engin_change,
guaranteed,
matl_staging_tme,
tr_plan_time,
loading_time,
gi_time,
route_schedule,
handover_date,
handover_time,
delivered_qty,
delivered_qty_1,
open_quantity,
open_quantity_1,
open_quantity_2,
open_quantity_3,
delivery_date_1,
delivery_date_2,
reqmts_class,
data_filter_value_for_data_agi,
doc_currency,
open_delivery_amount,
guid_16,
legal_status,
reqd_rqmt_qty,
confd_rqmt_qty,
dummy_function_in_length_1,
alloc_qty,
order_sch_gr_id,
rejection_code,
mat_av_date_tpp,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.sales_document,
src.item,
src.schedule_line,
src.sched_line_cat,
src.item_rel_f_dlv,
src.delivery_date,
src.arrival_time,
src.order_quantity,
src.confirmed_qty,
src.sales_unit,
src.required_qty,
src.base_unit,
src.requirement_dte,
src.requirementtype,
src.planning_type,
src.business_docum,
src.items,
src.schedule_line_1,
src.reservation_number,
src.maintenance_req,
src.purchase_req,
src.order_type,
src.doc_category,
src.confirm_status,
src.invoice_receipt,
src.returnpackaging,
src.date_type,
src.transpplngdate,
src.mat_avail_date,
src.loading_date,
src.goods_issue,
src.corr_qty,
src.delivery_block,
src.group_definition_of_structure,
src.release_type,
src.f_dlv_sched,
src.committed_qty,
src.size_2,
src.size_3,
src.size_unit,
src.formula_key,
src.numerator,
src.denominat,
src.avail_confirm,
src.movement_type,
src.requisn_item,
src.sched_line_type,
src.order_number,
src.planned_order,
src.bom_expl_number,
src.engin_change,
src.guaranteed,
src.matl_staging_tme,
src.tr_plan_time,
src.loading_time,
src.gi_time,
src.route_schedule,
src.handover_date,
src.handover_time,
src.delivered_qty,
src.delivered_qty_1,
src.open_quantity,
src.open_quantity_1,
src.open_quantity_2,
src.open_quantity_3,
src.delivery_date_1,
src.delivery_date_2,
src.reqmts_class,
src.data_filter_value_for_data_agi,
src.doc_currency,
src.open_delivery_amount,
src.guid_16,
src.legal_status,
src.reqd_rqmt_qty,
src.confd_rqmt_qty,
src.dummy_function_in_length_1,
src.alloc_qty,
src.order_sch_gr_id,
src.rejection_code,
src.mat_av_date_tpp,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'sales_document_schedule' as table_name
    		,'vbep' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_schedule') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_schedule') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.sales_document_schedule`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_schedule` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'sales_document_schedule'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_schedule`))) AS inserted_record_count
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
    