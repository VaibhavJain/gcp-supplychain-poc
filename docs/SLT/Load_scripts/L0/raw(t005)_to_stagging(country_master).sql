MERGE INTO `sap-adapter.slt_staging.country_master` tgt
USING (
WITH t005 as
(select MANDT as client,
LAND1 as country,
LANDK as vehicle,
LNPLZ as postal_code,
PRPLZ as rule_for_the_postal_code_field,
ADDRS as formatting_routine_key_for_pri,
XPLZS as postal_code_req,
XPLPF as po_box_pst_cde,
SPRAS as language_key,
XLAND as country_version,
XADDR as flag_print_country_name_in_fo,
NMFMT as name_format,
XREGS as city_file_act,
XPLST as street_postcode,
INTCA as iso_code,
INTCA3 as iso_code_3_char,
INTCN3 as iso_code_num_3,
XEGLD as eu_country,
XSKFN as net_discount_base,
XMWSN as net_tax_base,
LNBKN as bank_account_number,
PRBKN as rule_for_checking_bank_account,
LNBLZ as bank_number,
PRBLZ as rule_for_checking_bank_number,
LNPSK as post_bank_acct_no,
PRPSK as rule_for_checking_postal_check,
XPRBK as bank_data,
BNKEY as bank_key,
LNBKS as bank_key_1,
PRBKS as rule_for_checking_bank_key_fie,
XPRSO as indicator_use_check_module_fo,
PRUIN as vat_registr_no,
UINLN as vat_registr_no_1,
LNST1 as tax_number_1,
PRST1 as rule_for_checking_tax_code_1_f,
LNST2 as tax_number_2,
PRST2 as rule_for_checking_tax_code_2_f,
LNST3 as tax_number_3,
PRST3 as rule_for_checking_tax_code_3_f,
LNST4 as tax_number_4,
PRST4 as rule_for_checking_tax_code_4_f,
LNST5 as tax_number_5,
PRST5 as rule_for_checking_tax_code_5_f,
LANDD as national,
KALSM as pricing_procedure,
LANDA as alternative_country_key,
WECHF as boe_payment_period,
LKVRZ as short_name,
INTCN as intrastat_code,
XDEZP as decimal_format,
DATFM as date_format,
CURIN as index_cur,
CURHA as hard_currency,
WAERS as country_crcy,
KURST as exch_rate_type,
AFAPL as chart_of_dep,
GWGWRT as for_posting,
UMRWRT as nbv_for_change,
KZRBWB as ind_post_nbv,
XANZUM as indicator_transfer_down_paymen,
CTNCONCEPT as wtax_cer_num_concept,
KZSRV as service_taxes,
XXINVE as capital_goods,
XGCCV as gcc_country,
SUREG as super_region,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct t005.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.t005` as t005
where t005._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'country_master'),0))
select client as client_key,
country as country_key,
*
From  t005
UNION ALL
select null as client_key,
null as country_key,
t005.*
From t005 as t005
INNER JOIN `sap-adapter.slt_staging.country_master` as uji
ON t005.client = uji.client
AND t005.country = uji.country
AND t005.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.country_key = tgt.country
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
country,
vehicle,
postal_code,
rule_for_the_postal_code_field,
formatting_routine_key_for_pri,
postal_code_req,
po_box_pst_cde,
language_key,
country_version,
flag_print_country_name_in_fo,
name_format,
city_file_act,
street_postcode,
iso_code,
iso_code_3_char,
iso_code_num_3,
eu_country,
net_discount_base,
net_tax_base,
bank_account_number,
rule_for_checking_bank_account,
bank_number,
rule_for_checking_bank_number,
post_bank_acct_no,
rule_for_checking_postal_check,
bank_data,
bank_key,
bank_key_1,
rule_for_checking_bank_key_fie,
indicator_use_check_module_fo,
vat_registr_no,
vat_registr_no_1,
tax_number_1,
rule_for_checking_tax_code_1_f,
tax_number_2,
rule_for_checking_tax_code_2_f,
tax_number_3,
rule_for_checking_tax_code_3_f,
tax_number_4,
rule_for_checking_tax_code_4_f,
tax_number_5,
rule_for_checking_tax_code_5_f,
national,
pricing_procedure,
alternative_country_key,
boe_payment_period,
short_name,
intrastat_code,
decimal_format,
date_format,
index_cur,
hard_currency,
country_crcy,
exch_rate_type,
chart_of_dep,
for_posting,
nbv_for_change,
ind_post_nbv,
indicator_transfer_down_paymen,
wtax_cer_num_concept,
service_taxes,
capital_goods,
gcc_country,
super_region,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.country,
src.vehicle,
src.postal_code,
src.rule_for_the_postal_code_field,
src.formatting_routine_key_for_pri,
src.postal_code_req,
src.po_box_pst_cde,
src.language_key,
src.country_version,
src.flag_print_country_name_in_fo,
src.name_format,
src.city_file_act,
src.street_postcode,
src.iso_code,
src.iso_code_3_char,
src.iso_code_num_3,
src.eu_country,
src.net_discount_base,
src.net_tax_base,
src.bank_account_number,
src.rule_for_checking_bank_account,
src.bank_number,
src.rule_for_checking_bank_number,
src.post_bank_acct_no,
src.rule_for_checking_postal_check,
src.bank_data,
src.bank_key,
src.bank_key_1,
src.rule_for_checking_bank_key_fie,
src.indicator_use_check_module_fo,
src.vat_registr_no,
src.vat_registr_no_1,
src.tax_number_1,
src.rule_for_checking_tax_code_1_f,
src.tax_number_2,
src.rule_for_checking_tax_code_2_f,
src.tax_number_3,
src.rule_for_checking_tax_code_3_f,
src.tax_number_4,
src.rule_for_checking_tax_code_4_f,
src.tax_number_5,
src.rule_for_checking_tax_code_5_f,
src.national,
src.pricing_procedure,
src.alternative_country_key,
src.boe_payment_period,
src.short_name,
src.intrastat_code,
src.decimal_format,
src.date_format,
src.index_cur,
src.hard_currency,
src.country_crcy,
src.exch_rate_type,
src.chart_of_dep,
src.for_posting,
src.nbv_for_change,
src.ind_post_nbv,
src.indicator_transfer_down_paymen,
src.wtax_cer_num_concept,
src.service_taxes,
src.capital_goods,
src.gcc_country,
src.super_region,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'country_master' as table_name
    		,'t005' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'country_master') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'country_master') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.country_master`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.country_master` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'country_master'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.country_master`))) AS inserted_record_count
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
    