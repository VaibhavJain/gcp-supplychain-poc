

## Table Name : asset


| Column Name | Data Type | Details |
|---|---|---|
| uuid | STRING | Universal UID |
| asset_uid | STRING | Asset Unique Identifier - Combination of Asset Type and Asset ID |
| asset_type | STRING | Asset type is to segregate assets - Production Machine, Transaportation Equipment, Handling Eqipment |
| asset_id | STRING | Asset ID is unique identifier for a particular type of Asset |
| asset_name | STRING | Description of an asset |
| asset_location | STRING | Location ID |
| asset_ownership | STRING | Legal Entity for ownership |
| asset_capacity | INT64 | Asset Capacity |
| valid_from_date | DATE | Valid from date |
| valid_to_date | DATE | Valid to date |
| active | STRING | Location Validity |
| valuation_area | STRING | Valuation Entity for financial reporting |
| creation_date | DATE | Creation Date |
| change_date | DATE | Change Date |