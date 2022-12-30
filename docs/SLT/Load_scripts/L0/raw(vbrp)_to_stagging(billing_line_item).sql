MERGE INTO `sap-adapter.slt_staging.billing_line_item` tgt
USING (
WITH vbrp as
(select MANDT as client,
VBELN as billing_doc,
POSNR as item,
UEPOS as higher_lev_item,
FKIMG as billed_qty,
VRKME as sales_unit,
UMVKZ as numerator,
UMVKN as denominat,
MEINS as base_unit,
SMENG as scale_quantity,
FKLMG as bill_qty_in_sku,
LMENG as required_qty,
NTGEW as net_weight,
BRGEW as gross_weight,
GEWEI as weight_unit,
VOLUM as volume,
VOLEH as volume_unit,
GSBER as business_area,
PRSDT as pricing_date,
FBUDA as serv_rendered,
KURSK as exchange_rate,
NETWR as net_value,
VBELV as originating_doc,
POSNV as item_1,
VGBEL as reference_doc,
VGPOS as reference_item,
VGTYP as prec_doc_categ,
AUBEL as sales_document,
AUPOS as item_2,
AUREF as salesdocumentrefer,
MATNR as material,
ARKTX as item_descr,
PMATN as pr_ref_matl,
CHARG as batch,
MATKL as material_group,
PSTYV as item_category,
POSAR as item_type,
PRODH as prod_hierarchy,
VSTEL as shipping_point,
ATPKZ as replacemt_part,
SPART as division,
POSPA as partner_item,
WERKS as plant,
ALAND as country,
WKREG as region_dlv_plnt,
WKCOU as county_dlv_plnt,
WKCTY as city_dlv_plant,
TAXM1 as tax_class_mat,
TAXM2 as taxclass2_matl,
TAXM3 as taxclass3_matl,
TAXM4 as taxclass4_matl,
TAXM5 as taxclass5_matl,
TAXM6 as taxclass6_matl,
TAXM7 as taxclass7_matl,
TAXM8 as taxclass8_matl,
TAXM9 as taxclass9_matl,
KOWRR as stat_value,
PRSFD as pricing,
SKTOF as cash_discount,
SKFBP as csh_disc_bas,
KONDM as mat_price_grp,
KTGRM as acctassmtgrpmat,
KOSTL as cost_center,
BONUS as vol_rebate_grp,
PROVG as commission_grp,
EANNR as ean_number,
VKGRP as sales_group,
VKBUR as sales_office,
SPARA as division_1,
SHKZG as returns_item,
ERNAM as created_by,
ERDAT as created_on,
ERZET as entry_time,
BWTAR as valuation_type,
LGORT as stor_loc,
STAFO as update_group,
WAVWR as cost,
KZWI1 as subtotal_1,
KZWI2 as subtotal_2,
KZWI3 as subtotal_3,
KZWI4 as subtotal_4,
KZWI5 as subtotal_5,
KZWI6 as subtotal_6,
STCUR as exch_rate_stats,
UVPRS as pricing_1,
UVALL as general,
EAN11 as ean_upc,
PRCTR as profit_center,
KVGR1 as customer_grp_1,
KVGR2 as customer_grp_2,
KVGR3 as customer_grp_3,
KVGR4 as customer_grp_4,
KVGR5 as customer_grp_5,
MVGR1 as materialgroup_1,
MVGR2 as materialgroup_2,
MVGR3 as materialgroup_3,
MVGR4 as materialgroup_4,
MVGR5 as materialgroup_5,
MATWA as materialentered,
BONBA as rebate_basis,
KOKRS as co_area,
PAOBJNR as profit_segment,
PS_PSP_PNR as wbs_element,
AUFNR as order_number,
TXJCD as tax_jur,
CMPRE as credit_price,
CMPNT as credit_active,
CUOBJ as configuration,
CUOBJ_CH as int_object_no,
KOUPD as condit_update,
UECHA as hghlevitmbatch,
XCHAR as batches,
ABRVW as usage,
SERNR as bom_expl_number,
BZIRK_AUFT as sls_dist_order,
KDGRP_AUFT as custgrpslsorder,
KONDA_AUFT as pricegrouporder,
LLAND_AUFT as destctryorder,
MPROK as manual_price,
PLTYP_AUFT as price_list_ord,
REGIO_AUFT as region_order,
VKORG_AUFT as sorg_of_order,
VTWEG_AUFT as distchanorder,
ABRBG as acctsettlestart,
PROSA as matdetermactive,
UEPVW as usage_hl_item,
AUTYP as document_cat,
STADAT as statistics_date,
FPLNR as billing_plan_no,
FPLTR as item_3,
AKTNR as promotion,
KNUMA_PI as promotion_1,
KNUMA_AG as sales_deal,
MWSBP as tax_amount,
AUGRU_AUFT as order_reason,
FAREG as billing_rule,
UPMAT as mnitm_prrefmatl,
UKONM as mnitem_matprcgr,
CMPRE_FLT as credit_price_1,
ABFOR as paytguarantform,
ABGES as guaranteed,
J_1ARFZ as reason_for_zero_vat,
J_1AREGIO as region,
J_1AGICD as activity_code,
J_1ADTYP as distr_type,
J_1ATXREL as tax_rel_class,
J_1BCFOP as cfop,
J_1BTAXLW1 as icms_law,
J_1BTAXLW2 as ipi_law,
J_1BTXSDC as tax_code,
BRTWR as gross_value,
WKTNR as value_contract_no,
WKTPS as val_cont_item,
RPLNR as paym_ca_pl_no,
KURSK_DAT as translation_dte,
WGRU1 as matgroup_1,
WGRU2 as matgroup_2,
KDKG1 as condition_grp_1,
KDKG2 as condition_grp_2,
KDKG3 as condition_grp_3,
KDKG4 as condition_grp_4,
KDKG5 as condition_grp_5,
VKAUS as usage_1,
J_1AINDXP as inflation_index,
J_1AIDATEP as index_base_date,
KZFME as leading_uom,
MWSKZ as tax_code_1,
VERTT as contract_type,
VERTN as contract_number,
SGTXT as text,
DELCO as delivery_time,
BEMOT as acctindicator,
RRREL as rev_recognition,
WMINR as catalog,
VGBEL_EX as reference_doc_1,
VGPOS_EX as reference_item_1,
LOGSYS as logical_system,
VGTYP_EX as category,
J_1BTAXLW3 as iss_law,
J_1BTAXLW4 as cofins_law,
J_1BTAXLW5 as pis_law,
MSR_ID as process_id_no,
MSR_REFUND_CODE as refund_code,
MSR_RET_REASON as return_reason,
NRAB_KNUMH as cond_record_no,
NRAB_VALUE as condition_value,
DISPUTE_CASE as dispute_case,
FUND_USAGE_ITEM as fund_usg_item,
FARR_RELTYPE as type,
CLAIMS_TAXATION as claims_taxat,
KURRF_DAT_ORIG as translation_dte_1,
SGT_RCAT as reqmnt_segment,
SGT_SCAT as stock_segment,
PREFE as cus_preference,
AKKUR as lettofcredrate,
WAERK as doc_currency,
DRAFT as boolean_variable_x_true,
ACTIVEDOCUMENT as sales_document_1,
GRWRT as statist_value,
FKSAA as billing_status,
ABSTA as rejection_status,
ABGRU as rejection_reason,
MWSK1 as tax_code_2,
TXDAT_FROM as tax_rate_valid_from,
PBD_ID as prelimin_bill_doc,
PBD_ITEM_ID as prelimin_doc_item,
CATS_OVERTIME_CATEGORY as overtime_category,
CONTR_DP_SETTL as settlem_dp_contract,
PRODH_UNIV_SALES_PARNT_NODID as node_id,
_DATAAGING as data_filter_value_for_data_agi,
DUMMY_BILLGDOCITEM_INCL_EEW_PS as dummy_function_in_length_1,
SERVICE_DOC_TYPE as service_doc_type,
SERVICE_DOC_ID as service_document,
SERVICE_DOC_ITEM_ID as service_doc_item,
__CWM__MENGE as qty_in_puom,
__CWM__MEINS as parallel_uom,
VBTYP_ANA as document_cat_1,
FKART_ANA as billing_type,
VKORG_ANA as sales_org,
VTWEG_ANA as distr_channel,
KONDA_ANA as custprice_group,
KDGRP_ANA as customer_group,
LAND1_ANA as dest_country,
REGIO_ANA as region_1,
CITYC_ANA as city_code,
BZIRK_ANA as sales_district,
GBSTK_ANA as overall_status,
VF_STATUS_ANA as status,
KUNAG_ANA as sold_to_party,
KUNRG_ANA as payer,
FKDAT_ANA as billing_date,
BUKRS_ANA as company_code,
COUNC_ANA as county_code,
KNUMA_ANA as agreement,
FKTYP_ANA as billingcategory,
KUNWE_ANA as ship_to_party,
KUNRE_ANA as bill_to_party,
PERVE_ANA as sales_employee,
PERZM_ANA as employee_responsible,
ZAPCGKI as annexing_package,
APCGK_EXTENDI as ann_package_extend,
ZABDATI as annexing_base_date,
AUFPL as plan_no_f_oper,
APLZL as counter,
DPCNR as dp_chain_number,
DCPNR as transaction_number,
DPNRB as doc_seq_no,
BOSFAR as billing_rule_1,
DP_BELNR as document_number,
DP_BUKRS as company_code_1,
DP_GJAHR as fiscal_year,
DP_BUZEI as line_item,
PACKNO as package_number,
PEROP_BEG as per_of_perf_start,
PEROP_END as per_of_perf_end,
FMFGUS_KEY as us_govt,
FSH_SEASON_YEAR as season_year,
FSH_SEASON as season,
FSH_COLLECTION as collection,
FSH_THEME as theme,
FONDS as fund,
FISTL as funds_center,
FKBER as functional_area,
GRANT_NBR as grants,
BUDGET_PD as budget_period,
J_3GBELNRI as document_number_1,
J_3GPMAUFE as pm_order_owner,
J_3GPMAUFV as pm_order_admin,
J_3GETYPA as send_rcpt_type,
J_3GETYPE as recve_rcpt_type,
J_3GORGUEB as all_org_str,
PRS_WORK_PERIOD as work_period,
PPRCTR as partner_pc,
PARGB as trdg_part_ba,
AUFPL_OAA as plan_no_f_oper_1,
APLZL_OAA as counter_1,
CAMPAIGN as cgpl_guid,
COMPREAS as abbreviation,
WRF_CHARSTC1 as characteristic_1,
WRF_CHARSTC2 as characteristic_2,
WRF_CHARSTC3 as characteristic_3,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbrp.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbrp` as vbrp
where vbrp._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'billing_line_item'),0))
select client as client_key,
billing_doc as billing_doc_key,
item as item_key,
*
From  vbrp
UNION ALL
select null as client_key,
null as billing_doc_key,
null as item_key,
vbrp.*
From vbrp as vbrp
INNER JOIN `sap-adapter.slt_staging.billing_line_item` as uji
ON vbrp.client = uji.client
AND vbrp.billing_doc = uji.billing_doc
AND vbrp.item = uji.item
AND vbrp.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.billing_doc_key = tgt.billing_doc
AND src.item_key = tgt.item
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
billing_doc,
item,
higher_lev_item,
billed_qty,
sales_unit,
numerator,
denominat,
base_unit,
scale_quantity,
bill_qty_in_sku,
required_qty,
net_weight,
gross_weight,
weight_unit,
volume,
volume_unit,
business_area,
pricing_date,
serv_rendered,
exchange_rate,
net_value,
originating_doc,
item_1,
reference_doc,
reference_item,
prec_doc_categ,
sales_document,
item_2,
salesdocumentrefer,
material,
item_descr,
pr_ref_matl,
batch,
material_group,
item_category,
item_type,
prod_hierarchy,
shipping_point,
replacemt_part,
division,
partner_item,
plant,
country,
region_dlv_plnt,
county_dlv_plnt,
city_dlv_plant,
tax_class_mat,
taxclass2_matl,
taxclass3_matl,
taxclass4_matl,
taxclass5_matl,
taxclass6_matl,
taxclass7_matl,
taxclass8_matl,
taxclass9_matl,
stat_value,
pricing,
cash_discount,
csh_disc_bas,
mat_price_grp,
acctassmtgrpmat,
cost_center,
vol_rebate_grp,
commission_grp,
ean_number,
sales_group,
sales_office,
division_1,
returns_item,
created_by,
created_on,
entry_time,
valuation_type,
stor_loc,
update_group,
cost,
subtotal_1,
subtotal_2,
subtotal_3,
subtotal_4,
subtotal_5,
subtotal_6,
exch_rate_stats,
pricing_1,
general,
ean_upc,
profit_center,
customer_grp_1,
customer_grp_2,
customer_grp_3,
customer_grp_4,
customer_grp_5,
materialgroup_1,
materialgroup_2,
materialgroup_3,
materialgroup_4,
materialgroup_5,
materialentered,
rebate_basis,
co_area,
profit_segment,
wbs_element,
order_number,
tax_jur,
credit_price,
credit_active,
configuration,
int_object_no,
condit_update,
hghlevitmbatch,
batches,
usage,
bom_expl_number,
sls_dist_order,
custgrpslsorder,
pricegrouporder,
destctryorder,
manual_price,
price_list_ord,
region_order,
sorg_of_order,
distchanorder,
acctsettlestart,
matdetermactive,
usage_hl_item,
document_cat,
statistics_date,
billing_plan_no,
item_3,
promotion,
promotion_1,
sales_deal,
tax_amount,
order_reason,
billing_rule,
mnitm_prrefmatl,
mnitem_matprcgr,
credit_price_1,
paytguarantform,
guaranteed,
reason_for_zero_vat,
region,
activity_code,
distr_type,
tax_rel_class,
cfop,
icms_law,
ipi_law,
tax_code,
gross_value,
value_contract_no,
val_cont_item,
paym_ca_pl_no,
translation_dte,
matgroup_1,
matgroup_2,
condition_grp_1,
condition_grp_2,
condition_grp_3,
condition_grp_4,
condition_grp_5,
usage_1,
inflation_index,
index_base_date,
leading_uom,
tax_code_1,
contract_type,
contract_number,
text,
delivery_time,
acctindicator,
rev_recognition,
catalog,
reference_doc_1,
reference_item_1,
logical_system,
category,
iss_law,
cofins_law,
pis_law,
process_id_no,
refund_code,
return_reason,
cond_record_no,
condition_value,
dispute_case,
fund_usg_item,
type,
claims_taxat,
translation_dte_1,
reqmnt_segment,
stock_segment,
cus_preference,
lettofcredrate,
doc_currency,
boolean_variable_x_true,
sales_document_1,
statist_value,
billing_status,
rejection_status,
rejection_reason,
tax_code_2,
tax_rate_valid_from,
prelimin_bill_doc,
prelimin_doc_item,
overtime_category,
settlem_dp_contract,
node_id,
data_filter_value_for_data_agi,
dummy_function_in_length_1,
service_doc_type,
service_document,
service_doc_item,
qty_in_puom,
parallel_uom,
document_cat_1,
billing_type,
sales_org,
distr_channel,
custprice_group,
customer_group,
dest_country,
region_1,
city_code,
sales_district,
overall_status,
status,
sold_to_party,
payer,
billing_date,
company_code,
county_code,
agreement,
billingcategory,
ship_to_party,
bill_to_party,
sales_employee,
employee_responsible,
annexing_package,
ann_package_extend,
annexing_base_date,
plan_no_f_oper,
counter,
dp_chain_number,
transaction_number,
doc_seq_no,
billing_rule_1,
document_number,
company_code_1,
fiscal_year,
line_item,
package_number,
per_of_perf_start,
per_of_perf_end,
us_govt,
season_year,
season,
collection,
theme,
fund,
funds_center,
functional_area,
grants,
budget_period,
document_number_1,
pm_order_owner,
pm_order_admin,
send_rcpt_type,
recve_rcpt_type,
all_org_str,
work_period,
partner_pc,
trdg_part_ba,
plan_no_f_oper_1,
counter_1,
cgpl_guid,
abbreviation,
characteristic_1,
characteristic_2,
characteristic_3,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.billing_doc,
src.item,
src.higher_lev_item,
src.billed_qty,
src.sales_unit,
src.numerator,
src.denominat,
src.base_unit,
src.scale_quantity,
src.bill_qty_in_sku,
src.required_qty,
src.net_weight,
src.gross_weight,
src.weight_unit,
src.volume,
src.volume_unit,
src.business_area,
src.pricing_date,
src.serv_rendered,
src.exchange_rate,
src.net_value,
src.originating_doc,
src.item_1,
src.reference_doc,
src.reference_item,
src.prec_doc_categ,
src.sales_document,
src.item_2,
src.salesdocumentrefer,
src.material,
src.item_descr,
src.pr_ref_matl,
src.batch,
src.material_group,
src.item_category,
src.item_type,
src.prod_hierarchy,
src.shipping_point,
src.replacemt_part,
src.division,
src.partner_item,
src.plant,
src.country,
src.region_dlv_plnt,
src.county_dlv_plnt,
src.city_dlv_plant,
src.tax_class_mat,
src.taxclass2_matl,
src.taxclass3_matl,
src.taxclass4_matl,
src.taxclass5_matl,
src.taxclass6_matl,
src.taxclass7_matl,
src.taxclass8_matl,
src.taxclass9_matl,
src.stat_value,
src.pricing,
src.cash_discount,
src.csh_disc_bas,
src.mat_price_grp,
src.acctassmtgrpmat,
src.cost_center,
src.vol_rebate_grp,
src.commission_grp,
src.ean_number,
src.sales_group,
src.sales_office,
src.division_1,
src.returns_item,
src.created_by,
src.created_on,
src.entry_time,
src.valuation_type,
src.stor_loc,
src.update_group,
src.cost,
src.subtotal_1,
src.subtotal_2,
src.subtotal_3,
src.subtotal_4,
src.subtotal_5,
src.subtotal_6,
src.exch_rate_stats,
src.pricing_1,
src.general,
src.ean_upc,
src.profit_center,
src.customer_grp_1,
src.customer_grp_2,
src.customer_grp_3,
src.customer_grp_4,
src.customer_grp_5,
src.materialgroup_1,
src.materialgroup_2,
src.materialgroup_3,
src.materialgroup_4,
src.materialgroup_5,
src.materialentered,
src.rebate_basis,
src.co_area,
src.profit_segment,
src.wbs_element,
src.order_number,
src.tax_jur,
src.credit_price,
src.credit_active,
src.configuration,
src.int_object_no,
src.condit_update,
src.hghlevitmbatch,
src.batches,
src.usage,
src.bom_expl_number,
src.sls_dist_order,
src.custgrpslsorder,
src.pricegrouporder,
src.destctryorder,
src.manual_price,
src.price_list_ord,
src.region_order,
src.sorg_of_order,
src.distchanorder,
src.acctsettlestart,
src.matdetermactive,
src.usage_hl_item,
src.document_cat,
src.statistics_date,
src.billing_plan_no,
src.item_3,
src.promotion,
src.promotion_1,
src.sales_deal,
src.tax_amount,
src.order_reason,
src.billing_rule,
src.mnitm_prrefmatl,
src.mnitem_matprcgr,
src.credit_price_1,
src.paytguarantform,
src.guaranteed,
src.reason_for_zero_vat,
src.region,
src.activity_code,
src.distr_type,
src.tax_rel_class,
src.cfop,
src.icms_law,
src.ipi_law,
src.tax_code,
src.gross_value,
src.value_contract_no,
src.val_cont_item,
src.paym_ca_pl_no,
src.translation_dte,
src.matgroup_1,
src.matgroup_2,
src.condition_grp_1,
src.condition_grp_2,
src.condition_grp_3,
src.condition_grp_4,
src.condition_grp_5,
src.usage_1,
src.inflation_index,
src.index_base_date,
src.leading_uom,
src.tax_code_1,
src.contract_type,
src.contract_number,
src.text,
src.delivery_time,
src.acctindicator,
src.rev_recognition,
src.catalog,
src.reference_doc_1,
src.reference_item_1,
src.logical_system,
src.category,
src.iss_law,
src.cofins_law,
src.pis_law,
src.process_id_no,
src.refund_code,
src.return_reason,
src.cond_record_no,
src.condition_value,
src.dispute_case,
src.fund_usg_item,
src.type,
src.claims_taxat,
src.translation_dte_1,
src.reqmnt_segment,
src.stock_segment,
src.cus_preference,
src.lettofcredrate,
src.doc_currency,
src.boolean_variable_x_true,
src.sales_document_1,
src.statist_value,
src.billing_status,
src.rejection_status,
src.rejection_reason,
src.tax_code_2,
src.tax_rate_valid_from,
src.prelimin_bill_doc,
src.prelimin_doc_item,
src.overtime_category,
src.settlem_dp_contract,
src.node_id,
src.data_filter_value_for_data_agi,
src.dummy_function_in_length_1,
src.service_doc_type,
src.service_document,
src.service_doc_item,
src.qty_in_puom,
src.parallel_uom,
src.document_cat_1,
src.billing_type,
src.sales_org,
src.distr_channel,
src.custprice_group,
src.customer_group,
src.dest_country,
src.region_1,
src.city_code,
src.sales_district,
src.overall_status,
src.status,
src.sold_to_party,
src.payer,
src.billing_date,
src.company_code,
src.county_code,
src.agreement,
src.billingcategory,
src.ship_to_party,
src.bill_to_party,
src.sales_employee,
src.employee_responsible,
src.annexing_package,
src.ann_package_extend,
src.annexing_base_date,
src.plan_no_f_oper,
src.counter,
src.dp_chain_number,
src.transaction_number,
src.doc_seq_no,
src.billing_rule_1,
src.document_number,
src.company_code_1,
src.fiscal_year,
src.line_item,
src.package_number,
src.per_of_perf_start,
src.per_of_perf_end,
src.us_govt,
src.season_year,
src.season,
src.collection,
src.theme,
src.fund,
src.funds_center,
src.functional_area,
src.grants,
src.budget_period,
src.document_number_1,
src.pm_order_owner,
src.pm_order_admin,
src.send_rcpt_type,
src.recve_rcpt_type,
src.all_org_str,
src.work_period,
src.partner_pc,
src.trdg_part_ba,
src.plan_no_f_oper_1,
src.counter_1,
src.cgpl_guid,
src.abbreviation,
src.characteristic_1,
src.characteristic_2,
src.characteristic_3,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'billing_line_item' as table_name
    		,'vbrp' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'billing_line_item') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'billing_line_item') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.billing_line_item`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.billing_line_item` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'billing_line_item'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.billing_line_item`))) AS inserted_record_count
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
    