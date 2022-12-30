MERGE INTO `sap-adapter.slt_staging.purchase_requisition_details` tgt
USING (
WITH eban as
(select MANDT as client,
BANFN as purchase_req,
BNFPO as requisn_item,
BSART as document_type,
BSTYP as doc_category,
BSAKZ as control,
LOEKZ as deletion_ind,
STATU as processing_stat,
ESTKZ as creation_ind,
FRGKZ as release_ind,
FRGZU as release_state,
FRGST as rel_strategy,
EKGRP as purch_group,
ERNAM as created_by,
ERDAT as changed_on,
AFNAM as requisitioner,
TXZ01 as short_text,
MATNR as material,
EMATN as mpn_material,
WERKS as plant,
LGORT as stor_loc,
BEDNR as tracking_number,
MATKL as material_group,
RESWK as supplying_plant,
MENGE as quantity,
MEINS as unit_of_measure,
BUMNG as shortage,
BADAT as requisn_date,
LPEIN as delivery_date,
LFDAT as delivery_date_1,
FRGDT as release_date,
WEBAZ as gr_proc_time,
PREIS as valuation_price,
PEINH as price_unit,
PSTYP as item_category,
KNTTP as acct_assgmt_cat,
KZVBR as consumption,
KFLAG as modifiable,
VRTKZ as distribution,
TWRKZ as partial_invoice,
WEPOS as goods_receipt,
WEUNB as gr_non_valuated,
REPOS as invoice_receipt,
LIFNR as desired_vendor,
FLIEF as fixed_vendor,
EKORG as purchasing_org,
VRTYP as doc_category_1,
KONNR as agreement,
KTPNR as agreement_item,
INFNR as info_record,
ZUGBA as assigned,
QUNUM as quota_arr,
QUPOS as quota_arr_item,
DISPO as mrp_controller,
SERNR as bom_expl_number,
BVDAT as last_resubmiss,
BATOL as resubmission,
BVDRK as no_resubmiss,
EBELN as purchase_order,
EBELP as item,
BEDAT as po_date,
BSMNG as order_quantity,
LBLNI as entry_sheet,
BWTAR as valuation_type,
XOBLR as commitments,
EBAKZ as closed,
RSNUM as reservation_number,
SOBKZ as special_stock,
ARSNR as settle_reser_no,
ARSPS as settle_item_no,
FIXKZ as fixed_ind,
BMEIN as order_unit,
REVLV as revision_level,
VORAB as advance_proc,
PACKNO as package_number,
KANBA as kanban_indicat,
BPUEB as po_price,
CUOBJ as int_object_no,
FRGGR as release_group,
FRGRL as subj_to_release,
AKTNR as promotion,
CHARG as batch,
UMSOK as sp_ind_st_tfr,
VERID as prod_version,
FIPOS as commitment_item,
FISTL as funds_center,
GEBER as fund,
KZKFG as origin_of_config,
SATNR as cross_plant_cm,
MNG02 as committed_qty,
DAT01 as committed_date,
ATTYP as matl_category,
ADRNR as address,
ADRN2 as address_1,
KUNNR as customer,
EMLIF as supplier,
LBLKZ as sc_supplier,
KZBWS as valuation,
WAERS as currency,
IDNLF as supp_mat_no,
GSFRG as overall_req_rel,
MPROF as mfr_part_profile,
KZFME as units_meas_use,
SPRAS as language_key,
TECHS as standardvariant,
MFRPN as mfr_part_number,
MFRNR as manufacturer,
EMNFR as external_manuf,
FORDN as framework_order,
FORDP as frwrk_ord_item,
PLIFZ as pl_deliv_time,
BERID as mrp_area,
UZEIT as deliver_date_time,
FKBER as functional_area,
GRANT_NBR as grants,
MEMORY as incomplete,
BANPR as proc_state,
RLWRT as tot_val_rel,
BLCKD as blocking_ind,
REVNO as version,
BLCKT as blocking_text,
BESWK as procuring_plant,
EPROFILE as procurement_prof,
EPREFDOC as external_doc,
EPREFITM as external_item,
GMMNG as po_qty_on_hold,
WRTKZ as reduce_com_value,
RESLO as iss_stor_loc,
KBLNR as earmarked_funds,
KBLPOS as document_item,
PRIO_URG as reqmt_urgency,
PRIO_REQ as reqmt_priority,
MEMORYTYPE as incompl_cat,
ANZSN as no_serial_no,
MHDRZ as rem_shelf_life,
IPRKZ as period_ind,
NODISP as res_purc_req,
SRM_CONTRACT_ID as central_contract,
SRM_CONTRACT_ITM as cent_contract_item,
BUDGET_PD as budget_period,
ELDAT as planned_dates,
EXPERT_MODE as pr_in_expert_mode,
CENTRAL_PURREQN_PROC as is_central_pr_procg,
SPE_CRM_REF_SO as crm_ref_order,
SPE_CRM_REF_ITEM as crm_rf_item_no,
DUMMY_EBAN_INCL_EEW_PS as pr_ext_include,
STORENETWORKID as character,
STORESUPPLIERID as character_field_length_64,
CREATIONDATE as creation_date,
CREATIONTIME as creation_time,
PRODUCTTYPE as product_type_group,
SERVICEPERFORMER as service_performer,
ISEOPBLOCKED as business_purp_compl,
EXT_REV_TMSTMP as external_revision,
FMFGUS_KEY as us_govt,
STARTDATE as start_date,
ENDDATE as end_date,
EXTMATERIALFORPURG as material_1,
EXTFIXEDSUPPLIERFORPURG as fixed_supplier,
EXTDESIREDSUPPLIERFORPURG as desired_supplier,
EXTCONTRACTFORPURG as contract,
EXTCONTRACTITEMFORPURG as contract_item,
EXTINFORECORDFORPURG as info_record_1,
EXTPLANTFORPURG as plant_1,
EXTCOMPANYCODEFORPURG as company_code,
EXTPURGORGFORPURG as purch_organization,
EXTSOURCESYSTEM as comm_system,
EXT_BE_SOURCE_SYS as connected_system_id,
EXT_BE_PRCHANGEINDICATOR as pr_change_indicator,
EXTDOCTYPEFORPURG as pr_doctyp_of_connsys,
EXTAPPROVALSTATUS as ext_prcsng_status,
PURCHASEREQNITEMUNIQUEID as pr_item,
LASTCHANGEDATETIME as time_stamp,
ISONBEHALFCART as shop_on_behalf_ind,
SDM_VERSION as sdm_version,
SAKTO as g_l_account,
KOSTL as cost_center,
EXPECTED_VALUE as expected_value,
LIMIT_AMOUNT as overall_limit,
ADVCODE as advice_code,
STACODE as statuscode,
BANFN_CS as cs_preq,
BNFPO_CS as cs_preqitm,
ITEM_CS as cs_item_cat,
BSMNG_SND as po_qty_sender,
NO_MARD_DATA as no_sloc_data,
ADMOI as model_id_code,
ADPRI as order_priority,
LPRIO as delivery_prior,
ADACN as aircraftreg_no,
ADDNS as donotsub,
SERRU as subcon_type,
DISUB_SOBKZ as sp_stock,
DISUB_PSPNR as wbs_element,
DISUB_KUNNR as customer_1,
DISUB_VBELN as sales_document,
DISUB_POSNR as item_1,
DISUB_OWNER as owner_of_stock,
FLDLOGSSUPPLYPROCESS as supply_process,
FLDLOGSDELIVISHELDONSHORE as hold_on_shore,
FSH_SEASON_YEAR as season_year,
FSH_SEASON as season,
FSH_COLLECTION as collection,
FSH_THEME as theme,
FSH_VAS_REL as vas_relevant,
FSH_VAS_PRNT_ID as item_2,
FSH_TRANSACTION as transaction_number,
FSH_ITEM_GROUP as item_group,
FSH_ITEM as item_number,
IUID_RELEVANT as iuid_relevant,
SC_SR_ITEM_KEY as catalog_item_key,
SC_CATALOGID as web_service_id,
SC_CATALOGITEM as catalog_item,
SC_REQUESTOR as requestor,
SC_AUTHOR as author,
SGT_SCAT as stock_segment,
SGT_RCAT as reqmnt_segment,
WRF_CHARSTC1 as characteristic_1,
WRF_CHARSTC2 as characteristic_2,
WRF_CHARSTC3 as characteristic_3,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct eban.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.eban` as eban
where eban._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'purchase_requisition_details'),0))
select client as client_key,
purchase_req as purchase_req_key,
requisn_item as requisn_item_key,
*
From  eban
UNION ALL
select null as client_key,
null as purchase_req_key,
null as requisn_item_key,
eban.*
From eban as eban
INNER JOIN `sap-adapter.slt_staging.purchase_requisition_details` as uji
ON eban.client = uji.client
AND eban.purchase_req = uji.purchase_req
AND eban.requisn_item = uji.requisn_item
AND eban.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.purchase_req_key = tgt.purchase_req
AND src.requisn_item_key = tgt.requisn_item
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
purchase_req,
requisn_item,
document_type,
doc_category,
control,
deletion_ind,
processing_stat,
creation_ind,
release_ind,
release_state,
rel_strategy,
purch_group,
created_by,
changed_on,
requisitioner,
short_text,
material,
mpn_material,
plant,
stor_loc,
tracking_number,
material_group,
supplying_plant,
quantity,
unit_of_measure,
shortage,
requisn_date,
delivery_date,
delivery_date_1,
release_date,
gr_proc_time,
valuation_price,
price_unit,
item_category,
acct_assgmt_cat,
consumption,
modifiable,
distribution,
partial_invoice,
goods_receipt,
gr_non_valuated,
invoice_receipt,
desired_vendor,
fixed_vendor,
purchasing_org,
doc_category_1,
agreement,
agreement_item,
info_record,
assigned,
quota_arr,
quota_arr_item,
mrp_controller,
bom_expl_number,
last_resubmiss,
resubmission,
no_resubmiss,
purchase_order,
item,
po_date,
order_quantity,
entry_sheet,
valuation_type,
commitments,
closed,
reservation_number,
special_stock,
settle_reser_no,
settle_item_no,
fixed_ind,
order_unit,
revision_level,
advance_proc,
package_number,
kanban_indicat,
po_price,
int_object_no,
release_group,
subj_to_release,
promotion,
batch,
sp_ind_st_tfr,
prod_version,
commitment_item,
funds_center,
fund,
origin_of_config,
cross_plant_cm,
committed_qty,
committed_date,
matl_category,
address,
address_1,
customer,
supplier,
sc_supplier,
valuation,
currency,
supp_mat_no,
overall_req_rel,
mfr_part_profile,
units_meas_use,
language_key,
standardvariant,
mfr_part_number,
manufacturer,
external_manuf,
framework_order,
frwrk_ord_item,
pl_deliv_time,
mrp_area,
deliver_date_time,
functional_area,
grants,
incomplete,
proc_state,
tot_val_rel,
blocking_ind,
version,
blocking_text,
procuring_plant,
procurement_prof,
external_doc,
external_item,
po_qty_on_hold,
reduce_com_value,
iss_stor_loc,
earmarked_funds,
document_item,
reqmt_urgency,
reqmt_priority,
incompl_cat,
no_serial_no,
rem_shelf_life,
period_ind,
res_purc_req,
central_contract,
cent_contract_item,
budget_period,
planned_dates,
pr_in_expert_mode,
is_central_pr_procg,
crm_ref_order,
crm_rf_item_no,
pr_ext_include,
character,
character_field_length_64,
creation_date,
creation_time,
product_type_group,
service_performer,
business_purp_compl,
external_revision,
us_govt,
start_date,
end_date,
material_1,
fixed_supplier,
desired_supplier,
contract,
contract_item,
info_record_1,
plant_1,
company_code,
purch_organization,
comm_system,
connected_system_id,
pr_change_indicator,
pr_doctyp_of_connsys,
ext_prcsng_status,
pr_item,
time_stamp,
shop_on_behalf_ind,
sdm_version,
g_l_account,
cost_center,
expected_value,
overall_limit,
advice_code,
statuscode,
cs_preq,
cs_preqitm,
cs_item_cat,
po_qty_sender,
no_sloc_data,
model_id_code,
order_priority,
delivery_prior,
aircraftreg_no,
donotsub,
subcon_type,
sp_stock,
wbs_element,
customer_1,
sales_document,
item_1,
owner_of_stock,
supply_process,
hold_on_shore,
season_year,
season,
collection,
theme,
vas_relevant,
item_2,
transaction_number,
item_group,
item_number,
iuid_relevant,
catalog_item_key,
web_service_id,
catalog_item,
requestor,
author,
stock_segment,
reqmnt_segment,
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
src.purchase_req,
src.requisn_item,
src.document_type,
src.doc_category,
src.control,
src.deletion_ind,
src.processing_stat,
src.creation_ind,
src.release_ind,
src.release_state,
src.rel_strategy,
src.purch_group,
src.created_by,
src.changed_on,
src.requisitioner,
src.short_text,
src.material,
src.mpn_material,
src.plant,
src.stor_loc,
src.tracking_number,
src.material_group,
src.supplying_plant,
src.quantity,
src.unit_of_measure,
src.shortage,
src.requisn_date,
src.delivery_date,
src.delivery_date_1,
src.release_date,
src.gr_proc_time,
src.valuation_price,
src.price_unit,
src.item_category,
src.acct_assgmt_cat,
src.consumption,
src.modifiable,
src.distribution,
src.partial_invoice,
src.goods_receipt,
src.gr_non_valuated,
src.invoice_receipt,
src.desired_vendor,
src.fixed_vendor,
src.purchasing_org,
src.doc_category_1,
src.agreement,
src.agreement_item,
src.info_record,
src.assigned,
src.quota_arr,
src.quota_arr_item,
src.mrp_controller,
src.bom_expl_number,
src.last_resubmiss,
src.resubmission,
src.no_resubmiss,
src.purchase_order,
src.item,
src.po_date,
src.order_quantity,
src.entry_sheet,
src.valuation_type,
src.commitments,
src.closed,
src.reservation_number,
src.special_stock,
src.settle_reser_no,
src.settle_item_no,
src.fixed_ind,
src.order_unit,
src.revision_level,
src.advance_proc,
src.package_number,
src.kanban_indicat,
src.po_price,
src.int_object_no,
src.release_group,
src.subj_to_release,
src.promotion,
src.batch,
src.sp_ind_st_tfr,
src.prod_version,
src.commitment_item,
src.funds_center,
src.fund,
src.origin_of_config,
src.cross_plant_cm,
src.committed_qty,
src.committed_date,
src.matl_category,
src.address,
src.address_1,
src.customer,
src.supplier,
src.sc_supplier,
src.valuation,
src.currency,
src.supp_mat_no,
src.overall_req_rel,
src.mfr_part_profile,
src.units_meas_use,
src.language_key,
src.standardvariant,
src.mfr_part_number,
src.manufacturer,
src.external_manuf,
src.framework_order,
src.frwrk_ord_item,
src.pl_deliv_time,
src.mrp_area,
src.deliver_date_time,
src.functional_area,
src.grants,
src.incomplete,
src.proc_state,
src.tot_val_rel,
src.blocking_ind,
src.version,
src.blocking_text,
src.procuring_plant,
src.procurement_prof,
src.external_doc,
src.external_item,
src.po_qty_on_hold,
src.reduce_com_value,
src.iss_stor_loc,
src.earmarked_funds,
src.document_item,
src.reqmt_urgency,
src.reqmt_priority,
src.incompl_cat,
src.no_serial_no,
src.rem_shelf_life,
src.period_ind,
src.res_purc_req,
src.central_contract,
src.cent_contract_item,
src.budget_period,
src.planned_dates,
src.pr_in_expert_mode,
src.is_central_pr_procg,
src.crm_ref_order,
src.crm_rf_item_no,
src.pr_ext_include,
src.character,
src.character_field_length_64,
src.creation_date,
src.creation_time,
src.product_type_group,
src.service_performer,
src.business_purp_compl,
src.external_revision,
src.us_govt,
src.start_date,
src.end_date,
src.material_1,
src.fixed_supplier,
src.desired_supplier,
src.contract,
src.contract_item,
src.info_record_1,
src.plant_1,
src.company_code,
src.purch_organization,
src.comm_system,
src.connected_system_id,
src.pr_change_indicator,
src.pr_doctyp_of_connsys,
src.ext_prcsng_status,
src.pr_item,
src.time_stamp,
src.shop_on_behalf_ind,
src.sdm_version,
src.g_l_account,
src.cost_center,
src.expected_value,
src.overall_limit,
src.advice_code,
src.statuscode,
src.cs_preq,
src.cs_preqitm,
src.cs_item_cat,
src.po_qty_sender,
src.no_sloc_data,
src.model_id_code,
src.order_priority,
src.delivery_prior,
src.aircraftreg_no,
src.donotsub,
src.subcon_type,
src.sp_stock,
src.wbs_element,
src.customer_1,
src.sales_document,
src.item_1,
src.owner_of_stock,
src.supply_process,
src.hold_on_shore,
src.season_year,
src.season,
src.collection,
src.theme,
src.vas_relevant,
src.item_2,
src.transaction_number,
src.item_group,
src.item_number,
src.iuid_relevant,
src.catalog_item_key,
src.web_service_id,
src.catalog_item,
src.requestor,
src.author,
src.stock_segment,
src.reqmnt_segment,
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
    		'purchase_requisition_details' as table_name
    		,'eban' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_requisition_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_requisition_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.purchase_requisition_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_requisition_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'purchase_requisition_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_requisition_details`))) AS inserted_record_count
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
    