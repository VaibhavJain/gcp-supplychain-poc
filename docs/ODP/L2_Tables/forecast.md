

## Table Name : forecast

| Column Name | Data Type | Details |
|---|---|---|
| forecast_date | DATE | Forecast Generation Date |
| product_uid | STRING | Product ID |
| location_uid | STRING | Location ID |
| forecast_period_type | STRING | Period Type - Month, Week or Day |
| forecast_period | STRING | Forecast Period |
| forecast_quantity | INT64 | Forecasted Quantity |
| inventory_quantity | INT64 | Quantity in Base UoM |
| forecast_uom | STRING | Forecasting Unit of Measure |