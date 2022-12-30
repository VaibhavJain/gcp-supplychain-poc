MERGE INTO `sap-adapter.slt_staging.bom_item_data` tgt
USING (
WITH stpo as
(select MANDT as client,
STLTY as bom_category,
STLNR as bom,
STLKN as item_node,
STPOZ as counter,
DATUV as valid_from,
TECHV as tech_st_from,
AENNR as change_number,
LKENZ as deletion_ind,
VGKNT as previous_node,
VGPZL as prev_item_count,
ANDAT as created_on,
ANNAM as created_by,
AEDAT as changed_on,
AENAM as changed_by,
IDNRK as component,
PSWRK as issuing_plant,
POSTP as item_category,
POSNR as item,
SORTF as sort_string,
MEINS as component_uom,
MENGE as quantity,
FMENG as fixed_quantity,
AUSCH as component_scrap,
AVOAU as operation_scrap,
NETAU as net_indicator,
SCHGT as bulk_material,
BEIKZ as mat_prov_ind,
ERSKZ as spare_part_id,
RVREL as sales,
SANFE as production,
SANIN as plant_maint,
SANKA as costingrelevncy,
SANKO as engineering,
SANVS as hl_confign,
STKKZ as pm_assembly,
REKRI as recursive_bom,
REKRS as rec_allowed,
CADPO as cad_indicator,
NFMAT as follow_up_matl,
NLFZT as lead_tm_offset,
VERTI as distribution,
ALPOS as alternat_item,
EWAHR as usage_prob,
EKGRP as purch_group,
LIFZT as del_time_days,
LIFNR as vendor,
PREIS as price,
PEINH as price_unit,
WAERS as currency,
SAKTO as cost_element,
ROANZ as number,
ROMS1 as size_1,
ROMS2 as size_2,
ROMS3 as size_3,
ROMEI as size_unit,
ROMEN as qty_var_sz_item,
RFORM as formula_key,
UPSKZ as sub_item_id,
VALKZ as alt_id,
LTXSP as long_text_lang,
POTX1 as item_text,
POTX2 as item_text_1,
OBJTY as object_type,
MATKL as material_group,
WEBAZ as gr_proc_time,
DOKAR as document_type,
DOKNR as document,
DOKVR as doc_version,
DOKTL as document_part,
CSSTR as mat_purity,
CLASS as class,
KLART as class_type,
POTPR as res_item_cat,
AWAKZ as sel_ind,
INSKZ as instance,
VCEKZ as n_dis_ce,
VSTKZ as n_dis_st,
VACKZ as n_dis_ac,
EKORG as purchasing_org,
CLOBK as reqd_component,
CLMUL as multiple_sel,
CLALT as altern_display,
CVIEW as org_area,
KNOBJ as assgmt_no,
LGORT as storagelocation,
KZKUP as co_product,
INTRM as intra_material,
TPEKZ as restr,
STVKN as item_node_1,
DVDAT as scheduled_on,
DVNAM as date_shifted_by,
DSPST as explosion_type,
ALPST as strategy,
ALPRF as priority,
ALPGR as altitemgroup,
KZNFP as follow_up_item,
NFGRP as follow_up_group,
NFEAG as discont_group,
KNDVB as manual_change,
KNDBZ as obj_dep_change,
KSTTY as bom_category_1,
KSTNR as bom_1,
KSTKN as item_node_2,
KSTPZ as counter_1,
CLSZU as classification,
KZCLB as as_sel_cond,
AEHLP as helper_field,
PRVBE as supply_area,
NLFZV as oper_lt_offset,
NLFMV as oper_lto_unit,
IDPOS as item_group,
IDHIS as history_counter,
IDVAR as comp_variant,
ALEKZ as ale_indicator,
ITMID as item_id,
GUID as not_used,
ITSOB as specprocurement,
RFPNT as reference_point,
GUIDX as guid,
SGT_CMKZ as seg_maintained,
SGT_CATV as seg_value,
VALID_TO as valid_to_date,
VALID_TO_RKEY as valid_to_date_1,
ECN_TO as change_no_to,
ECN_TO_RKEY as change_no_to_1,
ABLAD as unloading_point,
WEMPF as recipient,
STVKN_VERSN as item_node_3,
LASTCHANGEDATETIME as time_stamp,
SFWIND as software_component,
DUMMY_STPO_INCL_EEW_PS as ext_include,
CUFACTOR as nocuinstances,
__SAPMP__MET_LRCH as length_calc_method,
__SAPMP__MAX_FERTL as max_prod_length,
__SAPMP__FIX_AS_J as fix_scrap_any_length,
__SAPMP__FIX_AS_E as fixedscrap_firstlgth,
__SAPMP__FIX_AS_L as fix_scrap_last_lngth,
__SAPMP__ABL_ZAHL as no_r_i_lengths,
__SAPMP__RUND_FAKT as rounding_value,
FSH_VMKZ as dev_vals_maint,
FSH_PGQR as qty_distr_prof,
FSH_PGQRRF as qty_distr_prof_ref,
FSH_CRITICAL_COMP as critical_comp,
FSH_CRITICAL_LEVEL as critical_lvl,
FUNCID as function_id,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct stpo.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.stpo` as stpo
where stpo._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'bom_item_data'),0))
select client as client_key,
bom_category as bom_category_key,
bom as bom_key,
item_node as item_node_key,
counter as counter_key,
*
From  stpo
UNION ALL
select null as client_key,
null as bom_category_key,
null as bom_key,
null as item_node_key,
null as counter_key,
stpo.*
From stpo as stpo
INNER JOIN `sap-adapter.slt_staging.bom_item_data` as uji
ON stpo.client = uji.client
AND stpo.bom_category = uji.bom_category
AND stpo.bom = uji.bom
AND stpo.item_node = uji.item_node
AND stpo.counter = uji.counter
AND stpo.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.bom_category_key = tgt.bom_category
AND src.bom_key = tgt.bom
AND src.item_node_key = tgt.item_node
AND src.counter_key = tgt.counter
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
bom_category,
bom,
item_node,
counter,
valid_from,
tech_st_from,
change_number,
deletion_ind,
previous_node,
prev_item_count,
created_on,
created_by,
changed_on,
changed_by,
component,
issuing_plant,
item_category,
item,
sort_string,
component_uom,
quantity,
fixed_quantity,
component_scrap,
operation_scrap,
net_indicator,
bulk_material,
mat_prov_ind,
spare_part_id,
sales,
production,
plant_maint,
costingrelevncy,
engineering,
hl_confign,
pm_assembly,
recursive_bom,
rec_allowed,
cad_indicator,
follow_up_matl,
lead_tm_offset,
distribution,
alternat_item,
usage_prob,
purch_group,
del_time_days,
vendor,
price,
price_unit,
currency,
cost_element,
number,
size_1,
size_2,
size_3,
size_unit,
qty_var_sz_item,
formula_key,
sub_item_id,
alt_id,
long_text_lang,
item_text,
item_text_1,
object_type,
material_group,
gr_proc_time,
document_type,
document,
doc_version,
document_part,
mat_purity,
class,
class_type,
res_item_cat,
sel_ind,
instance,
n_dis_ce,
n_dis_st,
n_dis_ac,
purchasing_org,
reqd_component,
multiple_sel,
altern_display,
org_area,
assgmt_no,
storagelocation,
co_product,
intra_material,
restr,
item_node_1,
scheduled_on,
date_shifted_by,
explosion_type,
strategy,
priority,
altitemgroup,
follow_up_item,
follow_up_group,
discont_group,
manual_change,
obj_dep_change,
bom_category_1,
bom_1,
item_node_2,
counter_1,
classification,
as_sel_cond,
helper_field,
supply_area,
oper_lt_offset,
oper_lto_unit,
item_group,
history_counter,
comp_variant,
ale_indicator,
item_id,
not_used,
specprocurement,
reference_point,
guid,
seg_maintained,
seg_value,
valid_to_date,
valid_to_date_1,
change_no_to,
change_no_to_1,
unloading_point,
recipient,
item_node_3,
time_stamp,
software_component,
ext_include,
nocuinstances,
length_calc_method,
max_prod_length,
fix_scrap_any_length,
fixedscrap_firstlgth,
fix_scrap_last_lngth,
no_r_i_lengths,
rounding_value,
dev_vals_maint,
qty_distr_prof,
qty_distr_prof_ref,
critical_comp,
critical_lvl,
function_id,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.bom_category,
src.bom,
src.item_node,
src.counter,
src.valid_from,
src.tech_st_from,
src.change_number,
src.deletion_ind,
src.previous_node,
src.prev_item_count,
src.created_on,
src.created_by,
src.changed_on,
src.changed_by,
src.component,
src.issuing_plant,
src.item_category,
src.item,
src.sort_string,
src.component_uom,
src.quantity,
src.fixed_quantity,
src.component_scrap,
src.operation_scrap,
src.net_indicator,
src.bulk_material,
src.mat_prov_ind,
src.spare_part_id,
src.sales,
src.production,
src.plant_maint,
src.costingrelevncy,
src.engineering,
src.hl_confign,
src.pm_assembly,
src.recursive_bom,
src.rec_allowed,
src.cad_indicator,
src.follow_up_matl,
src.lead_tm_offset,
src.distribution,
src.alternat_item,
src.usage_prob,
src.purch_group,
src.del_time_days,
src.vendor,
src.price,
src.price_unit,
src.currency,
src.cost_element,
src.number,
src.size_1,
src.size_2,
src.size_3,
src.size_unit,
src.qty_var_sz_item,
src.formula_key,
src.sub_item_id,
src.alt_id,
src.long_text_lang,
src.item_text,
src.item_text_1,
src.object_type,
src.material_group,
src.gr_proc_time,
src.document_type,
src.document,
src.doc_version,
src.document_part,
src.mat_purity,
src.class,
src.class_type,
src.res_item_cat,
src.sel_ind,
src.instance,
src.n_dis_ce,
src.n_dis_st,
src.n_dis_ac,
src.purchasing_org,
src.reqd_component,
src.multiple_sel,
src.altern_display,
src.org_area,
src.assgmt_no,
src.storagelocation,
src.co_product,
src.intra_material,
src.restr,
src.item_node_1,
src.scheduled_on,
src.date_shifted_by,
src.explosion_type,
src.strategy,
src.priority,
src.altitemgroup,
src.follow_up_item,
src.follow_up_group,
src.discont_group,
src.manual_change,
src.obj_dep_change,
src.bom_category_1,
src.bom_1,
src.item_node_2,
src.counter_1,
src.classification,
src.as_sel_cond,
src.helper_field,
src.supply_area,
src.oper_lt_offset,
src.oper_lto_unit,
src.item_group,
src.history_counter,
src.comp_variant,
src.ale_indicator,
src.item_id,
src.not_used,
src.specprocurement,
src.reference_point,
src.guid,
src.seg_maintained,
src.seg_value,
src.valid_to_date,
src.valid_to_date_1,
src.change_no_to,
src.change_no_to_1,
src.unloading_point,
src.recipient,
src.item_node_3,
src.time_stamp,
src.software_component,
src.ext_include,
src.nocuinstances,
src.length_calc_method,
src.max_prod_length,
src.fix_scrap_any_length,
src.fixedscrap_firstlgth,
src.fix_scrap_last_lngth,
src.no_r_i_lengths,
src.rounding_value,
src.dev_vals_maint,
src.qty_distr_prof,
src.qty_distr_prof_ref,
src.critical_comp,
src.critical_lvl,
src.function_id,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'bom_item_data' as table_name
    		,'stpo' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'bom_item_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'bom_item_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.bom_item_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.bom_item_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'bom_item_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.bom_item_data`))) AS inserted_record_count
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
    