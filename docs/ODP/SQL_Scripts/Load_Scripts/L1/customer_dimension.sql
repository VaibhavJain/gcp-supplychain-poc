MERGE 
INTO `${ProjectID}.${TargetDatasetNames1}.customer_dimension` tgt
USING (
WITH tmp_scr AS(
SELECT

-- Combining columns which are required to make a key for the customer_dimension

  cm.customer_number as customer_key,
  cm.customer_number,
  cm.address,
  cm.title,
  cm.central_order_block,
  cm.express_station,
  cm.train_station,
  cm.international_location_number_1,
  cm.international_location_number_2,
  cm.authorization_group,
  cm.industry_key,
  cm.check_digit,
  cm.data_line,
  cm.created_on,
  cm.created_by,
  cm.unloading_points,
  cm.central_billing_block,
  cm.fiscal_address,
  cm.working_times,
  cm.alternative_payer,
  cm.group_key,
  cm.customer_account_group,
  cm.customer_classification,
  cm.country_key,
  cm.vendors_account_number,
  cm.central_delivery_block,
  cm.location_code,
  cm.central_deletion_flag,
  cm.name_1,
  cm.name_2,
  cm.name_3,
  cm.name_4,
  cm.nielsen_indicator,
  cm.city,
  cm.district,
  cm.post_office_box,
  cm.po_box_postal_code,
  cm.postal_code,
  cm.region,
  cm.county_code,
  cm.city_code,
  cm.regional_market,
  cm.sort_field,
  cm.central_posting_block,
  cm.language_key,
  cm.tax_number_1,
  cm.tax_number_2,
  cm.sales_equalization_tax,
  cm.liable_for_vat,
  cm.street_and_house_number,
  cm.telebox_number,
  cm.telephone_1,
  cm.telephone_2,
  cm.fax_number,
  cm.teletex_number,
  cm.telex_number,
  cm.transportation_zone,
  cm.one_time_account,
  cm.payee_in_document,
  cm.trading_partner,
  cm.vat_registration_number,
  cm.competitors_indicator,
  cm.sales_partners_indicator,
  cm.sales_prospect_indicator,
  cm.customer_type_4,
  cm.default_sold_to_party,
  cm.consumer_indicator,
  cm.legal_status,
  cm.industry_code_1,
  cm.industry_code_2,
  cm.industry_code_3,
  cm.industry_code_4,
  cm.industry_code_5,
  cm.initial_contact,
  cm.annual_sales_2,
  cm.sales_year,
  cm.currency_sales_figure,
  cm.year_number_employees,
  cm.year_number_given,
  cm.attribute_1,
  cm.attribute_2,
  cm.attribute_3,
  cm.attribute_4,
  cm.attribute_5,
  cm.attribute_6,
  cm.attribute_7,
  cm.attribute_8,
  cm.attribute_9,
  cm.attribute_10,
  cm.natural_person,
  cm.annual_sales_1,
  cm.tax_jurisdiction,
  cm.matchcode_name_1,
  cm.matchcode_name_2,
  cm.matcgcode_city,
  cm.fiscal_year_variant,
  cm.usage_indicator,
  cm.by_customer,
  cm.after_delivery,
  cm.reference_account_group,
  cm.post_office_box_city,
  cm.plant,
  cm.date_medium_exchange_indicator,
  cm.instruction_key,
  cm.data_transfer_status,
  cm.hierarchy_assignment,
  cm.payment_block,
  cm.labeking_customer_group,
  cm.non_military_use,
  cm.military_use,
  cm.condition_group_1,
  cm.condition_group_2,
  cm.condition_group_3,
  cm.condition_group_4,
  cm.condition_group_5,
  cm.alternative_payer_account,
  cm.tax_type,
  cm.tax_number_type,
  cm.tax_number_3,
  cm.tax_number_4,
  cm.icms_exempt,
  cm.ipi_exempt,
  cm.subtrib_group,
  cm.customer_cfop_category,
  cm.icms_law,
  cm.ipi_law,
  cm.biochemical_warfare,
  cm.nuclear_nonprolif,
  cm.national_security,
  cm.missile_technology,
  cm.central_sales_block,
  cm.uniform_resource_locator,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

  cm.dw_last_update_date as input_last_update_date,
  cm.dw_active_indicator,
  cm.dw_last_update_date
FROM
  `${ProjectID}.${StagingDatasetName}.customer_master` cm
WHERE cm.dw_active_indicator = 'Y'

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

  AND cm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'customer_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),
  tmp_cust AS (SELECT ts.*,

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.customer_key as customer_join_key,t.*
  from tmp_cust t
UNION ALL 

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as customer_join_key,t.*
  from tmp_cust t
     INNER JOIN `${ProjectID}.${TargetDatasetNames1}.customer_dimension` cd 
  ON cd.customer_key = t.customer_key 
 AND cd.finalmd5key <> t.finalmd5key
WHERE cd.dw_active_indicator = 'Y') scr 

-- Join the source  and the taget table using the join keys.

on tgt.customer_key = scr.customer_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
               ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED 
THEN INSERT (customer_uuid
,customer_key
,customer_number
,address
,title
,central_order_block
,express_station
,train_station
,international_location_number_1
,international_location_number_2
,authorization_group
,industry_key
,check_digit
,data_line
,created_on
,created_by
,unloading_points
,central_billing_block
,fiscal_address
,working_times
,alternative_payer
,group_key
,customer_account_group
,customer_classification
,country_key
,vendors_account_number
,central_delivery_block
,location_code
,central_deletion_flag
,name_1
,name_2
,name_3
,name_4
,nielsen_indicator
,city
,district
,post_office_box
,po_box_postal_code
,postal_code
,region
,county_code
,city_code
,regional_market
,sort_field
,central_posting_block
,language_key
,tax_number_1
,tax_number_2
,sales_equalization_tax
,liable_for_vat
,street_and_house_number
,telebox_number
,telephone_1
,telephone_2
,fax_number
,teletex_number
,telex_number
,transportation_zone
,one_time_account
,payee_in_document
,trading_partner
,vat_registration_number
,competitors_indicator
,sales_partners_indicator
,sales_prospect_indicator
,customer_type_4
,default_sold_to_party
,consumer_indicator
,legal_status
,industry_code_1
,industry_code_2
,industry_code_3
,industry_code_4
,industry_code_5
,initial_contact
,annual_sales_2
,sales_year
,currency_sales_figure
,year_number_employees
,year_number_given
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
,tax_jurisdiction
,matchcode_name_1
,matchcode_name_2
,matcgcode_city
,fiscal_year_variant
,usage_indicator
,by_customer
,after_delivery
,reference_account_group
,post_office_box_city
,plant
,date_medium_exchange_indicator
,instruction_key
,data_transfer_status
,hierarchy_assignment
,payment_block
,labeking_customer_group
,non_military_use
,military_use
,condition_group_1
,condition_group_2
,condition_group_3
,condition_group_4
,condition_group_5
,alternative_payer_account
,tax_type
,tax_number_type
,tax_number_3
,tax_number_4
,icms_exempt
,ipi_exempt
,subtrib_group
,customer_cfop_category
,icms_law
,ipi_law
,biochemical_warfare
,nuclear_nonprolif
,national_security
,missile_technology
,central_sales_block
,uniform_resource_locator
,input_last_update_date
,finalmd5key
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date)
VALUES 
(

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

 TO_HEX(MD5(CONCAT(scr.customer_key,scr.finalmd5key)))
,scr.customer_key
,scr.customer_number
,scr.address
,scr.title
,scr.central_order_block
,scr.express_station
,scr.train_station
,scr.international_location_number_1
,scr.international_location_number_2
,scr.authorization_group
,scr.industry_key
,scr.check_digit
,scr.data_line
,scr.created_on
,scr.created_by
,scr.unloading_points
,scr.central_billing_block
,scr.fiscal_address
,scr.working_times
,scr.alternative_payer
,scr.group_key
,scr.customer_account_group
,scr.customer_classification
,scr.country_key
,scr.vendors_account_number
,scr.central_delivery_block
,scr.location_code
,scr.central_deletion_flag
,scr.name_1
,scr.name_2
,scr.name_3
,scr.name_4
,scr.nielsen_indicator
,scr.city
,scr.district
,scr.post_office_box
,scr.po_box_postal_code
,scr.postal_code
,scr.region
,scr.county_code
,scr.city_code
,scr.regional_market
,scr.sort_field
,scr.central_posting_block
,scr.language_key
,scr.tax_number_1
,scr.tax_number_2
,scr.sales_equalization_tax
,scr.liable_for_vat
,scr.street_and_house_number
,scr.telebox_number
,scr.telephone_1
,scr.telephone_2
,scr.fax_number
,scr.teletex_number
,scr.telex_number
,scr.transportation_zone
,scr.one_time_account
,scr.payee_in_document
,scr.trading_partner
,scr.vat_registration_number
,scr.competitors_indicator
,scr.sales_partners_indicator
,scr.sales_prospect_indicator
,scr.customer_type_4
,scr.default_sold_to_party
,scr.consumer_indicator
,scr.legal_status
,scr.industry_code_1
,scr.industry_code_2
,scr.industry_code_3
,scr.industry_code_4
,scr.industry_code_5
,scr.initial_contact
,scr.annual_sales_2
,scr.sales_year
,scr.currency_sales_figure
,scr.year_number_employees
,scr.year_number_given
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
,scr.tax_jurisdiction
,scr.matchcode_name_1
,scr.matchcode_name_2
,scr.matcgcode_city
,scr.fiscal_year_variant
,scr.usage_indicator
,scr.by_customer
,scr.after_delivery
,scr.reference_account_group
,scr.post_office_box_city
,scr.plant
,scr.date_medium_exchange_indicator
,scr.instruction_key
,scr.data_transfer_status
,scr.hierarchy_assignment
,scr.payment_block
,scr.labeking_customer_group
,scr.non_military_use
,scr.military_use
,scr.condition_group_1
,scr.condition_group_2
,scr.condition_group_3
,scr.condition_group_4
,scr.condition_group_5
,scr.alternative_payer_account
,scr.tax_type
,scr.tax_number_type
,scr.tax_number_3
,scr.tax_number_4
,scr.icms_exempt
,scr.ipi_exempt
,scr.subtrib_group
,scr.customer_cfop_category
,scr.icms_law
,scr.ipi_law
,scr.biochemical_warfare
,scr.nuclear_nonprolif
,scr.national_security
,scr.missile_technology
,scr.central_sales_block
,scr.uniform_resource_locator
,scr.input_last_update_date
,scr.finalmd5key
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 00, 00, 00)
,CURRENT_DATETIME()
);

MERGE INTO
`${ProjectID}.${StagingDatasetName}.layer1_audit_table` tgt
USING ( SELECT 

-- mention table name for which we are updating the record.

         'customer_dimension' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'customer_dimension') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'customer_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'0CUSTOMER_ATTR,0BP_DEF_ADDRESS_ATTR' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames1}.customer_dimension`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.customer_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'customer_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.customer_dimension` where dw_active_indicator = 'Y')))  AS inserted_record_count
-- last update/insert date

        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 

-- Record exists update the information 

UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.extractors_names = scr.extractors_names
WHEN NOT MATCHED THEN

-- No record then insert the new entry into the audit table

INSERT (table_name,
        full_delta_indicator,
        extractors_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.extractors_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);