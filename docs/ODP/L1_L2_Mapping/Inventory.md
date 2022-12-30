# L2 Inventory Table

## L1 to L2 field mapping.



| BQ Field Name | Field Description | Details | L2 BQ Column Name | Data Type | inventorty_fact | plant_dimension |
|---|---|---|---|---|---|---|
| Inventorory_Date | Inventory Availability Date | Inventory Availability Date | inventory_date | DATE | posting_date |  |
| Product_UID | Product UID | Product UID | product_uid | STRING | 'PRODUCT' \|\| '-' \|\| material_key |  |
| Location UID | Location UID | Location UID | location_uid | STRING | 'PLANT' \|\| '-' \|\| plant_key |  |
| Batch_Number | Batch Number | Batch Number | batch_number | STRING | batch_management_indicator |  |
| Inventory_Type | Inventory Type | Inventory Type - Unrestricted, in transit, Blocked, Expired, Customer Consignment, Vendor Consignment, Order specific etc | inventory_type | STRING | stock_type |  |
| Inventory_Assignment | Inventory Assignment | Location ID  | inventory_assignment | STRING | plant |  |
| Inventory_Quantity | Inventory Quantity | Quantity in Base UoM | inventory_quantity | NUMERIC | quantity_in_base_unit |  |
| Remaining Shelf life | Remaining Shelf life | Remaining Shelf life | remaining_shelf_life | STRING |  |  |
| Inventory Block | Inventory Block | Inventory Block | inventory_block | STRING |  |  |
| Inv_GR_Date | Inventory_GR_Date | Goods Receipt date for Inventory Ageing Calculation | inv_gr_date | DATE |  |  |
| Inventory_Ownership | Inventory Ownership | Legal Entity for ownership (Company Code, Supplier) | inventory_ownership | STRING |  | company_code |
| Valuation_Area | Legal Entity | Valuation Entity for financial reporting | valuation_area | STRING | valuation_area |  |