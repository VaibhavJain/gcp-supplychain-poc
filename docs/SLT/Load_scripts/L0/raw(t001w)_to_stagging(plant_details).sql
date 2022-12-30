MERGE INTO `sap-adapter.slt_staging.plant_details` tgt
USING (
WITH t001w as
(select MANDT as client,
WERKS as plant,
NAME1 as name_1,
BWKEY as valuation_area,
KUNNR as customernoplant,
LIFNR as sppl_no_plnt,
FABKL as factory_calend,
NAME2 as name_2,
STRAS as street_house,
PFACH as po_box,
PSTLZ as postal_code,
ORT01 as city,
EKORG as purchasing_org,
VKORG as sales_org_icb,
CHAZV as batch_stat_mgmt,
KKOWK as cond_plnt_level,
KORDB as source_list,
BEDPL as reqmts_planning,
LAND1 as country,
REGIO as region,
COUNC as county_code,
CITYC as city_code,
ADRNR as address,
IWERK as planning_plant,
TXJCD as tax_jur,
VTWEG as distrib_channel,
SPART as div_iv,
SPRAS as language_key,
WKSOP as sop_plant,
AWSLS as variance_key,
CHAZV_OLD as batch_stat_mgmt_1,
VLFKZ as plant_cat,
BZIRK as sales_district,
ZONE1 as supply_region,
TAXIW as tax_ind_plant,
BZQHL as reg_supplier,
LET01 as st_rem_exped,
LET02 as nd_rem_exped,
LET03 as rd_rem_exped,
TXNAM_MA1 as text_1st_dunn,
TXNAM_MA2 as text_2nd_dunn,
TXNAM_MA3 as text_3rd_dunn,
BETOL as po_tolerance,
J_1BBRANCH as business_place,
VTBFI as sales_area_det,
FPRFW as distr_profile,
ACHVM as archiving_flag,
DVSART as dms_type,
NODETYPE as node_type_scn,
NSCHEMA as naming_struct,
PKOSA as cost_object,
MISCH as mixed_costing,
MGVUPD as act_costing,
VSTEL as shipping_point,
MGVLAUPD as actual_activities,
MGVLAREVAL as cctr_credit_cont,
SOURCING as afsd_via_atp,
NO_DEFAULT_BATCH_MANAGEMENT as no_batch_management,
FSH_MG_ARUN_REQ as arun,
FSH_SEAIM as season_act_im,
FSH_BOM_MAINTENANCE as control_data_for_bom,
FSH_GROUP_PR as activate_var_group,
ARUN_FIX_BATCH as assign_batches,
OILIVAL as exg_valuation,
OIHVTYPE as vendor_type,
OIHCREDIPI as cred_ipi,
STORETYPE as store_cat,
DEP_STORE as sup_ds,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t001w.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t001w` as t001w
where t001w._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'plant_details'),0))
select client as client_key,
plant as plant_key,
*
From  t001w
UNION ALL
select null as client_key,
null as plant_key,
t001w.*
From t001w as t001w
INNER JOIN `sap-adapter.slt_staging.plant_details` as uji
ON t001w.client = uji.client
AND t001w.plant = uji.plant
AND t001w.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.plant_key = tgt.plant
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
plant,
name_1,
valuation_area,
customernoplant,
sppl_no_plnt,
factory_calend,
name_2,
street_house,
po_box,
postal_code,
city,
purchasing_org,
sales_org_icb,
batch_stat_mgmt,
cond_plnt_level,
source_list,
reqmts_planning,
country,
region,
county_code,
city_code,
address,
planning_plant,
tax_jur,
distrib_channel,
div_iv,
language_key,
sop_plant,
variance_key,
batch_stat_mgmt_1,
plant_cat,
sales_district,
supply_region,
tax_ind_plant,
reg_supplier,
st_rem_exped,
nd_rem_exped,
rd_rem_exped,
text_1st_dunn,
text_2nd_dunn,
text_3rd_dunn,
po_tolerance,
business_place,
sales_area_det,
distr_profile,
archiving_flag,
dms_type,
node_type_scn,
naming_struct,
cost_object,
mixed_costing,
act_costing,
shipping_point,
actual_activities,
cctr_credit_cont,
afsd_via_atp,
no_batch_management,
arun,
season_act_im,
control_data_for_bom,
activate_var_group,
assign_batches,
exg_valuation,
vendor_type,
cred_ipi,
store_cat,
sup_ds,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.plant,
src.name_1,
src.valuation_area,
src.customernoplant,
src.sppl_no_plnt,
src.factory_calend,
src.name_2,
src.street_house,
src.po_box,
src.postal_code,
src.city,
src.purchasing_org,
src.sales_org_icb,
src.batch_stat_mgmt,
src.cond_plnt_level,
src.source_list,
src.reqmts_planning,
src.country,
src.region,
src.county_code,
src.city_code,
src.address,
src.planning_plant,
src.tax_jur,
src.distrib_channel,
src.div_iv,
src.language_key,
src.sop_plant,
src.variance_key,
src.batch_stat_mgmt_1,
src.plant_cat,
src.sales_district,
src.supply_region,
src.tax_ind_plant,
src.reg_supplier,
src.st_rem_exped,
src.nd_rem_exped,
src.rd_rem_exped,
src.text_1st_dunn,
src.text_2nd_dunn,
src.text_3rd_dunn,
src.po_tolerance,
src.business_place,
src.sales_area_det,
src.distr_profile,
src.archiving_flag,
src.dms_type,
src.node_type_scn,
src.naming_struct,
src.cost_object,
src.mixed_costing,
src.act_costing,
src.shipping_point,
src.actual_activities,
src.cctr_credit_cont,
src.afsd_via_atp,
src.no_batch_management,
src.arun,
src.season_act_im,
src.control_data_for_bom,
src.activate_var_group,
src.assign_batches,
src.exg_valuation,
src.vendor_type,
src.cred_ipi,
src.store_cat,
src.sup_ds,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'plant_details' as table_name
    		,'t001w' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'plant_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'plant_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.plant_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.plant_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'plant_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.plant_details`))) AS inserted_record_count
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
    