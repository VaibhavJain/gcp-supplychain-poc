MERGE INTO `sap-adapter.slt_staging.billing_header` tgt
USING (
WITH vbrk as
(select MANDT as client,
VBELN as billing_doc,
FKART as billing_type,
FKTYP as billingcategory,
VBTYP as document_cat,
WAERK as doc_currency,
VKORG as sales_org,
VTWEG as distr_channel,
KALSM as pric_procedure,
KNUMV as doc_condition,
VSBED as shp_cond,
FKDAT as billing_date,
BELNR as document_number,
GJAHR as fiscal_year,
POPER as posting_period,
KONDA as custprice_group,
KDGRP as customer_group,
BZIRK as sales_district,
PLTYP as price_list_tp,
INCO1 as incoterms,
INCO2 as incoterms_2,
RFBSK as posting_status,
MRNKZ as man_inv_maint,
KURRF as exch_rate_acct,
CPKUR as set_exchange_rt,
VALTG as add_value_days,
VALDT as fixed_val_date,
ZTERM as payt_terms,
ZLSCH as payt_method,
KTGRD as accassmtgrpcust,
LAND1 as dest_country,
REGIO as region,
COUNC as county_code,
CITYC as city_code,
BUKRS as company_code,
TAXK1 as taxclass1_cust,
TAXK2 as taxclass2_cust,
TAXK3 as taxclass3_cust,
TAXK4 as taxclass4_cust,
TAXK5 as taxclass5_cust,
TAXK6 as taxclass6_cust,
TAXK7 as taxclass7_cust,
TAXK8 as taxclass8_cust,
TAXK9 as taxclass9_cust,
NETWR as net_value,
ZUKRI as comb_criteria,
ERNAM as created_by,
ERZET as entry_time,
ERDAT as created_on,
STAFO as update_group,
KUNRG as payer,
KUNAG as sold_to_party,
MABER as dunning_area,
STWAE as stats_currency,
STCEG as vat_reg_no,
AEDAT as changed_on,
SFAKN as canceld_bill_dc,
KNUMA as agreement,
FKART_RL as inv_list_type,
FKDAT_RL as billing_date_1,
KURST as exch_rate_type,
MSCHL as dunning_key,
MANSP as dunn_block,
SPART as division,
KKBER as cred_contr_area,
KNKLI as credit_account,
CMWAE as currency,
CMKUF as exchange_rate,
HITYP_PR as hiertypepricing,
BSTNK_VF as cust_reference,
VBUND as trading_partner,
FKART_AB as accrualbilltype,
KAPPL as application,
LANDTX as tax_depart_cty,
STCEG_H as originslstxno,
STCEG_L as ctryslstxno,
XBLNR as reference,
ZUONR as assignment,
MWSBK as tax_amount,
LOGSYS as logical_system,
FKSTO as canceled,
XEGDR as eu_triang_deal,
RPLNR as paym_ca_pl_no,
J_1AFITP as tax_type,
KURRF_DAT as translation_dte,
KIDNO as payment_ref,
BVTYP as part_bank_type,
NUMPG as number_of_pages,
BUPLA as business_place,
VKONT as contract_acct,
FKK_DOCSTAT as add_fin_status,
NRZAS as character_field_of_length_12,
SPE_BILLING_IND as billing_indicator,
VTREF as contract,
FK_SOURCE_SYS as source_system,
FKTYP_CRM as cm_bill_categ,
STGRD as reversal_reason,
CHANGED_ON as time_stamp,
EXPKZ as export,
EXNUM as foreign_trade_datanr,
AKWAE as lettofcredcrcy,
AKKUR as lettofcredrate,
LCNUM as financ_doc_no,
_DATAAGING as data_filter_value_for_data_agi,
BUCHK as posting_status_1,
GBSTK as overall_status,
RELIK as inv_list_status,
UVALS as item_data,
UVPRS as pricing,
FKSAK as bill_stat_order,
FKARA as ord_rel_bill_ty,
VF_STATUS as status,
VF_TODO as issue,
BDR_STATUS as status_1,
BDR_REF as bdr_source_document,
BDR_REF_LOGSYS as bdr_source_system,
BDR_REF_VBTYP as bdr_src_doc_cat,
PBD_STATUS as status_2,
ABSTK as rejection_sts,
DRAFT as draft_indicator,
ACTIVEDOCUMENT as sales_document,
GRWCU as currency_1,
BLART as document_type,
INTRA_REL as intrastat_rel,
INTRA_EXCL as exclude_intra,
ACCRREL as relevant_for_accrual,
PSPSD as paym_split_predec_sd,
J_1TPBUPL as branch_code,
INCOV as inco_version,
INCO2_L as inco_location1,
INCO3_L as inco_location2,
SDM_VERSION as sdm_versioning,
DUMMY_BILLINGDOC_INCL_EEW_PS as dummy_function_in_length_1,
ZAPCGKH as annexing_package,
APCGK_EXTENDH as ann_package_extend,
ZABDATH as annexing_base_date,
DPC_REL as dpc_relevant,
AD01BASDOC as initial_doc,
AD01FAREG as a_d_bill_rule,
VCHRNMBR as voucher_no,
J_3GKBAUL as etm_rel_ind,
J_3GKENIE as intern_extern,
KUNWE as ship_to_party,
MNDID as mandate_ref,
PAY_TYPE as payment_type,
SEPON as sepa_relevant,
MNDVG as sepa_relevant_1,
SPPAYM as paymmethod,
SPPORD as sales_order,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbrk.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbrk` as vbrk
where vbrk._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'billing_header'),0))
select client as client_key,
billing_doc as billing_doc_key,
*
From  vbrk
UNION ALL
select null as client_key,
null as billing_doc_key,
vbrk.*
From vbrk as vbrk
INNER JOIN `sap-adapter.slt_staging.billing_header` as uji
ON vbrk.client = uji.client
AND vbrk.billing_doc = uji.billing_doc
AND vbrk.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.billing_doc_key = tgt.billing_doc
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
billing_doc,
billing_type,
billingcategory,
document_cat,
doc_currency,
sales_org,
distr_channel,
pric_procedure,
doc_condition,
shp_cond,
billing_date,
document_number,
fiscal_year,
posting_period,
custprice_group,
customer_group,
sales_district,
price_list_tp,
incoterms,
incoterms_2,
posting_status,
man_inv_maint,
exch_rate_acct,
set_exchange_rt,
add_value_days,
fixed_val_date,
payt_terms,
payt_method,
accassmtgrpcust,
dest_country,
region,
county_code,
city_code,
company_code,
taxclass1_cust,
taxclass2_cust,
taxclass3_cust,
taxclass4_cust,
taxclass5_cust,
taxclass6_cust,
taxclass7_cust,
taxclass8_cust,
taxclass9_cust,
net_value,
comb_criteria,
created_by,
entry_time,
created_on,
update_group,
payer,
sold_to_party,
dunning_area,
stats_currency,
vat_reg_no,
changed_on,
canceld_bill_dc,
agreement,
inv_list_type,
billing_date_1,
exch_rate_type,
dunning_key,
dunn_block,
division,
cred_contr_area,
credit_account,
currency,
exchange_rate,
hiertypepricing,
cust_reference,
trading_partner,
accrualbilltype,
application,
tax_depart_cty,
originslstxno,
ctryslstxno,
reference,
assignment,
tax_amount,
logical_system,
canceled,
eu_triang_deal,
paym_ca_pl_no,
tax_type,
translation_dte,
payment_ref,
part_bank_type,
number_of_pages,
business_place,
contract_acct,
add_fin_status,
character_field_of_length_12,
billing_indicator,
contract,
source_system,
cm_bill_categ,
reversal_reason,
time_stamp,
export,
foreign_trade_datanr,
lettofcredcrcy,
lettofcredrate,
financ_doc_no,
data_filter_value_for_data_agi,
posting_status_1,
overall_status,
inv_list_status,
item_data,
pricing,
bill_stat_order,
ord_rel_bill_ty,
status,
issue,
status_1,
bdr_source_document,
bdr_source_system,
bdr_src_doc_cat,
status_2,
rejection_sts,
draft_indicator,
sales_document,
currency_1,
document_type,
intrastat_rel,
exclude_intra,
relevant_for_accrual,
paym_split_predec_sd,
branch_code,
inco_version,
inco_location1,
inco_location2,
sdm_versioning,
dummy_function_in_length_1,
annexing_package,
ann_package_extend,
annexing_base_date,
dpc_relevant,
initial_doc,
a_d_bill_rule,
voucher_no,
etm_rel_ind,
intern_extern,
ship_to_party,
mandate_ref,
payment_type,
sepa_relevant,
sepa_relevant_1,
paymmethod,
sales_order,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.billing_doc,
src.billing_type,
src.billingcategory,
src.document_cat,
src.doc_currency,
src.sales_org,
src.distr_channel,
src.pric_procedure,
src.doc_condition,
src.shp_cond,
src.billing_date,
src.document_number,
src.fiscal_year,
src.posting_period,
src.custprice_group,
src.customer_group,
src.sales_district,
src.price_list_tp,
src.incoterms,
src.incoterms_2,
src.posting_status,
src.man_inv_maint,
src.exch_rate_acct,
src.set_exchange_rt,
src.add_value_days,
src.fixed_val_date,
src.payt_terms,
src.payt_method,
src.accassmtgrpcust,
src.dest_country,
src.region,
src.county_code,
src.city_code,
src.company_code,
src.taxclass1_cust,
src.taxclass2_cust,
src.taxclass3_cust,
src.taxclass4_cust,
src.taxclass5_cust,
src.taxclass6_cust,
src.taxclass7_cust,
src.taxclass8_cust,
src.taxclass9_cust,
src.net_value,
src.comb_criteria,
src.created_by,
src.entry_time,
src.created_on,
src.update_group,
src.payer,
src.sold_to_party,
src.dunning_area,
src.stats_currency,
src.vat_reg_no,
src.changed_on,
src.canceld_bill_dc,
src.agreement,
src.inv_list_type,
src.billing_date_1,
src.exch_rate_type,
src.dunning_key,
src.dunn_block,
src.division,
src.cred_contr_area,
src.credit_account,
src.currency,
src.exchange_rate,
src.hiertypepricing,
src.cust_reference,
src.trading_partner,
src.accrualbilltype,
src.application,
src.tax_depart_cty,
src.originslstxno,
src.ctryslstxno,
src.reference,
src.assignment,
src.tax_amount,
src.logical_system,
src.canceled,
src.eu_triang_deal,
src.paym_ca_pl_no,
src.tax_type,
src.translation_dte,
src.payment_ref,
src.part_bank_type,
src.number_of_pages,
src.business_place,
src.contract_acct,
src.add_fin_status,
src.character_field_of_length_12,
src.billing_indicator,
src.contract,
src.source_system,
src.cm_bill_categ,
src.reversal_reason,
src.time_stamp,
src.export,
src.foreign_trade_datanr,
src.lettofcredcrcy,
src.lettofcredrate,
src.financ_doc_no,
src.data_filter_value_for_data_agi,
src.posting_status_1,
src.overall_status,
src.inv_list_status,
src.item_data,
src.pricing,
src.bill_stat_order,
src.ord_rel_bill_ty,
src.status,
src.issue,
src.status_1,
src.bdr_source_document,
src.bdr_source_system,
src.bdr_src_doc_cat,
src.status_2,
src.rejection_sts,
src.draft_indicator,
src.sales_document,
src.currency_1,
src.document_type,
src.intrastat_rel,
src.exclude_intra,
src.relevant_for_accrual,
src.paym_split_predec_sd,
src.branch_code,
src.inco_version,
src.inco_location1,
src.inco_location2,
src.sdm_versioning,
src.dummy_function_in_length_1,
src.annexing_package,
src.ann_package_extend,
src.annexing_base_date,
src.dpc_relevant,
src.initial_doc,
src.a_d_bill_rule,
src.voucher_no,
src.etm_rel_ind,
src.intern_extern,
src.ship_to_party,
src.mandate_ref,
src.payment_type,
src.sepa_relevant,
src.sepa_relevant_1,
src.paymmethod,
src.sales_order,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'billing_header' as table_name
    		,'vbrk' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'billing_header') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'billing_header') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.billing_header`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.billing_header` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'billing_header'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.billing_header`))) AS inserted_record_count
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
    