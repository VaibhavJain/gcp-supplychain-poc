# L2 Location Table

## L1 to L2 field mapping.


| column_name | data_type | description | customer_dimension | supplier_dimension | plant_dimension | shipping_point_dimension | transportation_hub_dimension | storage_location_dimension |
|---|---|---|---|---|---|---|---|---|
| uuid | STRING | Universal Unique ID | customer_uuid | supplier_uuid | plant_uuid | shipping_point_uuid | transportation_hub_uuid | storage_location_uuid |
| location_uid | STRING | Unique ID for location - Based on location type and location ID | customer_key | supplier_key | plant_key | shipping_point_key | transportation_hub_key | storage_location_key |
| location_type | STRING | Location Type denotes whether location is customer, plant, distribution center | 'CUSTOMER' | 'VENDOR' | 'PLANT' | 'SHIPING POINT' | 'TRANSPORTATION HUB' | 'STORAGE LOCATION' |
| location_id | STRING | Location ID is unique ID of particular location type | customer | vendor | plant | shipping_point | transportplanpt | stor_loc |
| location_name | STRING | Location Name is Location Descrption | name | name | name | name | description | description |
| location_name2 | STRING | Location Name 2 is an additional information in the name | name_1 | name_1 | name_1 | name_1 | name_1 | name_1 |
| house_number | STRING | House Number/Apt Number is part of address detail | house_number_adrc | house_number_adrc | house_number | house_number | house_number | house_number |
| street | STRING | Street Name is part of address | street_adrc | street_adrc | street | street | street | street |
| city | STRING | City is part of the address details | city_adrc | city_adrc | city_adrc | city | city | city |
| postal_code | STRING | Postal Code is part of address | postal_code_adrc | postal_code_adrc | postal_code_adrc | postal_code | postal_code | postal_code |
| district | STRING | District is the part of the address details, represents to the district or County | district_adrc | district_adrc | district | district | district | district |
| region | STRING | Region is part of address, will hold detail of province/state | region_adrc | region_adrc | region_adrc | region | region | region |
| country | STRING | Country | country_adrc | country_adrc | country_adrc | country_adrc | country | country |
| geo_lattitude | FLOAT | Latitude to locate on the map |  |  |  |  |  |  |
| geo_longitude | FLOAT | Longitude to locate on the map |  |  |  |  |  |  |
| time_zone | STRING | Time Zone of the location | time_zone | time_zone | time_zone | time_zone | time_zone | time_zone |
| transportation_zone | STRING | Transportation Zone to plan transport acitivties | transport_zone | transport_zone | transport_zone | transport_zone | transport_zone | transport_zone |
| shipping_calendar | STRING | Shipping Calendar to plan transport activities |  |  |  |  |  |  |
| receiving_calendar | STRING | Receiving Calendar to plan transport activities |  |  |  |  |  |  |
| working_hour | STRING | Working Hours to plan transport activities | working_times |  |  |  |  |  |
| language_key | STRING | Communication Language to print documents | language_key | language_key | language_key | language_key | language_key | language_key |
| valid_from_date | DATETIME | Valid from date | created_on | created_on |  |  |  |  |
| valid_to_date | DATETIME | Valid to date |  |  |  |  |  |  |
| active | STRING | Location Validity |  |  |  |  |  |  |
| company_code | STRING | Legal entity for Ownership |  |  |  |  |  |  |
| valuation_area | STRING | Valuation Entity for financial reporting |  |  |  |  |  |  |
| creation_date | DATE | Creation Date | created_on | created_on |  |  |  |  |
| change_date | DATE | Change Date | changed_on | changed_on |  |  |  |  |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms