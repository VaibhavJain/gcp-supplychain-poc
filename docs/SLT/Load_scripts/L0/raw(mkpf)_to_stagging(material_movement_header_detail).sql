MERGE INTO `sap-adapter.slt_staging.material_movement_header_detail` tgt
USING (
WITH mkpf as
(select MANDT as client,
MBLNR as material_doc,
MJAHR as mat_doc_year,
VGART as trans_ev_type,
BLART as document_type,
BLAUM as doc_type_rev,
BLDAT as document_date,
BUDAT as posting_date,
CPUDT as entered_on,
CPUTM as entered_at,
AEDAT as changed_on,
USNAM as user_name,
TCODE as undefined_range_can_be_used_f,
XBLNR as reference,
BKTXT as doc_header_text,
FRATH as unpl_del_costs,
FRBNR as bill_of_lading,
WEVER as print_version,
XABLN as gr_gi_slip_no,
AWSYS as logical_system,
BLA2D as doc_type_ad,
TCODE2 as transaction_code,
BFWMS as ext_wms_control,
EXNUM as foreign_trade_datanr,
SPE_BUDAT_UHR as gi_time,
SPE_BUDAT_ZONE as time_zone,
LE_VBELN as delivery,
SPE_LOGSYS as logical_system_1,
SPE_MDNUM_EWM as material_doc_ewm,
GTS_CUSREF_NO as customs_ref_no,
FLS_RSTO as enh_store_ret,
MSR_ACTIVE as adv_returns,
KNUMV as doc_condition,
XCOMPL as cancel_in_full,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct mkpf.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.mkpf` as mkpf
where mkpf._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'material_movement_header_detail'),0))
select client as client_key,
material_doc as material_doc_key,
mat_doc_year as mat_doc_year_key,
*
From  mkpf
UNION ALL
select null as client_key,
null as material_doc_key,
null as mat_doc_year_key,
mkpf.*
From mkpf as mkpf
INNER JOIN `sap-adapter.slt_staging.material_movement_header_detail` as uji
ON mkpf.client = uji.client
AND mkpf.material_doc = uji.material_doc
AND mkpf.mat_doc_year = uji.mat_doc_year
AND mkpf.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_doc_key = tgt.material_doc
AND src.mat_doc_year_key = tgt.mat_doc_year
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material_doc,
mat_doc_year,
trans_ev_type,
document_type,
doc_type_rev,
document_date,
posting_date,
entered_on,
entered_at,
changed_on,
user_name,
undefined_range_can_be_used_f,
reference,
doc_header_text,
unpl_del_costs,
bill_of_lading,
print_version,
gr_gi_slip_no,
logical_system,
doc_type_ad,
transaction_code,
ext_wms_control,
foreign_trade_datanr,
gi_time,
time_zone,
delivery,
logical_system_1,
material_doc_ewm,
customs_ref_no,
enh_store_ret,
adv_returns,
doc_condition,
cancel_in_full,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.material_doc,
src.mat_doc_year,
src.trans_ev_type,
src.document_type,
src.doc_type_rev,
src.document_date,
src.posting_date,
src.entered_on,
src.entered_at,
src.changed_on,
src.user_name,
src.undefined_range_can_be_used_f,
src.reference,
src.doc_header_text,
src.unpl_del_costs,
src.bill_of_lading,
src.print_version,
src.gr_gi_slip_no,
src.logical_system,
src.doc_type_ad,
src.transaction_code,
src.ext_wms_control,
src.foreign_trade_datanr,
src.gi_time,
src.time_zone,
src.delivery,
src.logical_system_1,
src.material_doc_ewm,
src.customs_ref_no,
src.enh_store_ret,
src.adv_returns,
src.doc_condition,
src.cancel_in_full,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'material_movement_header_detail' as table_name
    		,'mkpf' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'material_movement_header_detail') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'material_movement_header_detail') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.material_movement_header_detail`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.material_movement_header_detail` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'material_movement_header_detail'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.material_movement_header_detail`))) AS inserted_record_count
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
    