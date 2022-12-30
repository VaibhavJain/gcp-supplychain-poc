# L2 Location Table

## L1 to L2 field mapping.


| BQ Field Name | Field Description | Details | L2 BQ Column Name | Data Type | customer_dimension | supplier_dimension | plant_dimension |
|---|---|---|---|---|---|---|---|
| UUID | Universal Unique ID | Universal Unique ID | uuid | STRING | customer_uuid | supplier_uuid | plant_uuid |
| Location_UID | Location_UID | Unique ID for location - Based on location type and location ID | location_uid | STRING | 'CUSTOMER' \|\| '-' \|\| customer_key | 'SUPPLIER' \|\| '-' \|\| supplier_key | 'PLANT' \|\| '-' \|\| plant_key |
| Location_Type | Location Type | Location Type denotes whether location is customer, plant, distribution center | location_type | STRING | 'CUSTOMER' | 'SUPPLIER' | 'PLANT' |
| Location_ID | Location ID | Location ID is unique ID of particular location type | location_id | STRING | customer_number | vendors_account_number | plant |
| Location_Name | Location Name | Location Name is Location Descrption | location_name | STRING | name_1 | name_1 | name |
| Location_Name2 | Location Name 2 | Location Name 2 is an additional information in the name | location_name2 | STRING | name_2 | name_2 | name_2 |
| House_Number | House Number | House Number/Apt Number is part of address detail | house_number | STRING | street_and_house_number | street_and_house_number | street_house_number |
| Street | Streeet | Street Name is part of address | street | STRING | street_and_house_number | street_and_house_number | street_house_number |
| City | City | City is part of the address details | city | STRING | city | city | city |
| Postal_Code | Postal Code | Postal Code is part of address | postal_code | STRING | postal_code | postal_code | postal_code |
| District | District/County | District is the part of the address details, represents to the district or County | district | STRING | district | district | district |
| Region | Region | Region is part of address, will hold detail of province/state | region | STRING | region | region | region |
| Country | Country | Country | country | STRING | country_key | country_key | country_key |
| Geo_Latitude | Geo Latitude | Latitude to locate on the map | geo_lattitude | FLOAT |  |  |  |
| Geo_Longitude | Geo Longitude | Longitude to locate on the map | geo_longitude | FLOAT |  |  |  |
| Time_Zone | Time Zone | Time Zone of the location | time_zone | STRING |  |  |  |
| Transportation_Zone | Transportation Zone | Transportation Zone to plan transport acitivties | transportation_zone | STRING | transportation_zone |  |  |
| Shipping_Calendar | Shipping Calendar | Shipping Calendar to plan transport activities | shipping_calendar | STRING |  |  |  |
| Receiving_Calendar | Receiving Calendar | Receiving Calendar to plan transport activities | receiving_calendar | STRING |  |  |  |
| Working_Hour | Working Hours | Working Hours to plan transport activities | working_hour | STRING | working_times | factory_calendar | factory_calendar |
| Language_Key | Language Key | Communication Language to print documents | language_key | STRING | language_key | language_key | language_key |
| Valid_From_Date | Valid-from Date | Valid from date | valid_from_date | DATETIME |  |  |  |
| Valid_To_Date | Valid-to Date | Valid to date | valid_to_date | DATETIME |  |  |  |
| Active | Active | Location Validity | active | STRING |  |  |  |
| Company_Code | Company Code | Legal entity for Ownership | company_code | STRING |  |  |  |
| Valuation_Area | Valuation Area | Valuation Entity for financial reporting | valuation_area | STRING |  |  |  |
| Creation_Date | Creation Date | Creation Date | creation_date | DATE | created_on | created_on |  |
| Change_Date | Change Date | Change Date | change_date | DATE |  |  |  |