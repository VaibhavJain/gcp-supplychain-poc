MERGE INTO `sap-adapter.slt_staging.document_types` tgt
USING (
WITH t003 as
(select MANDT as client,
BLART as document_type,
NUMKR as number_range,
KOARS as account_types,
STBLA as document_type_1,
XNETB as net_document_type,
XRVUP as sap_bill_doc,
XSYBL as bi_only,
XVORK as indicator_document_type_for_i,
XKKPR as cust_vend_check,
XGSUB as inter_company_posting,
XMGES as indicator_trading_partner_can,
BRGRU as authorization,
RECID as debit_rec_indic,
RECIC as rec_ind_credit,
XMTXT as indicator_document_header_tex,
XMREF as indicator_reference_number,
XNGBK as for_subseq_adjustmnt,
KURST as exchange_rate_type_for_determi,
XNEGP as indicator_negative_postings_p,
XKOAA as assets,
XKOAD as customer,
XKOAK as vendor,
XKOAM as material,
XKOAS as g_l_account,
XNMRL as official_numbering,
XAUSG as self_issued_doc,
XDTCH as check_date,
BLKLS as document_class,
XROLLUP as document_type_rollup,
XPLAN as planning,
XALLOCACT as act_allocation,
XALLOCPLAN as plan_allocation,
X_PP_PROCESS as erd_part_payts,
XKURSX as md_exchange_rate,
XPOSACC as pos_acccounts,
XUACPA as ap_assgmnt_is_unique,
XKOASECC as secondary_costs,
XMREF2 as reference_required,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t003.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t003` as t003
where t003._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'document_types'),0))
select client as client_key,
document_type as document_type_key,
*
From  t003
UNION ALL
select null as client_key,
null as document_type_key,
t003.*
From t003 as t003
INNER JOIN `sap-adapter.slt_staging.document_types` as uji
ON t003.client = uji.client
AND t003.document_type = uji.document_type
AND t003.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.document_type_key = tgt.document_type
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
document_type,
number_range,
account_types,
document_type_1,
net_document_type,
sap_bill_doc,
bi_only,
indicator_document_type_for_i,
cust_vend_check,
inter_company_posting,
indicator_trading_partner_can,
authorization,
debit_rec_indic,
rec_ind_credit,
indicator_document_header_tex,
indicator_reference_number,
for_subseq_adjustmnt,
exchange_rate_type_for_determi,
indicator_negative_postings_p,
assets,
customer,
vendor,
material,
g_l_account,
official_numbering,
self_issued_doc,
check_date,
document_class,
document_type_rollup,
planning,
act_allocation,
plan_allocation,
erd_part_payts,
md_exchange_rate,
pos_acccounts,
ap_assgmnt_is_unique,
secondary_costs,
reference_required,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.document_type,
src.number_range,
src.account_types,
src.document_type_1,
src.net_document_type,
src.sap_bill_doc,
src.bi_only,
src.indicator_document_type_for_i,
src.cust_vend_check,
src.inter_company_posting,
src.indicator_trading_partner_can,
src.authorization,
src.debit_rec_indic,
src.rec_ind_credit,
src.indicator_document_header_tex,
src.indicator_reference_number,
src.for_subseq_adjustmnt,
src.exchange_rate_type_for_determi,
src.indicator_negative_postings_p,
src.assets,
src.customer,
src.vendor,
src.material,
src.g_l_account,
src.official_numbering,
src.self_issued_doc,
src.check_date,
src.document_class,
src.document_type_rollup,
src.planning,
src.act_allocation,
src.plan_allocation,
src.erd_part_payts,
src.md_exchange_rate,
src.pos_acccounts,
src.ap_assgmnt_is_unique,
src.secondary_costs,
src.reference_required,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'document_types' as table_name
    		,'t003' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'document_types') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'document_types') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.document_types`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.document_types` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'document_types'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.document_types`))) AS inserted_record_count
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
    