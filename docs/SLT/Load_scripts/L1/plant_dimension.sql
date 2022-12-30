merge into `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` tgt
using(
with tmp_scr as (
SELECT CONCAT(pd.client,'-',pd.plant) as plant_key
       ,pd.client
       ,pd.plant
       ,pd.name_1
       ,pd.valuation_area
       ,pd.customernoplant
       ,pd.sppl_no_plnt
       ,pd.factory_calend
       ,pd.name_2
       ,pd.street_house
       ,pd.po_box
       ,pd.postal_code
       ,pd.city
       ,pd.purchasing_org
       ,pd.sales_org_icb
       ,pd.batch_stat_mgmt
       ,pd.cond_plnt_level
       ,pd.source_list
       ,pd.reqmts_planning
       ,pd.country
       ,pd.region
       ,pd.county_code
       ,pd.city_code
       ,pd.address
       ,pd.planning_plant
       ,pd.tax_jur
       ,pd.distrib_channel
       ,pd.div_iv
       ,pd.language_key
       ,pd.sop_plant
       ,pd.variance_key
       ,pd.batch_stat_mgmt_1
       ,pd.plant_cat
       ,pd.sales_district
       ,pd.supply_region
       ,pd.tax_ind_plant
       ,pd.reg_supplier
       ,pd.st_rem_exped
       ,pd.nd_rem_exped
       ,pd.rd_rem_exped
       ,pd.text_1st_dunn
       ,pd.text_2nd_dunn
       ,pd.text_3rd_dunn
       ,pd.po_tolerance
       ,pd.business_place
       ,pd.sales_area_det
       ,pd.distr_profile
       ,pd.archiving_flag
       ,pd.dms_type
       ,pd.node_type_scn
       ,pd.naming_struct
       ,pd.cost_object
       ,pd.mixed_costing
       ,pd.act_costing
       ,pd.shipping_point
       ,pd.actual_activities
       ,pd.cctr_credit_cont
       ,pd.afsd_via_atp
       ,pd.no_batch_management
       ,pd.arun
       ,pd.season_act_im
       ,pd.control_data_for_bom
       ,pd.activate_var_group
       ,pd.assign_batches
       ,pd.exg_valuation
       ,pd.vendor_type
       ,pd.cred_ipi
       ,pd.store_cat
       ,pd.sup_ds
       ,smad.address_number
       ,smad.valid_from
       ,smad.address_version
       ,smad.valid_to
       ,smad.title
       ,smad.name
       ,smad.name_2 as name_2_adrc
       ,smad.name_3
       ,smad.name_4
       ,smad.conv_name
       ,smad.co_name
       ,smad.city as city_adrc
       ,smad.district
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
       ,smad.name_1 as name_1_adrc
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
       ,smad.county_code as county_code_adrc
       ,smad.county
       ,smad.township_code
       ,smad.township
       ,smad.county_1
       ,smad.township_1
       ,smad.purposecomplete_flag
       ,smad.data_filter_value_for_data_agi
       ,smad.duns_number
       ,smad.duns_4
      ,CASE WHEN pd.dw_last_update_date > coalesce(smad.dw_last_update_date,CAST('1900-01-01T00:00:00' AS DATETIME))
            THEN pd.dw_last_update_date
            ELSE smad.dw_last_update_date
       END AS input_last_update_date
      ,pd.dw_active_indicator
from `{{ projectid }}.{{ slt_l0_staging }}.plant_details` pd
     left join `{{ projectid }}.{{ slt_l0_staging }}.supplier_master_address_details` smad
  on pd.client = smad.client
 and pd.address = smad.address_number
 and smad.dw_active_indicator = pd.dw_active_indicator
where pd.dw_active_indicator = 'Y'
  and (pd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'plant_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR smad.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'plant_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_pd AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.plant_key as plant_join_key,t.*
  from tmp_pd t
UNION ALL 
SELECT NULL as plant_join_key,t.*
  from tmp_pd t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = t.plant_key
   AND pd.finalmd5key <> t.finalmd5key
 WHERE pd.dw_active_indicator = 'Y') scr
ON tgt.plant_key = scr.plant_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 plant_uuid
,plant_key
,client
,plant
,name_1
,valuation_area
,customernoplant
,sppl_no_plnt
,factory_calend
,name_2
,street_house
,po_box
,postal_code
,city
,purchasing_org
,sales_org_icb
,batch_stat_mgmt
,cond_plnt_level
,source_list
,reqmts_planning
,country
,region
,county_code
,city_code
,address
,planning_plant
,tax_jur
,distrib_channel
,div_iv
,language_key
,sop_plant
,variance_key
,batch_stat_mgmt_1
,plant_cat
,sales_district
,supply_region
,tax_ind_plant
,reg_supplier
,st_rem_exped
,nd_rem_exped
,rd_rem_exped
,text_1st_dunn
,text_2nd_dunn
,text_3rd_dunn
,po_tolerance
,business_place
,sales_area_det
,distr_profile
,archiving_flag
,dms_type
,node_type_scn
,naming_struct
,cost_object
,mixed_costing
,act_costing
,shipping_point
,actual_activities
,cctr_credit_cont
,afsd_via_atp
,no_batch_management
,arun
,season_act_im
,control_data_for_bom
,activate_var_group
,assign_batches
,exg_valuation
,vendor_type
,cred_ipi
,store_cat
,sup_ds
,address_number
,valid_from
,address_version
,valid_to
,title
,name
,name_2_adrc
,name_3
,name_4
,conv_name
,co_name
,city_adrc
,district
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
,name_1_adrc
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
,county_code_adrc
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
(TO_HEX(MD5(CONCAT(scr.plant_key,scr.finalmd5key)))
,scr.plant_key
,scr.client
,scr.plant
,scr.name_1
,scr.valuation_area
,scr.customernoplant
,scr.sppl_no_plnt
,scr.factory_calend
,scr.name_2
,scr.street_house
,scr.po_box
,scr.postal_code
,scr.city
,scr.purchasing_org
,scr.sales_org_icb
,scr.batch_stat_mgmt
,scr.cond_plnt_level
,scr.source_list
,scr.reqmts_planning
,scr.country
,scr.region
,scr.county_code
,scr.city_code
,scr.address
,scr.planning_plant
,scr.tax_jur
,scr.distrib_channel
,scr.div_iv
,scr.language_key
,scr.sop_plant
,scr.variance_key
,scr.batch_stat_mgmt_1
,scr.plant_cat
,scr.sales_district
,scr.supply_region
,scr.tax_ind_plant
,scr.reg_supplier
,scr.st_rem_exped
,scr.nd_rem_exped
,scr.rd_rem_exped
,scr.text_1st_dunn
,scr.text_2nd_dunn
,scr.text_3rd_dunn
,scr.po_tolerance
,scr.business_place
,scr.sales_area_det
,scr.distr_profile
,scr.archiving_flag
,scr.dms_type
,scr.node_type_scn
,scr.naming_struct
,scr.cost_object
,scr.mixed_costing
,scr.act_costing
,scr.shipping_point
,scr.actual_activities
,scr.cctr_credit_cont
,scr.afsd_via_atp
,scr.no_batch_management
,scr.arun
,scr.season_act_im
,scr.control_data_for_bom
,scr.activate_var_group
,scr.assign_batches
,scr.exg_valuation
,scr.vendor_type
,scr.cred_ipi
,scr.store_cat
,scr.sup_ds
,scr.address_number
,scr.valid_from
,scr.address_version
,scr.valid_to
,scr.title
,scr.name
,scr.name_2_adrc
,scr.name_3
,scr.name_4
,scr.conv_name
,scr.co_name
,scr.city_adrc
,scr.district
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
,scr.name_1_adrc
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
,scr.county_code_adrc
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
         'plant_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'plant_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'plant_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'plant_details,supplier_master_address_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'plant_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
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
