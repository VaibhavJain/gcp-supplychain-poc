# L2 Inventory Table

## L1 to L2 field mapping.



| column_name | data_type | description | material_movement_fact | inventory_fact | valuation_area_dimension |
|---|---|---|---|---|---|
| inventory_date | DATE | Inventory Availability Date | snapshot date |  |  |
| product_uid | STRING | Product UID |  | material_key |  |
| location_uid | STRING | Location UID |  | plant_key |  |
| batch_number | STRING | Batch Number |  |  |  |
| inventory_type | STRING | Inventory Type - Unrestricted, in transit, Blocked, Expired, Customer Consignment, Vendor Consignment, Order specific etc | CASE WHEN stock_type = '01'                THEN 'Unrestricted-use stock'             WHEN stock_type = '02'             THEN 'Quality inspection stock'             WHEN stock_type = '03'             THEN 'Returns blocked stock'             WHEN stock_type = '04'                 THEN 'Stock transfer stock at storage location level'             WHEN stock_type = '05'             THEN 'Stock transfer stock at plant level'             WHEN stock_type = '06'             THEN 'Stock in transit'             WHEN stock_type = '07'                 THEN 'Blocked stock'             WHEN stock_type = '08'             THEN 'Restricted stock'             WHEN stock_type = '09'                 THEN 'Tied empties stock'        END as inventory_type |  |  |
| inventory_assignment | STRING | Location ID |  | plant |  |
| inventory_quantity | NUMERIC | Quantity in Base UoM | sum(stock_quantity) |  |  |
| remaining_shelf_life | STRING | Remaining Shelf life |  |  |  |
| inventory_block | STRING | Inventory Block |  |  |  |
| inv_gr_date | DATE | Goods Receipt date for Inventory Ageing Calculation |  | created_on |  |
| inventory_ownership | STRING | Legal Entity for ownership (Company Code, Supplier) |  |  | company_code |
| valuation_area | STRING | Valuation Entity for financial reporting |  |  | valuation_area |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms