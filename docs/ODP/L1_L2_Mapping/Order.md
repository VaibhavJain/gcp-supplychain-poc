# L2 Order Table

## L1 to L2 field mapping.



| BQ Field Name | Field Description | Details | L2 BQ Column Name | Data Type | sales_order_fact | purchase_order_fact | delivery_fact | production_order_fact |
|---|---|---|---|---|---|---|---|---|
| UUID | Universal Unique ID | UUID | uuid | STRING | sales_order_uuid | purchase_order_uuid | delivery_uuid | production_order_uuid |
| Order_UID | Order_UID | Order Unique Identifier | order_uid | STRING | sales_order_key | purchase_order_key | delivery_key | production_order_key |
| Order_Category | Order Category | Order Category denotes a specific category of order (Sales Order, Purchase Order, Production Order) | order_Category | STRING | 'SALES' | 'PURCHASE' | 'DELIVERY' | 'PRODUCTION' |
| Order_Type | Order Type | Rush Order, ECOMM, Retail | order_type | STRING | sales_document_type | purchasing_document_type | delivery_type | order_type |
| Order_ID | Order ID | Unique Identifier for a specific order category | order_id | STRING | sales_document | purchasing_document_number | sales_document | order_number |
| Item_ID | Item ID | Item number | item_id | STRING | item_number | item_number | item_number |  |
| Schedule_ID | Schedule ID | Schedule Line number | schedule_id | STRING | schedule_line_number |  |  |  |
| Product_UID | Product | Product | product_uid | STRING | 'PRODUCT' \|\| '-' \|\| material_key  | 'PRODUCT' \|\| '-' \|\| material_key | 'PRODUCT' \|\| '-' \|\| material_key | 'PRODUCT' \|\| '-' \|\| material_uuid |
| Location_UID | Location | Location | location_uid | STRING | 'PLANT' \|\| '-' \|\| plant_key | 'PLANT' \|\| '-' \|\| plant_key | 'PLANT' \|\| '-' \|\| plant_key | 'PLANT' \|\| '-' \|\| plant_uuid |
| Key_Legal_Entity_UID | Key Legal Entity | Key Legal Entity (customer, Supplier, Planner etc) | key_legal_entity_uid | STRING | 'CUSTOMER' \|\| '-' \|\| customer_sales_org_key | 'SUPPLIER' \|\| '-' \|\| supplier_purchase_org_key | 'CUSTOMER' \|\| '-' \|\| sold_to_party | mrp_controller_buyer |
| Receiving_Location_UID | Receiving Location | Receiving Location ID | receiving_location_uid | STRING | 'CUSTOMER' \|\| '-' \|\| ship_to_party | 'PLANT' \|\| '-' \|\| plant_key | 'CUSTOMER' \|\| '-' \|\| customer_key | 'PLANT' \|\| '-' \|\| plant_uuid |
| Shipping_Location_UID | Shipping_Location | Shipping Location | shipping_location_uid | STRING | 'PLANT' \|\| '-' \|\| shipping_point | 'SUPPLIER' \|\| '-' \|\| supplier_key | 'PLANT' \|\| '-' \|\| shipping_point | 'PLANT' \|\| '-' \|\| plant_uuid |
| Requested_Quantity | Requested Quantity | Requested Qty | requested_quantity | INTEGER | order_quantity | order_quantity |  | order_item_quantity |
| Confirmed_Quantity | Confirmed Quantity | Confirmed Qty | confirmed_quantity | INTEGER | confirmed_quantity | order_quantity |  | order_item_quantity |
| Open_Quantity | Open Quantity | Open Qty | open_quantity | INTEGER | order_quantity - delivered_quantity | order_quantity - current_goods_receipt_quantity | actual_delivery_quantity | order_item_quantity - quantity_of_goods_received |
| Delivered Quantity | Delivered Quantity | Delivered Quantity | delivery_quantity | INTEGER | delivered_quantity |  |  | order_item_quantity |
| Shipped_Quantity | Shipped Quantity | Shipped Quantity (Leaving company premise) | shipping_quantity | INTEGER | delivered_quantity |  |  |  |
| Received Quantity | Received Quantity | Received Quantity | received_quantity | INTEGER | delivered_quantity | current_goods_receipt_quantity |  | quantity_of_goods_received |
| Rejected_Qty | Rejected Quantity | Rejected/Cancelled Qty | rejected_quantity | INTEGER |  |  |  |  |
| Rejection_Code | Rejection Code | Reason for rejection | rejection_code | STRING |  |  |  |  |
| Order_UoM | Order UoM | Order UoM | order_uom | STRING |  |  |  |  |
| Sales_Price | Sales Price | Sales Price | sales_price | FLOAT | net_price_sales_quantity |  |  |  |
| Sales_Price_Currency | Sales Price_Curency | Sales Price Currency | sales_price_currency | STRING |  |  |  |  |
| Requested Delivery Date | Requested Delivery Date | Requested Date | requested_delivery_date | DATE | requested_delivery_date | purchasing_document_date |  | basic_finish_date |
| Confirmed Delivery Date | Confirmed Delivery Date | Confirmed Date | confirmed_delivery_date | DATE |  | purchasing_document_date |  | basic_finish_date |
| Actual Delivery Date | Actual Delivery Date | Actual delivery date Date/Proof of Delivery Date | actual_delivery_date | DATE | actual_goods_movement_date |  |  | actual_finish_date |
| GoodsIssue_Date_Requested | GoodsIssue Date - Requested | PGI date based on requested date | goodsissue_date_requested | DATE |  |  |  | actual_finish_date |
| GoodsIssue_Date_Confirmed | GoodsIssue Date - Confirmed | PGI Date based on confirmed delivery date | goodsissue_date_confirmed | DATE |  |  |  | actual_finish_date |
| GoodsIssue_Date_Actual | GoodsIssue Date - Actual | Actual PGI date | goodsissue_date_actual | DATE | actual_goods_movement_date |  |  | actual_finish_date |
| Status | Status | Delivery Status | status | STRING |  |  |  | actual_finish_date |
| Order_Block | Order Block | Block  | order_block | STRING |  |  |  |  |
| Preceding_Document | Preceding Document | Preceding Order ID | preceding_document | STRING |  |  |  | planned_order |
| Successor_Document | Successor_Document | Successor Order ID | successor_document | STRING |  |  |  |  |
| Mode_Of_Transport | Mode of Transport | Mode of Transport - Air, Rail, Road | mode_of_transport | STRING |  |  |  |  |
| Route_ID | Route ID | Route | route_id | STRING |  |  |  |  |
| Asset ID | Asset_ID | Asset ID | asset_id | STRING |  |  |  |  |
| Active | Active | Deletion | active | STRING |  |  |  |  |
| Company_Code | Company Code | Legal entity for Ownership | company_code | STRING | company_code | company_code (plant_dimension) | company_code (plant_dimension) |  |
| Valuation_Area | Valuation Area | Valuation Entity for financial reporting | valuation_area | STRING | valuationion_area (plant_dimension) | valuation_area (plant_dimension) | valuation_area (plant_dimension) |  |
| Creation_Date | Creation Date | Creation Date | creation_Date | DATE | created_on |  | created_on |  |
| Change_Date | Change Date | Change Date | change_Date | DATE | changed_on |  | changed_on |  |