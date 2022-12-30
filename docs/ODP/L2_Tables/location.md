

## Table Name : location


| Column Name | Data Type | Details |
|---|---|---|
| uuid | STRING | Universal Unique ID |
| location_uid | STRING | Unique ID for location - Based on location type and location ID |
| location_type | STRING | Location Type denotes whether location is customer, plant, distribution center |
| location_id | STRING | Location ID is unique ID of particular location type |
| location_name | STRING | Location Name is Location Descrption |
| location_name2 | STRING | Location Name 2 is an additional information in the name |
| house_number | STRING | House Number/Apt Number is part of address detail |
| street | STRING | Street Name is part of address |
| city | STRING | City is part of the address details |
| postal_code | STRING | Postal Code is part of address |
| district | STRING | District is the part of the address details, represents to the district or County |
| region | STRING | Region is part of address, will hold detail of province/state |
| country | STRING | Country |
| geo_lattitude | FLOAT | Latitude to locate on the map |
| geo_longitude | FLOAT | Longitude to locate on the map |
| time_zone | STRING | Time Zone of the location |
| transportation_zone | STRING | Transportation Zone to plan transport acitivties |
| shipping_calendar | STRING | Shipping Calendar to plan transport activities |
| receiving_calendar | STRING | Receiving Calendar to plan transport activities |
| working_hour | STRING | Working Hours to plan transport activities |
| language_key | STRING | Communication Language to print documents |
| valid_from_date | DATETIME | Valid from date |
| valid_to_date | DATETIME | Valid to date |
| active | STRING | Location Validity |
| company_code | STRING | Legal entity for Ownership |
| valuation_area | STRING | Valuation Entity for financial reporting |
| creation_date | DATE | Creation Date |
| change_date | DATE | Change Date |