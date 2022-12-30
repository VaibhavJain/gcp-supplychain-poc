

## Table Name : product



| Column Name | Data Type | Details |
|---|---|---|
| uuid | STRING | Universal Unique ID |
| product_uid | STRING | Unique identifier for the record - Combination of Product_ID and Organization Level |
| product_id | STRING | Product ID is unique Identifier for the Product |
| organization_level | STRING | Organization Level is representing any organization unit, this can be a plant, sales organization or a company code.  |
| product_type | STRING | Product type - whether it is raw material or finished goods |
| product_description | STRING | Product Description |
| product_group | STRING | Product Group |
| product_hierarchy | STRING | Product Hierarchy |
| batch_managed | STRING | Is this a Batch-Managed Product  |
| procurement_type | STRING | Product is in-house produced or externally procured |
| base_uom | STRING | Base Unit of Measure |
| product_category | STRING | Further classification of the product based on handling of the product - Hazardous Goods, Dangerous Goods, Oxidizing, Corrosive, Gas, Flammable |
| temperature_condition | STRING | Temperature Condition  |
| product_cost | FLOAT | Average Cost of the Product |
| product_cost_currency | STRING | Product Cost Currency |
| shelf_life | STRING | Shelf_Life of the Product |
| product_classification | STRING | ABC Classification for KPI analysis |
| safty_stock | STRING | Safety Stock |
| volume | NUMERIC | Volume - Used for transportation planning |
| gross_weight | NUMERIC | Gross Weight - Used for transportation planning |
| valid_from_date | DATE | Valid from date |
| valid_to_date | DATE | Valid to date |
| active | STRING | Product Active |
| creation_date | DATE | Creation Date |
| change_date | DATE | Change Date |
| lead_time | NUMERIC | Total Replenishment Lead time |
| product_hierarchy_name | STRING | Product Hierarchy Name |
| product_hierarchy_level | STRING | Product Hierarchy Level |
| product_hierarchy_level_name | STRING | Product Hierarchy Level Length |
| product_hierarchy_level_1 | STRING | Product Hierarchy Level 1 |
| product_hierarchy_level_1_name | STRING | Product Hierarchy Level 1 Name |
| product_hierarchy_level_2 | STRING | Product Hierarchy Level 2 |
| product_hierarchy_level_2_name | STRING | Product Hierarchy Level 2 Name |