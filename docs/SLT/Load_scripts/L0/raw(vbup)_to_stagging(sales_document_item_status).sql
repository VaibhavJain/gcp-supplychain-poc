MERGE INTO `sap-adapter.slt_staging.sales_document_item_status` tgt
USING (
WITH vbup as
(select MANDT as client,
VBELN as sales_document,
POSNR as item,
RFSTA as reference_sts,
RFGSA as reference_stat,
BESTA as confirmed,
LFSTA as delivery_status,
LFGSA as ovrl_delvry_sts,
WBSTA as goodsmovementst,
FKSTA as billing_status,
FKSAA as billing_status_1,
ABSTA as rejection_sts,
GBSTA as overall_status,
KOSTA as picking_status,
LVSTA as wm_activ_status,
UVALL as item_1,
UVVLK as item_deliv_data,
UVFAK as item_bill_data,
UVPRS as pricing,
FKIVP as interco_billst,
UVP01 as item_reserves_1,
UVP02 as item_reserves_2,
UVP03 as item_reserves_3,
UVP04 as item_reserves_4,
UVP05 as item_reserves_5,
PKSTA as packing_status,
KOQUA as confirmation,
COSTA as confirm_status,
CMPPI as financial_doc,
CMPPJ as exptcreditinsur,
UVPIK as item_data_pck_putawy,
UVPAK as it_data_pckgng,
UVWAK as item_data_gm,
DCSTA as delay_status,
RRSTA as rev_det_status,
VLSTP as decentr_whse,
FSSTA as billg_block_sts,
LSSTA as dlv_blk_status,
PDSTA as pod_status,
MANEK as manual_completion,
HDALL as dlyitemnotcomp,
__SAPMP__LBASP as dtucsta,
FSH_AR_STAT_ITM as arun_status_item,
MILL_VS_VSSTA as status,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbup.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbup` as vbup
where vbup._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'sales_document_item_status'),0))
select client as client_key,
sales_document as sales_document_key,
item as item_key,
*
From  vbup
UNION ALL
select null as client_key,
null as sales_document_key,
null as item_key,
vbup.*
From vbup as vbup
INNER JOIN `sap-adapter.slt_staging.sales_document_item_status` as uji
ON vbup.client = uji.client
AND vbup.sales_document = uji.sales_document
AND vbup.item = uji.item
AND vbup.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.sales_document_key = tgt.sales_document
AND src.item_key = tgt.item
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
sales_document,
item,
reference_sts,
reference_stat,
confirmed,
delivery_status,
ovrl_delvry_sts,
goodsmovementst,
billing_status,
billing_status_1,
rejection_sts,
overall_status,
picking_status,
wm_activ_status,
item_1,
item_deliv_data,
item_bill_data,
pricing,
interco_billst,
item_reserves_1,
item_reserves_2,
item_reserves_3,
item_reserves_4,
item_reserves_5,
packing_status,
confirmation,
confirm_status,
financial_doc,
exptcreditinsur,
item_data_pck_putawy,
it_data_pckgng,
item_data_gm,
delay_status,
rev_det_status,
decentr_whse,
billg_block_sts,
dlv_blk_status,
pod_status,
manual_completion,
dlyitemnotcomp,
dtucsta,
arun_status_item,
status,
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
src.reference_sts,
src.reference_stat,
src.confirmed,
src.delivery_status,
src.ovrl_delvry_sts,
src.goodsmovementst,
src.billing_status,
src.billing_status_1,
src.rejection_sts,
src.overall_status,
src.picking_status,
src.wm_activ_status,
src.item_1,
src.item_deliv_data,
src.item_bill_data,
src.pricing,
src.interco_billst,
src.item_reserves_1,
src.item_reserves_2,
src.item_reserves_3,
src.item_reserves_4,
src.item_reserves_5,
src.packing_status,
src.confirmation,
src.confirm_status,
src.financial_doc,
src.exptcreditinsur,
src.item_data_pck_putawy,
src.it_data_pckgng,
src.item_data_gm,
src.delay_status,
src.rev_det_status,
src.decentr_whse,
src.billg_block_sts,
src.dlv_blk_status,
src.pod_status,
src.manual_completion,
src.dlyitemnotcomp,
src.dtucsta,
src.arun_status_item,
src.status,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'sales_document_item_status' as table_name
    		,'vbup' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_item_status') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_item_status') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.sales_document_item_status`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_item_status` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'sales_document_item_status'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_item_status`))) AS inserted_record_count
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
    