

## Table Name : legal_entity


| Column Name | Data Type | Details |
|---|---|---|
| uuid | STRING | Universal ID |
| legal_enity_uid | STRING | Unique  |
| legal_entity_type | STRING | Customer, Supplier, Company Code, Plant, Sales Org |
| legal_entity_id | STRING | Legal Entity Unique ID for a particular type of Legal Entity |
| organization_level | STRING | Organization Level is representing any organization unit, this can be a plant, sales organization or a company code.  |
| legal_entity_name | STRING | Legal Entity Description |
| legal_entity_name2 | STRING | Additional Information about Legal Entity |
| house_number | STRING | House Number/Apt Number is part of address detail |
| street | STRING | Street Name is part of address |
| city | STRING | City is part of the address details |
| postal_code | STRING | Postal Code is part of address |
| district | STRING | District is the part of the address details, represents to the district or County |
| region | STRING | Region is part of address, will hold detail of province/state |
| country | STRING | Country |
| geo_lattitude | FLOAT | Lattitude to locate on the map |
| geo_longitude | FLOAT | Longitude to locate on the map |
| time_zone | STRING | Time Zone of the location |
| legal_entity_classification | STRING | Legal Entity Classification (A,B,C) |
| legal_entity_group | STRING | Customer Group / Supplier Schema (Export, Import, Retail, Wholesale etc) |
| reconcillation_account | STRING | Internal Account number to reconcile transactions |
| payment_term | STRING | Liable to pay as per payment term |
| legal_entity_role | STRING | Sold-to, Payer, Receiver etc |
| valid_from_date | DATE | Valid from date |
| valid_to_date | DATE | Valid to date |
| active | STRING | Legal Entity Active |
| creation_date | DATE | Creation Date |
| change_date | DATE | Change Date |