MERGE INTO `sap-adapter.slt_staging.distribution_channel` tgt
USING (
WITH tvkov as
(select MANDT as client,
VKORG as sales_org,
VTWEG as distr_channel,
VTWKO as refdistch_conds,
VTWAU as refdistch_docs,
VTWKU as refdistch_cust_mat,
VLGFI as reference_store,
VLTYP as distr_chain_cat,
VLKEB as dch_pr_levels,
HIDE as hide_in_input_help,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct tvkov.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.tvkov` as tvkov
where tvkov._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'distribution_channel'),0))
select client as client_key,
sales_org as sales_org_key,
distr_channel as distr_channel_key,
*
From  tvkov
UNION ALL
select null as client_key,
null as sales_org_key,
null as distr_channel_key,
tvkov.*
From tvkov as tvkov
INNER JOIN `sap-adapter.slt_staging.distribution_channel` as uji
ON tvkov.client = uji.client
AND tvkov.sales_org = uji.sales_org
AND tvkov.distr_channel = uji.distr_channel
AND tvkov.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.sales_org_key = tgt.sales_org
AND src.distr_channel_key = tgt.distr_channel
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
sales_org,
distr_channel,
refdistch_conds,
refdistch_docs,
refdistch_cust_mat,
reference_store,
distr_chain_cat,
dch_pr_levels,
hide_in_input_help,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.sales_org,
src.distr_channel,
src.refdistch_conds,
src.refdistch_docs,
src.refdistch_cust_mat,
src.reference_store,
src.distr_chain_cat,
src.dch_pr_levels,
src.hide_in_input_help,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'distribution_channel' as table_name
    		,'tvkov' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'distribution_channel') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'distribution_channel') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.distribution_channel`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.distribution_channel` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'distribution_channel'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.distribution_channel`))) AS inserted_record_count
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
    