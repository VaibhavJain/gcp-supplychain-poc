MERGE INTO `sap-adapter.slt_staging.work_center_header_details` tgt
USING (
WITH crhd as
(select MANDT as client,
OBJTY as object_type,
OBJID as object_id,
BEGDA as start_date,
ENDDA as end_date,
AEDAT_GRND as changed_on,
AENAM_GRND as user_name,
AEDAT_VORA as changed_on_1,
AENAM_VORA as user_name_1,
AEDAT_TERM as changed_on_2,
AENAM_TERM as user_name_2,
AEDAT_TECH as changed_on_3,
AENAM_TECH as user_name_3,
ARBPL as work_center,
WERKS as plant,
VERWE as work_center_category,
LVORM as deletion_flag,
PAR01 as st_parameter,
PAR02 as nd_parameter,
PAR03 as rd_parameter,
PAR04 as th_parameter,
PAR05 as th_parameter_1,
PAR06 as th_parameter_2,
PARU1 as unit,
PARU2 as unit_1,
PARU3 as unit_2,
PARU4 as unit_3,
PARU5 as unit_4,
PARU6 as unit_5,
PARV1 as parameter_value,
PARV2 as parameter_value_1,
PARV3 as parameter_value_2,
PARV4 as parameter_value_3,
PARV5 as parameter_value_4,
PARV6 as parameter_value_5,
PLANV as usage,
STAND as location,
VERAN as responsible,
VGWTS as std_value_key,
VGM01 as rule_for_maint,
VGM02 as rule_for_maint_1,
VGM03 as rule_for_maint_2,
VGM04 as rule_for_maint_3,
VGM05 as rule_for_maint_4,
VGM06 as rule_for_maint_5,
XDEFA as defaults,
XKOST as costs,
XSPRR as locked,
XTERM as scheduling,
ZGR01 as efficiency_rate,
ZGR02 as efficiency_rate_1,
ZGR03 as efficiency_rate_2,
ZGR04 as efficiency_rate_3,
ZGR05 as efficiency_rate_4,
ZGR06 as efficiency_rate_5,
KTSCH as std_text_key,
LOANZ as no_timetickets,
LOART as wage_type,
LOGRP as wage_group,
QUALF as suitability,
RASCH as setup_type_key,
STEUS as control_key,
VGE01 as std_value_unit,
VGE02 as std_value_unit_1,
VGE03 as std_value_unit_2,
VGE04 as std_value_unit_3,
VGE05 as std_value_unit_4,
VGE06 as std_value_unit_5,
KTSCH_REF as std_text_referenced,
LOART_REF as wage_type_ref,
LOANZ_REF as no_time_ticktes_ref,
LOGRP_REF as wage_group_ref,
QUALF_REF as suitability_ref,
RASCH_REF as setup_type_ref,
STEUS_REF as control_profile_ref,
FORT1 as setup_duration,
FORT2 as processing_time,
FORT3 as teardown_dur,
KAPID as capacity_id,
ORTGR as location_group,
ZEIWN as std_queue_unit,
ZWNOR as std_queue_time,
ZEIWM as min_queue_unit,
ZWMIN as min_queue_time,
FORMR as formula_cap,
MATYP as machine_type,
CPLGR as capp_planner,
SORTB as sort_string,
MTRVP as setup,
MTMVP as machine,
MTPVP as labor,
RSANZ as no_of_conf_slips,
PDEST as printer,
HROID as object_id_1,
FORTN as other_formula,
ZGR01_REF as reference_ind,
ZGR02_REF as reference_ind_1,
ZGR03_REF as reference_ind_2,
ZGR04_REF as reference_ind_3,
ZGR05_REF as reference_ind_4,
ZGR06_REF as reference_ind_5,
STEUS_C as control_key_1,
STEUS_I as control_key_2,
STEUS_N as control_key_3,
STEUS_Q as control_key_4,
RUZUS as rnd_add_val,
RSANZ_REF as no_conf_slips_ref,
HR as wr_cntr_in_hr,
PRVBE as supply_area,
SUBSYS as qdr_system,
BDEGR as binding_grouping,
RGEKZ as backflush,
HRTYP as object_type_1,
SLWID as field_key,
LIFNR as vendor,
SLWID_REF as reference_ind_6,
LIFNR_REF as reference_ind_7,
VGARB as work_unit,
VGDIM as work_dimension,
HRPLVAR as plan_version,
VGDAU as norm_duratn_un,
STOBJ as object_number,
RESGR as transit_matrix,
LGORT_RES as stor_loc_res,
MIXMAT as mixmat_allowed,
ISTBED_KZ as calcactcpreqmts,
LASTCHANGE_DATETIME as date_and_time_of_last_change,
PPSKZ as advanced_planning,
SRTYPE as report_type,
SNTYPE as shift_note_type,
S_LABOR_TRACK as labor_tracking,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct crhd.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.crhd` as crhd
where crhd._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'work_center_header_details'),0))
select client as client_key,
object_type as object_type_key,
object_id as object_id_key,
*
From  crhd
UNION ALL
select null as client_key,
null as object_type_key,
null as object_id_key,
crhd.*
From crhd as crhd
INNER JOIN `sap-adapter.slt_staging.work_center_header_details` as uji
ON crhd.client = uji.client
AND crhd.object_type = uji.object_type
AND crhd.object_id = uji.object_id
AND crhd.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.object_type_key = tgt.object_type
AND src.object_id_key = tgt.object_id
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
object_type,
object_id,
start_date,
end_date,
changed_on,
user_name,
changed_on_1,
user_name_1,
changed_on_2,
user_name_2,
changed_on_3,
user_name_3,
work_center,
plant,
work_center_category,
deletion_flag,
st_parameter,
nd_parameter,
rd_parameter,
th_parameter,
th_parameter_1,
th_parameter_2,
unit,
unit_1,
unit_2,
unit_3,
unit_4,
unit_5,
parameter_value,
parameter_value_1,
parameter_value_2,
parameter_value_3,
parameter_value_4,
parameter_value_5,
usage,
location,
responsible,
std_value_key,
rule_for_maint,
rule_for_maint_1,
rule_for_maint_2,
rule_for_maint_3,
rule_for_maint_4,
rule_for_maint_5,
defaults,
costs,
locked,
scheduling,
efficiency_rate,
efficiency_rate_1,
efficiency_rate_2,
efficiency_rate_3,
efficiency_rate_4,
efficiency_rate_5,
std_text_key,
no_timetickets,
wage_type,
wage_group,
suitability,
setup_type_key,
control_key,
std_value_unit,
std_value_unit_1,
std_value_unit_2,
std_value_unit_3,
std_value_unit_4,
std_value_unit_5,
std_text_referenced,
wage_type_ref,
no_time_ticktes_ref,
wage_group_ref,
suitability_ref,
setup_type_ref,
control_profile_ref,
setup_duration,
processing_time,
teardown_dur,
capacity_id,
location_group,
std_queue_unit,
std_queue_time,
min_queue_unit,
min_queue_time,
formula_cap,
machine_type,
capp_planner,
sort_string,
setup,
machine,
labor,
no_of_conf_slips,
printer,
object_id_1,
other_formula,
reference_ind,
reference_ind_1,
reference_ind_2,
reference_ind_3,
reference_ind_4,
reference_ind_5,
control_key_1,
control_key_2,
control_key_3,
control_key_4,
rnd_add_val,
no_conf_slips_ref,
wr_cntr_in_hr,
supply_area,
qdr_system,
binding_grouping,
backflush,
object_type_1,
field_key,
vendor,
reference_ind_6,
reference_ind_7,
work_unit,
work_dimension,
plan_version,
norm_duratn_un,
object_number,
transit_matrix,
stor_loc_res,
mixmat_allowed,
calcactcpreqmts,
date_and_time_of_last_change,
advanced_planning,
report_type,
shift_note_type,
labor_tracking,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.object_type,
src.object_id,
src.start_date,
src.end_date,
src.changed_on,
src.user_name,
src.changed_on_1,
src.user_name_1,
src.changed_on_2,
src.user_name_2,
src.changed_on_3,
src.user_name_3,
src.work_center,
src.plant,
src.work_center_category,
src.deletion_flag,
src.st_parameter,
src.nd_parameter,
src.rd_parameter,
src.th_parameter,
src.th_parameter_1,
src.th_parameter_2,
src.unit,
src.unit_1,
src.unit_2,
src.unit_3,
src.unit_4,
src.unit_5,
src.parameter_value,
src.parameter_value_1,
src.parameter_value_2,
src.parameter_value_3,
src.parameter_value_4,
src.parameter_value_5,
src.usage,
src.location,
src.responsible,
src.std_value_key,
src.rule_for_maint,
src.rule_for_maint_1,
src.rule_for_maint_2,
src.rule_for_maint_3,
src.rule_for_maint_4,
src.rule_for_maint_5,
src.defaults,
src.costs,
src.locked,
src.scheduling,
src.efficiency_rate,
src.efficiency_rate_1,
src.efficiency_rate_2,
src.efficiency_rate_3,
src.efficiency_rate_4,
src.efficiency_rate_5,
src.std_text_key,
src.no_timetickets,
src.wage_type,
src.wage_group,
src.suitability,
src.setup_type_key,
src.control_key,
src.std_value_unit,
src.std_value_unit_1,
src.std_value_unit_2,
src.std_value_unit_3,
src.std_value_unit_4,
src.std_value_unit_5,
src.std_text_referenced,
src.wage_type_ref,
src.no_time_ticktes_ref,
src.wage_group_ref,
src.suitability_ref,
src.setup_type_ref,
src.control_profile_ref,
src.setup_duration,
src.processing_time,
src.teardown_dur,
src.capacity_id,
src.location_group,
src.std_queue_unit,
src.std_queue_time,
src.min_queue_unit,
src.min_queue_time,
src.formula_cap,
src.machine_type,
src.capp_planner,
src.sort_string,
src.setup,
src.machine,
src.labor,
src.no_of_conf_slips,
src.printer,
src.object_id_1,
src.other_formula,
src.reference_ind,
src.reference_ind_1,
src.reference_ind_2,
src.reference_ind_3,
src.reference_ind_4,
src.reference_ind_5,
src.control_key_1,
src.control_key_2,
src.control_key_3,
src.control_key_4,
src.rnd_add_val,
src.no_conf_slips_ref,
src.wr_cntr_in_hr,
src.supply_area,
src.qdr_system,
src.binding_grouping,
src.backflush,
src.object_type_1,
src.field_key,
src.vendor,
src.reference_ind_6,
src.reference_ind_7,
src.work_unit,
src.work_dimension,
src.plan_version,
src.norm_duratn_un,
src.object_number,
src.transit_matrix,
src.stor_loc_res,
src.mixmat_allowed,
src.calcactcpreqmts,
src.date_and_time_of_last_change,
src.advanced_planning,
src.report_type,
src.shift_note_type,
src.labor_tracking,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'work_center_header_details' as table_name
    		,'crhd' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'work_center_header_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'work_center_header_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.work_center_header_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.work_center_header_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'work_center_header_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.work_center_header_details`))) AS inserted_record_count
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
    