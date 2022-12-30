MERGE INTO `sap-adapter.slt_staging.bom_link_data` tgt
USING (
WITH mast as
(select MANDT as client,
MATNR as material,
WERKS as plant,
STLAN as usage,
STLNR as bom,
STLAL as alternative,
LOSVN as from_lot_size,
LOSBS as to_lot_size,
ANDAT as created_on,
ANNAM as created_by,
AEDAT as changed_on,
AENAM as changed_by,
CSLTY as configured_matl,
MATERIAL_BOM_KEY as mbom_key,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct mast.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.mast` as mast
where mast._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'bom_link_data'),0))
select client as client_key,
material as material_key,
plant as plant_key,
usage as usage_key,
bom as bom_key,
alternative as alternative_key,
*
From  mast
UNION ALL
select null as client_key,
null as material_key,
null as plant_key,
null as usage_key,
null as bom_key,
null as alternative_key,
mast.*
From mast as mast
INNER JOIN `sap-adapter.slt_staging.bom_link_data` as uji
ON mast.client = uji.client
AND mast.material = uji.material
AND mast.plant = uji.plant
AND mast.usage = uji.usage
AND mast.bom = uji.bom
AND mast.alternative = uji.alternative
AND mast.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_key = tgt.material
AND src.plant_key = tgt.plant
AND src.usage_key = tgt.usage
AND src.bom_key = tgt.bom
AND src.alternative_key = tgt.alternative
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material,
plant,
usage,
bom,
alternative,
from_lot_size,
to_lot_size,
created_on,
created_by,
changed_on,
changed_by,
configured_matl,
mbom_key,
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
src.usage,
src.bom,
src.alternative,
src.from_lot_size,
src.to_lot_size,
src.created_on,
src.created_by,
src.changed_on,
src.changed_by,
src.configured_matl,
src.mbom_key,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'bom_link_data' as table_name
    		,'mast' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'bom_link_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'bom_link_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.bom_link_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.bom_link_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'bom_link_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.bom_link_data`))) AS inserted_record_count
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
    