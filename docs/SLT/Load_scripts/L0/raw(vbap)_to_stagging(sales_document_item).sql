MERGE INTO `sap-adapter.slt_staging.sales_document_item` tgt
USING (
WITH vbap as
(select MANDT as client,
VBELN as sales_document,
POSNR as item,
MATNR as material,
MATWA as materialentered,
PMATN as pr_ref_matl,
CHARG as batch,
MATKL as material_group,
ARKTX as item_descr,
PSTYV as item_category,
POSAR as item_type,
LFREL as item_del_f_dlv,
FKREL as relev_for_bill,
UEPOS as higher_lev_item,
GRPOS as altern_to_item,
ABGRU as rejectionreason,
PRODH as prod_hierarchy,
PRODH_UNIV_SALES_PARNT_NODID as node_id,
PRODH_UNIV_SALES_DET_ORIGIN as origin_of_prodhier,
PRODH_UNIV_BATDET_PARNT_NODID as node_id_1,
PRODH_UNIV_BATDET_DET_ORIGIN as origin_of_prodhier_1,
ZWERT as target_value,
ZMENG as target_quantity,
ZIEME as target_qty_uom,
UMZIZ as convers_factor,
UMZIN as convers_factor_1,
MEINS as base_unit,
SMENG as scale_quantity,
ABLFZ as rounding_qty,
ABDAT as reconcil_date,
ABSFZ as absolute_deviation,
POSEX as po_item,
KDMAT as cust_material,
KBVER as deviation,
KEVER as dev_days,
VKGRU as class_of_items,
VKAUS as usage,
GRKOR as delivery_group,
FMENG as qty_is_fixed,
UEBTK as unlimited_tol,
UEBTO as overdeliv_tol,
UNTTO as underdel_tol,
FAKSP as billing_block,
ATPKZ as replacemt_part,
RKFKF as bill_meth_co_ppc,
SPART as division,
GSBER as business_area,
NETWR as net_value,
WAERK as doc_currency,
ANTLF as max_part_deliv,
KZTLF as part_dlv_item,
CHSPL as batch_split,
KWMENG as order_quantity,
LSMENG as required_dlvqty,
KBMENG as cumltvconfdqty,
KLMENG as cumltvconfdqty_1,
VRKME as sales_unit,
UMVKZ as numerator,
UMVKN as denominat,
BRGEW as gross_weight,
NTGEW as net_weight,
GEWEI as weight_unit,
VOLUM as volume,
VOLEH as volume_unit,
VBELV as originating_doc,
POSNV as item_1,
VGBEL as reference_doc,
VGPOS as reference_item,
VOREF as complete_refer,
UPFLU as update_doc_flow,
ERLRE as completion_rule,
LPRIO as delivery_prior,
WERKS as plant,
LGORT as stor_loc,
VSTEL as shipping_point,
ROUTE as route,
STKEY as bom_origin,
STDAT as bom_key_date,
STLNR as bom,
STPOS as bom_item_number,
AWAHR as order_probab,
ERDAT as created_on,
ERNAM as created_by,
ERZET as entry_time,
TAXM1 as tax_classific,
TAXM2 as tax_classific_1,
TAXM3 as tax_classific_2,
TAXM4 as tax_classific_3,
TAXM5 as tax_classific_4,
TAXM6 as tax_classific_5,
TAXM7 as tax_classific_6,
TAXM8 as tax_classific_7,
TAXM9 as tax_classific_8,
VBEAF as fixed_proc_time,
VBEAV as var_proc_time,
VGREF as preced_with_ref,
NETPR as net_price,
KPEIN as pricing_unit,
KMEIN as unit_of_measure,
SHKZG as returns_item,
SKTOF as cash_discount,
MTVFP as avail_check,
SUMBD as req_mt_totals,
KONDM as mat_price_grp,
KTGRM as acctassmtgrpmat,
BONUS as vol_rebate_grp,
PROVG as commission_grp,
EANNR as ean_number,
PRSOK as pricing,
BWTAR as valuation_type,
BWTEX as separate_val,
XCHPF as batch_mgmt_rqt,
XCHAR as batches,
LFMNG as min_dely_qty,
STAFO as update_group,
WAVWR as cost,
KZWI1 as subtotal_1,
KZWI2 as subtotal_2,
KZWI3 as subtotal_3,
KZWI4 as subtotal_4,
KZWI5 as subtotal_5,
KZWI6 as subtotal_6,
STCUR as exch_rate_stats,
AEDAT as changed_on,
EAN11 as ean_upc,
FIXMG as fix_qty_date,
PRCTR as profit_center,
MVGR1 as materialgroup_1,
MVGR2 as materialgroup_2,
MVGR3 as materialgroup_3,
MVGR4 as materialgroup_4,
MVGR5 as materialgroup_5,
KMPMG as quantity,
SUGRD as reasn,
SOBKZ as special_stock,
VPZUO as allocation_ind,
PAOBJNR as profit_segment,
PS_PSP_PNR as wbs_element,
AUFNR as order_number,
VPMAT as plng_material,
VPWRK as planning_plant,
PRBME as prod_grp_unit,
UMREF as conversion,
KNTTP as acct_assgmt_cat,
KZVBR as consumption,
SERNR as bom_expl_number,
OBJNR as objno_item,
ABGRS as ra_key,
BEDAE as reqmts_type,
CMPRE as credit_price,
CMTFG as partial_release,
CMPNT as credit_active,
CMKUA as exchange_rate,
CUOBJ as configuration,
CUOBJ_CH as int_object_no,
CEPOK as expected_price,
KOUPD as condit_update,
SERAIL as serialnoprofile,
ANZSN as no_serial_no,
NACHL as no_gr_posted,
MAGRV as matl_grp_pckmat,
MPROK as manual_price,
VGTYP as prec_doc_categ,
PROSA as matdetermactive,
UEPVW as usage_hl_item,
KALNR as cost_estimateno,
KLVAR as costing_variant,
SPOSN as item_2,
KOWRR as stat_value,
STADAT as statistics_date,
EXART as bus_trans_type,
PREFE as cus_preference,
KNUMH as nocondrec_batch,
CLINT as int_class_no,
CHMVS as qty_proposal,
STLTY as bom_category,
STLKN as item_node,
STPOZ as counter,
STMAN as inconsist_conf,
ZSCHL_K as overhead_key,
KALSM_K as costing_sheet,
KALVAR as costing_variant_1,
KOSCH as prod_allocation,
UPMAT as mnitm_prrefmatl,
UKONM as mnitem_matprcgr,
MFRGR as mat_freight_grp,
PLAVO as plandelschedins,
KANNR as sequence_number,
CMPRE_FLT as credit_price_1,
ABFOR as paytguarantform,
ABGES as guaranteed,
J_1BCFOP as cfop,
J_1BTAXLW1 as icms_law,
J_1BTAXLW2 as ipi_law,
J_1BTXSDC as tax_code,
WKTNR as value_contract_no,
WKTPS as val_cont_item,
SKOPF as module,
KZBWS as valuation,
WGRU1 as matgroup_1,
WGRU2 as matgroup_2,
KNUMA_PI as promotion,
KNUMA_AG as sales_deal,
KZFME as leading_uom,
LSTANR as freegoods_delycontrl,
TECHS as standardvariant,
MWSBP as tax_amount,
BERID as mrp_area,
PCTRF as profit_ctr_bill,
LOGSYS_EXT as logical_system,
J_1BTAXLW3 as iss_law,
J_1BTAXLW4 as cofins_law,
J_1BTAXLW5 as pis_law,
STOCKLOC as location,
SLOCTYPE as location_type,
MSR_RET_REASON as return_reason,
MSR_REFUND_CODE as refund_code,
MSR_APPROV_BLOCK as approval,
NRAB_KNUMH as cond_record_no,
TRMRISK_RELEVANT as risk_relevancy,
SGT_RCAT as reqmnt_segment,
VBKD_POSNR as item_3,
VEDA_POSNR as item_4,
HANDOVERLOC as handover_location,
EXT_REF_ITEM_ID as external_item_id,
HANDOVERDATE as handover_date,
HANDOVERTIME as handover_time,
TC_AUT_DET as tc_auto_det,
MANUAL_TC_REASON as man_tc_reason,
FISCAL_INCENTIVE as tax_incent_type,
TAX_SUBJECT_ST as tax_subj_to_st,
FISCAL_INCENTIVE_ID as incentive_id,
SPCSTO as nf_special_case,
REVACC_REFID as rev_acc_ref_id,
REVACC_REFTYPE as rev_acc_ref_type,
_DATAAGING as data_filter_value_for_data_agi,
ABSTA as rejection_sts,
BESTA as confirmed,
CMPPI as financial_doc,
CMPPJ as exptcreditinsur,
COSTA as confirm_status,
DCSTA as delay_status,
FKSAA as billing_status,
FSSTA as billg_block_sts,
GBSTA as overall_status,
LFGSA as ovrl_delvry_sts,
LFSTA as delivery_status,
LSSTA as dlv_blk_status,
MANEK as manual_completion,
RFGSA as reference_stat,
RFSTA as reference_sts,
UVALL as item_5,
UVFAK as item_bill_data,
UVPRS as pricing_1,
UVVLK as item_deliv_data,
UVP01 as item_reserves_1,
UVP02 as item_reserves_2,
UVP03 as item_reserves_3,
UVP04 as item_reserves_4,
UVP05 as item_reserves_5,
WBSTA as goodsmovementst,
EMCST as embargo_status,
SLCST as wls_status,
TOTAL_LCCST as total_legal_status,
PCSTA as prod_marktablty_sts,
DGSTA as dangerous_goods_sts,
SDSSTA as sfty_data_sheet_sts,
DP_CLEAR_STA_ITM as down_payment_status,
CMTD_DELIV_DATE as committed_deliv_date,
CMTD_DELIV_CREADATE as cmtd_deliv_crtn_date,
CMTD_DELIV_QTY_SU as cmtd_delivery_qty,
REQQTY_BU as requ_salesorder_qty,
HANDLE as guid_16,
PBS_STATE as pbs_state,
IFRS15_RELEVANCE as ifrs_15_relevant,
IFRS15_TOTAL_SSP as ssp,
REVFP as availcheck_rule,
CAPPED_NET_AMOUNT as net_amount_cap,
CAPPED_NET_AMOUNT_ALERT_THLD as cap_notif_threshold,
CATS_OVERTIME_CATEGORY as overtime_category,
SESSION_CREATION_DATE as session_created_on,
SESSION_CREATION_TIME as session_created_at,
ORIGINAL_PLANT as original_plant,
ATP_ABC_SUBSTITUTION_STATUS as sub_status,
DUMMY_SLSDOCITEM_INCL_EEW_PS as dummy_function_in_length_1,
PO_QUAN as po_quantity,
PO_UNIT as order_unit,
MILL_SE_GPOSN as global_item,
MILL_BATCH_SEL_F as mill_bselind,
CPD_UPDAT as time_stamp,
ZAPCGKI as annexing_package,
APCGK_EXTENDI as ann_package_extend,
ZABDATI as annexing_base_date,
AUFPL_OLC as plan_no_f_oper,
APLZL_OLC as counter_1,
AD01PROFNR as dip_profile,
ADMOI as model_id_code,
ADICC as interchang_code,
ADPRI as order_priority,
ADDNS as donotsub,
ADACN as aircraftreg_no,
LABSG as fcstdelsched_edi_ind,
FABSG as jitdschdedi_ind,
PR_L_L as comp_fctds_fctds,
PR_F_F as comp_jitds_jitds,
PR_F_L as comp_jitds_fcstds,
FERC_IND as reg_indicator,
FSH_SEASON_YEAR as season_year,
FSH_SEASON as season,
FSH_COLLECTION as collection,
FSH_THEME as theme,
FSH_CRSD as cond_record_no_1,
FSH_SEAREF as copied_season,
FSH_CANDATE as cancel_date,
FSH_PSM_PFM_SPLIT as split_id,
FSH_VAS_REL as vas_relevant,
FSH_VAS_PRNT_ID as item_6,
FSH_TRANSACTION as transaction_number,
FSH_ITEM_GROUP as item_group,
FSH_ITEM as item_number,
FSH_VASREF as copied_vas_data,
FSH_GRID_COND_REC as record_num,
FSH_PQR_UEPOS as higher_lev_item_pqr,
RFM_SCC_INDICATOR as season_comp_ind,
KOSTL as cost_center,
FONDS as fund,
FISTL as funds_center,
FKBER as functional_area,
GRANT_NBR as grant,
BUDGET_PD as budget_period,
IUID_RELEVANT as iuid_cust_rel,
EQUNR as equipment,
EQART as object_type,
J_3GLVART as activity_type,
J_3GDATVO as from_date,
J_3GDATBI as to_date,
J_3GBELNRI as document_number,
J_3GPOSNRI as item_number_1,
PRS_OBJNR as eng_mgmt_object_nr,
PRS_SD_SPSNR as std_wbs_element,
PRS_WORK_PERIOD as work_period,
TAS as treasury_account_sym,
BETC as business_evt_typ_cd,
MOD_ALLOW as modification_allowed,
CANCEL_ALLOW as cancellation_allowed,
PAY_METHOD as payment_methods,
BPN as business_partner_no,
REP_FREQ as reporting_frequency,
FMFGUS_KEY as us_govt,
RFM_PSST_RULE as psst_grouping_rule,
RFM_PSST_GROUP as psst_group,
PARGB as trdg_part_ba,
AUFPL_OAA as plan_no_f_oper_1,
APLZL_OAA as counter_2,
VLCENDCU as end_customer,
WRF_CHARSTC1 as characteristic_1,
WRF_CHARSTC2 as characteristic_2,
WRF_CHARSTC3 as characteristic_3,
ARSNUM as reservation_number,
ARSPOS as item_no,
WTYSC_CLMITEM as claim_item_no,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbap.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbap` as vbap
where vbap._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'sales_document_item'),0))
select client as client_key,
sales_document as sales_document_key,
item as item_key,
*
From  vbap
UNION ALL
select null as client_key,
null as sales_document_key,
null as item_key,
vbap.*
From vbap as vbap
INNER JOIN `sap-adapter.slt_staging.sales_document_item` as uji
ON vbap.client = uji.client
AND vbap.sales_document = uji.sales_document
AND vbap.item = uji.item
AND vbap.finalmd5key != uji.finalmd5key
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
material,
materialentered,
pr_ref_matl,
batch,
material_group,
item_descr,
item_category,
item_type,
item_del_f_dlv,
relev_for_bill,
higher_lev_item,
altern_to_item,
rejectionreason,
prod_hierarchy,
node_id,
origin_of_prodhier,
node_id_1,
origin_of_prodhier_1,
target_value,
target_quantity,
target_qty_uom,
convers_factor,
convers_factor_1,
base_unit,
scale_quantity,
rounding_qty,
reconcil_date,
absolute_deviation,
po_item,
cust_material,
deviation,
dev_days,
class_of_items,
usage,
delivery_group,
qty_is_fixed,
unlimited_tol,
overdeliv_tol,
underdel_tol,
billing_block,
replacemt_part,
bill_meth_co_ppc,
division,
business_area,
net_value,
doc_currency,
max_part_deliv,
part_dlv_item,
batch_split,
order_quantity,
required_dlvqty,
cumltvconfdqty,
cumltvconfdqty_1,
sales_unit,
numerator,
denominat,
gross_weight,
net_weight,
weight_unit,
volume,
volume_unit,
originating_doc,
item_1,
reference_doc,
reference_item,
complete_refer,
update_doc_flow,
completion_rule,
delivery_prior,
plant,
stor_loc,
shipping_point,
route,
bom_origin,
bom_key_date,
bom,
bom_item_number,
order_probab,
created_on,
created_by,
entry_time,
tax_classific,
tax_classific_1,
tax_classific_2,
tax_classific_3,
tax_classific_4,
tax_classific_5,
tax_classific_6,
tax_classific_7,
tax_classific_8,
fixed_proc_time,
var_proc_time,
preced_with_ref,
net_price,
pricing_unit,
unit_of_measure,
returns_item,
cash_discount,
avail_check,
req_mt_totals,
mat_price_grp,
acctassmtgrpmat,
vol_rebate_grp,
commission_grp,
ean_number,
pricing,
valuation_type,
separate_val,
batch_mgmt_rqt,
batches,
min_dely_qty,
update_group,
cost,
subtotal_1,
subtotal_2,
subtotal_3,
subtotal_4,
subtotal_5,
subtotal_6,
exch_rate_stats,
changed_on,
ean_upc,
fix_qty_date,
profit_center,
materialgroup_1,
materialgroup_2,
materialgroup_3,
materialgroup_4,
materialgroup_5,
quantity,
reasn,
special_stock,
allocation_ind,
profit_segment,
wbs_element,
order_number,
plng_material,
planning_plant,
prod_grp_unit,
conversion,
acct_assgmt_cat,
consumption,
bom_expl_number,
objno_item,
ra_key,
reqmts_type,
credit_price,
partial_release,
credit_active,
exchange_rate,
configuration,
int_object_no,
expected_price,
condit_update,
serialnoprofile,
no_serial_no,
no_gr_posted,
matl_grp_pckmat,
manual_price,
prec_doc_categ,
matdetermactive,
usage_hl_item,
cost_estimateno,
costing_variant,
item_2,
stat_value,
statistics_date,
bus_trans_type,
cus_preference,
nocondrec_batch,
int_class_no,
qty_proposal,
bom_category,
item_node,
counter,
inconsist_conf,
overhead_key,
costing_sheet,
costing_variant_1,
prod_allocation,
mnitm_prrefmatl,
mnitem_matprcgr,
mat_freight_grp,
plandelschedins,
sequence_number,
credit_price_1,
paytguarantform,
guaranteed,
cfop,
icms_law,
ipi_law,
tax_code,
value_contract_no,
val_cont_item,
module,
valuation,
matgroup_1,
matgroup_2,
promotion,
sales_deal,
leading_uom,
freegoods_delycontrl,
standardvariant,
tax_amount,
mrp_area,
profit_ctr_bill,
logical_system,
iss_law,
cofins_law,
pis_law,
location,
location_type,
return_reason,
refund_code,
approval,
cond_record_no,
risk_relevancy,
reqmnt_segment,
item_3,
item_4,
handover_location,
external_item_id,
handover_date,
handover_time,
tc_auto_det,
man_tc_reason,
tax_incent_type,
tax_subj_to_st,
incentive_id,
nf_special_case,
rev_acc_ref_id,
rev_acc_ref_type,
data_filter_value_for_data_agi,
rejection_sts,
confirmed,
financial_doc,
exptcreditinsur,
confirm_status,
delay_status,
billing_status,
billg_block_sts,
overall_status,
ovrl_delvry_sts,
delivery_status,
dlv_blk_status,
manual_completion,
reference_stat,
reference_sts,
item_5,
item_bill_data,
pricing_1,
item_deliv_data,
item_reserves_1,
item_reserves_2,
item_reserves_3,
item_reserves_4,
item_reserves_5,
goodsmovementst,
embargo_status,
wls_status,
total_legal_status,
prod_marktablty_sts,
dangerous_goods_sts,
sfty_data_sheet_sts,
down_payment_status,
committed_deliv_date,
cmtd_deliv_crtn_date,
cmtd_delivery_qty,
requ_salesorder_qty,
guid_16,
pbs_state,
ifrs_15_relevant,
ssp,
availcheck_rule,
net_amount_cap,
cap_notif_threshold,
overtime_category,
session_created_on,
session_created_at,
original_plant,
sub_status,
dummy_function_in_length_1,
po_quantity,
order_unit,
global_item,
mill_bselind,
time_stamp,
annexing_package,
ann_package_extend,
annexing_base_date,
plan_no_f_oper,
counter_1,
dip_profile,
model_id_code,
interchang_code,
order_priority,
donotsub,
aircraftreg_no,
fcstdelsched_edi_ind,
jitdschdedi_ind,
comp_fctds_fctds,
comp_jitds_jitds,
comp_jitds_fcstds,
reg_indicator,
season_year,
season,
collection,
theme,
cond_record_no_1,
copied_season,
cancel_date,
split_id,
vas_relevant,
item_6,
transaction_number,
item_group,
item_number,
copied_vas_data,
record_num,
higher_lev_item_pqr,
season_comp_ind,
cost_center,
fund,
funds_center,
functional_area,
grant,
budget_period,
iuid_cust_rel,
equipment,
object_type,
activity_type,
from_date,
to_date,
document_number,
item_number_1,
eng_mgmt_object_nr,
std_wbs_element,
work_period,
treasury_account_sym,
business_evt_typ_cd,
modification_allowed,
cancellation_allowed,
payment_methods,
business_partner_no,
reporting_frequency,
us_govt,
psst_grouping_rule,
psst_group,
trdg_part_ba,
plan_no_f_oper_1,
counter_2,
end_customer,
characteristic_1,
characteristic_2,
characteristic_3,
reservation_number,
item_no,
claim_item_no,
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
src.material,
src.materialentered,
src.pr_ref_matl,
src.batch,
src.material_group,
src.item_descr,
src.item_category,
src.item_type,
src.item_del_f_dlv,
src.relev_for_bill,
src.higher_lev_item,
src.altern_to_item,
src.rejectionreason,
src.prod_hierarchy,
src.node_id,
src.origin_of_prodhier,
src.node_id_1,
src.origin_of_prodhier_1,
src.target_value,
src.target_quantity,
src.target_qty_uom,
src.convers_factor,
src.convers_factor_1,
src.base_unit,
src.scale_quantity,
src.rounding_qty,
src.reconcil_date,
src.absolute_deviation,
src.po_item,
src.cust_material,
src.deviation,
src.dev_days,
src.class_of_items,
src.usage,
src.delivery_group,
src.qty_is_fixed,
src.unlimited_tol,
src.overdeliv_tol,
src.underdel_tol,
src.billing_block,
src.replacemt_part,
src.bill_meth_co_ppc,
src.division,
src.business_area,
src.net_value,
src.doc_currency,
src.max_part_deliv,
src.part_dlv_item,
src.batch_split,
src.order_quantity,
src.required_dlvqty,
src.cumltvconfdqty,
src.cumltvconfdqty_1,
src.sales_unit,
src.numerator,
src.denominat,
src.gross_weight,
src.net_weight,
src.weight_unit,
src.volume,
src.volume_unit,
src.originating_doc,
src.item_1,
src.reference_doc,
src.reference_item,
src.complete_refer,
src.update_doc_flow,
src.completion_rule,
src.delivery_prior,
src.plant,
src.stor_loc,
src.shipping_point,
src.route,
src.bom_origin,
src.bom_key_date,
src.bom,
src.bom_item_number,
src.order_probab,
src.created_on,
src.created_by,
src.entry_time,
src.tax_classific,
src.tax_classific_1,
src.tax_classific_2,
src.tax_classific_3,
src.tax_classific_4,
src.tax_classific_5,
src.tax_classific_6,
src.tax_classific_7,
src.tax_classific_8,
src.fixed_proc_time,
src.var_proc_time,
src.preced_with_ref,
src.net_price,
src.pricing_unit,
src.unit_of_measure,
src.returns_item,
src.cash_discount,
src.avail_check,
src.req_mt_totals,
src.mat_price_grp,
src.acctassmtgrpmat,
src.vol_rebate_grp,
src.commission_grp,
src.ean_number,
src.pricing,
src.valuation_type,
src.separate_val,
src.batch_mgmt_rqt,
src.batches,
src.min_dely_qty,
src.update_group,
src.cost,
src.subtotal_1,
src.subtotal_2,
src.subtotal_3,
src.subtotal_4,
src.subtotal_5,
src.subtotal_6,
src.exch_rate_stats,
src.changed_on,
src.ean_upc,
src.fix_qty_date,
src.profit_center,
src.materialgroup_1,
src.materialgroup_2,
src.materialgroup_3,
src.materialgroup_4,
src.materialgroup_5,
src.quantity,
src.reasn,
src.special_stock,
src.allocation_ind,
src.profit_segment,
src.wbs_element,
src.order_number,
src.plng_material,
src.planning_plant,
src.prod_grp_unit,
src.conversion,
src.acct_assgmt_cat,
src.consumption,
src.bom_expl_number,
src.objno_item,
src.ra_key,
src.reqmts_type,
src.credit_price,
src.partial_release,
src.credit_active,
src.exchange_rate,
src.configuration,
src.int_object_no,
src.expected_price,
src.condit_update,
src.serialnoprofile,
src.no_serial_no,
src.no_gr_posted,
src.matl_grp_pckmat,
src.manual_price,
src.prec_doc_categ,
src.matdetermactive,
src.usage_hl_item,
src.cost_estimateno,
src.costing_variant,
src.item_2,
src.stat_value,
src.statistics_date,
src.bus_trans_type,
src.cus_preference,
src.nocondrec_batch,
src.int_class_no,
src.qty_proposal,
src.bom_category,
src.item_node,
src.counter,
src.inconsist_conf,
src.overhead_key,
src.costing_sheet,
src.costing_variant_1,
src.prod_allocation,
src.mnitm_prrefmatl,
src.mnitem_matprcgr,
src.mat_freight_grp,
src.plandelschedins,
src.sequence_number,
src.credit_price_1,
src.paytguarantform,
src.guaranteed,
src.cfop,
src.icms_law,
src.ipi_law,
src.tax_code,
src.value_contract_no,
src.val_cont_item,
src.module,
src.valuation,
src.matgroup_1,
src.matgroup_2,
src.promotion,
src.sales_deal,
src.leading_uom,
src.freegoods_delycontrl,
src.standardvariant,
src.tax_amount,
src.mrp_area,
src.profit_ctr_bill,
src.logical_system,
src.iss_law,
src.cofins_law,
src.pis_law,
src.location,
src.location_type,
src.return_reason,
src.refund_code,
src.approval,
src.cond_record_no,
src.risk_relevancy,
src.reqmnt_segment,
src.item_3,
src.item_4,
src.handover_location,
src.external_item_id,
src.handover_date,
src.handover_time,
src.tc_auto_det,
src.man_tc_reason,
src.tax_incent_type,
src.tax_subj_to_st,
src.incentive_id,
src.nf_special_case,
src.rev_acc_ref_id,
src.rev_acc_ref_type,
src.data_filter_value_for_data_agi,
src.rejection_sts,
src.confirmed,
src.financial_doc,
src.exptcreditinsur,
src.confirm_status,
src.delay_status,
src.billing_status,
src.billg_block_sts,
src.overall_status,
src.ovrl_delvry_sts,
src.delivery_status,
src.dlv_blk_status,
src.manual_completion,
src.reference_stat,
src.reference_sts,
src.item_5,
src.item_bill_data,
src.pricing_1,
src.item_deliv_data,
src.item_reserves_1,
src.item_reserves_2,
src.item_reserves_3,
src.item_reserves_4,
src.item_reserves_5,
src.goodsmovementst,
src.embargo_status,
src.wls_status,
src.total_legal_status,
src.prod_marktablty_sts,
src.dangerous_goods_sts,
src.sfty_data_sheet_sts,
src.down_payment_status,
src.committed_deliv_date,
src.cmtd_deliv_crtn_date,
src.cmtd_delivery_qty,
src.requ_salesorder_qty,
src.guid_16,
src.pbs_state,
src.ifrs_15_relevant,
src.ssp,
src.availcheck_rule,
src.net_amount_cap,
src.cap_notif_threshold,
src.overtime_category,
src.session_created_on,
src.session_created_at,
src.original_plant,
src.sub_status,
src.dummy_function_in_length_1,
src.po_quantity,
src.order_unit,
src.global_item,
src.mill_bselind,
src.time_stamp,
src.annexing_package,
src.ann_package_extend,
src.annexing_base_date,
src.plan_no_f_oper,
src.counter_1,
src.dip_profile,
src.model_id_code,
src.interchang_code,
src.order_priority,
src.donotsub,
src.aircraftreg_no,
src.fcstdelsched_edi_ind,
src.jitdschdedi_ind,
src.comp_fctds_fctds,
src.comp_jitds_jitds,
src.comp_jitds_fcstds,
src.reg_indicator,
src.season_year,
src.season,
src.collection,
src.theme,
src.cond_record_no_1,
src.copied_season,
src.cancel_date,
src.split_id,
src.vas_relevant,
src.item_6,
src.transaction_number,
src.item_group,
src.item_number,
src.copied_vas_data,
src.record_num,
src.higher_lev_item_pqr,
src.season_comp_ind,
src.cost_center,
src.fund,
src.funds_center,
src.functional_area,
src.grant,
src.budget_period,
src.iuid_cust_rel,
src.equipment,
src.object_type,
src.activity_type,
src.from_date,
src.to_date,
src.document_number,
src.item_number_1,
src.eng_mgmt_object_nr,
src.std_wbs_element,
src.work_period,
src.treasury_account_sym,
src.business_evt_typ_cd,
src.modification_allowed,
src.cancellation_allowed,
src.payment_methods,
src.business_partner_no,
src.reporting_frequency,
src.us_govt,
src.psst_grouping_rule,
src.psst_group,
src.trdg_part_ba,
src.plan_no_f_oper_1,
src.counter_2,
src.end_customer,
src.characteristic_1,
src.characteristic_2,
src.characteristic_3,
src.reservation_number,
src.item_no,
src.claim_item_no,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'sales_document_item' as table_name
    		,'vbap' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_item') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_item') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.sales_document_item`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_item` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'sales_document_item'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_item`))) AS inserted_record_count
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
    