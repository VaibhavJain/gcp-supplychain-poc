MERGE INTO `sap-adapter.slt_staging.valuation_area_details` tgt
USING (
WITH t001k as
(select MANDT as client,
BWKEY as valuation_area,
BUKRS as company_code,
BWMOD as val_grpg_code,
XBKNG as negative_stocks,
MLBWA as ml_act,
MLBWV as ml_comp,
XVKBW as salespr_valuat,
ERKLAERKOM as explanation_facility,
UPROF as rev_profile,
WBPRO as profile_vim,
MLAST as price_determ,
MLASV as price_determ_binding,
BDIFP as stock_corr_tol,
XLBPD as prdiff_gr_sc,
XEWRX as post_recpt_val,
X2FDO as two_documents,
PRSFR as price_release,
MLCCS as actcstcmpsplit,
XEFRE as delivery_costs,
EFREJ as from_year,
__FMP__PRSFR as price_release_1,
__FMP__PRFRGR as price_release_group,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t001k.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t001k` as t001k
where t001k._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'valuation_area_details'),0))
select client as client_key,
valuation_area as valuation_area_key,
*
From  t001k
UNION ALL
select null as client_key,
null as valuation_area_key,
t001k.*
From t001k as t001k
INNER JOIN `sap-adapter.slt_staging.valuation_area_details` as uji
ON t001k.client = uji.client
AND t001k.valuation_area = uji.valuation_area
AND t001k.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.valuation_area_key = tgt.valuation_area
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
valuation_area,
company_code,
val_grpg_code,
negative_stocks,
ml_act,
ml_comp,
salespr_valuat,
explanation_facility,
rev_profile,
profile_vim,
price_determ,
price_determ_binding,
stock_corr_tol,
prdiff_gr_sc,
post_recpt_val,
two_documents,
price_release,
actcstcmpsplit,
delivery_costs,
from_year,
price_release_1,
price_release_group,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.valuation_area,
src.company_code,
src.val_grpg_code,
src.negative_stocks,
src.ml_act,
src.ml_comp,
src.salespr_valuat,
src.explanation_facility,
src.rev_profile,
src.profile_vim,
src.price_determ,
src.price_determ_binding,
src.stock_corr_tol,
src.prdiff_gr_sc,
src.post_recpt_val,
src.two_documents,
src.price_release,
src.actcstcmpsplit,
src.delivery_costs,
src.from_year,
src.price_release_1,
src.price_release_group,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'valuation_area_details' as table_name
    		,'t001k' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'valuation_area_details') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'valuation_area_details') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.valuation_area_details`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.valuation_area_details` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'valuation_area_details'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.valuation_area_details`))) AS inserted_record_count
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
    