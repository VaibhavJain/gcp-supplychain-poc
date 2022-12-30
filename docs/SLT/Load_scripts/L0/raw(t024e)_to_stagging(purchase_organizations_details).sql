MERGE INTO `sap-adapter.slt_staging.purchase_organizations_details` tgt
USING (
WITH t024e as
(select MANDT as client,
EKORG as purchasing_org,
EKOTX as description,
BUKRS as company_code,
TXADR as text_sender,
TXKOP as letter_heading,
TXFUS as text_footer,
TXGRU as text_close,
KALSE as porg_schema_gp,
MKALS as market_schema,
BPEFF as effective_price,
BUKRS_NTR as cocdsubsstlmt,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t024e.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t024e` as t024e
where t024e._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'purchase_organizations_details'),0))
select client as client_key,
purchasing_org as purchasing_org_key,
*
From  t024e
UNION ALL
select null as client_key,
null as purchasing_org_key,
t024e.*
From t024e as t024e
INNER JOIN `sap-adapter.slt_staging.purchase_organizations_details` as uji
ON t024e.client = uji.client
AND t024e.purchasing_org = uji.purchasing_org
AND t024e.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.purchasing_org_key = tgt.purchasing_org
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
purchasing_org,
description,
company_code,
text_sender,
letter_heading,
text_footer,
text_close,
porg_schema_gp,
market_schema,
effective_price,
cocdsubsstlmt,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.purchasing_org,
src.description,
src.company_code,
src.text_sender,
src.letter_heading,
src.text_footer,
src.text_close,
src.porg_schema_gp,
src.market_schema,
src.effective_price,
src.cocdsubsstlmt,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'purchase_organizations_details' as table_name
    		,'t024e' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_organizations_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'purchase_organizations_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.purchase_organizations_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_organizations_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'purchase_organizations_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.purchase_organizations_details`))) AS inserted_record_count
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
    