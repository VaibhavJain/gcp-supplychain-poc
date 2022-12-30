MERGE INTO `sap-adapter.slt_staging.supplier_master_email_details` tgt
USING (
WITH adr6 as
(select CLIENT as client,
ADDRNUMBER as address_number,
PERSNUMBER as person_number,
DATE_FROM as date_from,
CONSNUMBER as sequence_number,
FLGDEFAULT as standard_addr,
FLG_NOUSE as do_not_use,
HOME_FLAG as home_address,
SMTP_ADDR as e_mail_address,
SMTP_SRCH as e_mail_address_1,
DFT_RECEIV as std_recipient,
R3_USER as sap_connection,
ENCODE as coding,
TNEF as tnef,
VALID_FROM as valid_from,
VALID_TO as valid_to,
_DATAAGING as data_filter_value_for_data_agi,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct adr6.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.adr6` as adr6
where adr6._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'supplier_master_email_details'),0))
select client as client_key,
address_number as address_number_key,
person_number as person_number_key,
date_from as date_from_key,
sequence_number as sequence_number_key,
*
From  adr6
UNION ALL
select null as client_key,
null as address_number_key,
null as person_number_key,
null as date_from_key,
null as sequence_number_key,
adr6.*
From adr6 as adr6
INNER JOIN `sap-adapter.slt_staging.supplier_master_email_details` as uji
ON adr6.client = uji.client
AND adr6.address_number = uji.address_number
AND adr6.person_number = uji.person_number
AND adr6.date_from = uji.date_from
AND adr6.sequence_number = uji.sequence_number
AND adr6.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.address_number_key = tgt.address_number
AND src.person_number_key = tgt.person_number
AND src.date_from_key = tgt.date_from
AND src.sequence_number_key = tgt.sequence_number
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
address_number,
person_number,
date_from,
sequence_number,
standard_addr,
do_not_use,
home_address,
e_mail_address,
e_mail_address_1,
std_recipient,
sap_connection,
coding,
tnef,
valid_from,
valid_to,
data_filter_value_for_data_agi,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.address_number,
src.person_number,
src.date_from,
src.sequence_number,
src.standard_addr,
src.do_not_use,
src.home_address,
src.e_mail_address,
src.e_mail_address_1,
src.std_recipient,
src.sap_connection,
src.coding,
src.tnef,
src.valid_from,
src.valid_to,
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
    		'supplier_master_email_details' as table_name
    		,'adr6' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'supplier_master_email_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'supplier_master_email_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.supplier_master_email_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.supplier_master_email_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'supplier_master_email_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.supplier_master_email_details`))) AS inserted_record_count
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
    