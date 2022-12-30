# L2 Forecast Table

## L1 to L2 field mapping.



| column_name | data_type | description | forecasting_fact |
|---|---|---|---|
| forecast_date | DATE | Forecast Generation Date | finish_date |
| product_uid | STRING | Product ID | material_key |
| location_uid | STRING | Location ID | plant_key |
| forecast_period_type | STRING | Period Type - Month, Week or Day | perin |
| forecast_period | STRING | Forecast Period | period |
| forecast_quantity | INT64 | Forecasted Quantity | planned_qty |
| inventory_quantity | INT64 | Quantity in Base UoM | planned_qty |
| forecast_uom | STRING | Forecasting Unit of Measure | base_unit |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms