MERGE INTO `sap-adapter.slt_staging.sales_document_flow` tgt
USING (
WITH vbfa as
(select MANDT as client,
RUUID as docreluuid,
VBELV as preceding_doc,
POSNV as preceding_item,
VBELN as follow_on_doc,
POSNN as subsequent_item,
VBTYP_N as subs_doc_categ,
RFMNG as quantity,
MEINS as base_unit,
RFWRT as reference_value,
WAERS as stats_currency,
VBTYP_V as prec_doc_categ,
PLMIN as pos_negative,
TAQUI as confirmation_id,
ERDAT as created_on,
ERZET as entry_time,
MATNR as material,
BWART as movement_type,
BDART as requirementtype,
PLART as planning_type,
LGNUM as warehouse_no,
AEDAT as changed_on,
FKTYP as billingcategory,
BRGEW as gross_weight,
GEWEI as weight_unit,
VOLUM as volume,
VOLEH as volume_unit,
FPLNR as billing_plan_no,
FPLTR as item,
RFMNG_FLO as quantity_1,
RFMNG_FLT as quantity_2,
VRKME as sales_unit,
ABGES as guaranteed,
SOBKZ as special_stock,
SONUM as spec_stock_no,
KZBEF as inv_mgmt_active,
NTGEW as net_weight,
LOGSYS as logical_system,
WBSTA as goodsmovementst,
CMETH as conv_method,
MJAHR as mat_doc_year,
STUFE as level,
_DATAAGING as data_filter_value_for_data_agi,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbfa.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbfa` as vbfa
where vbfa._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'sales_document_flow'),0))
select client as client_key,
docreluuid as docreluuid_key,
*
From  vbfa
UNION ALL
select null as client_key,
null as docreluuid_key,
vbfa.*
From vbfa as vbfa
INNER JOIN `sap-adapter.slt_staging.sales_document_flow` as uji
ON vbfa.client = uji.client
AND vbfa.docreluuid = uji.docreluuid
AND vbfa.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.docreluuid_key = tgt.docreluuid
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
docreluuid,
preceding_doc,
preceding_item,
follow_on_doc,
subsequent_item,
subs_doc_categ,
quantity,
base_unit,
reference_value,
stats_currency,
prec_doc_categ,
pos_negative,
confirmation_id,
created_on,
entry_time,
material,
movement_type,
requirementtype,
planning_type,
warehouse_no,
changed_on,
billingcategory,
gross_weight,
weight_unit,
volume,
volume_unit,
billing_plan_no,
item,
quantity_1,
quantity_2,
sales_unit,
guaranteed,
special_stock,
spec_stock_no,
inv_mgmt_active,
net_weight,
logical_system,
goodsmovementst,
conv_method,
mat_doc_year,
level,
data_filter_value_for_data_agi,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.docreluuid,
src.preceding_doc,
src.preceding_item,
src.follow_on_doc,
src.subsequent_item,
src.subs_doc_categ,
src.quantity,
src.base_unit,
src.reference_value,
src.stats_currency,
src.prec_doc_categ,
src.pos_negative,
src.confirmation_id,
src.created_on,
src.entry_time,
src.material,
src.movement_type,
src.requirementtype,
src.planning_type,
src.warehouse_no,
src.changed_on,
src.billingcategory,
src.gross_weight,
src.weight_unit,
src.volume,
src.volume_unit,
src.billing_plan_no,
src.item,
src.quantity_1,
src.quantity_2,
src.sales_unit,
src.guaranteed,
src.special_stock,
src.spec_stock_no,
src.inv_mgmt_active,
src.net_weight,
src.logical_system,
src.goodsmovementst,
src.conv_method,
src.mat_doc_year,
src.level,
src.data_filter_value_for_data_agi,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'sales_document_flow' as table_name
    		,'vbfa' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_flow') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_flow') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.sales_document_flow`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_flow` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'sales_document_flow'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_flow`))) AS inserted_record_count
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
    