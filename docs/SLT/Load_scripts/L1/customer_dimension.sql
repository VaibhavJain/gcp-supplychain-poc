MERGE INTO `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension` tgt
USING (
 with tmp_scr as (
SELECT CONCAT(cm.client,'-',cm.customer) as customer_key
       ,cm.client
       ,cm.customer
       ,cm.country
       ,cm.name
       ,cm.name_2
       ,cm.city
       ,cm.postal_code
       ,cm.region
       ,cm.search_term
       ,cm.street
       ,cm.telephone_1
       ,cm.fax_number
       ,cm.one_time_acct
       ,cm.address
       ,cm.name_1
       ,cm.name_2_1
       ,cm.city_1
       ,cm.title
       ,cm.order_block
       ,cm.express_station
       ,cm.train_station
       ,cm.location_no_1
       ,cm.location_no_2
       ,cm.authorization
       ,cm.industry
       ,cm.check_digit
       ,cm.data_line
       ,cm.created_on
       ,cm.created_by
       ,cm.unloading_pts
       ,cm.billing_block
       ,cm.fiscal_address
       ,cm.working_times
       ,cm.alternat_payer
       ,cm.group_key
       ,cm.account_group
       ,cm.customer_class
       ,cm.vendor
       ,cm.delivery_block
       ,cm.location_code
       ,cm.deletion_flag
       ,cm.name_3
       ,cm.name_4
       ,cm.nielsen_id
       ,cm.district
       ,cm.po_box
       ,cm.po_box_pcode
       ,cm.county_code
       ,cm.city_code
       ,cm.regional_market
       ,cm.posting_block
       ,cm.language_key
       ,cm.tax_number_1
       ,cm.tax_number_2
       ,cm.equalizatn_tax
       ,cm.liable_for_vat
       ,cm.telebox
       ,cm.telephone_2
       ,cm.teletex
       ,cm.telex
       ,cm.transport_zone
       ,cm.al_payer_in_doc
       ,cm.trading_partner
       ,cm.vat_reg_no
       ,cm.competitors
       ,cm.sales_partner
       ,cm.prospect
       ,cm.cust_type_4
       ,cm.default_sp
       ,cm.legal_status
       ,cm.industry_code_1
       ,cm.industry_code_2
       ,cm.industry_code_3
       ,cm.industry_code_4
       ,cm.industry_code_5
       ,cm.initial_contact
       ,cm.annual_sales
       ,cm.sales_year
       ,cm.currency
       ,cm.employee
       ,cm.year
       ,cm.attribute_1
       ,cm.attribute_2
       ,cm.attribute_3
       ,cm.attribute_4
       ,cm.attribute_5
       ,cm.attribute_6
       ,cm.attribute_7
       ,cm.attribute_8
       ,cm.attribute_9
       ,cm.attribute_10
       ,cm.natural_person
       ,cm.annual_sales_1
       ,cm.tax_jur
       ,cm.fi_year_variant
       ,cm.usage
       ,cm.by_customer
       ,cm.after_delivery
       ,cm.ref_acct_group
       ,cm.p_o_box_city
       ,cm.plant
       ,cm.dme_indicator
       ,cm.instruction_key
       ,cm.data_transfer_status
       ,cm.hier_assignment
       ,cm.payment_block
       ,cm.lab_cust_group
       ,cm.non_milit_use
       ,cm.military_use
       ,cm.condition_grp_1
       ,cm.condition_grp_2
       ,cm.condition_grp_3
       ,cm.condition_grp_4
       ,cm.condition_grp_5
       ,cm.alt_payer_doc
       ,cm.tax_type
       ,cm.tax_number_type
       ,cm.tax_number_3
       ,cm.tax_number_4
       ,cm.tax_number_5
       ,cm.icms_exempt
       ,cm.ipi_exempt
       ,cm.subtrib_group
       ,cm.cfop_category
       ,cm.icms_law
       ,cm.ipi_law
       ,cm.biochem_warfare
       ,cm.nucl_nonprolif
       ,cm.natl_security
       ,cm.missile_techn
       ,cm.bonded_area_confirm
       ,cm.donate_mark
       ,cm.sales_block
       ,cm.url
       ,cm.rep_s_name
       ,cm.type_of_business
       ,cm.type_of_industry
       ,cm.confirm_status
       ,cm.confirm_date
       ,cm.confirm_time
       ,cm.deletion_block
       ,cm.consumer
       ,cm.purposecomplete_flag
       ,cm.suframa_code
       ,cm.rg_number
       ,cm.issued_by
       ,cm.state
       ,cm.rg_issuing_date
       ,cm.ric_number
       ,cm.foreign_national_reg
       ,cm.rne_issuing_date
       ,cm.cnae
       ,cm.legal_nature
       ,cm.crt_number
       ,cm.icms_taxpayer
       ,cm.industry_main_type
       ,cm.tax_declaration_type
       ,cm.company_size
       ,cm.decl_reg_pis_cofi
       ,cm.data_element_for_customer
       ,cm.account_excluded
       ,cm.max_stack_hght
       ,cm.pkm_length_unit
       ,cm.customerrelated
       ,cm.pkm_of_custom
       ,cm.no_layers_inpal
       ,cm.material_spec
       ,cm.pack_pcktype
       ,cm.side_preference
       ,cm.f_b_preference
       ,cm.collunloadpoint
       ,cm.agency_loc_cd
       ,cm.payment_office
       ,cm.fee_schedule
       ,cm.duns_number
       ,cm.duns_4
       ,cm.processor_group
       ,cm.slaprepr_proced
       ,cm.name_5
       ,cm.name_2_2
       ,cm.name_3_1
       ,cm.first_name
       ,cm.title_1
       ,cm.house_number
       ,cm.street_1
       ,cm.description
       ,cm.description_1
       ,cm.description_2
       ,cm.description_3
       ,cm.description_4
       ,cm.ecc_no
       ,cm.excise_reg_no
       ,cm.excise_range
       ,cm.excise_division
       ,cm.commissionerate
       ,cm.cst_no
       ,cm.lst_no
       ,cm.pan
       ,cm.exc_ind_cust
       ,cm.changed_on
       ,cm.changed_by
       ,cm.service_tax_regn_no
       ,cm.pan_reference
       ,cm.recipient_type
       ,cm.reference_type
       ,cm.wbs_element
       ,cm.order_number
       ,cm.ext_sold_to_party
       ,cm.cust_int_settl
       ,cm.dummy_recipient
       ,cm.std_recipient
       ,cm.stor_loc
       ,cm.co_area
       ,cm.cost_center
       ,cm.retiredate_pbe
       ,cm.retiredate_tbe
       ,cm.settl_type
       ,cm.hours_per_month
       ,cm.hours_days
       ,cm.days_month
       ,cm.acqdate_pbe
       ,cm.pbe_document
       ,cm.mltpl_usg_per
       ,cm.short_op
       ,cm.blckinddocentry
       ,cm.pbe_as_tbe
       ,cm.calendar_id
       ,cm.complete_month
       ,cm.settlmnt_ind
       ,cm.last_settlement
       ,cm.current_settl
       ,cm.with_acq_date
       ,cm.negqtyallowed
       ,cm.dlinelogic
       ,cm.minusprd_rsctd
       ,cm.relnotallunrusg
       ,cm.srchrgeunrstuse
       ,cm.shift_price
       ,cm.inv_status_cs
       ,cm.planning_area
       ,cm.settlqtyequirel
       ,smad.address_number
       ,smad.valid_from
       ,smad.address_version
       ,smad.valid_to
       ,smad.title as title_adrc
       ,smad.name as name_adrc
       ,smad.name_2 as name_2_adrc
       ,smad.name_3 as name_3_adrc
       ,smad.name_4 as name_4_adrc
       ,smad.conv_name
       ,smad.co_name
       ,smad.city as city_adrc
       ,smad.district as district_adrc
       ,smad.city_code as city_code_adrc
       ,smad.district_1
       ,smad.different_city
       ,smad.city_code_1
       ,smad.check_status
       ,smad.structure_group
       ,smad.postal_code as postal_code_adrc
       ,smad.po_box_post_cde
       ,smad.company_post_cd
       ,smad.postal_code_ext
       ,smad.postal_code_ext_1
       ,smad.postal_code_ext_2
       ,smad.po_box as po_box_adrc
       ,smad.undeliverable
       ,smad.po_box_w_o_no
       ,smad.po_box_city
       ,smad.city_code_2
       ,smad.po_region
       ,smad.po_box_country
       ,smad.delivery_dist
       ,smad.transport_zone as transport_zone_adrc
       ,smad.street as street_adrc
       ,smad.undeliverable_1
       ,smad.street_code
       ,smad.street_abbrev
       ,smad.house_number as house_number_adrc
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
       ,smad.region as region_adrc
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
       ,smad.telephone_1 as telephone_1_adrc
       ,smad.fax_1
       ,smad.teletex as teletex_adrc
       ,smad.telex as telex_adrc
       ,smad.e_mail_defined
       ,smad.r_mail
       ,smad.x_400
       ,smad.rfc
       ,smad.printer
       ,smad.ssf
       ,smad.uri_ftp
       ,smad.pager
       ,smad.address_source
       ,smad.name_1 as name_1_adrc
       ,smad.city_1 as city_1_adrc
       ,smad.street_1 as street_1_adrc
       ,smad.data_line as data_line_adrc
       ,smad.telebox as telebox_adrc
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
       ,smad.county_code as county_code_adrc
       ,smad.county
       ,smad.township_code
       ,smad.township
       ,smad.county_1
       ,smad.township_1
       ,smad.purposecomplete_flag as purposecomplete_flag_adrc
       ,smad.data_filter_value_for_data_agi
       ,smad.duns_number as duns_number_adrc
       ,smad.duns_4 as duns_4_adrc
       ,CASE WHEN cm.dw_last_update_date > coalesce(smad.dw_last_update_date,CAST('1900-01-01T00:00:00' AS DATETIME))
             THEN cm.dw_last_update_date
             ELSE smad.dw_last_update_date
         END AS input_last_update_date
       ,cm.dw_active_indicator
  from `{{ projectid }}.{{ slt_l0_staging }}.customer_master` cm
       inner join `{{ projectid }}.{{ slt_l0_staging }}.supplier_master_address_details` smad
    on cm.client = smad.client
   and cm.address = smad.address_number
   and smad.dw_active_indicator = cm.dw_active_indicator
 where cm.dw_active_indicator = 'Y'
   and (cm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'customer_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR smad.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'customer_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_cm AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.customer_key as customer_join_key,t.*
  from tmp_cm t
UNION ALL 
SELECT NULL as customer_join_key,t.*
  from tmp_cm t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension` cd
    on cd.customer_key = t.customer_key
   AND cd.finalmd5key <> t.finalmd5key
 WHERE cd.dw_active_indicator = 'Y') scr
ON tgt.customer_key = scr.customer_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 customer_uuid
,customer_key
,client
,customer
,country
,name
,name_2
,city
,postal_code
,region
,search_term
,street
,telephone_1
,fax_number
,one_time_acct
,address
,name_1
,name_2_1
,city_1
,title
,order_block
,express_station
,train_station
,location_no_1
,location_no_2
,authorization
,industry
,check_digit
,data_line
,created_on
,created_by
,unloading_pts
,billing_block
,fiscal_address
,working_times
,alternat_payer
,group_key
,account_group
,customer_class
,vendor
,delivery_block
,location_code
,deletion_flag
,name_3
,name_4
,nielsen_id
,district
,po_box
,po_box_pcode
,county_code
,city_code
,regional_market
,posting_block
,language_key
,tax_number_1
,tax_number_2
,equalizatn_tax
,liable_for_vat
,telebox
,telephone_2
,teletex
,telex
,transport_zone
,al_payer_in_doc
,trading_partner
,vat_reg_no
,competitors
,sales_partner
,prospect
,cust_type_4
,default_sp
,legal_status
,industry_code_1
,industry_code_2
,industry_code_3
,industry_code_4
,industry_code_5
,initial_contact
,annual_sales
,sales_year
,currency
,employee
,year
,attribute_1
,attribute_2
,attribute_3
,attribute_4
,attribute_5
,attribute_6
,attribute_7
,attribute_8
,attribute_9
,attribute_10
,natural_person
,annual_sales_1
,tax_jur
,fi_year_variant
,usage
,by_customer
,after_delivery
,ref_acct_group
,p_o_box_city
,plant
,dme_indicator
,instruction_key
,data_transfer_status
,hier_assignment
,payment_block
,lab_cust_group
,non_milit_use
,military_use
,condition_grp_1
,condition_grp_2
,condition_grp_3
,condition_grp_4
,condition_grp_5
,alt_payer_doc
,tax_type
,tax_number_type
,tax_number_3
,tax_number_4
,tax_number_5
,icms_exempt
,ipi_exempt
,subtrib_group
,cfop_category
,icms_law
,ipi_law
,biochem_warfare
,nucl_nonprolif
,natl_security
,missile_techn
,bonded_area_confirm
,donate_mark
,sales_block
,url
,rep_s_name
,type_of_business
,type_of_industry
,confirm_status
,confirm_date
,confirm_time
,deletion_block
,consumer
,purposecomplete_flag
,suframa_code
,rg_number
,issued_by
,state
,rg_issuing_date
,ric_number
,foreign_national_reg
,rne_issuing_date
,cnae
,legal_nature
,crt_number
,icms_taxpayer
,industry_main_type
,tax_declaration_type
,company_size
,decl_reg_pis_cofi
,data_element_for_customer
,account_excluded
,max_stack_hght
,pkm_length_unit
,customerrelated
,pkm_of_custom
,no_layers_inpal
,material_spec
,pack_pcktype
,side_preference
,f_b_preference
,collunloadpoint
,agency_loc_cd
,payment_office
,fee_schedule
,duns_number
,duns_4
,processor_group
,slaprepr_proced
,name_5
,name_2_2
,name_3_1
,first_name
,title_1
,house_number
,street_1
,description
,description_1
,description_2
,description_3
,description_4
,ecc_no
,excise_reg_no
,excise_range
,excise_division
,commissionerate
,cst_no
,lst_no
,pan
,exc_ind_cust
,changed_on
,changed_by
,service_tax_regn_no
,pan_reference
,recipient_type
,reference_type
,wbs_element
,order_number
,ext_sold_to_party
,cust_int_settl
,dummy_recipient
,std_recipient
,stor_loc
,co_area
,cost_center
,retiredate_pbe
,retiredate_tbe
,settl_type
,hours_per_month
,hours_days
,days_month
,acqdate_pbe
,pbe_document
,mltpl_usg_per
,short_op
,blckinddocentry
,pbe_as_tbe
,calendar_id
,complete_month
,settlmnt_ind
,last_settlement
,current_settl
,with_acq_date
,negqtyallowed
,dlinelogic
,minusprd_rsctd
,relnotallunrusg
,srchrgeunrstuse
,shift_price
,inv_status_cs
,planning_area
,settlqtyequirel
,address_number
,valid_from
,address_version
,valid_to
,title_adrc
,name_adrc
,name_2_adrc
,name_3_adrc
,name_4_adrc
,conv_name
,co_name
,city_adrc
,district_adrc
,city_code_adrc
,district_1
,different_city
,city_code_1
,check_status
,structure_group
,postal_code_adrc
,po_box_post_cde
,company_post_cd
,postal_code_ext
,postal_code_ext_1
,postal_code_ext_2
,po_box_adrc
,undeliverable
,po_box_w_o_no
,po_box_city
,city_code_2
,po_region
,po_box_country
,delivery_dist
,transport_zone_adrc
,street_adrc
,undeliverable_1
,street_code
,street_abbrev
,house_number_adrc
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
,region_adrc
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
,telephone_1_adrc
,fax_1
,teletex_adrc
,telex_adrc
,e_mail_defined
,r_mail
,x_400
,rfc
,printer
,ssf
,uri_ftp
,pager
,address_source
,name_1_adrc
,city_1_adrc
,street_1_adrc
,data_line_adrc
,telebox_adrc
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
,county_code_adrc
,county
,township_code
,township
,county_1
,township_1
,purposecomplete_flag_adrc
,data_filter_value_for_data_agi
,duns_number_adrc
,duns_4_adrc
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date)
VALUES(TO_HEX(MD5(CONCAT(scr.customer_key,scr.finalmd5key)))
,scr.customer_key
,scr.client
,scr.customer
,scr.country
,scr.name
,scr.name_2
,scr.city
,scr.postal_code
,scr.region
,scr.search_term
,scr.street
,scr.telephone_1
,scr.fax_number
,scr.one_time_acct
,scr.address
,scr.name_1
,scr.name_2_1
,scr.city_1
,scr.title
,scr.order_block
,scr.express_station
,scr.train_station
,scr.location_no_1
,scr.location_no_2
,scr.authorization
,scr.industry
,scr.check_digit
,scr.data_line
,scr.created_on
,scr.created_by
,scr.unloading_pts
,scr.billing_block
,scr.fiscal_address
,scr.working_times
,scr.alternat_payer
,scr.group_key
,scr.account_group
,scr.customer_class
,scr.vendor
,scr.delivery_block
,scr.location_code
,scr.deletion_flag
,scr.name_3
,scr.name_4
,scr.nielsen_id
,scr.district
,scr.po_box
,scr.po_box_pcode
,scr.county_code
,scr.city_code
,scr.regional_market
,scr.posting_block
,scr.language_key
,scr.tax_number_1
,scr.tax_number_2
,scr.equalizatn_tax
,scr.liable_for_vat
,scr.telebox
,scr.telephone_2
,scr.teletex
,scr.telex
,scr.transport_zone
,scr.al_payer_in_doc
,scr.trading_partner
,scr.vat_reg_no
,scr.competitors
,scr.sales_partner
,scr.prospect
,scr.cust_type_4
,scr.default_sp
,scr.legal_status
,scr.industry_code_1
,scr.industry_code_2
,scr.industry_code_3
,scr.industry_code_4
,scr.industry_code_5
,scr.initial_contact
,scr.annual_sales
,scr.sales_year
,scr.currency
,scr.employee
,scr.year
,scr.attribute_1
,scr.attribute_2
,scr.attribute_3
,scr.attribute_4
,scr.attribute_5
,scr.attribute_6
,scr.attribute_7
,scr.attribute_8
,scr.attribute_9
,scr.attribute_10
,scr.natural_person
,scr.annual_sales_1
,scr.tax_jur
,scr.fi_year_variant
,scr.usage
,scr.by_customer
,scr.after_delivery
,scr.ref_acct_group
,scr.p_o_box_city
,scr.plant
,scr.dme_indicator
,scr.instruction_key
,scr.data_transfer_status
,scr.hier_assignment
,scr.payment_block
,scr.lab_cust_group
,scr.non_milit_use
,scr.military_use
,scr.condition_grp_1
,scr.condition_grp_2
,scr.condition_grp_3
,scr.condition_grp_4
,scr.condition_grp_5
,scr.alt_payer_doc
,scr.tax_type
,scr.tax_number_type
,scr.tax_number_3
,scr.tax_number_4
,scr.tax_number_5
,scr.icms_exempt
,scr.ipi_exempt
,scr.subtrib_group
,scr.cfop_category
,scr.icms_law
,scr.ipi_law
,scr.biochem_warfare
,scr.nucl_nonprolif
,scr.natl_security
,scr.missile_techn
,scr.bonded_area_confirm
,scr.donate_mark
,scr.sales_block
,scr.url
,scr.rep_s_name
,scr.type_of_business
,scr.type_of_industry
,scr.confirm_status
,scr.confirm_date
,scr.confirm_time
,scr.deletion_block
,scr.consumer
,scr.purposecomplete_flag
,scr.suframa_code
,scr.rg_number
,scr.issued_by
,scr.state
,scr.rg_issuing_date
,scr.ric_number
,scr.foreign_national_reg
,scr.rne_issuing_date
,scr.cnae
,scr.legal_nature
,scr.crt_number
,scr.icms_taxpayer
,scr.industry_main_type
,scr.tax_declaration_type
,scr.company_size
,scr.decl_reg_pis_cofi
,scr.data_element_for_customer
,scr.account_excluded
,scr.max_stack_hght
,scr.pkm_length_unit
,scr.customerrelated
,scr.pkm_of_custom
,scr.no_layers_inpal
,scr.material_spec
,scr.pack_pcktype
,scr.side_preference
,scr.f_b_preference
,scr.collunloadpoint
,scr.agency_loc_cd
,scr.payment_office
,scr.fee_schedule
,scr.duns_number
,scr.duns_4
,scr.processor_group
,scr.slaprepr_proced
,scr.name_5
,scr.name_2_2
,scr.name_3_1
,scr.first_name
,scr.title_1
,scr.house_number
,scr.street_1
,scr.description
,scr.description_1
,scr.description_2
,scr.description_3
,scr.description_4
,scr.ecc_no
,scr.excise_reg_no
,scr.excise_range
,scr.excise_division
,scr.commissionerate
,scr.cst_no
,scr.lst_no
,scr.pan
,scr.exc_ind_cust
,scr.changed_on
,scr.changed_by
,scr.service_tax_regn_no
,scr.pan_reference
,scr.recipient_type
,scr.reference_type
,scr.wbs_element
,scr.order_number
,scr.ext_sold_to_party
,scr.cust_int_settl
,scr.dummy_recipient
,scr.std_recipient
,scr.stor_loc
,scr.co_area
,scr.cost_center
,scr.retiredate_pbe
,scr.retiredate_tbe
,scr.settl_type
,scr.hours_per_month
,scr.hours_days
,scr.days_month
,scr.acqdate_pbe
,scr.pbe_document
,scr.mltpl_usg_per
,scr.short_op
,scr.blckinddocentry
,scr.pbe_as_tbe
,scr.calendar_id
,scr.complete_month
,scr.settlmnt_ind
,scr.last_settlement
,scr.current_settl
,scr.with_acq_date
,scr.negqtyallowed
,scr.dlinelogic
,scr.minusprd_rsctd
,scr.relnotallunrusg
,scr.srchrgeunrstuse
,scr.shift_price
,scr.inv_status_cs
,scr.planning_area
,scr.settlqtyequirel
,scr.address_number
,scr.valid_from
,scr.address_version
,scr.valid_to
,scr.title_adrc
,scr.name_adrc
,scr.name_2_adrc
,scr.name_3_adrc
,scr.name_4_adrc
,scr.conv_name
,scr.co_name
,scr.city_adrc
,scr.district_adrc
,scr.city_code_adrc
,scr.district_1
,scr.different_city
,scr.city_code_1
,scr.check_status
,scr.structure_group
,scr.postal_code_adrc
,scr.po_box_post_cde
,scr.company_post_cd
,scr.postal_code_ext
,scr.postal_code_ext_1
,scr.postal_code_ext_2
,scr.po_box_adrc
,scr.undeliverable
,scr.po_box_w_o_no
,scr.po_box_city
,scr.city_code_2
,scr.po_region
,scr.po_box_country
,scr.delivery_dist
,scr.transport_zone_adrc
,scr.street_adrc
,scr.undeliverable_1
,scr.street_code
,scr.street_abbrev
,scr.house_number_adrc
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
,scr.region_adrc
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
,scr.telephone_1_adrc
,scr.fax_1
,scr.teletex_adrc
,scr.telex_adrc
,scr.e_mail_defined
,scr.r_mail
,scr.x_400
,scr.rfc
,scr.printer
,scr.ssf
,scr.uri_ftp
,scr.pager
,scr.address_source
,scr.name_1_adrc
,scr.city_1_adrc
,scr.street_1_adrc
,scr.data_line_adrc
,scr.telebox_adrc
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
,scr.county_code_adrc
,scr.county
,scr.township_code
,scr.township
,scr.county_1
,scr.township_1
,scr.purposecomplete_flag_adrc
,scr.data_filter_value_for_data_agi
,scr.duns_number_adrc
,scr.duns_4_adrc
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());


MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'customer_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'customer_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'customer_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'customer_master,supplier_master_address_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME))  as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'customer_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
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