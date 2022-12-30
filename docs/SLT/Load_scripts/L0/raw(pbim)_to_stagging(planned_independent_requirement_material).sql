MERGE INTO `sap-adapter.slt_staging.planned_independent_requirement_material` tgt
USING (
WITH pbim as
(select MANDT as client,
MATNR as material,
WERKS as plant,
BEDAE as reqmts_type,
VERSB as version,
PBDNR as requirements_plan,
BDZEI as rqmts_pointer,
ZUVKZ as consumption,
VERVS as active,
VERKZ as cind,
ZUOKR as alloc_criterion,
PLNKZ as planning_ind,
TXTKZ as long_txt_exists,
LOEVR as deletion_indicator,
UEBKZ as copied,
DATLP as entry_date,
UHRLP as entry_time,
AGGPB as aggregation,
PLSCN as planning_scenario,
VRSIO as version_1,
MCINF as info_structure,
STFNA as field_name,
OPLKZ as without_mrp,
MCINC as info_structure_1,
VRSIC as version_2,
KNTTP as acct_assgmt_cat,
SOBKZ as special_stock,
KZVBR as consumption_1,
PSPEL as wbs_element,
KDPOS as sales_ord_item,
KDAUF as sales_order,
PROFILID as prof_name,
KZBWS as valuation,
PBDNR_EXT as ext_req_plan,
SGT_RCAT as reqmnt_segment,
LASTCHANGEDTS as time_stamp,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct pbim.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.pbim` as pbim
where pbim._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'planned_independent_requirement_material'),0))
select client as client_key,
material as material_key,
plant as plant_key,
reqmts_type as reqmts_type_key,
version as version_key,
requirements_plan as requirements_plan_key,
*
From  pbim
UNION ALL
select null as client_key,
null as material_key,
null as plant_key,
null as reqmts_type_key,
null as version_key,
null as requirements_plan_key,
pbim.*
From pbim as pbim
INNER JOIN `sap-adapter.slt_staging.planned_independent_requirement_material` as uji
ON pbim.client = uji.client
AND pbim.material = uji.material
AND pbim.plant = uji.plant
AND pbim.reqmts_type = uji.reqmts_type
AND pbim.version = uji.version
AND pbim.requirements_plan = uji.requirements_plan
AND pbim.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_key = tgt.material
AND src.plant_key = tgt.plant
AND src.reqmts_type_key = tgt.reqmts_type
AND src.version_key = tgt.version
AND src.requirements_plan_key = tgt.requirements_plan
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material,
plant,
reqmts_type,
version,
requirements_plan,
rqmts_pointer,
consumption,
active,
cind,
alloc_criterion,
planning_ind,
long_txt_exists,
deletion_indicator,
copied,
entry_date,
entry_time,
aggregation,
planning_scenario,
version_1,
info_structure,
field_name,
without_mrp,
info_structure_1,
version_2,
acct_assgmt_cat,
special_stock,
consumption_1,
wbs_element,
sales_ord_item,
sales_order,
prof_name,
valuation,
ext_req_plan,
reqmnt_segment,
time_stamp,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.material,
src.plant,
src.reqmts_type,
src.version,
src.requirements_plan,
src.rqmts_pointer,
src.consumption,
src.active,
src.cind,
src.alloc_criterion,
src.planning_ind,
src.long_txt_exists,
src.deletion_indicator,
src.copied,
src.entry_date,
src.entry_time,
src.aggregation,
src.planning_scenario,
src.version_1,
src.info_structure,
src.field_name,
src.without_mrp,
src.info_structure_1,
src.version_2,
src.acct_assgmt_cat,
src.special_stock,
src.consumption_1,
src.wbs_element,
src.sales_ord_item,
src.sales_order,
src.prof_name,
src.valuation,
src.ext_req_plan,
src.reqmnt_segment,
src.time_stamp,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'planned_independent_requirement_material' as table_name
    		,'pbim' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'planned_independent_requirement_material') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'planned_independent_requirement_material') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.planned_independent_requirement_material`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.planned_independent_requirement_material` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'planned_independent_requirement_material'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.planned_independent_requirement_material`))) AS inserted_record_count
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
    