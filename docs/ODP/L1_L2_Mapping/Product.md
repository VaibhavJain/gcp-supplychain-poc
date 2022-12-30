# L2 Product Table

## L1 to L2 field mapping.



| BQ Field Name | Field Description | Details | L2 BQ Column Name | Data Type | material_dimension |
|---|---|---|---|---|---|
| UUID | UUID | Universal Unique ID | uuid | STRING | material_uuid |
| Product_UID | Product UID | Unique identifier for the record - Combination of Product_ID and Organization Level | product_uid | STRING | 'PRODUCT' \|\| '-' \|\| material_key |
| Product_ID | Product ID | Product ID is unique Identifier for the Product | product_id | STRING | material_number |
| Organization_Level | Organization Level | Organization Level is representing any organization unit, this can be a plant, sales organization or a company code.  | organization_level | STRING | plant |
| Product_Type | Product Type | Product type - whether it is raw material or finished goods | product_type | STRING | material_type |
| Product_Description | Product Description | Product Description | product_description | STRING | material_description |
| Product_Group | Product Group | Product Group | product_group | STRING | material_group |
| Product_Hierarchy | Product Hierarchy | Product Hierarchy | product_hierarchy | STRING | product_hierarchy |
| Batch_Managed | Batch Managed | Is this a Batch-Managed Product  | batch_managed | STRING | batch_management_indicator |
| Procurement_Type | Procurement Type | Product is in-house produced or externally procured | procurement_type | STRING | procurement_type |
| Base_UOM | Base Unit of Measure | Base Unit of Measure | base_uom | STRING | base_unit_of_measure |
| Product_Category | Product Category | Further classification of the product based on handling of the product - Hazardous Goods, Dangerous Goods, Oxidizing, Corrosive, Gas, Flammable | product_category | STRING | material_category |
| Temperature_Condition | Temperature Condition | Temperature Condition  | temperature_condition | STRING | temperature_conditions_indicator |
| Product_Cost | Product Cost | Average Cost of the Product | product_cost | FLOAT | product_cost |
| Product_Cost_Currency | Product Cost Currency | Product Cost Currency | product_cost_currency | STRING | currency_key |
| Shelf_Life | Shelf Life | Shelf_Life of the Product | shelf_life | STRING |  |
| Product_Classification | Product Classification | ABC Classification for KPI analysis | product_classification | STRING |  |
| Safety_Stock | Safety Stock | Safety Stock | safty_stock | STRING |  |
| Volume | Volume | Volume - Used for transportation planning | volume | NUMERIC | volume |
| Gross_Weight | Gross Weight | Gross Weight - Used for transportation planning | gross_weight | NUMERIC | gross_weight |
| Valid_From_Date | Valid-from Date | Valid from date | valid_from_date | DATE |  |
| Valid_To_Date | Valid-to Date | Valid to date | valid_to_date | DATE |  |
| Active | Active | Product Active | active | STRING | client_level_deletion_flag |
| Creation_Date | Creation Date | Creation Date | creation_date | DATE | created_on |
| Change_Date | Change Date | Change Date | change_date | DATE | last_change |
| Lead_time | Lead Time | Total Replenishment Lead time | lead_time | NUMERIC |  |
| Product_Hierarhy_Name | Product Hierarchy Name | Product Hierarchy Name | product_hierarchy_name | STRING |  |
| Product_Hierarchy_Level | Product Hierarchy level | Product Hierarchy Level | product_hierarchy_level | STRING |  |
| Product_Hierarchy_Level_Name | Product Hierarchy Level Name | Product Hierarchy Level Length | product_hierarchy_level_name | STRING |  |
| Product_Hierarchy_Level_1 | Product Hierarchy Level 1 | Product Hierarchy Level 1 | product_hierarchy_level_1 | STRING |  |
| Product_Hierarchy_Level_1_Name | Product Hierarchy Level 1 Name | Product Hierarchy Level 1 Name | product_hierarchy_level_1_name | STRING |  |
| Product_Hierarchy_Level_2 | Product Hierarchy Level 2 | Product Hierarchy Level 2 | product_hierarchy_level_2 | STRING |  |
| Product_Hierarchy_Level_2_Name | Product Hierarchy Level 2 Name | Product Hierarchy Level 2 Name | product_hierarchy_level_2_name | STRING |  |