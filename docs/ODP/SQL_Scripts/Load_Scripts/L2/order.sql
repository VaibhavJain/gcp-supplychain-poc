CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.order_vw`
AS
SELECT sof.sales_order_uuid as uuid
,sof.sales_order_key AS order_uid
,'SALES' as order_category
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
,CAST(NULL AS STRING) AS order_uom
,CAST(sof.net_price_sales_quantity AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(sof.requested_delivery_date AS DATE) AS requested_delivery_date
,CAST(NULL AS DATE) AS confirmed_delivery_date
,CAST(sof.actual_goods_movement_date AS DATE) AS actual_delivery_date
,CAST(NULL AS DATE) AS goodsissue_date_requested
,CAST(NULL AS DATE) AS goodsissue_date_confirmed
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
,'PURCHASE' as order_Category
,pof.purchasing_document_type as order_type
,pof.purchasing_document_number as order_id
,pof.item_number as item_id
,CAST(NULL AS STRING) as schedule_id
,'PRODUCT' || '-' || pof.material_key as product_uid
,'PLANT' || '-' || pof.plant_key as location_uid
,'SUPPLIER' || '-' || pof.supplier_purchase_org_key as key_legal_entity_uid
,'PLANT' || '-' || pof.plant_key as receiving_location_uid
,'SUPPLIER' || '-' || pof.supplier_key as shipping_location_uid
,CAST(pof.order_quantity as INT64) as requested_quantity
,CAST(pof.order_quantity as INT64) as confirmed_quantity
,CAST(pof.order_quantity - pof.current_goods_receipt_quantity as INT64) as open_quantity
,CAST(NULL AS INT64) as delivery_quantity
,CAST(NULL AS INT64) as shipping_quantity
,CAST(pof.current_goods_receipt_quantity AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(NULL AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(pof.purchasing_document_date AS DATE) AS requested_delivery_date
,CAST(pof.purchasing_document_date AS DATE) AS confirmed_delivery_date
,CAST(NULL AS DATE) AS actual_delivery_date
,CAST(NULL AS DATE) AS goodsissue_date_requested
,CAST(NULL AS DATE) AS goodsissue_date_confirmed
,CAST(NULL AS DATE) AS goodsissue_date_actual
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
,'CUSTOMER' || '-' || df.sold_to_party as key_legal_entity_uid
,'CUSTOMER' || '-' || df.customer_key as receiving_location_uid
,'PLANT' || '-' || df.shipping_point as shipping_location_uid
,CAST(NULL as INT64) as requested_quantity
,CAST(NULL as INT64) as confirmed_quantity
,CAST(df.actual_delivery_quantity as INT64) as open_quantity
,CAST(NULL AS INT64) as delivery_quantity
,CAST(NULL AS INT64) as shipping_quantity
,CAST(NULL AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(NULL AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(NULL AS DATE) AS requested_delivery_date
,CAST(NULL AS DATE) AS confirmed_delivery_date
,CAST(NULL AS DATE) AS actual_delivery_date
,CAST(NULL AS DATE) AS goodsissue_date_requested
,CAST(NULL AS DATE) AS goodsissue_date_confirmed
,CAST(NULL AS DATE) AS goodsissue_date_actual
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
where df.dw_active_indicator = 'Y';