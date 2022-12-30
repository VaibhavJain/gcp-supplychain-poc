create or replace view `{$productid}.{$slt_l2_canonical}.order_vw`
as
SELECT sof.sales_order_uuid as uuid
,sof.sales_order_key AS order_uid
,'SALES' as order_Category
,sof.sales_doc_type as order_type
,sof.sales_document as order_id
,sof.item_number as item_id
,sof.schedule_line as schedule_id
,sof.material_key as product_uid
,sof.plant_key as location_uid
,sof.customer_sales_org_key as key_legal_entity_uid
,sof.customer_key as receiving_location_uid
,sof.shipping_point_key as shipping_location_uid
,CAST(sof.order_quantity AS INT64) as requested_quantity
,CAST(sof.cmtd_delivery_qty AS INT64) as confirmed_quantity
,CAST((sof.order_quantity - sof.cmtd_delivery_qty) AS INT64) as open_quantity
,CAST(sof.cmtd_delivery_qty AS INT64) as delivery_quantity
,CAST(sof.cmtd_delivery_qty AS INT64) as shipping_quantity
,CAST(sof.cmtd_delivery_qty AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,sof.sales_unit AS order_uom
,CAST(sof.net_price AS FLOAT64) as sales_price
,sof.doc_currency_vbap as sales_price_currency
,CAST(sof.reqd_deliv_date AS DATE) AS requested_delivery_date
,CAST(sof.cmtd_deliv_crtn_date AS DATE) AS confirmed_delivery_date
,CAST(sof.goods_issue AS DATE) AS actual_delivery_date
,CAST(sof.cmtd_deliv_crtn_date AS DATE) AS goodsissue_date_requested
,CAST(sof.cmtd_deliv_crtn_date AS DATE) AS goodsissue_date_confirmed
,CAST(sof.cmtd_deliv_crtn_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,vad.company_code as company_code
,vad.valuation_area as valuation_area
,CAST(sof.created_on AS DATE) as creation_Date
,CAST(sof.changed_on AS DATE) as change_Date
FROM `{$productid}.{$slt_l1_facts}.sales_order_fact` sof
    left join `{$productid}.{$slt_l1_dimension}.valuation_area_dimension` vad
on vad.valuation_area_key = CONCAT(sof.client,'-',sof.mrp_area) 
and vad.dw_active_indicator = 'Y'
where sof.dw_active_indicator = 'Y'
UNION ALL
SELECT pof.purchase_order_uuid as uuid
,pof.purchase_order_key AS order_uid
,'PURCHASE' as order_category
,pof.document_type as order_type
,pof.purchasing_doc as order_id
,pof.item as item_id
,pof.schedule_line as schedule_id
,pof.material_key as product_uid
,pof.plant_key as location_uid
,pof.supplier_company_code_key as key_legal_entity_uid
,pof.plant_key as receiving_location_uid
,pof.supplier_key as shipping_location_uid
,CAST(pof.po_quantity as INT64) as requested_quantity
,CAST(pof.po_quantity as INT64) as confirmed_quantity
,CAST(pof.po_quantity - pof.delivered as INT64) as open_quantity
,CAST(pof.delivered AS INT64) as delivery_quantity
,CAST(pof.scheduled_qty AS INT64) as shipping_quantity
,CAST(pof.delivered AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(pof.net_price AS FLOAT64) as sales_price
,CAST(pof.local_currency AS STRING) as sales_price_currency
,CAST(pof.delivery_date AS DATE) AS requested_delivery_date
,CAST(pof.delivery_date AS DATE) AS confirmed_delivery_date
,CAST(pof.delivery_date AS DATE) AS actual_delivery_date
,CAST(pof.delivery_date AS DATE) AS goodsissue_date_requested
,CAST(pof.delivery_date AS DATE) AS goodsissue_date_confirmed
,CAST(pof.delivery_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,vad.company_code as company_code
,vad.valuation_area as valuation_area
,CAST(pof.created_on AS DATE) as creation_Date
,CAST(pof.changed_on AS DATE) as change_Date
FROM `{$productid}.{$slt_l1_facts}.purchase_order_fact` pof
    left join `{$productid}.{$slt_l1_dimension}.valuation_area_dimension` vad
on vad.valuation_area_key = CONCAT(pof.client,'-',pof.mrp_area) 
and vad.dw_active_indicator = 'Y'
where pof.dw_active_indicator = 'Y'
UNION ALL
SELECT df.delivery_uuid as uuid
,df.delivery_key AS order_uid
,'DELIVERY' as order_category
,df.delivery_type as order_type
,df.delivery as order_id
,df.item as item_id
,CAST(NULL AS STRING) as schedule_id
,df.material_key as product_uid
,df.plant_key as location_uid
,df.customer_sales_org_key as key_legal_entity_uid
,df.customer_key as receiving_location_uid
,df.shipping_point_key as shipping_location_uid
,CAST(df.delivery_qty as INT64) as requested_quantity
,CAST(df.delivery_qty - df.qty_stckp_unt as INT64) as confirmed_quantity
,CAST(df.qty_stckp_unt as INT64) as open_quantity
,CAST(df.qty_stckp_unt AS INT64) as delivery_quantity
,CAST(df.qty_stckp_unt AS INT64) as shipping_quantity
,CAST(df.qty_stckp_unt AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(NULL AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(df.delivery_date AS DATE) AS requested_delivery_date
,CAST(df.delivery_date AS DATE) AS confirmed_delivery_date
,CAST(df.actual_gi_date AS DATE) AS actual_delivery_date
,CAST(df.actual_gi_date AS DATE) AS goodsissue_date_requested
,CAST(df.actual_gi_date AS DATE) AS goodsissue_date_confirmed
,CAST(df.actual_gi_date AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,vad.company_code as company_code
,vad.valuation_area as valuation_area
,CAST(df.created_on AS DATE) as creation_Date
,CAST(df.changed_on AS DATE) as change_Date
FROM `{$productid}.{$slt_l1_facts}.delivery_fact` df
    left join `{$productid}.{$slt_l1_dimension}.valuation_area_dimension` vad
on vad.valuation_area_key = CONCAT(df.client,'-',df.mrp_area) 
and vad.dw_active_indicator = 'Y'
where df.dw_active_indicator = 'Y'
UNION ALL
SELECT pof.production_order_uuid as uuid
,pof.production_order_key AS order_uid
,'PRODUCTION' as order_category
,pof.order_type as order_type
,pof.order_number as order_id
,pof.item as item_id
,CAST(NULL AS STRING) as schedule_id
,pof.material_key as product_uid
,pof.plant_key as location_uid
,CAST(NULL AS STRING) as key_legal_entity_uid
,pof.plant_key as receiving_location_uid
,pof.plant_key as shipping_location_uid
,CAST(pof.order_quantity as INT64) as requested_quantity
,CAST(pof.order_quantity as INT64) as confirmed_quantity
,CAST(pof.order_quantity - pof.gr_quantity as INT64) as open_quantity
,CAST(pof.target_quantity AS INT64) as delivery_quantity
,CAST(pof.target_quantity AS INT64) as shipping_quantity
,CAST(pof.gr_quantity AS INT64) as received_quantity
,CAST(NULL AS INT64) as rejected_quantity
,CAST(NULL AS STRING) AS rejection_code
,CAST(NULL AS STRING) AS order_uom
,CAST(NULL AS FLOAT64) as sales_price
,CAST(NULL AS STRING) as sales_price_currency
,CAST(pof.basic_fin_date AS DATE) AS requested_delivery_date
,CAST(pof.basic_fin_date AS DATE) AS confirmed_delivery_date
,CAST(pof.actual_release AS DATE) AS actual_delivery_date
,CAST(pof.actual_release AS DATE) AS goodsissue_date_requested
,CAST(pof.actual_release AS DATE) AS goodsissue_date_confirmed
,CAST(pof.actual_release AS DATE) AS goodsissue_date_actual
,CAST(NULL AS STRING) as status
,CAST(NULL AS STRING) as order_block
,CAST(NULL AS STRING) as preceding_document
,CAST(NULL AS STRING) as successor_document
,CAST(NULL AS STRING) as mode_of_transport
,CAST(NULL AS STRING) as route_id
,CAST(NULL AS STRING) as asset_id
,CAST(NULL AS STRING) as active
,vad.company_code as company_code
,vad.valuation_area as valuation_area
,CAST(pof.created_on AS DATE) as creation_Date
,CAST(pof.changed_on AS DATE) as change_Date
FROM `{$productid}.{$slt_l1_facts}.production_order_fact` pof
    left join `{$productid}.{$slt_l1_dimension}.valuation_area_dimension` vad
on vad.valuation_area_key = CONCAT(pof.client,'-',pof.mrp_area) 
and vad.dw_active_indicator = 'Y'
where pof.dw_active_indicator = 'Y';