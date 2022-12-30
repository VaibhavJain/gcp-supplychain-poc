# L2 Product Table

## L1 to L2 field mapping.



| column_name | data_type | description | material_dimension | material_description | product_hierarchy_description |
|---|---|---|---|---|---|
| uuid | STRING | Universal Unique ID | material_uuid |  |  |
| product_uid | STRING | Unique identifier for the record - Combination of Product_ID and Organization Level | material_key |  |  |
| product_id | STRING | Product ID is unique Identifier for the Product | material |  |  |
| organization_level | STRING | Organization Level is representing any organization unit, this can be a plant, sales organization or a company code. | plant |  |  |
| product_type | STRING | Product type - whether it is raw material or finished goods | material_type |  |  |
| product_description | STRING | Product Description |  | description |  |
| product_group | STRING | Product Group | material_group |  |  |
| product_hierarchy | STRING | Product Hierarchy | prod_hierarchy |  |  |
| batch_managed | STRING | Is this a Batch-Managed Product | batch_mgmt_rqt |  |  |
| procurement_type | STRING | Product is in-house produced or externally procured | procurement |  |  |
| base_uom | STRING | Base Unit of Measure | base_unit |  |  |
| product_category | STRING | Further classification of the product based on handling of the product - Hazardous Goods, Dangerous Goods, Oxidizing, Corrosive, Gas, Flammable | matl_category |  |  |
| temperature_condition | STRING | Temperature Condition | temperature |  |  |
| product_cost | FLOAT | Average Cost of the Product | CAST(case when price_control = 'V'           then moving_price           when price_control = 'S'           then standard_price       end AS FLOAT64) |  |  |
| product_cost_currency | STRING | Product Cost Currency |  |  |  |
| shelf_life | NUMERIC | Shelf_Life of the Product | tot_shelf_life |  |  |
| product_classification | STRING | ABC Classification for KPI analysis | abc_indicator |  |  |
| safty_stock | NUMERIC | Safety Stock | min_safetystock |  |  |
| volume | NUMERIC | Volume - Used for transportation planning | volume |  |  |
| gross_weight | NUMERIC | Gross Weight - Used for transportation planning | gross_weight |  |  |
| valid_from_date | DATE | Valid from date | valid_from |  |  |
| valid_to_date | DATE | Valid to date | valid_to |  |  |
| active | STRING | Product Active | df_client_level |  |  |
| creation_date | DATE | Creation Date | created_on |  |  |
| change_date | DATE | Change Date | last_change |  |  |
| lead_time | NUMERIC | Total Replenishment Lead time | total_rl_time |  | description |
| product_hierarchy_name | STRING | Product Hierarchy Name |  |  |  |
| product_hierarchy_level | STRING | Product Hierarchy Level | prod_hierarchy |  |  |
| product_hierarchy_level_name | STRING | Product Hierarchy Level Length |  |  | description |
| product_hierarchy_level_1 | STRING | Product Hierarchy Level 1 | SUBSTR(prod_hierarchy,1,5) |  |  |
| product_hierarchy_level_1_name | STRING | Product Hierarchy Level 1 Name |  |  | description |
| product_hierarchy_level_2 | STRING | Product Hierarchy Level 2 | SUBSTR(prod_hierarchy,1,10) |  |  |
| product_hierarchy_level_2_name | STRING | Product Hierarchy Level 2 Name |  |  | description |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms