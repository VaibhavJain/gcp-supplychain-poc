# L2 Legal Entity Table

## L1 to L2 field mapping.



| column_name | data_type | description | plant_dimension | customer_sales_org_dimension | company_code_dimension | supplier_code_dimension |
|---|---|---|---|---|---|---|
| uuid | STRING | Universal ID | plant_uuid | customer_sales_org_uuid | company_code_uuid | supplier_company_code_uuid |
| legal_entity_uid | STRING | Unique | plant_key | customer_sales_org_key | company_code_key | supplier_company_code_key |
| legal_entity_type | STRING | Customer, Supplier, Company Code, Plant, Sales Org | 'PLANT' | 'CUSTOMER' | 'COMPANY' | 'SUPPLIER' |
| legal_entity_id | STRING | Legal Entity Unique ID for a particular type of Legal Entity | plant | customer | company_code | vendor |
| organization_level | STRING | Organization Level is representing any organization unit, this can be a plant, sales organization or a company code. | company_code (valuation_area_dimension) | (sales_org \|\| '-' \|\| distr_channel \|\| '-' \|\| division) | | company_code |
| legal_entity_name | STRING | Legal Entity Description | name | name | name_1 | name_1 |
| legal_entity_name2 | STRING | Additional Information about Legal Entity | name_2 | name_2 | name_2 | name_2 |
| house_number | STRING | House Number/Apt Number is part of address detail | street_house | street | house_number | street |
| street | STRING | Street Name is part of address | street_house | street | street | street |
| city | STRING | City is part of the address details | city | city | city | city |
| postal_code | STRING | Postal Code is part of address | po_box | postal_code | po_box | postal_code |
| district | STRING | District is the part of the address details, represents to the district or County |  | district |  | district |
| region | STRING | Region is part of address, will hold detail of province/state | Region | region |  | region |
| country | STRING | Country | country | country | country | country |
| geo_lattitude | FLOAT | Lattitude to locate on the map |  |  |  |  |
| geo_longitude | FLOAT | Longitude to locate on the map |  |  |  |  |
| time_zone | STRING | Time Zone of the location | factory_calend |  |  |  |
| legal_entity_classification | STRING | Legal Entity Classification (A,B,C) |  |  |  |  |
| legal_entity_group | STRING | Customer Group / Supplier Schema (Export, Import, Retail, Wholesale etc) |  |  |  |  |
| reconcillation_account | STRING | Internal Account number to reconcile transactions |  |  |  |  |
| payment_term | STRING | Liable to pay as per payment term |  |  |  |  |
| legal_entity_role | STRING | Sold-to, Payer, Receiver etc |  |  |  |  |
| valid_from_date | DATE | Valid from date |  |  |  |  |
| valid_to_date | DATE | Valid to date |  |  |  |  |
| active | STRING | Legal Entity Active |  |  |  |  |
| creation_date | DATE | Creation Date |  | created_on |  | created_on |
| change_date | DATE | Change Date |  |  |  |  |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms