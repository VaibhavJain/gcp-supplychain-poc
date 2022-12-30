CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.legal_entity_vw`
AS
select plant_uuid as uuid
,'PLANT' || '-' || plant_key AS legal_enity_uid
,'PLANT' AS legal_entity_type
,plant AS legal_entity_id
,company_code AS organization_level
,name as legal_entity_name
,name_2 as legal_entity_name2
,street_house_number as house_number
,street_house_number as street
,city as city
,po_box as postal_code
,CAST(NULL AS STRING) as district
,Region as region
,country_key as country
,CAST(NULL AS FLOAT64) as geo_lattitude
,CAST(NULL AS FLOAT64) as geo_longitude
,factory_calendar as time_zone
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
  from `${ProjectID}.${TargetDatasetNames1}.plant_dimension`
where dw_active_indicator = 'Y'
UNION ALL 
select supplier_purchase_org_uuid as uuid
,'SUPPLIER' || '-' || supplier_purchase_org_key AS legal_enity_uid
,'SUPPLIER' AS legal_entity_type
,vendors_account_number AS legal_entity_id
,purchasing_organization AS organization_level
,name_1 as legal_entity_name
,name_2 as legal_entity_name2
,street_and_house_number as house_number
,street_and_house_number as street
,city as city
,postal_code as postal_code
,district as district
,region as region
,country_key as country
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
  from `${ProjectID}.${TargetDatasetNames1}.supplier_purchase_org_dimension`
where dw_active_indicator = 'Y'
UNION ALL
select customer_sales_org_uuid as uuid
,'CUSTOMER' || '-' || customer_sales_org_key AS legal_enity_uid
,'CUSTOMER' AS legal_entity_type
,customer_number AS legal_entity_id
,(sales_organization || '-' || distribution_channel || '-' || division) AS organization_level
,name_1 as legal_entity_name
,name_2 as legal_entity_name2
,street_and_house_number as house_number
,street_and_house_number as street
,city as city
,postal_code as postal_code
,district as district
,region as region
,country_key as country
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
  from `${ProjectID}.${TargetDatasetNames1}.customer_sales_org_dimension`
where dw_active_indicator = 'Y'
UNION ALL
select company_uuid as uuid
,'COMPANY' || '-' || company_key AS legal_enity_uid
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
,country_key as country
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
  from `${ProjectID}.${TargetDatasetNames1}.company_code_dimension`
where dw_active_indicator = 'Y';