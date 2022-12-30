
CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.inventory_vw`
AS
SELECT invf.posting_date as inventory_date
,'PRODUCT' || '-' || invf.material_key as product_uid
,'PLANT' || '-' || invf.plant_key as location_uid
,invf.batch_management_indicator AS batch_number
,invf.stock_type AS inventory_type
,invf.plant AS inventory_assignment
,invf.quantity_in_base_unit inventory_quantity
,CAST(NULL AS STRING) as remaining_shelf_life
,CAST(NULL AS STRING) as inventory_block
,CAST(NULL AS DATE) as inv_gr_date
,pd.company_code as inventory_ownership
,invf.valuation_area as valuation_area
FROM `${ProjectID}.${TargetDatasetNames1}.inventory_fact` invf
      LEFT JOIN `${ProjectID}.${TargetDatasetNames2}.plant_dimension` pd 
   ON invf.plant_key = pd.plant_key
where invf.dw_active_indicator = 'Y';


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
  from `${ProjectID}.${TargetDatasetNames2}.plant_dimension`
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
  from `${ProjectID}.${TargetDatasetNames2}.supplier_purchase_org_dimension`
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
  from `${ProjectID}.${TargetDatasetNames2}.customer_sales_org_dimension`
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
  from `${ProjectID}.${TargetDatasetNames2}.company_code_dimension`
where dw_active_indicator = 'Y';


CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.location_vw`
AS
SELECT
customer_uuid AS uuid,
'CUSTOMER' || '-' || customer_key AS location_uid,
'CUSTOMER' AS location_type,
customer_number AS location_id,
name_1 AS location_name,
name_2 AS location_name2,
street_and_house_number as house_number,
street_and_house_number as street,
city,
postal_code,
district,
region,
country_key as country,
CAST(NULL AS FLOAT64) as geo_lattitude,
CAST(NULL AS FLOAT64) as geo_longitude,
CAST(NULL AS STRING) as time_zone,
transportation_zone,
CAST(NULL AS STRING) as shipping_calendar,
CAST(NULL AS STRING) as receiving_calendar,
working_times as working_hour,
language_key,
CAST(NULL AS DATETIME) as valid_from_date,
CAST(NULL AS DATETIME) as valid_to_date,
CAST(NULL AS STRING) as active,
CAST(NULL AS STRING) as company_code,
CAST(NULL AS STRING) as valuation_area,
created_on as creation_date,
CAST(NULL AS DATE) as change_date
FROM `${ProjectID}.${TargetDatasetNames2}.customer_dimension`
where dw_active_indicator = 'Y'
UNION ALL 
SELECT 
supplier_uuid AS UUID,
'SUPPLIER' || '-' || supplier_key AS location_uid,
'SUPPLIER' AS location_type,
vendors_account_number AS location_id,
name_1 AS location_name,
name_2 AS location_name2,
street_and_house_number as house_number,
street_and_house_number as street,
city,
postal_code,
district,
region,
country_key as country,
CAST(NULL AS FLOAT64) as geo_lattitude,
CAST(NULL AS FLOAT64) as geo_longitude,
CAST(NULL AS STRING) as time_zone,
CAST(NULL AS STRING) as transportation_zone,
CAST(NULL AS STRING) as shipping_calendar,
CAST(NULL AS STRING) as receiving_calendar,
factory_calendar as working_hour,
language_key,
CAST(NULL AS DATETIME) as valid_from_date,
CAST(NULL AS DATETIME) as valid_to_date,
CAST(NULL AS STRING) as active,
CAST(NULL AS STRING) as company_code,
CAST(NULL AS STRING) as valuation_area,
created_on as creation_date,
CAST(NULL AS DATE) as change_date
FROM `${ProjectID}.${TargetDatasetNames2}.supplier_dimension`
where dw_active_indicator = 'Y'
UNION ALL 
SELECT 
plant_uuid AS UUID,
'PLANT' || '-' || plant_key AS location_uid,
'PLANT' AS location_type,
plant AS location_id,
name AS location_name,
name_2 AS location_name2,
street_house_number as house_number,
street_house_number as street,
city,
po_box,
city,
region,
country_key as country,
CAST(NULL AS FLOAT64) as geo_lattitude,
CAST(NULL AS FLOAT64) as geo_longitude,
CAST(NULL AS STRING) as time_zone,
CAST(NULL AS STRING) as transportation_zone,
CAST(NULL AS STRING) as shipping_calendar,
CAST(NULL AS STRING) as receiving_calendar,
factory_calendar as working_hour,
language_key,
CAST(NULL AS DATETIME) as valid_from_date,
CAST(NULL AS DATETIME) as valid_to_date,
CAST(NULL AS STRING) as active,
CAST(NULL AS STRING) as company_code,
CAST(NULL AS STRING) as valuation_area,
CAST(NULL AS DATE) as creation_date,
CAST(NULL AS DATE) as change_date
FROM `${ProjectID}.${TargetDatasetNames2}.plant_dimension`
where dw_active_indicator = 'Y';



CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.order_vw`
AS
SELECT sof.sales_order_uuid as uuid
,sof.sales_order_key AS order_uid
,'SALES' as order_Category
,sof.sales_document_type as order_type
,sof.sales_document as order_id
,sof.item_number as item_id
,sof.schedule_line_number as schedule_id
,'PRODUCT' || '-' || sof.material_key as product_uid
,'PLANT' || '-' || sof.plant_key as location_uid
,'CUSTOMER' || '-' || sof.customer_sales_org_key as key_legal_entity_uid
,'CUSTOMER' || '-' || sof.ship_to_party as receiving_location_uid
,'PLANT' || '-' || sof.shipping_point as shipping_location_uid
,CAST(sof.order_quantity AS INT64) as requested_quantity
,CAST(sof.confirmed_quantity AS INT64) as confirmed_quantity
,CAST((sof.order_quantity - sof.delivered_quantity) AS INT64) as open_quantity
,CAST(sof.delivered_quantity AS INT64) as delivery_quantity
,CAST(sof.delivered_quantity AS INT64) as shipping_quantity
,CAST(sof.delivered_quantity AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,sof.sales_unit AS order_uom
,CAST(sof.net_price_sales_quantity AS FLOAT64) as sales_price
,sof.document_currency as sales_price_currency
,CAST(sof.requested_delivery_date AS DATE) AS requested_delivery_date
,CAST(NULL AS DATE) AS confirmed_delivery_date
,CAST(sof.actual_goods_movement_date AS DATE) AS actual_delivery_date
,CAST(sof.actual_goods_movement_date AS DATE) AS goodsissue_date_requested
,CAST(sof.actual_goods_movement_date AS DATE) AS goodsissue_date_confirmed
,CAST(sof.actual_goods_movement_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,sof.company_code as company_code
,pd.valuationion_area as valuation_area
,CAST(sof.created_on AS DATE) as creation_Date
,CAST(sof.changed_on AS DATE) as change_Date
FROM `${ProjectID}.${TargetDatasetNames2}.sales_order_fact` sof
    left join `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd 
on pd.plant_key = sof.plant_key
and pd.dw_active_indicator = 'Y'
where sof.dw_active_indicator = 'Y'
UNION ALL 
SELECT pof.purchase_order_uuid as uuid
,pof.purchase_order_key AS order_uid
,'PURCHASE' as order_category
,pof.purchasing_document_type as order_type
,pof.purchasing_document_number as order_id
,pof.item_number as item_id
,pof.schedule_line as schedule_id
,'PRODUCT' || '-' || pof.material_key as product_uid
,'PLANT' || '-' || pof.plant_key as location_uid
,'SUPPLIER' || '-' || pof.supplier_purchase_org_key as key_legal_entity_uid
,'PLANT' || '-' || pof.plant_key as receiving_location_uid
,'SUPPLIER' || '-' || pof.supplier_key as shipping_location_uid
,CAST(pof.order_quantity as INT64) as requested_quantity
,CAST(pof.order_quantity as INT64) as confirmed_quantity
,CAST(pof.order_quantity - pof.current_goods_receipt_quantity as INT64) as open_quantity
,CAST(pof.current_goods_receipt_quantity AS INT64) as delivery_quantity
,CAST(pof.current_goods_receipt_quantity AS INT64) as shipping_quantity
,CAST(pof.current_goods_receipt_quantity AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(pof.net_order_price AS FLOAT64) as sales_price
,CAST(pof.local_currency AS STRING) as sales_price_currency
,CAST(pof.delivery_date AS DATE) AS requested_delivery_date
,CAST(pof.delivery_date AS DATE) AS confirmed_delivery_date
,CAST(pof.goods_receipts_date AS DATE) AS actual_delivery_date
,CAST(pof.goods_receipts_date AS DATE) AS goodsissue_date_requested
,CAST(pof.goods_receipts_date AS DATE) AS goodsissue_date_confirmed
,CAST(pof.goods_receipts_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,pd.company_code as company_code
,pd.valuationion_area as valuation_area
,CAST(NULL AS DATE) as creation_Date
,CAST(NULL AS DATE) as change_Date
FROM `${ProjectID}.${TargetDatasetNames2}.purchase_order_fact` pof
    left join `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd 
on pd.plant_key = pof.plant_key
and pd.dw_active_indicator = 'Y'
where pof.dw_active_indicator = 'Y'
UNION ALL 
SELECT df.delivery_uuid as uuid
,df.delivery_key AS order_uid
,'DELIVERY' as order_category
,df.delivery_type as order_type
,df.sales_document as order_id
,df.item_number as item_id
,CAST(NULL AS STRING) as schedule_id
,'PRODUCT' || '-' || df.material_key as product_uid
,'PLANT' || '-' || df.plant_key as location_uid
,'CUSTOMER' || '-' || df.customer_sales_org_key as key_legal_entity_uid
,'CUSTOMER' || '-' || df.customer_key as receiving_location_uid
,'PLANT' || '-' || df.shipping_point as shipping_location_uid
,CAST(df.delivery_quantity as INT64) as requested_quantity
,CAST(df.delivery_quantity - df.actual_delivery_quantity as INT64) as confirmed_quantity
,CAST(df.actual_delivery_quantity as INT64) as open_quantity
,CAST(df.actual_delivery_quantity AS INT64) as delivery_quantity
,CAST(df.actual_delivery_quantity AS INT64) as shipping_quantity
,CAST(df.actual_delivery_quantity AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(NULL AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(df.delivery_date AS DATE) AS requested_delivery_date
,CAST(df.delivery_date AS DATE) AS confirmed_delivery_date
,CAST(df.actual_goods_movement_date AS DATE) AS actual_delivery_date
,CAST(df.actual_goods_movement_date AS DATE) AS goodsissue_date_requested
,CAST(df.actual_goods_movement_date AS DATE) AS goodsissue_date_confirmed
,CAST(df.actual_goods_movement_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,pd.company_code as company_code
,pd.valuationion_area as valuation_area
,CAST(df.created_on AS DATE) as creation_Date
,CAST(df.changed_on AS DATE) as change_Date
FROM `${ProjectID}.${TargetDatasetNames2}.delivery_fact` df
    left join `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd 
on pd.plant_key = df.plant_key
and pd.dw_active_indicator = 'Y'
where df.dw_active_indicator = 'Y'
UNION ALL 
SELECT pof.production_order_uuid as uuid
,pof.production_order_key AS order_uid
,'PRODUCTION' as order_category
,pof.order_type as order_type
,pof.order_number as order_id
,pof.order_item_number as item_id
,CAST(NULL AS STRING) as schedule_id
,'PRODUCT' || '-' || pof.material_key as product_uid
,'PLANT' || '-' || pof.plant_key as location_uid
,CAST(NULL AS STRING) as key_legal_entity_uid
,'PLANT' || '-' || pof.plant_key as receiving_location_uid
,'PLANT' || '-' || pof.plant_key as shipping_location_uid
,CAST(pof.order_item_quantity as INT64) as requested_quantity
,CAST(pof.order_item_quantity as INT64) as confirmed_quantity
,CAST(pof.order_item_quantity - pof.quantity_of_goods_received as INT64) as open_quantity
,CAST(pof.order_item_quantity AS INT64) as delivery_quantity
,CAST(pof.order_item_quantity AS INT64) as shipping_quantity
,CAST(pof.quantity_of_goods_received AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(NULL AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(pof.basic_finish_date AS DATE) AS requested_delivery_date
,CAST(pof.basic_finish_date AS DATE) AS confirmed_delivery_date
,CAST(pof.actual_finish_date AS DATE) AS actual_delivery_date
,CAST(pof.actual_finish_date AS DATE) AS goodsissue_date_requested
,CAST(pof.actual_finish_date AS DATE) AS goodsissue_date_confirmed
,CAST(pof.actual_finish_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,pd.company_code as company_code
,pd.valuationion_area as valuation_area
,CAST(NULL AS DATE) as creation_Date
,CAST(NULL AS DATE) as change_Date
FROM `${ProjectID}.${TargetDatasetNames2}.production_order_fact` pof
left join `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd 
on pd.plant_key = pof.plant_key
and pd.dw_active_indicator = 'Y'
where pof.dw_active_indicator = 'Y';


CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.product_vw`
AS
SELECT material_uuid as uuid
      ,'PRODUCT' || '-' || material_key as product_uid
      ,material_number as product_id
      ,plant as organization_level
      ,material_type as product_type
      ,material_description as product_description
      ,material_group as product_group
      ,product_hierarchy
      ,batch_management_indicator as batch_managed 
      ,procurement_type as procurement_type
      ,base_unit_of_measure as base_uom 
      ,material_category as product_category
      ,temperature_conditions_indicator as temperature_condition 
      ,CAST(product_cost AS FLOAT64) as product_cost 
      ,currency_key as product_cost_currency
      ,CAST(NULL AS STRING) as shelf_life 
      ,CAST(NULL AS STRING) as product_classification
      ,CAST(NULL AS STRING) as safty_stock
      ,volume
      ,gross_weight
      ,CAST(NULL AS DATE) as valid_from_date
      ,CAST(NULL AS DATE) as valid_to_date
      ,client_level_deletion_flag as active
      ,created_on as creation_date
      ,last_change as change_date
      ,CAST(NULL AS NUMERIC) as lead_time
      ,CAST(NULL AS STRING) as product_hierarchy_name
      ,CAST(NULL AS STRING) as product_hierarchy_level
      ,CAST(NULL AS STRING) as product_hierarchy_level_name
      ,CAST(NULL AS STRING) as product_hierarchy_level_1
      ,CAST(NULL AS STRING) as product_hierarchy_level_1_name
      ,CAST(NULL AS STRING) as product_hierarchy_level_2
      ,CAST(NULL AS STRING) as product_hierarchy_level_2_name
  FROM `${ProjectID}.${TargetDatasetNames2}.material_dimension`
WHERE dw_active_indicator = 'Y';

