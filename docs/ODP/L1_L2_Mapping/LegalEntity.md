# L2 Legal Entity Table

## L1 to L2 field mapping.



| BQ Field Name | Field Description | Details | L2 BQ Column Name | Data Type | plant_dimension | supplier_purchase_org_dimension | customer_sales_org_dimension | company_code_dimension |
|---|---|---|---|---|---|---|---|---|
| UUID | UUID | Universal ID | uuid | STRING | plant_uuid | supplier_purchase_org_uuid | customer_sales_org_uuid | company_uuid |
| Legal_Entity_UID | Legal_Entity_UID | Unique  | legal_enity_uid | STRING | 'PLANT' \|\| '-' \|\| plant_key | 'SUPPLIER' \|\| '-' \|\| supplier_purchase_org_key | 'CUSTOMER' \|\| '-' \|\| customer_sales_org_key | 'COMPANY' \|\| '-' \|\| company_key |
| Legal_Entity_Type | Legal Entity Type | Customer, Supplier, Company Code, Plant, Sales Org | legal_entity_type | STRING | 'PLANT'  | 'SUPPLIER' | 'CUSTOMER' | 'COMPANY' |
| Legal_Entity_ID | Legal Entity ID | Legal Entity Unique ID for a particular type of Legal Entity | legal_entity_id | STRING | plant | vendors_account_number | customer_number | company_code |
| Organization_Level | Organization Level | Organization Level is representing any organization unit, this can be a plant, sales organization or a company code.  | organization_level | STRING | company_code | purchasing_organization | sales_organization \|\| '-' \|\| distribution_channel \|\| '-' \|\| division |  |
| Legal_Entity_Name | Legal Entity Name | Legal Entity Description | legal_entity_name | STRING | name | name_1 | name_1 | name_1 |
| Legal_Entity_Name2 | Name 2 | Additional Information about Legal Entity | legal_entity_name2 | STRING | name_2 | name_2 | name_2 | name_2 |
| House_Number | House Number | House Number/Apt Number is part of address detail | house_number | STRING | street_house_number | street_and_house_number | street_and_house_number | house_number |
| Street | Streeet | Street Name is part of address | street | STRING | street_house_number | street_and_house_number | street_and_house_number | street |
| City | City | City is part of the address details | city | STRING | city | city | city | city |
| Postal_Code | Postal Code | Postal Code is part of address | postal_code | STRING | po_box | postal_code | postal_code | po_box |
| District | District/County | District is the part of the address details, represents to the district or County | district | STRING |  | district | district |  |
| Region | Region | Region is part of address, will hold detail of province/state | region | STRING | Region | region | region |  |
| Country | Country | Country | country | STRING | country_key | country_key | country_key | country_key |
| Geo_Lattitude | Geo Lattitude | Lattitude to locate on the map | geo_lattitude | FLOAT |  |  |  |  |
| Geo_Longitude | Geo Longitude | Longitude to locate on the map | geo_longitude | FLOAT |  |  |  |  |
| Time_Zone | Time Zone | Time Zone of the location | time_zone | STRING | factory_calendar |  |  |  |
| Legal_Entity_Classification | Classification | Legal Entity Classification (A,B,C) | legal_entity_classification | STRING |  |  |  |  |
| Legal_Entity_Group | Legal Entity Group | Customer Group / Supplier Schema (Export, Import, Retail, Wholesale etc) | legal_entity_group | STRING |  |  |  |  |
| Reconcillation_Account | Reconciliation Account | Internal Account number to reconcile transactions | reconcillation_account | STRING |  |  |  |  |
| Payment_Term | Payment Term | Liable to pay as per payment term | payment_term | STRING |  |  |  |  |
| Legal_Entity_Role | Legal Entity Role | Sold-to, Payer, Receiver etc | legal_entity_role | STRING |  |  |  |  |
| Valid_From_Date | Valid-from Date | Valid from date | valid_from_date | DATE |  |  |  |  |
| Valid_To_Date | Valid-to Date | Valid to date | valid_to_date | DATE |  |  |  |  |
| Active | Active | Legal Entity Active | active | STRING |  |  |  |  |
| Creation_Date | Creation Date | Creation Date | creation_date | DATE |  | created_on | created_on |  |
| Change_Date | Change Date | Change Date | change_date | DATE |  |  |  |  |