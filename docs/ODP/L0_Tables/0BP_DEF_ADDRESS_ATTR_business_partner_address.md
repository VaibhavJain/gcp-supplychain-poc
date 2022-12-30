

## Table Name : 0BP_DEF_ADDRESS_ATTR_business_partner_address


| SAP Column | BQ Column | Short Description |
|---|---|---|
| PARTNER_GUID | business_partner_guid | Business Partner GUID |
| LATITUDE | geo_location_latitude | Geo location latitude |
| LONGITUDE | geo_location_longitude | Geo location longitude |
| DATE_FROM | valid_from_date | Valid-from date - in current Release only 00010101 possible |
| DATE_TO | valid_to_date | Valid-to date in current Release only 99991231 possible |
| PRECISID | precision_geo_location | Precision (street, postal code, ...) of a Geo location |
| SRCID | geo_location_source_id | Geo location data source ID/Geocoder ID |
| BUILDING | building | Building (Number or Code) |
| SORT2 | search_term_2 | Search Term 2 |
| SORT1 | search_term_1 | Search Term 1 |
| PO_BOX_NUM | po_box_without_number | Flag: PO Box Without Number |
| PERS_ADDR | personal_address | Flag: This is a personal address |
| ADDR_SHORT | formatted_address | One-line short form of formatted address |
| ADDR_SHORT_S | short_formatted_address | One-line short form of formatted address |
| LINE0 | address_line_0 | BP Address: Line 0 |
| LINE1 | address_line_1 | BP Address: Line 1 |
| LINE2 | address_line_2 | BP Address: Line 2 |
| LINE3 | address_line_3 | BP Address: Line 3 |
| LINE4 | address_line_4 | BP Address: Line 4 |
| LINE5 | address_line_5 | BP Address: Line 5 |
| LINE6 | address_line_6 | BP Address: Line 6 |
| LINE7 | address_line_7 | BP Address: Line 7 |
| LINE8 | address_line_8 | BP Address: Line 8 |
| LINE9 | address_line_9 | BP Address: Line 9 |
| NAME1 | name_1 | Name 1 |
| NAME2 | name_2 | Name 2 |
| CITY1 | city | City |
| LOCATION | street_5 | Street 5 |
| STR_SUPPL1 | street_supplement_1 | Street 2 |
| STR_SUPPL2 | street_supplement_2 | Street 3 |
| STR_SUPPL3 | street_supplement_3 | Street 4 |
| CITY2 | district | District |
| NAME3 | name_3 | Name 3 |
| NAME4 | name_4 | Name 4 |
| HOME_CITY | home_city | City (Different from Postal City) |
| NAME_CO | co_name | c/o name |
| EXTENSION1 | extension_data_line | Extension (only for data conversion) (e.g. data line) |
| EXTENSION2 | extension_telebox | Extension (only for data conversion) (e.g. telebox) |
| PO_BOX_LOC | po_box_city | PO Box city |
| STREET | street | Street |
| URI_ADDR | uri_field_passed | URI Field Passed to BW |
| FLOOR | floor_in_building | Floor in building |
| PO_BOX | post_office_box | PO Box |
| POST_CODE1 | city_postal_code | City postal code |
| HOUSE_NUM1 | house_number | House Number |
| FAX_EXTENS | fax_extension | First fax no.: extension |
| HOUSE_NUM2 | house_number_supplement | House number supplement |
| POST_CODE2 | po_box_postal_code | PO Box Postal Code |
| POST_CODE3 | company_postal_code | Company Postal Code (for Large Customers) |
| ROOMNUMBER | room_apartment_number | Room or Apartment Number |
| TEL_EXTENS | telephone_number_extension | First Telephone No.: Extension |
| FAX_NUMBER | fax_number | First fax no.: dialling code+number |
| TEL_NUMBER | telephone_number | First telephone no.: dialling code+number |
| FAXDISPLAY | display_fax_number | Display Format for Fax Number |
| TELDISPLAY | display_telephone_number | Display Format for Telephone Number |
| ALTITUDE | geo_location_height | Geo location height |
| TAXJURCODE | tax_jurisdiction | Tax Jurisdiction |
| SMTP_ADDR | email_address | E-Mail Address |
| TIME_ZONE | address_time_zone | Address time zone |
| REGIOGROUP | regional_structure_grouping | Regional structure grouping |
| CITYP_CODE | district_code | District code for City and Street file |
| TITLE | form_of_address_key | Form-of-Address Key |
| PARTNER | business_partner_number | Business Partner Number |
| ADDRNUMBER | address | Address Number |
| TRANSPZONE | transportation_zone | Transportation zone to or from which the goods are delivered |
| ADDRCOMM | address_number | Address Number |
| COUNTRY | country_key | Country Key |
| REGION | region | Region (State, Province, County) |
| PO_BOX_CTY | po_box_country | PO box country |
| PO_BOX_REG | region_po_box | Region for PO Box (Country, State, Province, ...) |
| CITYH_CODE | different_city_code | Different City Coding for City/Street File |
| CITY_CODE | city_code | City code for city/street file |
| CITY_CODE2 | city_po_box_code | City PO box code (City file) |
| STREETCODE | street_number | Street Number for City/Street File |
| LANGU | language_key | Language Key |
| NATION | version_id | Version ID for International Addresses |