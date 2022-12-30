


## Table Name : inventory

| Column Name | Data Type | Details |
|---|---|---|
| inventory_date | DATE | Inventory Availability Date |
| product_uid | STRING | Product UID |
| location_uid | STRING | Location UID |
| batch_number | STRING | Batch Number |
| inventory_type | STRING | Inventory Type - Unrestricted, in transit, Blocked, Expired, Customer Consignment, Vendor Consignment, Order specific etc |
| inventory_assignment | STRING | Location ID  |
| inventory_quantity | NUMERIC | Quantity in Base UoM |
| remaining_shelf_life | STRING | Remaining Shelf life |
| inventory_block | STRING | Inventory Block |
| inv_gr_date | DATE | Goods Receipt date for Inventory Ageing Calculation |
| inventory_ownership | STRING | Legal Entity for ownership (Company Code, Supplier) |
| valuation_area | STRING | Valuation Entity for financial reporting |