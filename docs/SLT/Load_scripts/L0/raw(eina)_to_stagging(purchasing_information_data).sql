MERGE INTO `sap-adapter.slt_staging.purchasing_information_data` tgt
USING (
WITH eina as
(select MANDT as client,
INFNR as info_record,
MATNR as material,
MATKL as material_group,
LIFNR as vendor,
LOEKZ as complete,
ERDAT as created_on,
ERNAM as created_by,
TXZ01 as info_short_text,
SORTL as sort_term,
MEINS as order_unit,
UMREZ as equal_to,
UMREN as denominator,
IDNLF as supp_mat_no,
VERKF as salesperson,
TELF1 as telephone,
MAHN1 as st_rem_exped,
MAHN2 as nd_rem_exped,
MAHN3 as rd_rem_exped,
URZNR as certificate,
URZDT as valid_to,
URZLA as ctry_of_origin,
URZTP as certif_cat,
URZZT as number,
LMEIN as base_unit,
REGIO as region,
VABME as var_order_unit,
LTSNR as suppl_subrange,
LTSSF as ssr_sort_no,
WGLIF as suppl_mat_grp,
RUECK as return_agmt,
LIFAB as available_from,
LIFBI as available_to,
KOLIF as prior_supplier,
ANZPU as points,
PUNEI as points_unit,
RELIF as reg_supplier,
MFRNR as manufacturer,
DUMMY_EINA_INCL_EEW_PS as ext_include,
LASTCHANGEDATETIME as time_stamp,
ISEOPBLOCKED as business_purp_compl,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct eina.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.eina` as eina
where eina._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'purchasing_information_data'),0))
select client as client_key,
info_record as info_record_key,
*
From  eina
UNION ALL
select null as client_key,
null as info_record_key,
eina.*
From eina as eina
INNER JOIN `sap-adapter.slt_staging.purchasing_information_data` as uji
ON eina.client = uji.client
AND eina.info_record = uji.info_record
AND eina.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.info_record_key = tgt.info_record
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
info_record,
material,
material_group,
vendor,
complete,
created_on,
created_by,
info_short_text,
sort_term,
order_unit,
equal_to,
denominator,
supp_mat_no,
salesperson,
telephone,
st_rem_exped,
nd_rem_exped,
rd_rem_exped,
certificate,
valid_to,
ctry_of_origin,
certif_cat,
number,
base_unit,
region,
var_order_unit,
suppl_subrange,
ssr_sort_no,
suppl_mat_grp,
return_agmt,
available_from,
available_to,
prior_supplier,
points,
points_unit,
reg_supplier,
manufacturer,
ext_include,
time_stamp,
business_purp_compl,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.info_record,
src.material,
src.material_group,
src.vendor,
src.complete,
src.created_on,
src.created_by,
src.info_short_text,
src.sort_term,
src.order_unit,
src.equal_to,
src.denominator,
src.supp_mat_no,
src.salesperson,
src.telephone,
src.st_rem_exped,
src.nd_rem_exped,
src.rd_rem_exped,
src.certificate,
src.valid_to,
src.ctry_of_origin,
src.certif_cat,
src.number,
src.base_unit,
src.region,
src.var_order_unit,
src.suppl_subrange,
src.ssr_sort_no,
src.suppl_mat_grp,
src.return_agmt,
src.available_from,
src.available_to,
src.prior_supplier,
src.points,
src.points_unit,
src.reg_supplier,
src.manufacturer,
src.ext_include,
src.time_stamp,
src.business_purp_compl,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'purchasing_information_data' as table_name
    		,'eina' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchasing_information_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchasing_information_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.purchasing_information_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.purchasing_information_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'purchasing_information_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.purchasing_information_data`))) AS inserted_record_count
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
    