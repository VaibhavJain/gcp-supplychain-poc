merge into `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension` tgt
using(
with tmp_scr as (
SELECT CONCAT(sm.client,'-',sm.vendor) as supplier_key
      ,sm.client
      ,sm.vendor
      ,sm.country
      ,sm.name
      ,sm.name_2
      ,sm.name_3
      ,sm.name_4
      ,sm.city
      ,sm.district
      ,sm.po_box
      ,sm.po_box_pcode
      ,sm.postal_code
      ,sm.region
      ,sm.search_term
      ,sm.street
      ,sm.address
      ,sm.name_1
      ,sm.name_2_1
      ,sm.city_1
      ,sm.title
      ,sm.train_station
      ,sm.location_no_1
      ,sm.location_no_2
      ,sm.authorization
      ,sm.industry
      ,sm.check_digit
      ,sm.data_line
      ,sm.dme_indicator
      ,sm.instruction_key
      ,sm.created_on
      ,sm.created_by
      ,sm.isr_number
      ,sm.group_key
      ,sm.account_group
      ,sm.customer
      ,sm.alternat_payee
      ,sm.deletion_flag
      ,sm.posting_block
      ,sm.purch_block
      ,sm.language_key
      ,sm.tax_number_1
      ,sm.tax_number_2
      ,sm.equalizatn_tax
      ,sm.liable_for_vat
      ,sm.telebox
      ,sm.telephone_1
      ,sm.telephone_2
      ,sm.fax_number
      ,sm.teletex
      ,sm.telex
      ,sm.one_time_acct
      ,sm.payee_in_doc
      ,sm.trading_partner
      ,sm.fiscal_address
      ,sm.vat_reg_no
      ,sm.natural_person
      ,sm.block_function
      ,sm.place_of_birth
      ,sm.date_of_birth
      ,sm.sex
      ,sm.info_number
      ,sm.last_ext_review
      ,sm.actual_qm_sys
      ,sm.ref_acct_group
      ,sm.p_o_box_city
      ,sm.plant
      ,sm.vsr_relevant
      ,sm.plant_relevant
      ,sm.factory_calend
      ,sm.data_transfer_status
      ,sm.tax_jur
      ,sm.payment_block
      ,sm.scac
      ,sm.car_freight_grp
      ,sm.transport_zone
      ,sm.alt_payee_doc
      ,sm.servagntprocgrp
      ,sm.tax_type
      ,sm.tax_number_type
      ,sm.social_ins
      ,sm.soc_ins_code
      ,sm.tax_number_3
      ,sm.tax_number_4
      ,sm.tax_number_5
      ,sm.tax_split
      ,sm.tax_base
      ,sm.profession
      ,sm.stat_grp_agent
      ,sm.external_manuf
      ,sm.url
      ,sm.rep_s_name
      ,sm.type_of_business
      ,sm.type_of_industry
      ,sm.confirm_status
      ,sm.confirm_date
      ,sm.confirm_time
      ,sm.deletion_block
      ,sm.qm_system_to
      ,sm.pod_relevant
      ,sm.tax_office
      ,sm.tax_number
      ,sm.carrier_confirmation
      ,sm.micro_comp
      ,sm.terms_liab
      ,sm.crc_number
      ,sm.purposecomplete_flag
      ,sm.rg_number
      ,sm.issued_by
      ,sm.state
      ,sm.rg_issuing_date
      ,sm.ric_number
      ,sm.foreign_national_reg
      ,sm.rne_issuing_date
      ,sm.cnae
      ,sm.legal_nature
      ,sm.crt_number
      ,sm.icms_taxpayer
      ,sm.industry_main_type
      ,sm.tax_declaration_type
      ,sm.company_size
      ,sm.decl_reg_pis_cofi
      ,sm.dataelement_exstensibility_for
      ,sm.capital_amount
      ,sm.currency
      ,sm.agency_loc_cd
      ,sm.payment_office
      ,sm.ppa_relevant
      ,sm.processor_group
      ,sm.slaprepr_proced
      ,sm.name_5
      ,sm.name_2_2
      ,sm.name_3_1
      ,sm.first_name
      ,sm.title_1
      ,sm.house_number
      ,sm.street_1
      ,sm.dtelimit_ext_id
      ,sm.repetition
      ,sm.street_2
      ,sm.house_number_1
      ,sm.postal_code_1
      ,sm.city_2
      ,sm.country_1
      ,sm.business_type
      ,sm.prtnr_trad_name
      ,sm.partner_s_utr
      ,sm.verif_status
      ,sm.verification_n
      ,sm.tax_status
      ,sm.comp_house_reg_no
      ,sm.ecc_no
      ,sm.excise_reg_no
      ,sm.excise_range
      ,sm.excise_division
      ,sm.commissionerate
      ,sm.cst_no
      ,sm.lst_no
      ,sm.pan
      ,sm.exc_ind_vendor
      ,sm.ssi_status
      ,sm.type_of_vendor
      ,sm.cenvat
      ,sm.changed_on
      ,sm.changed_by
      ,sm.service_tax_regn_no
      ,sm.pan_reference
      ,sm.pan_valid_from_date
      ,sm.customs_vendor
      ,sm.deductee_ref_no
      ,sm.gst_ven_class
      ,sm.public_entity
      ,sm.deed_public_use
      ,sm.ss_certif_valid_date
      ,sm.ss_certificate_form
      ,sm.cae_code
      ,sm.absence_of_debt
      ,sm.transportation_chain
      ,sm.staging_time
      ,sm.scheduling_procedure
      ,sm.rel_for_coll_no
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
      ,smad.city_code
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
      ,smad.street_2 as street_2_adrc
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
      ,smad.county_code
      ,smad.county
      ,smad.township_code
      ,smad.township
      ,smad.county_1
      ,smad.township_1
      ,smad.purposecomplete_flag as purposecomplete_flag_adrc
      ,smad.data_filter_value_for_data_agi
      ,smad.duns_number
      ,smad.duns_4
      ,CASE WHEN sm.dw_last_update_date > coalesce(smad.dw_last_update_date,CAST('1900-01-01T00:00:00' AS DATETIME))
            THEN sm.dw_last_update_date
            ELSE smad.dw_last_update_date
       END AS input_last_update_date
      ,sm.dw_active_indicator
from `{{ projectid }}.{{ slt_l0_staging }}.supplier_master_details` sm
     left join `{{ projectid }}.{{ slt_l0_staging }}.supplier_master_address_details` smad
  on sm.client = smad.client
 and sm.address = smad.address_number
 and smad.dw_active_indicator = sm.dw_active_indicator
where sm.dw_active_indicator = 'Y'
  and (sm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'supplier_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR smad.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'supplier_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_sm AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.supplier_key as supplier_join_key,t.*
  from tmp_sm t
UNION ALL 
SELECT NULL as supplier_join_key,t.*
  from tmp_sm t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension` sd
    on sd.supplier_key = t.supplier_key
   AND sd.finalmd5key <> t.finalmd5key
 WHERE sd.dw_active_indicator = 'Y') scr
ON tgt.supplier_key = scr.supplier_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 supplier_uuid
,supplier_key
,client
,vendor
,country
,name
,name_2
,name_3
,name_4
,city
,district
,po_box
,po_box_pcode
,postal_code
,region
,search_term
,street
,address
,name_1
,name_2_1
,city_1
,title
,train_station
,location_no_1
,location_no_2
,authorization
,industry
,check_digit
,data_line
,dme_indicator
,instruction_key
,created_on
,created_by
,isr_number
,group_key
,account_group
,customer
,alternat_payee
,deletion_flag
,posting_block
,purch_block
,language_key
,tax_number_1
,tax_number_2
,equalizatn_tax
,liable_for_vat
,telebox
,telephone_1
,telephone_2
,fax_number
,teletex
,telex
,one_time_acct
,payee_in_doc
,trading_partner
,fiscal_address
,vat_reg_no
,natural_person
,block_function
,place_of_birth
,date_of_birth
,sex
,info_number
,last_ext_review
,actual_qm_sys
,ref_acct_group
,p_o_box_city
,plant
,vsr_relevant
,plant_relevant
,factory_calend
,data_transfer_status
,tax_jur
,payment_block
,scac
,car_freight_grp
,transport_zone
,alt_payee_doc
,servagntprocgrp
,tax_type
,tax_number_type
,social_ins
,soc_ins_code
,tax_number_3
,tax_number_4
,tax_number_5
,tax_split
,tax_base
,profession
,stat_grp_agent
,external_manuf
,url
,rep_s_name
,type_of_business
,type_of_industry
,confirm_status
,confirm_date
,confirm_time
,deletion_block
,qm_system_to
,pod_relevant
,tax_office
,tax_number
,carrier_confirmation
,micro_comp
,terms_liab
,crc_number
,purposecomplete_flag
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
,dataelement_exstensibility_for
,capital_amount
,currency
,agency_loc_cd
,payment_office
,ppa_relevant
,processor_group
,slaprepr_proced
,name_5
,name_2_2
,name_3_1
,first_name
,title_1
,house_number
,street_1
,dtelimit_ext_id
,repetition
,street_2
,house_number_1
,postal_code_1
,city_2
,country_1
,business_type
,prtnr_trad_name
,partner_s_utr
,verif_status
,verification_n
,tax_status
,comp_house_reg_no
,ecc_no
,excise_reg_no
,excise_range
,excise_division
,commissionerate
,cst_no
,lst_no
,pan
,exc_ind_vendor
,ssi_status
,type_of_vendor
,cenvat
,changed_on
,changed_by
,service_tax_regn_no
,pan_reference
,pan_valid_from_date
,customs_vendor
,deductee_ref_no
,gst_ven_class
,public_entity
,deed_public_use
,ss_certif_valid_date
,ss_certificate_form
,cae_code
,absence_of_debt
,transportation_chain
,staging_time
,scheduling_procedure
,rel_for_coll_no
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
,city_code
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
,street_2_adrc
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
,county_code
,county
,township_code
,township
,county_1
,township_1
,purposecomplete_flag_adrc
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
(TO_HEX(MD5(CONCAT(scr.supplier_key,scr.finalmd5key)))
,scr.supplier_key
,scr.client
,scr.vendor
,scr.country
,scr.name
,scr.name_2
,scr.name_3
,scr.name_4
,scr.city
,scr.district
,scr.po_box
,scr.po_box_pcode
,scr.postal_code
,scr.region
,scr.search_term
,scr.street
,scr.address
,scr.name_1
,scr.name_2_1
,scr.city_1
,scr.title
,scr.train_station
,scr.location_no_1
,scr.location_no_2
,scr.authorization
,scr.industry
,scr.check_digit
,scr.data_line
,scr.dme_indicator
,scr.instruction_key
,scr.created_on
,scr.created_by
,scr.isr_number
,scr.group_key
,scr.account_group
,scr.customer
,scr.alternat_payee
,scr.deletion_flag
,scr.posting_block
,scr.purch_block
,scr.language_key
,scr.tax_number_1
,scr.tax_number_2
,scr.equalizatn_tax
,scr.liable_for_vat
,scr.telebox
,scr.telephone_1
,scr.telephone_2
,scr.fax_number
,scr.teletex
,scr.telex
,scr.one_time_acct
,scr.payee_in_doc
,scr.trading_partner
,scr.fiscal_address
,scr.vat_reg_no
,scr.natural_person
,scr.block_function
,scr.place_of_birth
,scr.date_of_birth
,scr.sex
,scr.info_number
,scr.last_ext_review
,scr.actual_qm_sys
,scr.ref_acct_group
,scr.p_o_box_city
,scr.plant
,scr.vsr_relevant
,scr.plant_relevant
,scr.factory_calend
,scr.data_transfer_status
,scr.tax_jur
,scr.payment_block
,scr.scac
,scr.car_freight_grp
,scr.transport_zone
,scr.alt_payee_doc
,scr.servagntprocgrp
,scr.tax_type
,scr.tax_number_type
,scr.social_ins
,scr.soc_ins_code
,scr.tax_number_3
,scr.tax_number_4
,scr.tax_number_5
,scr.tax_split
,scr.tax_base
,scr.profession
,scr.stat_grp_agent
,scr.external_manuf
,scr.url
,scr.rep_s_name
,scr.type_of_business
,scr.type_of_industry
,scr.confirm_status
,scr.confirm_date
,scr.confirm_time
,scr.deletion_block
,scr.qm_system_to
,scr.pod_relevant
,scr.tax_office
,scr.tax_number
,scr.carrier_confirmation
,scr.micro_comp
,scr.terms_liab
,scr.crc_number
,scr.purposecomplete_flag
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
,scr.dataelement_exstensibility_for
,scr.capital_amount
,scr.currency
,scr.agency_loc_cd
,scr.payment_office
,scr.ppa_relevant
,scr.processor_group
,scr.slaprepr_proced
,scr.name_5
,scr.name_2_2
,scr.name_3_1
,scr.first_name
,scr.title_1
,scr.house_number
,scr.street_1
,scr.dtelimit_ext_id
,scr.repetition
,scr.street_2
,scr.house_number_1
,scr.postal_code_1
,scr.city_2
,scr.country_1
,scr.business_type
,scr.prtnr_trad_name
,scr.partner_s_utr
,scr.verif_status
,scr.verification_n
,scr.tax_status
,scr.comp_house_reg_no
,scr.ecc_no
,scr.excise_reg_no
,scr.excise_range
,scr.excise_division
,scr.commissionerate
,scr.cst_no
,scr.lst_no
,scr.pan
,scr.exc_ind_vendor
,scr.ssi_status
,scr.type_of_vendor
,scr.cenvat
,scr.changed_on
,scr.changed_by
,scr.service_tax_regn_no
,scr.pan_reference
,scr.pan_valid_from_date
,scr.customs_vendor
,scr.deductee_ref_no
,scr.gst_ven_class
,scr.public_entity
,scr.deed_public_use
,scr.ss_certif_valid_date
,scr.ss_certificate_form
,scr.cae_code
,scr.absence_of_debt
,scr.transportation_chain
,scr.staging_time
,scr.scheduling_procedure
,scr.rel_for_coll_no
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
,scr.city_code
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
,scr.street_2_adrc
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
,scr.county_code
,scr.county
,scr.township_code
,scr.township
,scr.county_1
,scr.township_1
,scr.purposecomplete_flag_adrc
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
         'supplier_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'supplier_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'supplier_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'supplier_master_details,supplier_master_address_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'supplier_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
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
