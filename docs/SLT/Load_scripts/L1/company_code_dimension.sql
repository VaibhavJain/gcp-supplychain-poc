MERGE INTO `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` tgt
USING (
with tmp_scr AS(
SELECT CONCAT(cc.client,'-',cc.company_code) as company_code_key
      ,cc.client
      ,cc.company_code
      ,cc.company_name
      ,cc.city
      ,cc.country
      ,cc.currency
      ,cc.language_key
      ,cc.chart_of_accts
      ,cc.max_exch_rate_dev
      ,cc.fi_year_variant
      ,cc.cocd_co_area
      ,cc.company
      ,cc.address
      ,cc.vat_reg_no
      ,cc.fm_area
      ,cc.project_cm_active
      ,cc.cbm_active
      ,cc.update_fm
      ,cc.jurisdict_code
      ,cc.fundsctr_in_hr
      ,cc.template
      ,cc.screen_variant
      ,cc.cash_mgmnt_comp_code
      ,cc.cm_activated
      ,cc.propose_value_date
      ,cc.net_discount_base
      ,cc.cred_contr_area
      ,cc.net_tax_base
      ,cc.sample_acct_rules
      ,cc.business_area_fs
      ,cc.propose_fiscal_year
      ,cc.indicator_post_translations_f
      ,cc.productive
      ,cc.purchase_acct
      ,cc.jva_active
      ,cc.fin_asset_man_active
      ,cc.indicator_no_exchange_rate_di
      ,cc.update_mm_in_cmf
      ,cc.update_sd_in_cmf
      ,cc.external_cocode
      ,cc.original_key
      ,cc.cntry_chrt_acts
      ,cc.tax_group
      ,cc.global_cocde
      ,cc.fld_stat_var
      ,cc.pstg_per_var
      ,cc.hedgereq_active
      ,cc.tx_crcy_transl
      ,cc.workflow_var
      ,cc.inventory_mgmt
      ,cc.po_sched_agmt
      ,cc.requisition
      ,cc.contract
      ,cc.indicator_document_date_as_th
      ,cc.input_tax_code
      ,cc.output_tax_code
      ,cc.imp_data_in_po
      ,cc.indicator_negative_postings_p
      ,cc.enter_control_area
      ,cc.extended_wtax_active
      ,cc.parking_pst_date
      ,cc.method
      ,cc.fldstatusvar
      ,cc.copying_ctrl_gr
      ,cc.import_data_gr
      ,cc.offsetting_acct
      ,cc.ba_variant
      ,cc.cos_status
      ,cc.accts_recble_pledg
      ,cc.amount_split_to
      ,cc.surcharges
      ,cc.doc_type
      ,cc.doc_type_1
      ,cc.document_type
      ,cc.rc_doc_type
      ,cc.def_tax_rule
      ,cc.tax_date
      ,cc.manage_postg_period
      ,cc.shopping_cart
      ,cc.hide_entry
      ,cc.activ_aadrivton
      ,smad.address_number
      ,smad.valid_from
      ,smad.address_version
      ,smad.valid_to
      ,smad.title
      ,smad.name
      ,smad.name_2
      ,smad.name_3
      ,smad.name_4
      ,smad.conv_name
      ,smad.co_name
      ,smad.city as city_adrc
      ,smad.district
      ,smad.city_code
      ,smad.district_1
      ,smad.different_city
      ,smad.city_code_1
      ,smad.check_status
      ,smad.structure_group
      ,smad.postal_code
      ,smad.po_box_post_cde
      ,smad.company_post_cd
      ,smad.postal_code_ext
      ,smad.postal_code_ext_1
      ,smad.postal_code_ext_2
      ,smad.po_box
      ,smad.undeliverable
      ,smad.po_box_w_o_no
      ,smad.po_box_city
      ,smad.city_code_2
      ,smad.po_region
      ,smad.po_box_country
      ,smad.delivery_dist
      ,smad.transport_zone
      ,smad.street
      ,smad.undeliverable_1
      ,smad.street_code
      ,smad.street_abbrev
      ,smad.house_number
      ,smad.supplement
      ,smad.number_range
      ,smad.street_2
      ,smad.street_3
      ,smad.street_4
      ,smad.street_5
      ,smad.building_code
      ,smad.floor_in_building
      ,smad.room_number
      ,smad.country as country_adrc
      ,smad.language_key as language_key_adrc
      ,smad.region
      ,smad.address_group
      ,smad.flag_there_are_more_address_g
      ,smad.pers_address
      ,smad.search_term_1
      ,smad.search_term_2
      ,smad.phonet_sort
      ,smad.comm_method
      ,smad.telephone
      ,smad.extension
      ,smad.fax
      ,smad.extension_1
      ,smad.telephone_1
      ,smad.fax_1
      ,smad.teletex
      ,smad.telex
      ,smad.e_mail_defined
      ,smad.r_mail
      ,smad.x_400
      ,smad.rfc
      ,smad.printer
      ,smad.ssf
      ,smad.uri_ftp
      ,smad.pager
      ,smad.address_source
      ,smad.name_1
      ,smad.city_1
      ,smad.street_1
      ,smad.data_line
      ,smad.telebox
      ,smad.time_zone
      ,smad.tax_jurisdiction
      ,smad.address_id
      ,smad.creation_lang
      ,smad.address_uuid
      ,smad.subsequent_uuid
      ,smad.id_category
      ,smad.error_status
      ,smad.po_box_lobby
      ,smad.delvry_serv_type
      ,smad.delivery_service_no
      ,smad.county_code
      ,smad.county
      ,smad.township_code
      ,smad.township
      ,smad.county_1
      ,smad.township_1
      ,smad.purposecomplete_flag
      ,smad.data_filter_value_for_data_agi
      ,smad.duns_number
      ,smad.duns_4
      ,CASE WHEN cc.dw_last_update_date > coalesce(smad.dw_last_update_date,CAST('1900-01-01T00:00:00' AS DATETIME))
            THEN cc.dw_last_update_date
            ELSE smad.dw_last_update_date
       END AS input_last_update_date
      ,cc.dw_active_indicator 
 from `{{ projectid }}.{{ slt_l0_staging }}.company_codes` cc
       inner join `{{ projectid }}.{{ slt_l0_staging }}.supplier_master_address_details` smad
    on cc.client = smad.client
   and cc.address = smad.address_number
   and smad.dw_active_indicator = cc.dw_active_indicator
 where cc.dw_active_indicator = 'Y'
   and (cc.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'company_code_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR smad.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'company_code_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_cc AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.company_code_key as company_code_join_key,t.*
  from tmp_cc t
UNION ALL 
SELECT NULL as company_code_join_key,t.*
  from tmp_cc t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` cc
    on cc.company_code_key = t.company_code_key
   AND cc.finalmd5key <> t.finalmd5key
 WHERE cc.dw_active_indicator = 'Y') scr
ON tgt.company_code_key = scr.company_code_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 company_code_uuid
,company_code_key
,client
,company_code
,company_name
,city
,country
,currency
,language_key
,chart_of_accts
,max_exch_rate_dev
,fi_year_variant
,cocd_co_area
,company
,address
,vat_reg_no
,fm_area
,project_cm_active
,cbm_active
,update_fm
,jurisdict_code
,fundsctr_in_hr
,template
,screen_variant
,cash_mgmnt_comp_code
,cm_activated
,propose_value_date
,net_discount_base
,cred_contr_area
,net_tax_base
,sample_acct_rules
,business_area_fs
,propose_fiscal_year
,indicator_post_translations_f
,productive
,purchase_acct
,jva_active
,fin_asset_man_active
,indicator_no_exchange_rate_di
,update_mm_in_cmf
,update_sd_in_cmf
,external_cocode
,original_key
,cntry_chrt_acts
,tax_group
,global_cocde
,fld_stat_var
,pstg_per_var
,hedgereq_active
,tx_crcy_transl
,workflow_var
,inventory_mgmt
,po_sched_agmt
,requisition
,contract
,indicator_document_date_as_th
,input_tax_code
,output_tax_code
,imp_data_in_po
,indicator_negative_postings_p
,enter_control_area
,extended_wtax_active
,parking_pst_date
,method
,fldstatusvar
,copying_ctrl_gr
,import_data_gr
,offsetting_acct
,ba_variant
,cos_status
,accts_recble_pledg
,amount_split_to
,surcharges
,doc_type
,doc_type_1
,document_type
,rc_doc_type
,def_tax_rule
,tax_date
,manage_postg_period
,shopping_cart
,hide_entry
,activ_aadrivton
,address_number
,valid_from
,address_version
,valid_to
,title
,name
,name_2
,name_3
,name_4
,conv_name
,co_name
,city_adrc
,district
,city_code
,district_1
,different_city
,city_code_1
,check_status
,structure_group
,postal_code
,po_box_post_cde
,company_post_cd
,postal_code_ext
,postal_code_ext_1
,postal_code_ext_2
,po_box
,undeliverable
,po_box_w_o_no
,po_box_city
,city_code_2
,po_region
,po_box_country
,delivery_dist
,transport_zone
,street
,undeliverable_1
,street_code
,street_abbrev
,house_number
,supplement
,number_range
,street_2
,street_3
,street_4
,street_5
,building_code
,floor_in_building
,room_number
,country_adrc
,language_key_adrc
,region
,address_group
,flag_there_are_more_address_g
,pers_address
,search_term_1
,search_term_2
,phonet_sort
,comm_method
,telephone
,extension
,fax
,extension_1
,telephone_1
,fax_1
,teletex
,telex
,e_mail_defined
,r_mail
,x_400
,rfc
,printer
,ssf
,uri_ftp
,pager
,address_source
,name_1
,city_1
,street_1
,data_line
,telebox
,time_zone
,tax_jurisdiction
,address_id
,creation_lang
,address_uuid
,subsequent_uuid
,id_category
,error_status
,po_box_lobby
,delvry_serv_type
,delivery_service_no
,county_code
,county
,township_code
,township
,county_1
,township_1
,purposecomplete_flag
,data_filter_value_for_data_agi
,duns_number
,duns_4
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.company_code_key,scr.finalmd5key)))
,scr.company_code_key
,scr.client
,scr.company_code
,scr.company_name
,scr.city
,scr.country
,scr.currency
,scr.language_key
,scr.chart_of_accts
,scr.max_exch_rate_dev
,scr.fi_year_variant
,scr.cocd_co_area
,scr.company
,scr.address
,scr.vat_reg_no
,scr.fm_area
,scr.project_cm_active
,scr.cbm_active
,scr.update_fm
,scr.jurisdict_code
,scr.fundsctr_in_hr
,scr.template
,scr.screen_variant
,scr.cash_mgmnt_comp_code
,scr.cm_activated
,scr.propose_value_date
,scr.net_discount_base
,scr.cred_contr_area
,scr.net_tax_base
,scr.sample_acct_rules
,scr.business_area_fs
,scr.propose_fiscal_year
,scr.indicator_post_translations_f
,scr.productive
,scr.purchase_acct
,scr.jva_active
,scr.fin_asset_man_active
,scr.indicator_no_exchange_rate_di
,scr.update_mm_in_cmf
,scr.update_sd_in_cmf
,scr.external_cocode
,scr.original_key
,scr.cntry_chrt_acts
,scr.tax_group
,scr.global_cocde
,scr.fld_stat_var
,scr.pstg_per_var
,scr.hedgereq_active
,scr.tx_crcy_transl
,scr.workflow_var
,scr.inventory_mgmt
,scr.po_sched_agmt
,scr.requisition
,scr.contract
,scr.indicator_document_date_as_th
,scr.input_tax_code
,scr.output_tax_code
,scr.imp_data_in_po
,scr.indicator_negative_postings_p
,scr.enter_control_area
,scr.extended_wtax_active
,scr.parking_pst_date
,scr.method
,scr.fldstatusvar
,scr.copying_ctrl_gr
,scr.import_data_gr
,scr.offsetting_acct
,scr.ba_variant
,scr.cos_status
,scr.accts_recble_pledg
,scr.amount_split_to
,scr.surcharges
,scr.doc_type
,scr.doc_type_1
,scr.document_type
,scr.rc_doc_type
,scr.def_tax_rule
,scr.tax_date
,scr.manage_postg_period
,scr.shopping_cart
,scr.hide_entry
,scr.activ_aadrivton
,scr.address_number
,scr.valid_from
,scr.address_version
,scr.valid_to
,scr.title
,scr.name
,scr.name_2
,scr.name_3
,scr.name_4
,scr.conv_name
,scr.co_name
,scr.city_adrc
,scr.district
,scr.city_code
,scr.district_1
,scr.different_city
,scr.city_code_1
,scr.check_status
,scr.structure_group
,scr.postal_code
,scr.po_box_post_cde
,scr.company_post_cd
,scr.postal_code_ext
,scr.postal_code_ext_1
,scr.postal_code_ext_2
,scr.po_box
,scr.undeliverable
,scr.po_box_w_o_no
,scr.po_box_city
,scr.city_code_2
,scr.po_region
,scr.po_box_country
,scr.delivery_dist
,scr.transport_zone
,scr.street
,scr.undeliverable_1
,scr.street_code
,scr.street_abbrev
,scr.house_number
,scr.supplement
,scr.number_range
,scr.street_2
,scr.street_3
,scr.street_4
,scr.street_5
,scr.building_code
,scr.floor_in_building
,scr.room_number
,scr.country_adrc
,scr.language_key_adrc
,scr.region
,scr.address_group
,scr.flag_there_are_more_address_g
,scr.pers_address
,scr.search_term_1
,scr.search_term_2
,scr.phonet_sort
,scr.comm_method
,scr.telephone
,scr.extension
,scr.fax
,scr.extension_1
,scr.telephone_1
,scr.fax_1
,scr.teletex
,scr.telex
,scr.e_mail_defined
,scr.r_mail
,scr.x_400
,scr.rfc
,scr.printer
,scr.ssf
,scr.uri_ftp
,scr.pager
,scr.address_source
,scr.name_1
,scr.city_1
,scr.street_1
,scr.data_line
,scr.telebox
,scr.time_zone
,scr.tax_jurisdiction
,scr.address_id
,scr.creation_lang
,scr.address_uuid
,scr.subsequent_uuid
,scr.id_category
,scr.error_status
,scr.po_box_lobby
,scr.delvry_serv_type
,scr.delivery_service_no
,scr.county_code
,scr.county
,scr.township_code
,scr.township
,scr.county_1
,scr.township_1
,scr.purposecomplete_flag
,scr.data_filter_value_for_data_agi
,scr.duns_number
,scr.duns_4
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'company_code_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'company_code_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'company_code_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'company_codes,supplier_master_address_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'company_code_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 
UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.source_table_names = scr.source_table_names
WHEN NOT MATCHED THEN
INSERT (table_name,
        full_delta_indicator,
        source_table_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.source_table_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);