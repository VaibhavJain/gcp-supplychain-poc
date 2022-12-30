
## Table Name : transportation_hub_dimension

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| transportation_hub_uuid        | STRING    | Universal unique id                                          |
| transportation_hub_key         | STRING    | Transportation Hub Key                                       |
| client                         | STRING    | Client                                                       |
| transportplanpt                | STRING    | Transportation planning point                                |
| factory_calend                 | STRING    | Factory calendar key                                         |
| address                        | STRING    | Address                                                      |
| id_transp_syst                 | STRING    | ID for External Transport System                             |
| tps_partner_no                 | STRING    | Partner number of external transportation planning system    |
| partnerty                      | STRING    | Partner type of external transportation planning system      |
| output_type                    | STRING    | Output type for transportation planning systems              |
| ext_no_range                   | STRING    | External no.range for external transporation planning system |
| change_shipment                | STRING    | Controlling for changes to externally planned shipments      |
| overall_status                 | STRING    | Overall status of a shipment for which plan. end is set      |
| status_filter                  | STRING    | Status filtering mode for TPS                                |
| text_id                        | STRING    | Delivery header text ID for transferral to ext. trans.pl.sys |
| text_id_1                      | STRING    | Delivery header text ID for transferral to ext. trans.pl.sys |
| text_id_2                      | STRING    | Delivery header text ID for transferral to ext. trans.pl.sys |
| company_code                   | STRING    | Company Code                                                 |
| stats_wgt_unit                 | STRING    | Weight unit for statistics update                            |
| stats_vol_unit                 | STRING    | Volume unit for statistics update                            |
| stats_dist_unit                | STRING    | Distance unit for statistics update                          |
| stat_curr_unit                 | STRING    | Currency Unit for Statistical Update                         |
| language_key                   | STRING    | Language Key                                                 |
| transportplanpt_ttdst          | STRING    | Transportation planning point                                |
| description                    | STRING    | Description                                                  |
| address_number                 | STRING    | Address Number                                               |
| valid_from                     | DATE      | Valid-from date - in current Release only 00010101 possible  |
| address_version                | STRING    | Version ID for International Addresses                       |
| valid_to                       | DATE      | Valid-to date in current Release only 99991231 possible      |
| title                          | STRING    | Form-of-Address Key                                          |
| name                           | STRING    | Name 1                                                       |
| name_2                         | STRING    | Name 2                                                       |
| name_3                         | STRING    | Name 3                                                       |
| name_4                         | STRING    | Name 4                                                       |
| conv_name                      | STRING    | Converted name field (with form of address)                  |
| co_name                        | STRING    | c/o name                                                     |
| city                           | STRING    | City                                                         |
| district                       | STRING    | District                                                     |
| city_code                      | STRING    | City code for city/street file                               |
| district_1                     | STRING    | District code for City and Street file                       |
| different_city                 | STRING    | City (different from postal city)                            |
| city_code_1                    | STRING    | Different city for city/street file                          |
| check_status                   | STRING    | City file test status                                        |
| structure_group                | STRING    | Regional structure grouping                                  |
| postal_code                    | STRING    | City postal code                                             |
| po_box_post_cde                | STRING    | PO Box Postal Code                                           |
| company_post_cd                | STRING    | Company Postal Code (for Large Customers)                    |
| postal_code_ext                | STRING    | (Not Supported)City Postal Code Extension, e.g. ZIP+4+2 Code |
| postal_code_ext_1              | STRING    | (Not Supported) PO Box Postal Code Extension                 |
| postal_code_ext_2              | STRING    | (Not Supported) Major Customer Postal Code Extension         |
| po_box                         | STRING    | PO Box                                                       |
| undeliverable                  | STRING    | PO Box Address Undeliverable Flag                            |
| po_box_w_o_no                  | STRING    | Flag: PO Box Without Number                                  |
| po_box_city                    | STRING    | PO Box city                                                  |
| city_code_2                    | STRING    | City PO box code (City file)                                 |
| po_region                      | STRING    | Region for PO Box (Country, State, Province, ...)            |
| po_box_country                 | STRING    | PO box country                                               |
| delivery_dist                  | STRING    | (Not Supported) Post Delivery District                       |
| transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| street                         | STRING    | Street                                                       |
| undeliverable_1                | STRING    | Street Address Undeliverable Flag                            |
| street_code                    | STRING    | Street Number for City/Street File                           |
| street_abbrev                  | STRING    | (Not Supported) Abbreviation of Street Name                  |
| house_number                   | STRING    | House Number                                                 |
| supplement                     | STRING    | House number supplement                                      |
| number_range                   | STRING    | (Not supported) House Number Range                           |
| street_2                       | STRING    | Street 2                                                     |
| street_3                       | STRING    | Street 3                                                     |
| street_4                       | STRING    | Street 4                                                     |
| street_5                       | STRING    | Street 5                                                     |
| building_code                  | STRING    | Building (Number or Code)                                    |
| floor_in_building              | STRING    | Floor in building                                            |
| room_number                    | STRING    | Room or Apartment Number                                     |
| country                        | STRING    | Country Key                                                  |
| language_key_adrc              | STRING    | Language Key                                                 |
| region                         | STRING    | Region (State, Province, County)                             |
| address_group                  | STRING    | Address Group (Key) (Business Address Services)              |
| flag_there_are_more_address_g  | STRING    | Flag: There are more address group assignments               |
| pers_address                   | STRING    | Flag: This is a personal address                             |
| search_term_1                  | STRING    | Search Term 1                                                |
| search_term_2                  | STRING    | Search Term 2                                                |
| phonet_sort                    | STRING    | (Not Supported) Phonetic Search Sort Field                   |
| comm_method                    | STRING    | Communication Method (Key) (Business Address Services)       |
| telephone                      | STRING    | First telephone no.: dialling code+number                    |
| extension                      | STRING    | First Telephone No.: Extension                               |
| fax                            | STRING    | First fax no.: dialling code+number                          |
| extension_1                    | STRING    | First fax no.: extension                                     |
| telephone_1                    | STRING    | Flag: Telephone number(s) defined                            |
| fax_1                          | STRING    | Flag: Fax number(s) defined                                  |
| teletex                        | STRING    | Flag: Teletex number(s) defined                              |
| telex                          | STRING    | Flag: Telex number(s) defined                                |
| e_mail_defined                 | STRING    | Flag: E-mail address(es) defined                             |
| r_mail                         | STRING    | Flag: RML (remote mail) addresse(s) defined                  |
| x_400                          | STRING    | Flag: X.400 addresse(s) defined                              |
| rfc                            | STRING    | Flag: RFC destination(s) defined                             |
| printer                        | STRING    | Flag: Printer defined                                        |
| ssf                            | STRING    | Flag: SSF defined                                            |
| uri_ftp                        | STRING    | Flag: URI/FTP address defined                                |
| pager                          | STRING    | Flag: Pager address defined                                  |
| address_source                 | STRING    | (Not Supported) Address Data Source (Key)                    |
| name_1                         | STRING    | Name (Field NAME1) in Uppercase for Search Help              |
| city_1                         | STRING    | City name in Uppercase for Search Help                       |
| street_1                       | STRING    | Street Name in Uppercase for Search Help                     |
| data_line                      | STRING    | Extension (only for data conversion) (e.g. data line)        |
| telebox                        | STRING    | Extension (only for data conversion) (e.g. telebox)          |
| time_zone                      | STRING    | Address time zone                                            |
| tax_jurisdiction               | STRING    | Tax Jurisdiction                                             |
| address_id                     | STRING    | (Not supported) Physical address ID                          |
| creation_lang                  | STRING    | Address record creation original language                    |
| address_uuid                   | BYTES     | UUID Used in the Address                                     |
| subsequent_uuid                | STRING    | Indicator: UUID created later                                |
| id_category                    | STRING    | Category of an Address ID                                    |
| error_status                   | STRING    | Error Status of Address                                      |
| po_box_lobby                   | STRING    | PO Box Lobby                                                 |
| delvry_serv_type               | STRING    | Type of Delivery Service                                     |
| delivery_service_no            | STRING    | Number of Delivery Service                                   |
| county_code                    | STRING    | County code for county                                       |
| county                         | STRING    | County                                                       |
| township_code                  | STRING    | Township code for Township                                   |
| township                       | STRING    | Township                                                     |
| county_1                       | STRING    | County name in upper case for search help                    |
| township_1                     | STRING    | Township name in upper case for search help                  |
| purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
| data_filter_value_for_data_agi | DATE      | Data Filter Value for Data Aging                             |
| duns_number                    | STRING    | Dun & Bradstreet number (DUNS)                               |
| duns_4                         | STRING    | DUNS+4 number (the last four digit)                          |
| finalmd5key                    | STRING    | MD5 key combining all columns                                |
| input_last_update_date         | DATETIME  | Last Input read time                                         |
| dw_active_indicator            | STRING    | Valid Indicator                                              |
| dw_start_date                  | DATETIME  | Record start date                                            |
| dw_end_date                    | DATETIME  | Record end date                                              |
| dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms