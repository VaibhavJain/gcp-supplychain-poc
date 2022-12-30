MERGE INTO `sap-adapter.slt_staging.purchase_requisition_account_assignment` tgt
USING (
WITH ebkn as
(select MANDT as client,
BANFN as purchase_req,
BNFPO as requisn_item,
ZEBKN as ser_no_acc_ass,
LOEKZ as deletion_ind,
ERDAT as created_on,
ERNAM as created_by,
MENGE as quantity,
VPROZ as distribution,
SAKTO as g_l_account,
GSBER as business_area,
KOSTL as cost_center,
PROJN as not_in_use,
VBELN as sales_document,
VBELP as item,
VETEN as schedule_line,
ANLN1 as asset,
ANLN2 as sub_number,
AUFNR as order_number,
WEMPF as recipient,
ABLAD as unloading_point,
KOKRS as co_area,
XBKST as posting_to_cost_cent,
XBAUF as to_order,
XBPRO as to_project,
KSTRG as cost_object,
PAOBJNR as profit_segment,
PRCTR as profit_center,
PS_PSP_PNR as wbs_element,
NPLNR as network,
AUFPL as plan_no_f_oper,
IMKEY as real_estate_key,
APLZL as counter,
VPTNR as partner,
FIPOS as commitment_item,
RECID as recovery_indic,
FISTL as funds_center,
GEBER as fund,
FKBER as functional_area,
DABRZ as reference_date,
NETWR as net_value,
AUFPL_ORD as plan_no_f_oper_1,
APLZL_ORD as counter_1,
EXTWBSELEMENT as wbs_element_1,
EXTVORNR as network_activity,
SERVICE_DOC_TYPE as service_doc_type,
SERVICE_DOC_ID as service_document,
SERVICE_DOC_ITEM_ID as service_doc_item,
KBLNR as earmarked_funds,
KBLPOS as document_item,
LSTAR as activity_type,
PRZNR as business_proc,
GRANT_NBR as grants,
FM_SPLIT_BATCH as dist_batch_no,
FM_SPLIT_BEGRU as auth_group,
BUDGET_PD as budget_period,
DUMMY_INCL_EEW_COBL as dummy,
FMFGUS_KEY as us_govt,
EGRUP as equity_group,
VNAME as joint_venture,
TCOBJNR as object_number,
DATEOFSERVICE as date_of_service,
NOTAXCORR as do_not_correct,
DIFFOPTRATE as option_rate,
HASDIFFOPTRATE as diff_opt_rate,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct ebkn.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.ebkn` as ebkn
where ebkn._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'purchase_requisition_account_assignment'),0))
select client as client_key,
purchase_req as purchase_req_key,
requisn_item as requisn_item_key,
ser_no_acc_ass as ser_no_acc_ass_key,
*
From  ebkn
UNION ALL
select null as client_key,
null as purchase_req_key,
null as requisn_item_key,
null as ser_no_acc_ass_key,
ebkn.*
From ebkn as ebkn
INNER JOIN `sap-adapter.slt_staging.purchase_requisition_account_assignment` as uji
ON ebkn.client = uji.client
AND ebkn.purchase_req = uji.purchase_req
AND ebkn.requisn_item = uji.requisn_item
AND ebkn.ser_no_acc_ass = uji.ser_no_acc_ass
AND ebkn.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.purchase_req_key = tgt.purchase_req
AND src.requisn_item_key = tgt.requisn_item
AND src.ser_no_acc_ass_key = tgt.ser_no_acc_ass
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
purchase_req,
requisn_item,
ser_no_acc_ass,
deletion_ind,
created_on,
created_by,
quantity,
distribution,
g_l_account,
business_area,
cost_center,
not_in_use,
sales_document,
item,
schedule_line,
asset,
sub_number,
order_number,
recipient,
unloading_point,
co_area,
posting_to_cost_cent,
to_order,
to_project,
cost_object,
profit_segment,
profit_center,
wbs_element,
network,
plan_no_f_oper,
real_estate_key,
counter,
partner,
commitment_item,
recovery_indic,
funds_center,
fund,
functional_area,
reference_date,
net_value,
plan_no_f_oper_1,
counter_1,
wbs_element_1,
network_activity,
service_doc_type,
service_document,
service_doc_item,
earmarked_funds,
document_item,
activity_type,
business_proc,
grants,
dist_batch_no,
auth_group,
budget_period,
dummy,
us_govt,
equity_group,
joint_venture,
object_number,
date_of_service,
do_not_correct,
option_rate,
diff_opt_rate,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.purchase_req,
src.requisn_item,
src.ser_no_acc_ass,
src.deletion_ind,
src.created_on,
src.created_by,
src.quantity,
src.distribution,
src.g_l_account,
src.business_area,
src.cost_center,
src.not_in_use,
src.sales_document,
src.item,
src.schedule_line,
src.asset,
src.sub_number,
src.order_number,
src.recipient,
src.unloading_point,
src.co_area,
src.posting_to_cost_cent,
src.to_order,
src.to_project,
src.cost_object,
src.profit_segment,
src.profit_center,
src.wbs_element,
src.network,
src.plan_no_f_oper,
src.real_estate_key,
src.counter,
src.partner,
src.commitment_item,
src.recovery_indic,
src.funds_center,
src.fund,
src.functional_area,
src.reference_date,
src.net_value,
src.plan_no_f_oper_1,
src.counter_1,
src.wbs_element_1,
src.network_activity,
src.service_doc_type,
src.service_document,
src.service_doc_item,
src.earmarked_funds,
src.document_item,
src.activity_type,
src.business_proc,
src.grants,
src.dist_batch_no,
src.auth_group,
src.budget_period,
src.dummy,
src.us_govt,
src.equity_group,
src.joint_venture,
src.object_number,
src.date_of_service,
src.do_not_correct,
src.option_rate,
src.diff_opt_rate,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'purchase_requisition_account_assignment' as table_name
    		,'ebkn' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_requisition_account_assignment') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_requisition_account_assignment') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.purchase_requisition_account_assignment`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_requisition_account_assignment` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'purchase_requisition_account_assignment'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_requisition_account_assignment`))) AS inserted_record_count
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
    