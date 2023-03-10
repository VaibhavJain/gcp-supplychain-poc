MERGE INTO `sap-adapter.slt_staging.purchase_order_header_detail` tgt
USING (
WITH ekko as
(select MANDT as client,
EBELN as purchasing_doc,
BUKRS as company_code,
BSTYP as doc_category,
BSART as document_type,
BSAKZ as control,
LOEKZ as deletion_ind,
STATU as status,
AEDAT as created_on,
ERNAM as created_by,
LASTCHANGEDATETIME as last_changed,
PINCR as item_interval,
LPONR as last_item,
LIFNR as vendor,
SPRAS as language_key,
ZTERM as payt_terms,
ZBD1T as payment_in,
ZBD2T as payment_in_1,
ZBD3T as payment_in_2,
ZBD1P as disc_percent_1,
ZBD2P as disc_percent_2,
EKORG as purchasing_org,
EKGRP as purch_group,
WAERS as currency,
WKURS as exchange_rate,
KUFIX as fixed_exch_rate,
BEDAT as document_date,
KDATB as validity_start,
KDATE as validity_end,
BWBDT as application_by,
ANGDT as quot_deadline,
BNDDT as binding_period,
GWLDT as warranty,
AUSNR as bid_invitation,
ANGNR as quotation,
IHRAN as quotation_date,
IHREZ as your_reference,
VERKF as salesperson,
TELF1 as telephone,
LLIEF as goods_supplier,
KUNNR as customer,
KONNR as agreement,
ABGRU as field_not_used,
AUTLF as complete_deliv,
WEAKT as gr_message,
RESWK as supplying_plant,
LBLIF as rec_supplier,
INCO1 as incoterms,
INCO2 as incoterms_2,
KTWRT as target_value,
DISTRIBUTIONTYPE as distribution_type,
SUBMI as collective_no,
KNUMV as doc_condition,
KALSM as procedure_pricing,
STAFO as update_group,
LIFRE as invoicing_party,
EXNUM as foreign_trade_datanr,
UNSEZ as our_reference,
LOGSY as logical_system,
UPINC as subitem_interv,
STAKO as tm_dep_conds,
FRGGR as release_group,
FRGSX as rel_strategy,
FRGKE as release_ind,
FRGZU as release_state,
FRGRL as subj_to_release,
LANDS as reporting_cntry,
LPHIS as release_docu,
ADRNR as address_number,
STCEG_L as ctryslstxno,
STCEG as vat_reg_no,
ABSGR as reas_for_canc,
ADDNR as document_number,
KORNR as corr_misc_pr,
MEMORY as incomplete,
PROCSTAT as proc_state,
RLWRT as tot_val_rel,
REVNO as version,
SCMPROC as scmproc,
REASON_CODE as reason_code,
MEMORYTYPE as incompl_cat,
RETTP as retention,
RETPC as retention_1,
DPTYP as down_payment,
DPPCT as down_payment_1,
DPAMT as down_payment_amt,
DPDAT as due_date_for_dp,
MSR_ID as process_id_no,
HIERARCHY_EXISTS as contract_hierarchy,
THRESHOLD_EXISTS as thresh_val_exists,
LEGAL_CONTRACT as legal_contract_no,
DESCRIPTION as contract_name,
RELEASE_DATE as released_on,
VSART as shipping_type,
HANDOVERLOC as handover_location,
SHIPCOND as shp_cond,
INCOV as inco_version,
INCO2_L as inco_location1,
INCO3_L as inco_location2,
GRWCU as currency_1,
INTRA_REL as intrastat_rel,
INTRA_EXCL as exclude_intra,
QTN_ERLST_SUBMSN_DATE as start_date,
FOLLOWON_DOC_CAT as follow_on_doc_cat,
FOLLOWON_DOC_TYPE as follow_on_doc_type,
DUMMY_EKKO_INCL_EEW_PS as ext_include,
EXTERNALSYSTEM as ext_ref_system,
EXTERNALREFERENCEID as ext_reference_id,
EXT_REV_TMSTMP as external_revision,
ISEOPBLOCKED as business_purp_compl,
ISAGED as document_aged,
FORCE_ID as guid_32,
FORCE_CNT as counter,
RELOC_ID as relocation_id,
RELOC_SEQ_ID as relocation_step,
SOURCE_LOGSYS as logical_system_1,
FSH_TRANSACTION as transaction_number,
FSH_ITEM_GROUP as item_group,
FSH_VAS_LAST_ITEM as last_vas_item_number,
FSH_OS_STG_CHANGE as changed_manually,
TMS_REF_UUID as guid_of_sap_tm,
ZAPCGK as annexing_package,
APCGK_EXTEND as ann_package_extend,
ZBAS_DATE as base_date,
ZADATTYP as annexing_date_type,
ZSTART_DAT as annexing_start_date,
Z_DEV as deviation_percen,
ZINDANX as annexed_ind,
ZLIMIT_DAT as limit_date,
NUMERATOR as char20,
HASHCAL_BDAT as new_base_date,
HASHCAL as accountant_gen_mth,
NEGATIVE as no_negative_annexing,
HASHCAL_EXISTS as purchasing_org_1,
KNOWN_INDEX as known_index_indic,
POSTAT as s1postat_check,
VZSKZ as interest_indic,
FSH_SNST_STATUS as snap_status,
PROCE as procedure_number,
CONC as adjust_contest,
CONT as contract_type,
COMP as legal_competence,
OUTR as miscellaneous,
DESP as despatch,
DESP_DAT as input_date,
DESP_CARGO as job,
PARE as assessment,
PARE_DAT as date_1,
PARE_CARGO as job_1,
PFM_CONTRACT as contract,
POHF_TYPE as document_category,
EQ_EINDT as same_delivery_date,
EQ_WERKS as same_plant,
FIXPO as firm_deal_id,
EKGRP_ALLOW as take_acc_of_prchgrp,
WERKS_ALLOW as take_acc_of_plant,
CONTRACT_ALLOW as take_acc_of_contract,
PSTYP_ALLOW as take_acc_of_itmcat,
FIXPO_ALLOW as fixed_date_purchases,
KEY_ID_ALLOW as consider_budget,
AUREL_ALLOW as alloc_table_rel,
DELPER_ALLOW as take_acc_of_delper,
EINDT_ALLOW as take_acc_of_dlvydt,
LTSNR_ALLOW as include_vendor_subr,
OTB_LEVEL as check_level,
OTB_COND_TYPE as condition_type,
KEY_ID as budget_number,
OTB_VALUE as required_budget,
OTB_CURR as otb_currency,
OTB_RES_VALUE as reserved_budget,
OTB_SPEC_VALUE as special_release,
SPR_RSN_PROFILE as otb_reason_profile,
BUDG_TYPE as budget_type,
OTB_STATUS as otb_status,
OTB_REASON as reason,
CHECK_TYPE as type_of_otb_check,
CON_OTB_REQ as otb_rel_contract,
CON_PREBOOK_LEV as contr_indicator_lvl,
CON_DISTR_LEV as distrib_targ_val_itm,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct ekko.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.ekko` as ekko
where ekko._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'purchase_order_header_detail'),0))
select client as client_key,
purchasing_doc as purchasing_doc_key,
*
From  ekko
UNION ALL
select null as client_key,
null as purchasing_doc_key,
ekko.*
From ekko as ekko
INNER JOIN `sap-adapter.slt_staging.purchase_order_header_detail` as uji
ON ekko.client = uji.client
AND ekko.purchasing_doc = uji.purchasing_doc
AND ekko.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.purchasing_doc_key = tgt.purchasing_doc
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
purchasing_doc,
company_code,
doc_category,
document_type,
control,
deletion_ind,
status,
created_on,
created_by,
last_changed,
item_interval,
last_item,
vendor,
language_key,
payt_terms,
payment_in,
payment_in_1,
payment_in_2,
disc_percent_1,
disc_percent_2,
purchasing_org,
purch_group,
currency,
exchange_rate,
fixed_exch_rate,
document_date,
validity_start,
validity_end,
application_by,
quot_deadline,
binding_period,
warranty,
bid_invitation,
quotation,
quotation_date,
your_reference,
salesperson,
telephone,
goods_supplier,
customer,
agreement,
field_not_used,
complete_deliv,
gr_message,
supplying_plant,
rec_supplier,
incoterms,
incoterms_2,
target_value,
distribution_type,
collective_no,
doc_condition,
procedure_pricing,
update_group,
invoicing_party,
foreign_trade_datanr,
our_reference,
logical_system,
subitem_interv,
tm_dep_conds,
release_group,
rel_strategy,
release_ind,
release_state,
subj_to_release,
reporting_cntry,
release_docu,
address_number,
ctryslstxno,
vat_reg_no,
reas_for_canc,
document_number,
corr_misc_pr,
incomplete,
proc_state,
tot_val_rel,
version,
scmproc,
reason_code,
incompl_cat,
retention,
retention_1,
down_payment,
down_payment_1,
down_payment_amt,
due_date_for_dp,
process_id_no,
contract_hierarchy,
thresh_val_exists,
legal_contract_no,
contract_name,
released_on,
shipping_type,
handover_location,
shp_cond,
inco_version,
inco_location1,
inco_location2,
currency_1,
intrastat_rel,
exclude_intra,
start_date,
follow_on_doc_cat,
follow_on_doc_type,
ext_include,
ext_ref_system,
ext_reference_id,
external_revision,
business_purp_compl,
document_aged,
guid_32,
counter,
relocation_id,
relocation_step,
logical_system_1,
transaction_number,
item_group,
last_vas_item_number,
changed_manually,
guid_of_sap_tm,
annexing_package,
ann_package_extend,
base_date,
annexing_date_type,
annexing_start_date,
deviation_percen,
annexed_ind,
limit_date,
char20,
new_base_date,
accountant_gen_mth,
no_negative_annexing,
purchasing_org_1,
known_index_indic,
s1postat_check,
interest_indic,
snap_status,
procedure_number,
adjust_contest,
contract_type,
legal_competence,
miscellaneous,
despatch,
input_date,
job,
assessment,
date_1,
job_1,
contract,
document_category,
same_delivery_date,
same_plant,
firm_deal_id,
take_acc_of_prchgrp,
take_acc_of_plant,
take_acc_of_contract,
take_acc_of_itmcat,
fixed_date_purchases,
consider_budget,
alloc_table_rel,
take_acc_of_delper,
take_acc_of_dlvydt,
include_vendor_subr,
check_level,
condition_type,
budget_number,
required_budget,
otb_currency,
reserved_budget,
special_release,
otb_reason_profile,
budget_type,
otb_status,
reason,
type_of_otb_check,
otb_rel_contract,
contr_indicator_lvl,
distrib_targ_val_itm,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.purchasing_doc,
src.company_code,
src.doc_category,
src.document_type,
src.control,
src.deletion_ind,
src.status,
src.created_on,
src.created_by,
src.last_changed,
src.item_interval,
src.last_item,
src.vendor,
src.language_key,
src.payt_terms,
src.payment_in,
src.payment_in_1,
src.payment_in_2,
src.disc_percent_1,
src.disc_percent_2,
src.purchasing_org,
src.purch_group,
src.currency,
src.exchange_rate,
src.fixed_exch_rate,
src.document_date,
src.validity_start,
src.validity_end,
src.application_by,
src.quot_deadline,
src.binding_period,
src.warranty,
src.bid_invitation,
src.quotation,
src.quotation_date,
src.your_reference,
src.salesperson,
src.telephone,
src.goods_supplier,
src.customer,
src.agreement,
src.field_not_used,
src.complete_deliv,
src.gr_message,
src.supplying_plant,
src.rec_supplier,
src.incoterms,
src.incoterms_2,
src.target_value,
src.distribution_type,
src.collective_no,
src.doc_condition,
src.procedure_pricing,
src.update_group,
src.invoicing_party,
src.foreign_trade_datanr,
src.our_reference,
src.logical_system,
src.subitem_interv,
src.tm_dep_conds,
src.release_group,
src.rel_strategy,
src.release_ind,
src.release_state,
src.subj_to_release,
src.reporting_cntry,
src.release_docu,
src.address_number,
src.ctryslstxno,
src.vat_reg_no,
src.reas_for_canc,
src.document_number,
src.corr_misc_pr,
src.incomplete,
src.proc_state,
src.tot_val_rel,
src.version,
src.scmproc,
src.reason_code,
src.incompl_cat,
src.retention,
src.retention_1,
src.down_payment,
src.down_payment_1,
src.down_payment_amt,
src.due_date_for_dp,
src.process_id_no,
src.contract_hierarchy,
src.thresh_val_exists,
src.legal_contract_no,
src.contract_name,
src.released_on,
src.shipping_type,
src.handover_location,
src.shp_cond,
src.inco_version,
src.inco_location1,
src.inco_location2,
src.currency_1,
src.intrastat_rel,
src.exclude_intra,
src.start_date,
src.follow_on_doc_cat,
src.follow_on_doc_type,
src.ext_include,
src.ext_ref_system,
src.ext_reference_id,
src.external_revision,
src.business_purp_compl,
src.document_aged,
src.guid_32,
src.counter,
src.relocation_id,
src.relocation_step,
src.logical_system_1,
src.transaction_number,
src.item_group,
src.last_vas_item_number,
src.changed_manually,
src.guid_of_sap_tm,
src.annexing_package,
src.ann_package_extend,
src.base_date,
src.annexing_date_type,
src.annexing_start_date,
src.deviation_percen,
src.annexed_ind,
src.limit_date,
src.char20,
src.new_base_date,
src.accountant_gen_mth,
src.no_negative_annexing,
src.purchasing_org_1,
src.known_index_indic,
src.s1postat_check,
src.interest_indic,
src.snap_status,
src.procedure_number,
src.adjust_contest,
src.contract_type,
src.legal_competence,
src.miscellaneous,
src.despatch,
src.input_date,
src.job,
src.assessment,
src.date_1,
src.job_1,
src.contract,
src.document_category,
src.same_delivery_date,
src.same_plant,
src.firm_deal_id,
src.take_acc_of_prchgrp,
src.take_acc_of_plant,
src.take_acc_of_contract,
src.take_acc_of_itmcat,
src.fixed_date_purchases,
src.consider_budget,
src.alloc_table_rel,
src.take_acc_of_delper,
src.take_acc_of_dlvydt,
src.include_vendor_subr,
src.check_level,
src.condition_type,
src.budget_number,
src.required_budget,
src.otb_currency,
src.reserved_budget,
src.special_release,
src.otb_reason_profile,
src.budget_type,
src.otb_status,
src.reason,
src.type_of_otb_check,
src.otb_rel_contract,
src.contr_indicator_lvl,
src.distrib_targ_val_itm,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'purchase_order_header_detail' as table_name
    		,'ekko' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_order_header_detail') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_order_header_detail') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.purchase_order_header_detail`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_order_header_detail` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'purchase_order_header_detail'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_order_header_detail`))) AS inserted_record_count
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
    