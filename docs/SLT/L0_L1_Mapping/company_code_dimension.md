
## Table Name : company_code_dimension

| sap_table | sap_column       | column_name                    | data_type | description                                                  |
|-----------|------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                  | company_code_uuid              | STRING    | Universal unique id                                          |
|           |                  | company_code_key               | STRING    | Company Code Key                                             |
| T001      | MANDT            | client                         | STRING    | Client                                                       |
| T001      | BUKRS            | company_code                   | STRING    | Company Code                                                 |
| T001      | BUTXT            | company_name                   | STRING    | Name of Company Code or Company                              |
| T001      | ORT01            | city                           | STRING    | City                                                         |
| T001      | LAND1            | country                        | STRING    | Country Key                                                  |
| T001      | WAERS            | currency                       | STRING    | Currency Key                                                 |
| T001      | SPRAS            | language_key                   | STRING    | Language Key                                                 |
| T001      | KTOPL            | chart_of_accts                 | STRING    | Chart of Accounts                                            |
| T001      | WAABW            | max_exch_rate_dev              | STRING    | Maximum exchange rate deviation in percent                   |
| T001      | PERIV            | fi_year_variant                | STRING    | Fiscal Year Variant                                          |
| T001      | KOKFI            | cocd_co_area                   | STRING    | Allocation Indicator                                         |
| T001      | RCOMP            | company                        | STRING    | Company                                                      |
| T001      | ADRNR            | address                        | STRING    | Address                                                      |
| T001      | STCEG            | vat_reg_no                     | STRING    | VAT Registration Number                                      |
| T001      | FIKRS            | fm_area                        | STRING    | Financial Management Area                                    |
| T001      | XFMCO            | project_cm_active              | STRING    | Indicator: Project Cash Management active?                   |
| T001      | XFMCB            | cbm_active                     | STRING    | Indicator: Cash Budget Management Active                     |
| T001      | XFMCA            | update_fm                      | STRING    | Activate Update in Funds Management                          |
| T001      | TXJCD            | jurisdict_code                 | STRING    | Jurisdiction for tax calculation - tax jurisdiction code     |
| T001      | FMHRDATE         | fundsctr_in_hr                 | DATE      | Funds center can be assigned to an account in HR from        |
| T001      | XTEMPLT          | template                       | STRING    | Company code is a template                                   |
| T001      | BUVAR            | screen_variant                 | STRING    | Company Code Variant (Screen)                                |
| T001      | FDBUK            | cash_mgmnt_comp_code           | STRING    | Cash Management and Forecast Company Code                    |
| T001      | XFDIS            | cm_activated                   | STRING    | Indicator: Cash Management Activated?                        |
| T001      | XVALV            | propose_value_date             | STRING    | Indicator: Propose Current Date As Value Date?               |
| T001      | XSKFN            | net_discount_base              | STRING    | Indicator: Discount base amount is the net value             |
| T001      | KKBER            | cred_contr_area                | STRING    | Credit control area                                          |
| T001      | XMWSN            | net_tax_base                   | STRING    | Indicator: Base amount for tax is net of discount ?          |
| T001      | MREGL            | sample_acct_rules              | STRING    | Rules for Copying from the Sample Account for G/L Accounts   |
| T001      | XGSBE            | business_area_fs               | STRING    | Indicator: Business Area Financial Statements Required?      |
| T001      | XGJRV            | propose_fiscal_year            | STRING    | Indicator: Propose Fiscal Year?                              |
| T001      | XKDFT            | indicator_post_translations_f  | STRING    | Indicator: Post Translations for Exchange Rate Differences?  |
| T001      | XPROD            | productive                     | STRING    | Indicator: Productive Company Code?                          |
| T001      | XEINK            | purchase_acct                  | STRING    | Indicator: Purchase Account Processing Is Active             |
| T001      | XJVAA            | jva_active                     | STRING    | Indicator: JVA Active                                        |
| T001      | XVVWA            | fin_asset_man_active           | STRING    | Indicator: Financial Assets Management Active                |
| T001      | XSLTA            | indicator_no_exchange_rate_di  | STRING    | Indicator: No Exchange Rate Difference When Clearing in LC   |
| T001      | XFDMM            | update_mm_in_cmf               | STRING    | Indicator: Updating MM in Cash Mgmt/Forecast Activated?      |
| T001      | XFDSD            | update_sd_in_cmf               | STRING    | Indicator: Updating SD in Cash Mgmt/Forecast Activated?      |
| T001      | XEXTB            | external_cocode                | STRING    | Indicator: Company Code Is in Another System                 |
| T001      | EBUKR            | original_key                   | STRING    | Original Key of the Company Code                             |
| T001      | KTOP2            | cntry_chrt_acts                | STRING    | Chart of Accounts According to Country Legislation           |
| T001      | UMKRS            | tax_group                      | STRING    | Sales/Purchases Tax Group                                    |
| T001      | BUKRS_GLOB       | global_cocde                   | STRING    | Name of global company code                                  |
| T001      | FSTVA            | fld_stat_var                   | STRING    | Field Status Variant                                         |
| T001      | OPVAR            | pstg_per_var                   | STRING    | Posting Period Variant                                       |
| T001      | XCOVR            | hedgereq_active                | STRING    | Indicator: hedge request active                              |
| T001      | TXKRS            | tx_crcy_transl                 | STRING    | Foreign Currency Translation for Tax Items                   |
| T001      | WFVAR            | workflow_var                   | STRING    | Workflow Variant                                             |
| T001      | XBBBF            | inventory_mgmt                 | STRING    | G/L account authorization check in inventory management      |
| T001      | XBBBE            | po_sched_agmt                  | STRING    | G/L account authorization check in PO/scheduling agreement   |
| T001      | XBBBA            | requisition                    | STRING    | G/L account authorization check in purchase requisitions     |
| T001      | XBBKO            | contract                       | STRING    | G/L account authorization check in contracts                 |
| T001      | XSTDT            | indicator_document_date_as_th  | STRING    | Indicator: Document Date As the Basis for Tax Determination  |
| T001      | MWSKV            | input_tax_code                 | STRING    | Input Tax Code for Non-Taxable Transactions                  |
| T001      | MWSKA            | output_tax_code                | STRING    | Output Tax Code for Non-Taxable Transactions                 |
| T001      | IMPDA            | imp_data_in_po                 | STRING    | Foreign Trade: Import Data Control in MM Purchase Orders     |
| T001      | XNEGP            | indicator_negative_postings_p  | STRING    | Indicator: Negative Postings Permitted                       |
| T001      | XKKBI            | enter_control_area             | STRING    | Indicator: Can Credit Control Area Be Overwritten?           |
| T001      | WT_NEWWT         | extended_wtax_active           | STRING    | Indicator: Extended Withholding Tax Active                   |
| T001      | PP_PDATE         | parking_pst_date               | STRING    | Procedure for Setting the Posting Date                       |
| T001      | INFMT            | method                         | STRING    | Inflation Method                                             |
| T001      | FSTVARE          | fldstatusvar                   | STRING    | Funds Reservation Field Status Variant                       |
| T001      | KOPIM            | copying_ctrl_gr                | STRING    | Foreign trade: Import data copying control for GR            |
| T001      | DKWEG            | import_data_gr                 | STRING    | Foreign Trade: Screen ctrl of imp.data f. MM-goods rececipt  |
| T001      | OFFSACCT         | offsetting_acct                | STRING    | Method for Offsetting Account Determination                  |
| T001      | BAPOVAR          | ba_variant                     | STRING    | Additional settings variant for bus.area financial statemnts |
| T001      | XCOS             | cos_status                     | STRING    | Cost of Sales Accounting Status                              |
| T001      | XCESSION         | accts_recble_pledg             | STRING    | Accounts Receivable Pledging Active                          |
| T001      | XSPLT            | amount_split_to                | STRING    | Enable Amount Split                                          |
| T001      | SURCCM           | surcharges                     | STRING    | Surcharge Calculation Method                                 |
| T001      | DTPROV           | doc_type                       | STRING    | Document Type for Provisions for Taxes on Services Received  |
| T001      | DTAMTC           | doc_type_1                     | STRING    | Document Type for Journal Voucher (Amount Correction)        |
| T001      | DTTAXC           | document_type                  | STRING    | Document Type for Journal Voucher (Tax Code Correction)      |
| T001      | DTTDSP           | rc_doc_type                    | STRING    | Document Type for Remittance Challans                        |
| T001      | DTAXR            | def_tax_rule                   | STRING    | Deferred Tax Rule                                            |
| T001      | XVATDATE         | tax_date                       | STRING    | Tax Reporting Date Active in Documents                       |
| T001      | PST_PER_VAR      | manage_postg_period            | STRING    | Manage Variant of Posting Period for Company Code/Ledger     |
| T001      | XBBSC            | shopping_cart                  | STRING    | G/L account authorization check in shopping cart             |
| T001      | F_OBSOLETE       | hide_entry                     | STRING    | Hide Entry in Value Help                                     |
| T001      | FM_DERIVE_ACC    | activ_aadrivton                | STRING    | Activate Account Assignment Derivation in Funds Management   |
| ADRC      | ADDRNUMBER       | address_number                 | STRING    | Address Number                                               |
| ADRC      | DATE_FROM        | valid_from                     | DATE      | Valid-from date - in current Release only 00010101 possible  |
| ADRC      | NATION           | address_version                | STRING    | Version ID for International Addresses                       |
| ADRC      | DATE_TO          | valid_to                       | DATE      | Valid-to date in current Release only 99991231 possible      |
| ADRC      | TITLE            | title                          | STRING    | Form-of-Address Key                                          |
| ADRC      | NAME1            | name                           | STRING    | Name 1                                                       |
| ADRC      | NAME2            | name_2                         | STRING    | Name 2                                                       |
| ADRC      | NAME3            | name_3                         | STRING    | Name 3                                                       |
| ADRC      | NAME4            | name_4                         | STRING    | Name 4                                                       |
| ADRC      | NAME_TEXT        | conv_name                      | STRING    | Converted name field (with form of address)                  |
| ADRC      | NAME_CO          | co_name                        | STRING    | c/o name                                                     |
| ADRC      | CITY1            | city_adrc                      | STRING    | City                                                         |
| ADRC      | CITY2            | district                       | STRING    | District                                                     |
| ADRC      | CITY_CODE        | city_code                      | STRING    | City code for city/street file                               |
| ADRC      | CITYP_CODE       | district_1                     | STRING    | District code for City and Street file                       |
| ADRC      | HOME_CITY        | different_city                 | STRING    | City (different from postal city)                            |
| ADRC      | CITYH_CODE       | city_code_1                    | STRING    | Different city for city/street file                          |
| ADRC      | CHCKSTATUS       | check_status                   | STRING    | City file test status                                        |
| ADRC      | REGIOGROUP       | structure_group                | STRING    | Regional structure grouping                                  |
| ADRC      | POST_CODE1       | postal_code                    | STRING    | City postal code                                             |
| ADRC      | POST_CODE2       | po_box_post_cde                | STRING    | PO Box Postal Code                                           |
| ADRC      | POST_CODE3       | company_post_cd                | STRING    | Company Postal Code (for Large Customers)                    |
| ADRC      | PCODE1_EXT       | postal_code_ext                | STRING    | (Not Supported)City Postal Code Extension, e.g. ZIP+4+2 Code |
| ADRC      | PCODE2_EXT       | postal_code_ext_1              | STRING    | (Not Supported) PO Box Postal Code Extension                 |
| ADRC      | PCODE3_EXT       | postal_code_ext_2              | STRING    | (Not Supported) Major Customer Postal Code Extension         |
| ADRC      | PO_BOX           | po_box                         | STRING    | PO Box                                                       |
| ADRC      | DONT_USE_P       | undeliverable                  | STRING    | PO Box Address Undeliverable Flag                            |
| ADRC      | PO_BOX_NUM       | po_box_w_o_no                  | STRING    | Flag: PO Box Without Number                                  |
| ADRC      | PO_BOX_LOC       | po_box_city                    | STRING    | PO Box city                                                  |
| ADRC      | CITY_CODE2       | city_code_2                    | STRING    | City PO box code (City file)                                 |
| ADRC      | PO_BOX_REG       | po_region                      | STRING    | Region for PO Box (Country, State, Province, ...)            |
| ADRC      | PO_BOX_CTY       | po_box_country                 | STRING    | PO box country                                               |
| ADRC      | POSTALAREA       | delivery_dist                  | STRING    | (Not Supported) Post Delivery District                       |
| ADRC      | TRANSPZONE       | transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| ADRC      | STREET           | street                         | STRING    | Street                                                       |
| ADRC      | DONT_USE_S       | undeliverable_1                | STRING    | Street Address Undeliverable Flag                            |
| ADRC      | STREETCODE       | street_code                    | STRING    | Street Number for City/Street File                           |
| ADRC      | STREETABBR       | street_abbrev                  | STRING    | (Not Supported) Abbreviation of Street Name                  |
| ADRC      | HOUSE_NUM1       | house_number                   | STRING    | House Number                                                 |
| ADRC      | HOUSE_NUM2       | supplement                     | STRING    | House number supplement                                      |
| ADRC      | HOUSE_NUM3       | number_range                   | STRING    | (Not supported) House Number Range                           |
| ADRC      | STR_SUPPL1       | street_2                       | STRING    | Street 2                                                     |
| ADRC      | STR_SUPPL2       | street_3                       | STRING    | Street 3                                                     |
| ADRC      | STR_SUPPL3       | street_4                       | STRING    | Street 4                                                     |
| ADRC      | LOCATION         | street_5                       | STRING    | Street 5                                                     |
| ADRC      | BUILDING         | building_code                  | STRING    | Building (Number or Code)                                    |
| ADRC      | FLOOR            | floor_in_building              | STRING    | Floor in building                                            |
| ADRC      | ROOMNUMBER       | room_number                    | STRING    | Room or Apartment Number                                     |
| ADRC      | COUNTRY          | country_adrc                   | STRING    | Country Key                                                  |
| ADRC      | LANGU            | language_key_adrc              | STRING    | Language Key                                                 |
| ADRC      | REGION           | region                         | STRING    | Region (State, Province, County)                             |
| ADRC      | ADDR_GROUP       | address_group                  | STRING    | Address Group (Key) (Business Address Services)              |
| ADRC      | FLAGGROUPS       | flag_there_are_more_address_g  | STRING    | Flag: There are more address group assignments               |
| ADRC      | PERS_ADDR        | pers_address                   | STRING    | Flag: This is a personal address                             |
| ADRC      | SORT1            | search_term_1                  | STRING    | Search Term 1                                                |
| ADRC      | SORT2            | search_term_2                  | STRING    | Search Term 2                                                |
| ADRC      | SORT_PHN         | phonet_sort                    | STRING    | (Not Supported) Phonetic Search Sort Field                   |
| ADRC      | DEFLT_COMM       | comm_method                    | STRING    | Communication Method (Key) (Business Address Services)       |
| ADRC      | TEL_NUMBER       | telephone                      | STRING    | First telephone no.: dialling code+number                    |
| ADRC      | TEL_EXTENS       | extension                      | STRING    | First Telephone No.: Extension                               |
| ADRC      | FAX_NUMBER       | fax                            | STRING    | First fax no.: dialling code+number                          |
| ADRC      | FAX_EXTENS       | extension_1                    | STRING    | First fax no.: extension                                     |
| ADRC      | FLAGCOMM2        | telephone_1                    | STRING    | Flag: Telephone number(s) defined                            |
| ADRC      | FLAGCOMM3        | fax_1                          | STRING    | Flag: Fax number(s) defined                                  |
| ADRC      | FLAGCOMM4        | teletex                        | STRING    | Flag: Teletex number(s) defined                              |
| ADRC      | FLAGCOMM5        | telex                          | STRING    | Flag: Telex number(s) defined                                |
| ADRC      | FLAGCOMM6        | e_mail_defined                 | STRING    | Flag: E-mail address(es) defined                             |
| ADRC      | FLAGCOMM7        | r_mail                         | STRING    | Flag: RML (remote mail) addresse(s) defined                  |
| ADRC      | FLAGCOMM8        | x_400                          | STRING    | Flag: X.400 addresse(s) defined                              |
| ADRC      | FLAGCOMM9        | rfc                            | STRING    | Flag: RFC destination(s) defined                             |
| ADRC      | FLAGCOMM10       | printer                        | STRING    | Flag: Printer defined                                        |
| ADRC      | FLAGCOMM11       | ssf                            | STRING    | Flag: SSF defined                                            |
| ADRC      | FLAGCOMM12       | uri_ftp                        | STRING    | Flag: URI/FTP address defined                                |
| ADRC      | FLAGCOMM13       | pager                          | STRING    | Flag: Pager address defined                                  |
| ADRC      | ADDRORIGIN       | address_source                 | STRING    | (Not Supported) Address Data Source (Key)                    |
| ADRC      | MC_NAME1         | name_1                         | STRING    | Name (Field NAME1) in Uppercase for Search Help              |
| ADRC      | MC_CITY1         | city_1                         | STRING    | City name in Uppercase for Search Help                       |
| ADRC      | MC_STREET        | street_1                       | STRING    | Street Name in Uppercase for Search Help                     |
| ADRC      | EXTENSION1       | data_line                      | STRING    | Extension (only for data conversion) (e.g. data line)        |
| ADRC      | EXTENSION2       | telebox                        | STRING    | Extension (only for data conversion) (e.g. telebox)          |
| ADRC      | TIME_ZONE        | time_zone                      | STRING    | Address time zone                                            |
| ADRC      | TAXJURCODE       | tax_jurisdiction               | STRING    | Tax Jurisdiction                                             |
| ADRC      | ADDRESS_ID       | address_id                     | STRING    | (Not supported) Physical address ID                          |
| ADRC      | LANGU_CREA       | creation_lang                  | STRING    | Address record creation original language                    |
| ADRC      | ADRC_UUID        | address_uuid                   | BYTES     | UUID Used in the Address                                     |
| ADRC      | UUID_BELATED     | subsequent_uuid                | STRING    | Indicator: UUID created later                                |
| ADRC      | ID_CATEGORY      | id_category                    | STRING    | Category of an Address ID                                    |
| ADRC      | ADRC_ERR_STATUS  | error_status                   | STRING    | Error Status of Address                                      |
| ADRC      | PO_BOX_LOBBY     | po_box_lobby                   | STRING    | PO Box Lobby                                                 |
| ADRC      | DELI_SERV_TYPE   | delvry_serv_type               | STRING    | Type of Delivery Service                                     |
| ADRC      | DELI_SERV_NUMBER | delivery_service_no            | STRING    | Number of Delivery Service                                   |
| ADRC      | COUNTY_CODE      | county_code                    | STRING    | County code for county                                       |
| ADRC      | COUNTY           | county                         | STRING    | County                                                       |
| ADRC      | TOWNSHIP_CODE    | township_code                  | STRING    | Township code for Township                                   |
| ADRC      | TOWNSHIP         | township                       | STRING    | Township                                                     |
| ADRC      | MC_COUNTY        | county_1                       | STRING    | County name in upper case for search help                    |
| ADRC      | MC_TOWNSHIP      | township_1                     | STRING    | Township name in upper case for search help                  |
| ADRC      | XPCPT            | purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
| ADRC      | _DATAAGING       | data_filter_value_for_data_agi | DATE      | Data Filter Value for Data Aging                             |
| ADRC      | DUNS             | duns_number                    | STRING    | Dun & Bradstreet number (DUNS)                               |
| ADRC      | DUNSP4           | duns_4                         | STRING    | DUNS+4 number (the last four digit)                          |
|           |                  | finalmd5key                    | STRING    | MD5 key combining all columns                                |
|           |                  | input_last_update_date         | DATETIME  | Last Input read time                                         |
|           |                  | dw_active_indicator            | STRING    | Valid Indicator                                              |
|           |                  | dw_start_date                  | DATETIME  | Record start date                                            |
|           |                  | dw_end_date                    | DATETIME  | Record end date                                              |
|           |                  | dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms