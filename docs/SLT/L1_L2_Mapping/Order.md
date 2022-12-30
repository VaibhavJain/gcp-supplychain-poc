# L2 Order Table

## L1 to L2 field mapping.



| column_name | data_type | description | sales_order_fact | purchase_order_fact | delivery_fact | production_order_fact |
|---|---|---|---|---|---|---|
| uuid | STRING | UUID | sales_order_uuid | purchase_order_uuid | delivery_uuid | production_order_uuid |
| order_uid | STRING | Order Unique Identifier | sales_order_key | purchase_order_key | delivery_key | production_order_key |
| order_Category | STRING | Order Category denotes a specific category of order (Sales Order, Purchase Order, Production Order) | 'SALES' | 'PURCHASE' | DELIVERY' | PRODUCTION' |
| order_type | STRING | Rush Order, ECOMM, Retail | sales_doc_type | document_type | delivery_type | order_type |
| order_id | STRING | Unique Identifier for a specific order category | sales_document | purchasing_doc | delivery | order_number |
| item_id | STRING | Item number | item_number | item | item | item |
| schedule_id | STRING | Schedule Line number | schedule_line | schedule_line | NULL |  |
| product_uid | STRING | Product | material_key | material_key | material_key | material_key |
| location_uid | STRING | Location | plant_key | plant_key | plant_key | plant_key |
| key_legal_entity_uid | STRING | Key Legal Entity (customer, Supplier, Planner etc) | customer_sales_org_key | supplier_company_code_key | customer_sales_org_key |  |
| receiving_location_uid | STRING | Receiving Location ID | customer_key | plant_key | customer_key | plant_key |
| shipping_location_uid | STRING | Shipping Location | shipping_point_key | supplier_key | shipping_point_key | plant_key |
| requested_quantity | INTEGER | Requested Qty | order_quantity | po_quantity | delivery_qty | order_quantity |
| confirmed_quantity | INTEGER | Confirmed Qty | cmtd_delivery_qty | po_quantity | delivery_qty - qty_stckp_unt | order_quantity |
| open_quantity | INTEGER | Open Qty | (order_quantity - cmtd_delivery_qty) | po_quantity - delivered | qty_stckp_unt | order_quantity - gr_quantity |
| delivery_quantity | INTEGER | Delivered Quantity | cmtd_delivery_qty | delivered | qty_stckp_unt | target_quantity |
| shipping_quantity | INTEGER | Shipped Quantity (Leaving company premise) | cmtd_delivery_qty | scheduled_qty | qty_stckp_unt | target_quantity |
| received_quantity | INTEGER | Received Quantity | cmtd_delivery_qty | delivered | qty_stckp_unt | gr_quantity |
| rejected_quantity | INTEGER | Rejected/Cancelled Qty |  |  |  |  |
| rejection_code | STRING | Reason for rejection |  |  |  |  |
| order_uom | STRING | Order UoM | sales_unit |  |  |  |
| sales_price | FLOAT | Sales Price | net_price | net_price |  |  |
| sales_price_currency | STRING | Sales Price Currency | doc_currency_vbap | local_currency |  |  |
| requested_delivery_date | DATE | Requested Date | reqd_deliv_date | delivery_date | delivery_date | basic_fin_date |
| confirmed_delivery_date | DATE | Confirmed Date | cmtd_deliv_crtn_date | delivery_date | delivery_date | basic_fin_date |
| actual_delivery_date | DATE | Actual delivery date Date/Proof of Delivery Date | goods_issue | delivery_date | actual_gi_date | actual_release |
| goodsissue_date_requested | DATE | PGI date based on requested date | cmtd_deliv_crtn_date | delivery_date | actual_gi_date | actual_release |
| goodsissue_date_confirmed | DATE | PGI Date based on confirmed delivery date | cmtd_deliv_crtn_date | delivery_date | actual_gi_date | actual_release |
| goodsissue_date_actual | DATE | Actual PGI date | cmtd_deliv_crtn_date | delivery_date | actual_gi_date | actual_release |
| status | STRING | Delivery Status |  |  |  |  |
| order_block | STRING | Block |  |  |  |  |
| preceding_document | STRING | Preceding Order ID |  |  |  |  |
| successor_document | STRING | Successor Order ID |  |  |  |  |
| mode_of_transport | STRING | Mode of Transport - Air, Rail, Road |  |  |  |  |
| route_id | STRING | Route |  |  |  |  |
| asset_id | STRING | Asset ID |  |  |  |  |
| active | STRING | Deletion |  |  |  |  |
| company_code | STRING | Legal entity for Ownership | company_code (valuation_area_dimension) | company_code (valuation_area_dimension) | company_code (valuation_area_dimension) | company_code (valuation_area_dimension) |
| valuation_area | STRING | Valuation Entity for financial reporting | valuation_area (valuation_area_dimension) | valuation_area (valuation_area_dimension) | valuation_area (valuation_area_dimension) | valuation_area (valuation_area_dimension) |
| creation_Date | DATE | Creation Date | created_on | created_on | created_on | created_on |
| change_Date | DATE | Change Date | changed_on | changed_on | changed_on | changed_on |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms