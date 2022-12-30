MERGE INTO `sap-adapter.slt_staging.business_partner_address_details` tgt
USING (
WITH but020 as
(select CLIENT as client,
PARTNER as businesspartner,
ADDRNUMBER as address_number,
XDFADR as stand_address,
ADEXT as external_number,
NATION as address_version,
GUID as uuid_in_character_form,
MOVE_ADDR as move_target,
DATE_FROM as from_date,
ADDRESS_GUID as guid_of_a_business_partner_add,
ADDR_VALID_FROM as valid_from,
ADDR_VALID_TO as valid_to,
ADDR_MOVE_DATE as date_of_move,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct but020.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.but020` as but020
where but020._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'business_partner_address_details'),0))
select client as client_key,
businesspartner as businesspartner_key,
address_number as address_number_key,
*
From  but020
UNION ALL
select null as client_key,
null as businesspartner_key,
null as address_number_key,
but020.*
From but020 as but020
INNER JOIN `sap-adapter.slt_staging.business_partner_address_details` as uji
ON but020.client = uji.client
AND but020.businesspartner = uji.businesspartner
AND but020.address_number = uji.address_number
AND but020.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.businesspartner_key = tgt.businesspartner
AND src.address_number_key = tgt.address_number
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
businesspartner,
address_number,
stand_address,
external_number,
address_version,
uuid_in_character_form,
move_target,
from_date,
guid_of_a_business_partner_add,
valid_from,
valid_to,
date_of_move,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.businesspartner,
src.address_number,
src.stand_address,
src.external_number,
src.address_version,
src.uuid_in_character_form,
src.move_target,
src.from_date,
src.guid_of_a_business_partner_add,
src.valid_from,
src.valid_to,
src.date_of_move,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'business_partner_address_details' as table_name
    		,'but020' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'business_partner_address_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'business_partner_address_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.business_partner_address_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.business_partner_address_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'business_partner_address_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.business_partner_address_details`))) AS inserted_record_count
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
    