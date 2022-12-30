MERGE INTO `sap-adapter.slt_staging.production_order_master_details` tgt
USING (
WITH aufk as
(select MANDT as client,
AUFNR as order_number,
AUART as order_type,
AUTYP as order_category,
REFNR as order_1,
ERNAM as entered_by,
ERDAT as created_on,
AENAM as changed_by,
AEDAT as changed_on,
KTEXT as description,
LTEXT as long_txt_exists,
BUKRS as company_code,
WERKS as plant,
GSBER as business_area,
KOKRS as co_area,
CCKEY as cost_collector,
KOSTV as resp_cost_cntr,
STORT as location,
SOWRK as location_plant,
ASTKZ as statistical,
WAERS as currency,
ASTNR as status,
STDAT as status_change,
ESTNR as reached_status,
PHAS0 as created,
PHAS1 as released,
PHAS2 as completed,
PHAS3 as closed,
PDAT1 as planned_release,
PDAT2 as plannedcompltn,
PDAT3 as planned_clo_dat,
IDAT1 as release,
IDAT2 as tech_completion,
IDAT3 as close,
OBJID as object_id,
VOGRP as distrangroup,
LOEKZ as deletion_flag,
PLGKZ as plan_line_items,
KVEWE as usage,
KAPPL as application,
KALSM as costing_sheet,
ZSCHL as overhead_key,
ABKRS as process_group,
KSTAR as settlement_ce,
KOSTL as cost_center,
SAKNR as g_l_account,
SETNM as allocation_set,
CYCLE as cctr_true_post,
SDATE as valid_from,
SEQNR as sequence_number,
USER0 as applicant,
USER1 as telephone,
USER2 as person_resp,
USER3 as telephone_1,
USER4 as estimated_costs,
USER5 as applicdate,
USER6 as department,
USER7 as work_start,
USER8 as end_of_work,
USER9 as work_permit,
OBJNR as object_number,
PRCTR as profit_center,
PSPEL as wbs_element,
AWSLS as variance_key,
ABGSL as ra_key,
EB_POST as event_based_posting,
TXJCD as tax_jur,
FUNC_AREA as functional_area,
SCOPE as object_class,
PLINT as integ_planning,
KDAUF as sales_order,
KDPOS as sales_ord_item,
AUFEX as ext_order_no,
IVPRO as invest_profile,
LOGSYSTEM as logical_system,
FLG_MLTPS as multiple_items,
ABUKR as req_co_code,
AKSTL as req_cost_center,
SIZECL as scale,
IZWEK as invest_reason,
UMWKZ as envir_invest,
KSTEMPF as cost_collector_1,
ZSCHM as interest_prof,
PKOSA as cost_collector_2,
ANFAUFNR as req_order,
PROCNR as prod_proc_no,
PROTY as process_cat,
RSORD as refurbishment,
BEMOT as acctindicator,
ADRNRA as address_number,
ERFZEIT as time_created,
AEZEIT as changed_at,
CSTG_VRNT as costing_variant,
COSTESTNR as cost_estimateno,
VERAA_USER as personresponsible,
EEW_AUFK_PS_DUMMY as dummy_function_in_length_1,
VNAME as joint_venture,
RECID as recovery_indic,
ETYPE as equity_type,
OTYPE as jv_object_type,
JV_JIBCL as jib_jibe_class,
JV_JIBSA as jib_jibe_sbclsa,
JV_OCO as or_cost_obj,
CPD_UPDAT as time_stamp,
__CUM__INDCU as cu_order,
__CUM__CMNUM as cm_number,
__CUM__AUEST as auto_est_costs,
__CUM__DESNUM as cu_design_no,
AD01PROFNR as dip_profile,
VAPLZ as main_workctr,
WAWRK as plnt_workcenter,
FERC_IND as reg_indicator,
CLAIM_CONTROL as clm_creation_cntrl,
UPDATE_NEEDED as claim_inconsistent,
UPDATE_CONTROL as claim_upd_trigger,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct aufk.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.aufk` as aufk
where aufk._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'production_order_master_details'),0))
select client as client_key,
order_number as order_number_key,
*
From  aufk
UNION ALL
select null as client_key,
null as order_number_key,
aufk.*
From aufk as aufk
INNER JOIN `sap-adapter.slt_staging.production_order_master_details` as uji
ON aufk.client = uji.client
AND aufk.order_number = uji.order_number
AND aufk.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.order_number_key = tgt.order_number
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
order_number,
order_type,
order_category,
order_1,
entered_by,
created_on,
changed_by,
changed_on,
description,
long_txt_exists,
company_code,
plant,
business_area,
co_area,
cost_collector,
resp_cost_cntr,
location,
location_plant,
statistical,
currency,
status,
status_change,
reached_status,
created,
released,
completed,
closed,
planned_release,
plannedcompltn,
planned_clo_dat,
release,
tech_completion,
close,
object_id,
distrangroup,
deletion_flag,
plan_line_items,
usage,
application,
costing_sheet,
overhead_key,
process_group,
settlement_ce,
cost_center,
g_l_account,
allocation_set,
cctr_true_post,
valid_from,
sequence_number,
applicant,
telephone,
person_resp,
telephone_1,
estimated_costs,
applicdate,
department,
work_start,
end_of_work,
work_permit,
object_number,
profit_center,
wbs_element,
variance_key,
ra_key,
event_based_posting,
tax_jur,
functional_area,
object_class,
integ_planning,
sales_order,
sales_ord_item,
ext_order_no,
invest_profile,
logical_system,
multiple_items,
req_co_code,
req_cost_center,
scale,
invest_reason,
envir_invest,
cost_collector_1,
interest_prof,
cost_collector_2,
req_order,
prod_proc_no,
process_cat,
refurbishment,
acctindicator,
address_number,
time_created,
changed_at,
costing_variant,
cost_estimateno,
personresponsible,
dummy_function_in_length_1,
joint_venture,
recovery_indic,
equity_type,
jv_object_type,
jib_jibe_class,
jib_jibe_sbclsa,
or_cost_obj,
time_stamp,
cu_order,
cm_number,
auto_est_costs,
cu_design_no,
dip_profile,
main_workctr,
plnt_workcenter,
reg_indicator,
clm_creation_cntrl,
claim_inconsistent,
claim_upd_trigger,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.order_number,
src.order_type,
src.order_category,
src.order_1,
src.entered_by,
src.created_on,
src.changed_by,
src.changed_on,
src.description,
src.long_txt_exists,
src.company_code,
src.plant,
src.business_area,
src.co_area,
src.cost_collector,
src.resp_cost_cntr,
src.location,
src.location_plant,
src.statistical,
src.currency,
src.status,
src.status_change,
src.reached_status,
src.created,
src.released,
src.completed,
src.closed,
src.planned_release,
src.plannedcompltn,
src.planned_clo_dat,
src.release,
src.tech_completion,
src.close,
src.object_id,
src.distrangroup,
src.deletion_flag,
src.plan_line_items,
src.usage,
src.application,
src.costing_sheet,
src.overhead_key,
src.process_group,
src.settlement_ce,
src.cost_center,
src.g_l_account,
src.allocation_set,
src.cctr_true_post,
src.valid_from,
src.sequence_number,
src.applicant,
src.telephone,
src.person_resp,
src.telephone_1,
src.estimated_costs,
src.applicdate,
src.department,
src.work_start,
src.end_of_work,
src.work_permit,
src.object_number,
src.profit_center,
src.wbs_element,
src.variance_key,
src.ra_key,
src.event_based_posting,
src.tax_jur,
src.functional_area,
src.object_class,
src.integ_planning,
src.sales_order,
src.sales_ord_item,
src.ext_order_no,
src.invest_profile,
src.logical_system,
src.multiple_items,
src.req_co_code,
src.req_cost_center,
src.scale,
src.invest_reason,
src.envir_invest,
src.cost_collector_1,
src.interest_prof,
src.cost_collector_2,
src.req_order,
src.prod_proc_no,
src.process_cat,
src.refurbishment,
src.acctindicator,
src.address_number,
src.time_created,
src.changed_at,
src.costing_variant,
src.cost_estimateno,
src.personresponsible,
src.dummy_function_in_length_1,
src.joint_venture,
src.recovery_indic,
src.equity_type,
src.jv_object_type,
src.jib_jibe_class,
src.jib_jibe_sbclsa,
src.or_cost_obj,
src.time_stamp,
src.cu_order,
src.cm_number,
src.auto_est_costs,
src.cu_design_no,
src.dip_profile,
src.main_workctr,
src.plnt_workcenter,
src.reg_indicator,
src.clm_creation_cntrl,
src.claim_inconsistent,
src.claim_upd_trigger,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'production_order_master_details' as table_name
    		,'aufk' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'production_order_master_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'production_order_master_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.production_order_master_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.production_order_master_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'production_order_master_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.production_order_master_details`))) AS inserted_record_count
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
    