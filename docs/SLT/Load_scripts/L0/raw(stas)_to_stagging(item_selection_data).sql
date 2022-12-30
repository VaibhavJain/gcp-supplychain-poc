MERGE INTO `sap-adapter.slt_staging.item_selection_data` tgt
USING (
WITH stas as
(select MANDT as client,
STLTY as bom_category,
STLNR as bom,
STLAL as alternative,
STLKN as item_node,
STASZ as counter,
DATUV as valid_from,
TECHV as tech_st_from,
AENNR as change_number,
LKENZ as deletion_ind,
ANDAT as created_on,
ANNAM as created_by,
AEDAT as changed_on,
AENAM as changed_by,
DVDAT as scheduled_on,
DVNAM as date_shifted_by,
AEHLP as helper_field,
STVKN as item_node_1,
IDPOS as item_group,
IDVAR as comp_variant,
LPSRT as sort_key_within_a_logical_item,
BOM_VERSN as bom_version,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct stas.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.stas` as stas
where stas._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'item_selection_data'),0))
select client as client_key,
bom_category as bom_category_key,
bom as bom_key,
alternative as alternative_key,
item_node as item_node_key,
counter as counter_key,
*
From  stas
UNION ALL
select null as client_key,
null as bom_category_key,
null as bom_key,
null as alternative_key,
null as item_node_key,
null as counter_key,
stas.*
From stas as stas
INNER JOIN `sap-adapter.slt_staging.item_selection_data` as uji
ON stas.client = uji.client
AND stas.bom_category = uji.bom_category
AND stas.bom = uji.bom
AND stas.alternative = uji.alternative
AND stas.item_node = uji.item_node
AND stas.counter = uji.counter
AND stas.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.bom_category_key = tgt.bom_category
AND src.bom_key = tgt.bom
AND src.alternative_key = tgt.alternative
AND src.item_node_key = tgt.item_node
AND src.counter_key = tgt.counter
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
bom_category,
bom,
alternative,
item_node,
counter,
valid_from,
tech_st_from,
change_number,
deletion_ind,
created_on,
created_by,
changed_on,
changed_by,
scheduled_on,
date_shifted_by,
helper_field,
item_node_1,
item_group,
comp_variant,
sort_key_within_a_logical_item,
bom_version,
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
src.alternative,
src.item_node,
src.counter,
src.valid_from,
src.tech_st_from,
src.change_number,
src.deletion_ind,
src.created_on,
src.created_by,
src.changed_on,
src.changed_by,
src.scheduled_on,
src.date_shifted_by,
src.helper_field,
src.item_node_1,
src.item_group,
src.comp_variant,
src.sort_key_within_a_logical_item,
src.bom_version,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'item_selection_data' as table_name
    		,'stas' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'item_selection_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'item_selection_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.item_selection_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.item_selection_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'item_selection_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.item_selection_data`))) AS inserted_record_count
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
    