MERGE INTO `sap-adapter.slt_staging.sales_document_partner` tgt
USING (
WITH vbpa as
(select MANDT as client,
VBELN as sales_document,
POSNR as item,
PARVW as partner_functn,
KUNNR as customer,
LIFNR as vendor,
PERNR as personnel_no,
PARNR as contact_person,
ADRNR as address,
ABLAD as unloading_point,
LAND1 as country,
ADRDA as adress_ind,
XCPDK as one_time_acct,
HITYP as hierarchy_type,
PRFRE as price_determin,
BOKRE as rebate,
HISTUNR as hierarchy_level,
KNREF as partner_desc,
LZONE as transport_zone,
HZUOR as hier_assignment,
STCEG as vat_reg_no,
PARVW_FF as f_partners,
ADRNP as person_number,
KALE as appointments,
_DATAAGING as data_filter_value_for_data_agi,
DUMMY_SDDOCPARTNER_INCL_EEW_PS as dummy_function_in_length_1,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vbpa.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vbpa` as vbpa
where vbpa._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'sales_document_partner'),0))
select client as client_key,
sales_document as sales_document_key,
item as item_key,
partner_functn as partner_functn_key,
*
From  vbpa
UNION ALL
select null as client_key,
null as sales_document_key,
null as item_key,
null as partner_functn_key,
vbpa.*
From vbpa as vbpa
INNER JOIN `sap-adapter.slt_staging.sales_document_partner` as uji
ON vbpa.client = uji.client
AND vbpa.sales_document = uji.sales_document
AND vbpa.item = uji.item
AND vbpa.partner_functn = uji.partner_functn
AND vbpa.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.sales_document_key = tgt.sales_document
AND src.item_key = tgt.item
AND src.partner_functn_key = tgt.partner_functn
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
sales_document,
item,
partner_functn,
customer,
vendor,
personnel_no,
contact_person,
address,
unloading_point,
country,
adress_ind,
one_time_acct,
hierarchy_type,
price_determin,
rebate,
hierarchy_level,
partner_desc,
transport_zone,
hier_assignment,
vat_reg_no,
f_partners,
person_number,
appointments,
data_filter_value_for_data_agi,
dummy_function_in_length_1,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.sales_document,
src.item,
src.partner_functn,
src.customer,
src.vendor,
src.personnel_no,
src.contact_person,
src.address,
src.unloading_point,
src.country,
src.adress_ind,
src.one_time_acct,
src.hierarchy_type,
src.price_determin,
src.rebate,
src.hierarchy_level,
src.partner_desc,
src.transport_zone,
src.hier_assignment,
src.vat_reg_no,
src.f_partners,
src.person_number,
src.appointments,
src.data_filter_value_for_data_agi,
src.dummy_function_in_length_1,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'sales_document_partner' as table_name
    		,'vbpa' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_partner') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_document_partner') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.sales_document_partner`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_partner` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'sales_document_partner'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_document_partner`))) AS inserted_record_count
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
    