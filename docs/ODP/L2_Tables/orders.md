

## Table Name : orders


| Column Name | Data Type | Details |
|---|---|---|
| uuid | STRING | UUID |
| order_uid | STRING | Order Unique Identifier |
| order_Category | STRING | Order Category denotes a specific category of order (Sales Order, Purchase Order, Production Order) |
| order_type | STRING | Rush Order, ECOMM, Retail |
| order_id | STRING | Unique Identifier for a specific order category |
| item_id | STRING | Item number |
| schedule_id | STRING | Schedule Line number |
| product_uid | STRING | Product |
| location_uid | STRING | Location |
| key_legal_entity_uid | STRING | Key Legal Entity (customer, Supplier, Planner etc) |
| receiving_location_uid | STRING | Receiving Location ID |
| shipping_location_uid | STRING | Shipping Location |
| requested_quantity | INTEGER | Requested Qty |
| confirmed_quantity | INTEGER | Confirmed Qty |
| open_quantity | INTEGER | Open Qty |
| delivery_quantity | INTEGER | Delivered Quantity |
| shipping_quantity | INTEGER | Shipped Quantity (Leaving company premise) |
| received_quantity | INTEGER | Received Quantity |
| rejected_quantity | INTEGER | Rejected/Cancelled Qty |
| rejection_code | STRING | Reason for rejection |
| order_uom | STRING | Order UoM |
| sales_price | FLOAT | Sales Price |
| sales_price_currency | STRING | Sales Price Currency |
| requested_delivery_date | DATE | Requested Date |
| confirmed_delivery_date | DATE | Confirmed Date |
| actual_delivery_date | DATE | Actual delivery date Date/Proof of Delivery Date |
| goodsissue_date_requested | DATE | PGI date based on requested date |
| goodsissue_date_confirmed | DATE | PGI Date based on confirmed delivery date |
| goodsissue_date_actual | DATE | Actual PGI date |
| status | STRING | Delivery Status |
| order_block | STRING | Block  |
| preceding_document | STRING | Preceding Order ID |
| successor_document | STRING | Successor Order ID |
| mode_of_transport | STRING | Mode of Transport - Air, Rail, Road |
| route_id | STRING | Route |
| asset_id | STRING | Asset ID |
| active | STRING | Deletion |
| company_code | STRING | Legal entity for Ownership |
| valuation_area | STRING | Valuation Entity for financial reporting |
| creation_Date | DATE | Creation Date |
| change_Date | DATE | Change Date |