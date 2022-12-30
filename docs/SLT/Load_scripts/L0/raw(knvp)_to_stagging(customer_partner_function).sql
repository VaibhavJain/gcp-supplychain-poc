MERGE INTO `sap-adapter.slt_staging.customer_partner_function` tgt
USING (
WITH knvp as
(select MANDT as client,
KUNNR as customer,
VKORG as sales_org,
VTWEG as distr_channel,
SPART as division,
PARVW as partner_functn,
PARZA as partner_counter,
KUNN2 as customer_1,
LIFNR as vendor,
PERNR as personnel_no,
PARNR as contact_person,
KNREF as partner_desc,
DEFPA as default_partner,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct knvp.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.knvp` as knvp
where knvp._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'customer_partner_function'),0))
select client as client_key,
customer as customer_key,
sales_org as sales_org_key,
distr_channel as distr_channel_key,
division as division_key,
partner_functn as partner_functn_key,
partner_counter as partner_counter_key,
*
From  knvp
UNION ALL
select null as client_key,
null as customer_key,
null as sales_org_key,
null as distr_channel_key,
null as division_key,
null as partner_functn_key,
null as partner_counter_key,
knvp.*
From knvp as knvp
INNER JOIN `sap-adapter.slt_staging.customer_partner_function` as uji
ON knvp.client = uji.client
AND knvp.customer = uji.customer
AND knvp.sales_org = uji.sales_org
AND knvp.distr_channel = uji.distr_channel
AND knvp.division = uji.division
AND knvp.partner_functn = uji.partner_functn
AND knvp.partner_counter = uji.partner_counter
AND knvp.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.customer_key = tgt.customer
AND src.sales_org_key = tgt.sales_org
AND src.distr_channel_key = tgt.distr_channel
AND src.division_key = tgt.division
AND src.partner_functn_key = tgt.partner_functn
AND src.partner_counter_key = tgt.partner_counter
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
customer,
sales_org,
distr_channel,
division,
partner_functn,
partner_counter,
customer_1,
vendor,
personnel_no,
contact_person,
partner_desc,
default_partner,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.customer,
src.sales_org,
src.distr_channel,
src.division,
src.partner_functn,
src.partner_counter,
src.customer_1,
src.vendor,
src.personnel_no,
src.contact_person,
src.partner_desc,
src.default_partner,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'customer_partner_function' as table_name
    		,'knvp' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'customer_partner_function') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'customer_partner_function') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.customer_partner_function`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.customer_partner_function` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'customer_partner_function'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.customer_partner_function`))) AS inserted_record_count
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
    