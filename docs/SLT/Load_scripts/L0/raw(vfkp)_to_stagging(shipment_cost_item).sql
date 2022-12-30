MERGE INTO `sap-adapter.slt_staging.shipment_cost_item` tgt
USING (
WITH vfkp as
(select MANDT as client,
FKNUM as shipmt_cost_no,
FKPOS as item,
FKPTY as item_category,
BUKRS as company_code,
NETWR as net_value,
MWSBP as tax_amount,
WAERS as currency,
MWSKZ as tax_code,
PRSDT as pricing_date,
BUDAT as settlement_date,
EXTI1 as external_id_1,
EXTI2 as external_id_2,
TPLST as transportplanpt,
VSART as shp_type_stage,
KALSM as pric_procedure,
KNUMV as doc_condition,
WERKS as plant,
EKORG as purchasing_org,
EKGRP as purch_group,
EBELN as purchasing_doc,
EBELP as item_1,
LBLNI as entry_sheet,
PARVW as partner_functn,
TDLNR as service_agent,
RECHS as invoicing_party,
KURST as exch_rate_type,
KOSTY as cost_type,
REFTY as document_cat,
REBEL as ref_doc_no,
REPOS as ref_item_no,
POSTX as desc_reference,
KNTTP as acct_assgmt_cat,
BKLAS as valuation_class,
STBER as calculated,
DTBER as end_calculation,
UZBER as end_calculation_1,
STFRE as assigned,
DTFRE as end_account_asg,
UZFRE as end_account_asg_1,
STABR as transferred,
DTABR as end_settlement,
UZABR as end_settlement_1,
ERNAM as created_by,
ERDAT as created_on,
ERZET as entry_time,
AENAM as changed_by,
AEDAT as changed_on,
AEZET as time_of_change,
LOGSYS as logical_system,
KSTAU as cost_dist,
TRFZNA as tf_zone_p_ofdep,
TRFZNZ as tf_zone_dest,
TXJCD as tax_jur,
BASWR as tax_base_amount,
SLAND1_A as tax_ctry_depart,
SLAND1_Z as tax_ctry_dest,
FKSTO as cancelled,
KZWI1 as subtotal_1,
KZWI2 as subtotal_2,
KZWI3 as subtotal_3,
KZWI4 as subtotal_4,
KZWI5 as subtotal_5,
KZWI6 as subtotal_6,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vfkp.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vfkp` as vfkp
where vfkp._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipment_cost_item'),0))
select client as client_key,
shipmt_cost_no as shipmt_cost_no_key,
item as item_key,
*
From  vfkp
UNION ALL
select null as client_key,
null as shipmt_cost_no_key,
null as item_key,
vfkp.*
From vfkp as vfkp
INNER JOIN `sap-adapter.slt_staging.shipment_cost_item` as uji
ON vfkp.client = uji.client
AND vfkp.shipmt_cost_no = uji.shipmt_cost_no
AND vfkp.item = uji.item
AND vfkp.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.shipmt_cost_no_key = tgt.shipmt_cost_no
AND src.item_key = tgt.item
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
shipmt_cost_no,
item,
item_category,
company_code,
net_value,
tax_amount,
currency,
tax_code,
pricing_date,
settlement_date,
external_id_1,
external_id_2,
transportplanpt,
shp_type_stage,
pric_procedure,
doc_condition,
plant,
purchasing_org,
purch_group,
purchasing_doc,
item_1,
entry_sheet,
partner_functn,
service_agent,
invoicing_party,
exch_rate_type,
cost_type,
document_cat,
ref_doc_no,
ref_item_no,
desc_reference,
acct_assgmt_cat,
valuation_class,
calculated,
end_calculation,
end_calculation_1,
assigned,
end_account_asg,
end_account_asg_1,
transferred,
end_settlement,
end_settlement_1,
created_by,
created_on,
entry_time,
changed_by,
changed_on,
time_of_change,
logical_system,
cost_dist,
tf_zone_p_ofdep,
tf_zone_dest,
tax_jur,
tax_base_amount,
tax_ctry_depart,
tax_ctry_dest,
cancelled,
subtotal_1,
subtotal_2,
subtotal_3,
subtotal_4,
subtotal_5,
subtotal_6,
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
src.item_category,
src.company_code,
src.net_value,
src.tax_amount,
src.currency,
src.tax_code,
src.pricing_date,
src.settlement_date,
src.external_id_1,
src.external_id_2,
src.transportplanpt,
src.shp_type_stage,
src.pric_procedure,
src.doc_condition,
src.plant,
src.purchasing_org,
src.purch_group,
src.purchasing_doc,
src.item_1,
src.entry_sheet,
src.partner_functn,
src.service_agent,
src.invoicing_party,
src.exch_rate_type,
src.cost_type,
src.document_cat,
src.ref_doc_no,
src.ref_item_no,
src.desc_reference,
src.acct_assgmt_cat,
src.valuation_class,
src.calculated,
src.end_calculation,
src.end_calculation_1,
src.assigned,
src.end_account_asg,
src.end_account_asg_1,
src.transferred,
src.end_settlement,
src.end_settlement_1,
src.created_by,
src.created_on,
src.entry_time,
src.changed_by,
src.changed_on,
src.time_of_change,
src.logical_system,
src.cost_dist,
src.tf_zone_p_ofdep,
src.tf_zone_dest,
src.tax_jur,
src.tax_base_amount,
src.tax_ctry_depart,
src.tax_ctry_dest,
src.cancelled,
src.subtotal_1,
src.subtotal_2,
src.subtotal_3,
src.subtotal_4,
src.subtotal_5,
src.subtotal_6,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipment_cost_item' as table_name
    		,'vfkp' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_item') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_item') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipment_cost_item`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_item` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipment_cost_item'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_item`))) AS inserted_record_count
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
    