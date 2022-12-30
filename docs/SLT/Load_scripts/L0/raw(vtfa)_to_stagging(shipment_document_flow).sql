MERGE INTO `sap-adapter.slt_staging.shipment_document_flow` tgt
USING (
WITH vtfa as
(select MANDT as client,
TKNUM as shipment_number,
VBELV as preceding_doc,
POSNV as preceding_item,
VBTYP_V as document_cat,
VBELN as follow_on_doc,
POSNN as subsequent_item,
VBTYP_N as document_cat_1,
RFMNG as quantity,
MEINS as base_unit,
ERDAT as created_on,
ERZET as entry_time,
AEDAT as changed_on,
RFMNG_FLO as quantity_1,
RFMNG_FLT as quantity_2,
VRKME as sales_unit,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vtfa.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vtfa` as vtfa
where vtfa._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipment_document_flow'),0))
select client as client_key,
shipment_number as shipment_number_key,
preceding_doc as preceding_doc_key,
preceding_item as preceding_item_key,
document_cat as document_cat_key,
follow_on_doc as follow_on_doc_key,
subsequent_item as subsequent_item_key,
document_cat_1 as document_cat_1_key,
*
From  vtfa
UNION ALL
select null as client_key,
null as shipment_number_key,
null as preceding_doc_key,
null as preceding_item_key,
null as document_cat_key,
null as follow_on_doc_key,
null as subsequent_item_key,
null as document_cat_1_key,
vtfa.*
From vtfa as vtfa
INNER JOIN `sap-adapter.slt_staging.shipment_document_flow` as uji
ON vtfa.client = uji.client
AND vtfa.shipment_number = uji.shipment_number
AND vtfa.preceding_doc = uji.preceding_doc
AND vtfa.preceding_item = uji.preceding_item
AND vtfa.document_cat = uji.document_cat
AND vtfa.follow_on_doc = uji.follow_on_doc
AND vtfa.subsequent_item = uji.subsequent_item
AND vtfa.document_cat_1 = uji.document_cat_1
AND vtfa.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.shipment_number_key = tgt.shipment_number
AND src.preceding_doc_key = tgt.preceding_doc
AND src.preceding_item_key = tgt.preceding_item
AND src.document_cat_key = tgt.document_cat
AND src.follow_on_doc_key = tgt.follow_on_doc
AND src.subsequent_item_key = tgt.subsequent_item
AND src.document_cat_1_key = tgt.document_cat_1
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
shipment_number,
preceding_doc,
preceding_item,
document_cat,
follow_on_doc,
subsequent_item,
document_cat_1,
quantity,
base_unit,
created_on,
entry_time,
changed_on,
quantity_1,
quantity_2,
sales_unit,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.shipment_number,
src.preceding_doc,
src.preceding_item,
src.document_cat,
src.follow_on_doc,
src.subsequent_item,
src.document_cat_1,
src.quantity,
src.base_unit,
src.created_on,
src.entry_time,
src.changed_on,
src.quantity_1,
src.quantity_2,
src.sales_unit,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipment_document_flow' as table_name
    		,'vtfa' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_document_flow') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_document_flow') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipment_document_flow`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_document_flow` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipment_document_flow'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_document_flow`))) AS inserted_record_count
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
    