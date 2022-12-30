create or replace view `{$productid}.{$slt_l2_canonical}.legal_entity_vw`
as
select pd.plant_uuid as uuid
,pd.plant_key AS legal_enity_uid
,'PLANT' AS legal_entity_type
,pd.plant AS legal_entity_id
,vad.company_code AS organization_level
,pd.name as legal_entity_name
,pd.name_2 as legal_entity_name2
,pd.street_house as house_number
,pd.street_house as street
,pd.city as city
,pd.po_box as postal_code
,CAST(NULL AS STRING) as district
,pd.Region as region
,pd.country as country
,CAST(NULL AS FLOAT64) as geo_lattitude
,CAST(NULL AS FLOAT64) as geo_longitude
,pd.factory_calend as time_zone
,CAST(NULL AS STRING) as legal_entity_classification
,CAST(NULL AS STRING) as legal_entity_group
,CAST(NULL AS STRING) as reconcillation_account
,CAST(NULL AS STRING) as payment_term
,CAST(NULL AS STRING) as legal_entity_role
,CAST(NULL AS DATE) as valid_from_date
,CAST(NULL AS DATE) as valid_to_date
,CAST(NULL AS STRING) as active
,CAST(NULL AS DATE) as creation_date
,CAST(NULL AS DATE) as change_date
  from `{$productid}.{$slt_l1_dimension}.plant_dimension` pd
       left join `{$productid}.{$slt_l1_dimension}.valuation_area_dimension` vad
    on CONCAT(pd.client,'-',pd.valuation_area) = vad.valuation_area_key
   and vad.dw_active_indicator = 'Y'
where pd.dw_active_indicator = 'Y'
union all 
select customer_sales_org_uuid as uuid
,customer_sales_org_key AS legal_enity_uid
,'CUSTOMER' AS legal_entity_type
,customer AS legal_entity_id
,(sales_org || '-' || distr_channel || '-' || division) AS organization_level
,name as legal_entity_name
,name_2 as legal_entity_name2
,street as house_number
,street as street
,city as city
,postal_code as postal_code
,district as district
,region as region
,country as country
,CAST(NULL AS FLOAT64) as geo_lattitude
,CAST(NULL AS FLOAT64) as geo_longitude
,CAST(NULL AS STRING) as time_zone
,CAST(NULL AS STRING) as legal_entity_classification
,CAST(NULL AS STRING) as legal_entity_group
,CAST(NULL AS STRING) as reconcillation_account
,CAST(NULL AS STRING) as payment_term
,CAST(NULL AS STRING) as legal_entity_role
,CAST(NULL AS DATE) as valid_from_date
,CAST(NULL AS DATE) as valid_to_date
,CAST(NULL AS STRING) as active
,created_on as creation_date
,CAST(NULL AS DATE) as change_date
  from `{$productid}.{$slt_l1_dimension}.customer_sales_org_dimension`
where dw_active_indicator = 'Y'
UNION ALL
select company_code_uuid as uuid
,company_code_key AS legal_enity_uid
,'COMPANY' AS legal_entity_type
,company_code AS legal_entity_id
,CAST(NULL AS STRING) AS organization_level
,name_1 as legal_entity_name
,name_2 as legal_entity_name2
,house_number as house_number
,street as street
,city as city
,po_box as postal_code
,CAST(NULL AS STRING) as district
,CAST(NULL AS STRING) as region
,country as country
,CAST(NULL AS FLOAT64) as geo_lattitude
,CAST(NULL AS FLOAT64) as geo_longitude
,CAST(NULL AS STRING) as time_zone
,CAST(NULL AS STRING) as legal_entity_classification
,CAST(NULL AS STRING) as legal_entity_group
,CAST(NULL AS STRING) as reconcillation_account
,CAST(NULL AS STRING) as payment_term
,CAST(NULL AS STRING) as legal_entity_role
,CAST(NULL AS DATE) as valid_from_date
,CAST(NULL AS DATE) as valid_to_date
,CAST(NULL AS STRING) as active
,CAST(NULL AS DATE) as creation_date
,CAST(NULL AS DATE) as change_date
  from `{$productid}.{$slt_l1_dimension}.company_code_dimension`
where dw_active_indicator = 'Y'
  and language_key = 'E'
UNION ALL 
select supplier_company_code_uuid as uuid
,supplier_company_code_key AS legal_enity_uid
,'SUPPLIER' AS legal_entity_type
,vendor AS legal_entity_id
,company_code AS organization_level
,name_1 as legal_entity_name
,name_2 as legal_entity_name2
,street as house_number
,street as street
,city as city
,postal_code as postal_code
,district as district
,region as region
,country as country
,CAST(NULL AS FLOAT64) as geo_lattitude
,CAST(NULL AS FLOAT64) as geo_longitude
,CAST(NULL AS STRING) as time_zone
,CAST(NULL AS STRING) as legal_entity_classification
,CAST(NULL AS STRING) as legal_entity_group
,CAST(NULL AS STRING) as reconcillation_account
,CAST(NULL AS STRING) as payment_term
,CAST(NULL AS STRING) as legal_entity_role
,CAST(NULL AS DATE) as valid_from_date
,CAST(NULL AS DATE) as valid_to_date
,CAST(NULL AS STRING) as active
,created_on as creation_date
,CAST(NULL AS DATE) as change_date
  from `{$productid}.{$slt_l1_dimension}.supplier_code_dimension`
where dw_active_indicator = 'Y';