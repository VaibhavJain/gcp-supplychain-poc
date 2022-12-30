MERGE INTO `sap-adapter.slt_staging.shipment_cost_accounting` tgt
USING (
WITH vfkn as
(select MANDT as client,
FKNUM as shipmt_cost_no,
FKPOS as item,
LFNKN as seq_number,
AEDAT as created_on,
NOACT as inactive,
KFLAG as change_flag_purchasing_curre,
NETWR as net_value,
RETYP as document_cat,
REBEL as ref_doc_no,
REPOS as ref_item_no,
SAKTO as g_l_account,
GSBER as business_area,
KOSTL as cost_center,
PROJNR as wbs_element,
VBELN as sales_document,
VBELP as item_1,
ANLN1 as asset,
ANLN2 as sub_number,
AUFNR as order_number,
KOKRS as co_area,
KSTRG as cost_object,
PAOBJNR as profit_segment,
PRCTR as profit_center,
PS_PSP_PNR as wbs_element_1,
NPLNR as network,
VORNR as activity,
AUFPL as plan_no_f_oper,
IMKEY as real_estate_key,
APLZL as counter,
VPTNR as partner,
FIPOS as commitment_item,
RECID as recovery_indic,
FISTL as funds_center,
GEBER as fund,
FKBER as functional_area,
WERKS as plant,
GRANT_NBR as grants,
DABRZ as reference_date,
LSTAR as activity_type,
PRZNR as business_proc,
BUDGET_PD as budget_period,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vfkn.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vfkn` as vfkn
where vfkn._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipment_cost_accounting'),0))
select client as client_key,
shipmt_cost_no as shipmt_cost_no_key,
item as item_key,
seq_number as seq_number_key,
*
From  vfkn
UNION ALL
select null as client_key,
null as shipmt_cost_no_key,
null as item_key,
null as seq_number_key,
vfkn.*
From vfkn as vfkn
INNER JOIN `sap-adapter.slt_staging.shipment_cost_accounting` as uji
ON vfkn.client = uji.client
AND vfkn.shipmt_cost_no = uji.shipmt_cost_no
AND vfkn.item = uji.item
AND vfkn.seq_number = uji.seq_number
AND vfkn.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.shipmt_cost_no_key = tgt.shipmt_cost_no
AND src.item_key = tgt.item
AND src.seq_number_key = tgt.seq_number
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
shipmt_cost_no,
item,
seq_number,
created_on,
inactive,
change_flag_purchasing_curre,
net_value,
document_cat,
ref_doc_no,
ref_item_no,
g_l_account,
business_area,
cost_center,
wbs_element,
sales_document,
item_1,
asset,
sub_number,
order_number,
co_area,
cost_object,
profit_segment,
profit_center,
wbs_element_1,
network,
activity,
plan_no_f_oper,
real_estate_key,
counter,
partner,
commitment_item,
recovery_indic,
funds_center,
fund,
functional_area,
plant,
grants,
reference_date,
activity_type,
business_proc,
budget_period,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.shipmt_cost_no,
src.item,
src.seq_number,
src.created_on,
src.inactive,
src.change_flag_purchasing_curre,
src.net_value,
src.document_cat,
src.ref_doc_no,
src.ref_item_no,
src.g_l_account,
src.business_area,
src.cost_center,
src.wbs_element,
src.sales_document,
src.item_1,
src.asset,
src.sub_number,
src.order_number,
src.co_area,
src.cost_object,
src.profit_segment,
src.profit_center,
src.wbs_element_1,
src.network,
src.activity,
src.plan_no_f_oper,
src.real_estate_key,
src.counter,
src.partner,
src.commitment_item,
src.recovery_indic,
src.funds_center,
src.fund,
src.functional_area,
src.plant,
src.grants,
src.reference_date,
src.activity_type,
src.business_proc,
src.budget_period,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipment_cost_accounting' as table_name
    		,'vfkn' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_accounting') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_accounting') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipment_cost_accounting`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_accounting` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipment_cost_accounting'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_accounting`))) AS inserted_record_count
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
    