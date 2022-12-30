MERGE INTO `sap-adapter.slt_staging.sales_area` tgt
USING (
WITH tvta as
(select MANDT as client,
VKORG as sales_org,
VTWEG as distr_channel,
SPART as division,
VTWKU as refdistch_cust_mat,
SPAKU as refdivcustomers,
VTWKO as refdistch_conds,
SPAKO as refdivcondition,
MABER as dunning_area,
VKOAU as ref_sales_org,
VTWAU as refdistch_docs,
SPAAU as refdiv_doctype,
GSBER as business_area,
REGGB as bus_area_rule,
REVFP as availcheck_rule,
FIXMG as fix_qty_date,
AFIND as promo_deter,
KKBER as cred_contr_area,
J_1ASNR as dom_branch,
J_1AESNR as exp_branch,
HIDE as hide_in_input_help,
J_3GKBAUL as etm_rel_ind,
OID_CHECKC as check_cust_stp,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct tvta.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.tvta` as tvta
where tvta._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'sales_area'),0))
select client as client_key,
sales_org as sales_org_key,
distr_channel as distr_channel_key,
division as division_key,
*
From  tvta
UNION ALL
select null as client_key,
null as sales_org_key,
null as distr_channel_key,
null as division_key,
tvta.*
From tvta as tvta
INNER JOIN `sap-adapter.slt_staging.sales_area` as uji
ON tvta.client = uji.client
AND tvta.sales_org = uji.sales_org
AND tvta.distr_channel = uji.distr_channel
AND tvta.division = uji.division
AND tvta.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.sales_org_key = tgt.sales_org
AND src.distr_channel_key = tgt.distr_channel
AND src.division_key = tgt.division
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
sales_org,
distr_channel,
division,
refdistch_cust_mat,
refdivcustomers,
refdistch_conds,
refdivcondition,
dunning_area,
ref_sales_org,
refdistch_docs,
refdiv_doctype,
business_area,
bus_area_rule,
availcheck_rule,
fix_qty_date,
promo_deter,
cred_contr_area,
dom_branch,
exp_branch,
hide_in_input_help,
etm_rel_ind,
check_cust_stp,
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
src.division,
src.refdistch_cust_mat,
src.refdivcustomers,
src.refdistch_conds,
src.refdivcondition,
src.dunning_area,
src.ref_sales_org,
src.refdistch_docs,
src.refdiv_doctype,
src.business_area,
src.bus_area_rule,
src.availcheck_rule,
src.fix_qty_date,
src.promo_deter,
src.cred_contr_area,
src.dom_branch,
src.exp_branch,
src.hide_in_input_help,
src.etm_rel_ind,
src.check_cust_stp,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'sales_area' as table_name
    		,'tvta' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_area') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'sales_area') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.sales_area`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_area` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'sales_area'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.sales_area`))) AS inserted_record_count
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
    