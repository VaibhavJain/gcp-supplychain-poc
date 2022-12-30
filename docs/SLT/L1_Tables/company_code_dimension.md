
## Table Name : company_code_dimension

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| company_code_uuid              | STRING    | Universal unique id                                          |
| company_code_key               | STRING    | Company Code Key                                             |
| client                         | STRING    | Client                                                       |
| company_code                   | STRING    | Company Code                                                 |
| company_name                   | STRING    | Name of Company Code or Company                              |
| city                           | STRING    | City                                                         |
| country                        | STRING    | Country Key                                                  |
| currency                       | STRING    | Currency Key                                                 |
| language_key                   | STRING    | Language Key                                                 |
| chart_of_accts                 | STRING    | Chart of Accounts                                            |
| max_exch_rate_dev              | STRING    | Maximum exchange rate deviation in percent                   |
| fi_year_variant                | STRING    | Fiscal Year Variant                                          |
| cocd_co_area                   | STRING    | Allocation Indicator                                         |
| company                        | STRING    | Company                                                      |
| address                        | STRING    | Address                                                      |
| vat_reg_no                     | STRING    | VAT Registration Number                                      |
| fm_area                        | STRING    | Financial Management Area                                    |
| project_cm_active              | STRING    | Indicator: Project Cash Management active?                   |
| cbm_active                     | STRING    | Indicator: Cash Budget Management Active                     |
| update_fm                      | STRING    | Activate Update in Funds Management                          |
| jurisdict_code                 | STRING    | Jurisdiction for tax calculation - tax jurisdiction code     |
| fundsctr_in_hr                 | DATE      | Funds center can be assigned to an account in HR from        |
| template                       | STRING    | Company code is a template                                   |
| screen_variant                 | STRING    | Company Code Variant (Screen)                                |
| cash_mgmnt_comp_code           | STRING    | Cash Management and Forecast Company Code                    |
| cm_activated                   | STRING    | Indicator: Cash Management Activated?                        |
| propose_value_date             | STRING    | Indicator: Propose Current Date As Value Date?               |
| net_discount_base              | STRING    | Indicator: Discount base amount is the net value             |
| cred_contr_area                | STRING    | Credit control area                                          |
| net_tax_base                   | STRING    | Indicator: Base amount for tax is net of discount ?          |
| sample_acct_rules              | STRING    | Rules for Copying from the Sample Account for G/L Accounts   |
| business_area_fs               | STRING    | Indicator: Business Area Financial Statements Required?      |
| propose_fiscal_year            | STRING    | Indicator: Propose Fiscal Year?                              |
| indicator_post_translations_f  | STRING    | Indicator: Post Translations for Exchange Rate Differences?  |
| productive                     | STRING    | Indicator: Productive Company Code?                          |
| purchase_acct                  | STRING    | Indicator: Purchase Account Processing Is Active             |
| jva_active                     | STRING    | Indicator: JVA Active                                        |
| fin_asset_man_active           | STRING    | Indicator: Financial Assets Management Active                |
| indicator_no_exchange_rate_di  | STRING    | Indicator: No Exchange Rate Difference When Clearing in LC   |
| update_mm_in_cmf               | STRING    | Indicator: Updating MM in Cash Mgmt/Forecast Activated?      |
| update_sd_in_cmf               | STRING    | Indicator: Updating SD in Cash Mgmt/Forecast Activated?      |
| external_cocode                | STRING    | Indicator: Company Code Is in Another System                 |
| original_key                   | STRING    | Original Key of the Company Code                             |
| cntry_chrt_acts                | STRING    | Chart of Accounts According to Country Legislation           |
| tax_group                      | STRING    | Sales/Purchases Tax Group                                    |
| global_cocde                   | STRING    | Name of global company code                                  |
| fld_stat_var                   | STRING    | Field Status Variant                                         |
| pstg_per_var                   | STRING    | Posting Period Variant                                       |
| hedgereq_active                | STRING    | Indicator: hedge request active                              |
| tx_crcy_transl                 | STRING    | Foreign Currency Translation for Tax Items                   |
| workflow_var                   | STRING    | Workflow Variant                                             |
| inventory_mgmt                 | STRING    | G/L account authorization check in inventory management      |
| po_sched_agmt                  | STRING    | G/L account authorization check in PO/scheduling agreement   |
| requisition                    | STRING    | G/L account authorization check in purchase requisitions     |
| contract                       | STRING    | G/L account authorization check in contracts                 |
| indicator_document_date_as_th  | STRING    | Indicator: Document Date As the Basis for Tax Determination  |
| input_tax_code                 | STRING    | Input Tax Code for Non-Taxable Transactions                  |
| output_tax_code                | STRING    | Output Tax Code for Non-Taxable Transactions                 |
| imp_data_in_po                 | STRING    | Foreign Trade: Import Data Control in MM Purchase Orders     |
| indicator_negative_postings_p  | STRING    | Indicator: Negative Postings Permitted                       |
| enter_control_area             | STRING    | Indicator: Can Credit Control Area Be Overwritten?           |
| extended_wtax_active           | STRING    | Indicator: Extended Withholding Tax Active                   |
| parking_pst_date               | STRING    | Procedure for Setting the Posting Date                       |
| method                         | STRING    | Inflation Method                                             |
| fldstatusvar                   | STRING    | Funds Reservation Field Status Variant                       |
| copying_ctrl_gr                | STRING    | Foreign trade: Import data copying control for GR            |
| import_data_gr                 | STRING    | Foreign Trade: Screen ctrl of imp.data f. MM-goods rececipt  |
| offsetting_acct                | STRING    | Method for Offsetting Account Determination                  |
| ba_variant                     | STRING    | Additional settings variant for bus.area financial statemnts |
| cos_status                     | STRING    | Cost of Sales Accounting Status                              |
| accts_recble_pledg             | STRING    | Accounts Receivable Pledging Active                          |
| amount_split_to                | STRING    | Enable Amount Split                                          |
| surcharges                     | STRING    | Surcharge Calculation Method                                 |
| doc_type                       | STRING    | Document Type for Provisions for Taxes on Services Received  |
| doc_type_1                     | STRING    | Document Type for Journal Voucher (Amount Correction)        |
| document_type                  | STRING    | Document Type for Journal Voucher (Tax Code Correction)      |
| rc_doc_type                    | STRING    | Document Type for Remittance Challans                        |
| def_tax_rule                   | STRING    | Deferred Tax Rule                                            |
| tax_date                       | STRING    | Tax Reporting Date Active in Documents                       |
| manage_postg_period            | STRING    | Manage Variant of Posting Period for Company Code/Ledger     |
| shopping_cart                  | STRING    | G/L account authorization check in shopping cart             |
| hide_entry                     | STRING    | Hide Entry in Value Help                                     |
| activ_aadrivton                | STRING    | Activate Account Assignment Derivation in Funds Management   |
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
| city_adrc                      | STRING    | City                                                         |
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
| country_adrc                   | STRING    | Country Key                                                  |
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