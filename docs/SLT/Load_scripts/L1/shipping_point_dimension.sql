MERGE INTO `{{ projectid }}.{{ slt_l1_dimension }}.shipping_point_dimension` tgt
USING (
with tmp_scr AS(
SELECT  CONCAT(spd.client,'-',spd.shipping_point) as shipping_point_key
        ,spd.client
        ,spd.shipping_point
        ,spd.factory_calend
        ,spd.rounding_upper
        ,spd.address
        ,spd.country
        ,spd.departure_zone
        ,spd.address_text
        ,spd.letter_header
        ,spd.footer_text_li
        ,spd.greeting_text
        ,spd.output_type
        ,spd.message_language
        ,spd.number
        ,spd.date_time
        ,spd.transm_medium
        ,spd.det_loadingtime
        ,spd.det_pickpackti
        ,spd.default_loading_time
        ,spd.def_pickpackti
        ,spd.pick_confirmat
        ,spd.subsystem
        ,spd.display_info
        ,spd.text_sds_sender
        ,spd.rte_sched_act
        ,spd.load_time_w_days
        ,spd.load_time_hrs
        ,spd.pick_pack_wday
        ,spd.pick_pack_time
        ,spd.working_times
        ,spd.rounding_wkdys
        ,spd.rounding_wk_hrs
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
        ,smad.city
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
        ,smad.language_key
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
        ,CASE WHEN spd.dw_last_update_date > coalesce(smad.dw_last_update_date,CAST('1900-01-01T00:00:00' AS DATETIME))
              THEN spd.dw_last_update_date
              ELSE smad.dw_last_update_date
         END AS input_last_update_date
        ,spd.dw_active_indicator
  from  `{{ projectid }}.{{ slt_l0_staging }}.shipping_point_data` spd
        left join `{{ projectid }}.{{ slt_l0_staging }}.supplier_master_address_details` smad 
    on spd.client = smad.client
   and spd.address = smad.address_number
   and spd.dw_active_indicator = smad.dw_active_indicator
 where spd.dw_active_indicator = 'Y'
   and (spd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'shipping_point_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR smad.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'shipping_point_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_sp AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.shipping_point_key as shipping_point_join_key,t.*
  from tmp_sp t
UNION ALL 
SELECT NULL as shipping_point_join_key,t.*
  from tmp_sp t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.shipping_point_dimension` spd
    on spd.shipping_point_key = t.shipping_point_key
   AND spd.finalmd5key <> t.finalmd5key
 WHERE spd.dw_active_indicator = 'Y') scr
ON tgt.shipping_point_key = scr.shipping_point_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 shipping_point_uuid
,shipping_point_key
,client
,shipping_point
,factory_calend
,rounding_upper
,address
,country
,departure_zone
,address_text
,letter_header
,footer_text_li
,greeting_text
,output_type
,message_language
,number
,date_time
,transm_medium
,det_loadingtime
,det_pickpackti
,default_loading_time
,def_pickpackti
,pick_confirmat
,subsystem
,display_info
,text_sds_sender
,rte_sched_act
,load_time_w_days
,load_time_hrs
,pick_pack_wday
,pick_pack_time
,working_times
,rounding_wkdys
,rounding_wk_hrs
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
,city
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
,language_key
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
 TO_HEX(MD5(CONCAT(scr.shipping_point_key,scr.finalmd5key)))
,scr.shipping_point_key
,scr.client
,scr.shipping_point
,scr.factory_calend
,scr.rounding_upper
,scr.address
,scr.country
,scr.departure_zone
,scr.address_text
,scr.letter_header
,scr.footer_text_li
,scr.greeting_text
,scr.output_type
,scr.message_language
,scr.number
,scr.date_time
,scr.transm_medium
,scr.det_loadingtime
,scr.det_pickpackti
,scr.default_loading_time
,scr.def_pickpackti
,scr.pick_confirmat
,scr.subsystem
,scr.display_info
,scr.text_sds_sender
,scr.rte_sched_act
,scr.load_time_w_days
,scr.load_time_hrs
,scr.pick_pack_wday
,scr.pick_pack_time
,scr.working_times
,scr.rounding_wkdys
,scr.rounding_wk_hrs
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
,scr.city
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
,scr.language_key
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
         'shipping_point_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'shipping_point_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'shipping_point_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'shipping_point_data,supplier_master_address_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.shipping_point_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.shipping_point_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'shipping_point_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.shipping_point_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
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