MERGE INTO `sap-adapter.slt_staging.material_group_details` tgt
USING (
WITH t023 as
(select MANDT as client,
MATKL as material_group,
SPART as division,
LREF3 as logist_ref,
WWGDA as mg_ref_mat,
WWGPA as mg_material,
ABTNR as department,
BEGRU as authorizgroup,
GEWEI as unit_of_weight,
J_1BNBM as ncm_code,
BKLAS as valuation_class,
EKWSL as purch_value_key,
ANLKL as asset_class,
DEF_SCHDSC as scenario,
PRICE_GROUP as price_level_group,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t023.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t023` as t023
where t023._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'material_group_details'),0))
select client as client_key,
material_group as material_group_key,
*
From  t023
UNION ALL
select null as client_key,
null as material_group_key,
t023.*
From t023 as t023
INNER JOIN `sap-adapter.slt_staging.material_group_details` as uji
ON t023.client = uji.client
AND t023.material_group = uji.material_group
AND t023.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_group_key = tgt.material_group
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material_group,
division,
logist_ref,
mg_ref_mat,
mg_material,
department,
authorizgroup,
unit_of_weight,
ncm_code,
valuation_class,
purch_value_key,
asset_class,
scenario,
price_level_group,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.material_group,
src.division,
src.logist_ref,
src.mg_ref_mat,
src.mg_material,
src.department,
src.authorizgroup,
src.unit_of_weight,
src.ncm_code,
src.valuation_class,
src.purch_value_key,
src.asset_class,
src.scenario,
src.price_level_group,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'material_group_details' as table_name
    		,'t023' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'material_group_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'material_group_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.material_group_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.material_group_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'material_group_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.material_group_details`))) AS inserted_record_count
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
    