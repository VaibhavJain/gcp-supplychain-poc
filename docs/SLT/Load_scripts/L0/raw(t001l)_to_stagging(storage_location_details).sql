MERGE INTO `sap-adapter.slt_staging.storage_location_details` tgt
USING (
WITH t001l as
(select MANDT as client,
WERKS as plant,
LGORT as stor_loc,
LGOBE as description,
SPART as division,
XLONG as neg_stocks_sloc,
XBUFX as frzbookinv_sloc,
DISKZ as mrp_ind,
XBLGO as authorization,
XRESS as stor_resource,
XHUPF as hu_reqmnt,
PARLG as partner_storloc,
VKORG as sales_org,
VTWEG as distr_channel,
VSTEL as shipping_point,
LIFNR as vendor,
KUNNR as customer,
MESBS as business_system,
MESST as inv_mnngmt_type,
OIH_LICNO as license_number,
OIG_ITRFL as in_transit,
OIB_TNKASSIGN as tank_assn,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t001l.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t001l` as t001l
where t001l._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'storage_location_details'),0))
select client as client_key,
plant as plant_key,
stor_loc as stor_loc_key,
*
From  t001l
UNION ALL
select null as client_key,
null as plant_key,
null as stor_loc_key,
t001l.*
From t001l as t001l
INNER JOIN `sap-adapter.slt_staging.storage_location_details` as uji
ON t001l.client = uji.client
AND t001l.plant = uji.plant
AND t001l.stor_loc = uji.stor_loc
AND t001l.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.plant_key = tgt.plant
AND src.stor_loc_key = tgt.stor_loc
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
plant,
stor_loc,
description,
division,
neg_stocks_sloc,
frzbookinv_sloc,
mrp_ind,
authorization,
stor_resource,
hu_reqmnt,
partner_storloc,
sales_org,
distr_channel,
shipping_point,
vendor,
customer,
business_system,
inv_mnngmt_type,
license_number,
in_transit,
tank_assn,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.plant,
src.stor_loc,
src.description,
src.division,
src.neg_stocks_sloc,
src.frzbookinv_sloc,
src.mrp_ind,
src.authorization,
src.stor_resource,
src.hu_reqmnt,
src.partner_storloc,
src.sales_org,
src.distr_channel,
src.shipping_point,
src.vendor,
src.customer,
src.business_system,
src.inv_mnngmt_type,
src.license_number,
src.in_transit,
src.tank_assn,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'storage_location_details' as table_name
    		,'t001l' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'storage_location_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'storage_location_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.storage_location_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.storage_location_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'storage_location_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.storage_location_details`))) AS inserted_record_count
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
    