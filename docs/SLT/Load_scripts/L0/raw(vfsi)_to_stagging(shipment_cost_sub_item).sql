MERGE INTO `sap-adapter.slt_staging.shipment_cost_sub_item` tgt
USING (
WITH vfsi as
(select MANDT as client,
KNUMV as doc_condition,
KPOSN as subitem,
BERGL as calc_base,
VHART as packag_mat_type,
VBTYP as document_cat,
VBELN as sales_document,
POSNR as item,
NETWR as net_value,
MWSBP as tax_amount,
NETPR as net_price,
KZWI1 as subtotal_1,
KZWI2 as subtotal_2,
KZWI3 as subtotal_3,
KZWI4 as subtotal_4,
KZWI5 as subtotal_5,
KZWI6 as subtotal_6,
MPROK as manual_price,
KPEIN as pricing_unit,
KMEIN as unit_of_measure,
UVPRS as pricing,
PRSOK as pricing_1,
BASWR as tax_base_amount,
MWSKZ as tax_code,
GARVZ as frght_code_set,
GTART as freight_code,
GTKLS as freight_class,
ACTIV as subitem_active,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vfsi.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vfsi` as vfsi
where vfsi._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipment_cost_sub_item'),0))
select client as client_key,
doc_condition as doc_condition_key,
subitem as subitem_key,
*
From  vfsi
UNION ALL
select null as client_key,
null as doc_condition_key,
null as subitem_key,
vfsi.*
From vfsi as vfsi
INNER JOIN `sap-adapter.slt_staging.shipment_cost_sub_item` as uji
ON vfsi.client = uji.client
AND vfsi.doc_condition = uji.doc_condition
AND vfsi.subitem = uji.subitem
AND vfsi.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.doc_condition_key = tgt.doc_condition
AND src.subitem_key = tgt.subitem
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
doc_condition,
subitem,
calc_base,
packag_mat_type,
document_cat,
sales_document,
item,
net_value,
tax_amount,
net_price,
subtotal_1,
subtotal_2,
subtotal_3,
subtotal_4,
subtotal_5,
subtotal_6,
manual_price,
pricing_unit,
unit_of_measure,
pricing,
pricing_1,
tax_base_amount,
tax_code,
frght_code_set,
freight_code,
freight_class,
subitem_active,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.doc_condition,
src.subitem,
src.calc_base,
src.packag_mat_type,
src.document_cat,
src.sales_document,
src.item,
src.net_value,
src.tax_amount,
src.net_price,
src.subtotal_1,
src.subtotal_2,
src.subtotal_3,
src.subtotal_4,
src.subtotal_5,
src.subtotal_6,
src.manual_price,
src.pricing_unit,
src.unit_of_measure,
src.pricing,
src.pricing_1,
src.tax_base_amount,
src.tax_code,
src.frght_code_set,
src.freight_code,
src.freight_class,
src.subitem_active,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipment_cost_sub_item' as table_name
    		,'vfsi' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_sub_item') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_cost_sub_item') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipment_cost_sub_item`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_sub_item` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipment_cost_sub_item'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_cost_sub_item`))) AS inserted_record_count
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
    