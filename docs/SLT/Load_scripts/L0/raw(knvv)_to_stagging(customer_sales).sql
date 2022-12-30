MERGE INTO `sap-adapter.slt_staging.customer_sales` tgt
USING (
WITH knvv as
(select MANDT as client,
KUNNR as customer,
VKORG as sales_org,
VTWEG as distr_channel,
SPART as division,
ERNAM as created_by,
ERDAT as created_on,
BEGRU as authorizgroup,
LOEVM as del_id_slsarea,
VERSG as cust_stats_grp,
AUFSD as ord_blk_sls_ar,
KALKS as cust_pric_proc,
KDGRP as customer_group,
BZIRK as sales_district,
KONDA as custprice_group,
PLTYP as price_list_tp,
AWAHR as order_probab,
INCO1 as incoterms,
INCO2 as incoterms_2,
LIFSD as delblcksalesar,
AUTLF as complete_dlv,
ANTLF as max_part_deliv,
KZTLF as part_dlv_item,
KZAZU as order_combinat,
CHSPL as batch_split,
LPRIO as delivery_prior,
EIKTO as acct_at_cust,
VSBED as shp_cond,
FAKSD as bblock_for_slsa,
MRNKZ as man_inv_maint,
PERFK as invoicing_dates,
PERRL as inv_list_sched,
KVAKZ as cost_estimate,
KVAWT as max_cost_estim,
WAERS as currency,
KLABC as abc_class,
KTGRD as accassmtgrpcust,
ZTERM as payt_terms,
VWERK as deliver_plant,
VKGRP as sales_group,
VKBUR as sales_office,
VSORT as item_proposal,
KVGR1 as customer_grp_1,
KVGR2 as customer_grp_2,
KVGR3 as customer_grp_3,
KVGR4 as customer_grp_4,
KVGR5 as customer_grp_5,
BOKRE as rebate,
BOIDT as rebate_index,
KURST as exch_rate_type,
PRFRE as price_determin,
PRAT1 as product_attr_1,
PRAT2 as product_attr_2,
PRAT3 as product_attr_3,
PRAT4 as product_attr_4,
PRAT5 as product_attr_5,
PRAT6 as prod_attribute6,
PRAT7 as product_attr_7,
PRAT8 as prod_attribute8,
PRAT9 as product_attr_9,
PRATA as prd_attribute10,
KABSS as paym_guar_proc,
KKBER as cred_contr_area,
CASSD as sales_block,
RDOFF as rounding_off,
AGREL as settlem_mgmt,
MEGRU as uom_group,
UEBTO as overdeliv_tol,
UNTTO as underdel_tol,
UEBTK as unlimited_tol,
PVKSM as pp_cust_proc,
PODKZ as pod_relevant,
PODTG as pod_timeframe,
BLIND as document_index,
CARRIER_NOTIF as carrier_notification,
CVP_XBLCK_V as purposecomplete_flag,
INCOV as inco_version,
INCO2_L as inco_location1,
INCO3_L as inco_location2,
KNVV_EEW_CONTACT as data_element_extension_for_con,
STATUS_OBJ_GUID as guid,
BILLPLAN_PROC as bill_planproc,
__BEV1__EMLGPFAND as empts_depos_fr,
__BEV1__EMLGFORTS as emp_update_off,
J_1NBOESL as exchange_key,
FSH_KVGR6 as customer_grp_6,
FSH_KVGR7 as customer_grp_7,
FSH_KVGR8 as customer_grp_8,
FSH_KVGR9 as customer_grp_5_1,
FSH_KVGR10 as customer_grp_10,
FSH_GRREG as grouping_rule,
FSH_RESGY as rel_strategy,
FSH_SC_CID as cust_sup_id,
FSH_VAS_DETC as vas_determin_mode,
FSH_VAS_CG as vas_cust_group,
FSH_GRSGY as group_strategy,
FSH_SS as sched_strat,
FSH_FRATE as fill_rate,
FSH_FRATE_AGG_LEVEL as aggregation_level,
FSH_MSOCDC as customer_dc,
FSH_MSOPID as custid_partner,
RFM_PSST_RULE as psst_grouping_rule,
RFM_PSST_EXCLUDE as exclude_from_psst,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct knvv.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.knvv` as knvv
where knvv._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'customer_sales'),0))
select client as client_key,
customer as customer_key,
sales_org as sales_org_key,
distr_channel as distr_channel_key,
division as division_key,
*
From  knvv
UNION ALL
select null as client_key,
null as customer_key,
null as sales_org_key,
null as distr_channel_key,
null as division_key,
knvv.*
From knvv as knvv
INNER JOIN `sap-adapter.slt_staging.customer_sales` as uji
ON knvv.client = uji.client
AND knvv.customer = uji.customer
AND knvv.sales_org = uji.sales_org
AND knvv.distr_channel = uji.distr_channel
AND knvv.division = uji.division
AND knvv.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.customer_key = tgt.customer
AND src.sales_org_key = tgt.sales_org
AND src.distr_channel_key = tgt.distr_channel
AND src.division_key = tgt.division
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
customer,
sales_org,
distr_channel,
division,
created_by,
created_on,
authorizgroup,
del_id_slsarea,
cust_stats_grp,
ord_blk_sls_ar,
cust_pric_proc,
customer_group,
sales_district,
custprice_group,
price_list_tp,
order_probab,
incoterms,
incoterms_2,
delblcksalesar,
complete_dlv,
max_part_deliv,
part_dlv_item,
order_combinat,
batch_split,
delivery_prior,
acct_at_cust,
shp_cond,
bblock_for_slsa,
man_inv_maint,
invoicing_dates,
inv_list_sched,
cost_estimate,
max_cost_estim,
currency,
abc_class,
accassmtgrpcust,
payt_terms,
deliver_plant,
sales_group,
sales_office,
item_proposal,
customer_grp_1,
customer_grp_2,
customer_grp_3,
customer_grp_4,
customer_grp_5,
rebate,
rebate_index,
exch_rate_type,
price_determin,
product_attr_1,
product_attr_2,
product_attr_3,
product_attr_4,
product_attr_5,
prod_attribute6,
product_attr_7,
prod_attribute8,
product_attr_9,
prd_attribute10,
paym_guar_proc,
cred_contr_area,
sales_block,
rounding_off,
settlem_mgmt,
uom_group,
overdeliv_tol,
underdel_tol,
unlimited_tol,
pp_cust_proc,
pod_relevant,
pod_timeframe,
document_index,
carrier_notification,
purposecomplete_flag,
inco_version,
inco_location1,
inco_location2,
data_element_extension_for_con,
guid,
bill_planproc,
empts_depos_fr,
emp_update_off,
exchange_key,
customer_grp_6,
customer_grp_7,
customer_grp_8,
customer_grp_5_1,
customer_grp_10,
grouping_rule,
rel_strategy,
cust_sup_id,
vas_determin_mode,
vas_cust_group,
group_strategy,
sched_strat,
fill_rate,
aggregation_level,
customer_dc,
custid_partner,
psst_grouping_rule,
exclude_from_psst,
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
src.created_by,
src.created_on,
src.authorizgroup,
src.del_id_slsarea,
src.cust_stats_grp,
src.ord_blk_sls_ar,
src.cust_pric_proc,
src.customer_group,
src.sales_district,
src.custprice_group,
src.price_list_tp,
src.order_probab,
src.incoterms,
src.incoterms_2,
src.delblcksalesar,
src.complete_dlv,
src.max_part_deliv,
src.part_dlv_item,
src.order_combinat,
src.batch_split,
src.delivery_prior,
src.acct_at_cust,
src.shp_cond,
src.bblock_for_slsa,
src.man_inv_maint,
src.invoicing_dates,
src.inv_list_sched,
src.cost_estimate,
src.max_cost_estim,
src.currency,
src.abc_class,
src.accassmtgrpcust,
src.payt_terms,
src.deliver_plant,
src.sales_group,
src.sales_office,
src.item_proposal,
src.customer_grp_1,
src.customer_grp_2,
src.customer_grp_3,
src.customer_grp_4,
src.customer_grp_5,
src.rebate,
src.rebate_index,
src.exch_rate_type,
src.price_determin,
src.product_attr_1,
src.product_attr_2,
src.product_attr_3,
src.product_attr_4,
src.product_attr_5,
src.prod_attribute6,
src.product_attr_7,
src.prod_attribute8,
src.product_attr_9,
src.prd_attribute10,
src.paym_guar_proc,
src.cred_contr_area,
src.sales_block,
src.rounding_off,
src.settlem_mgmt,
src.uom_group,
src.overdeliv_tol,
src.underdel_tol,
src.unlimited_tol,
src.pp_cust_proc,
src.pod_relevant,
src.pod_timeframe,
src.document_index,
src.carrier_notification,
src.purposecomplete_flag,
src.inco_version,
src.inco_location1,
src.inco_location2,
src.data_element_extension_for_con,
src.guid,
src.bill_planproc,
src.empts_depos_fr,
src.emp_update_off,
src.exchange_key,
src.customer_grp_6,
src.customer_grp_7,
src.customer_grp_8,
src.customer_grp_5_1,
src.customer_grp_10,
src.grouping_rule,
src.rel_strategy,
src.cust_sup_id,
src.vas_determin_mode,
src.vas_cust_group,
src.group_strategy,
src.sched_strat,
src.fill_rate,
src.aggregation_level,
src.customer_dc,
src.custid_partner,
src.psst_grouping_rule,
src.exclude_from_psst,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'customer_sales' as table_name
    		,'knvv' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'customer_sales') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'customer_sales') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.customer_sales`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.customer_sales` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'customer_sales'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.customer_sales`))) AS inserted_record_count
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
    