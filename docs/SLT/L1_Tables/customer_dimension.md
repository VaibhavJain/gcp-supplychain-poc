
## Table Name : customer_dimension

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| customer_uuid                  | STRING    | Unique Generated Id                                          |
| customer_key                   | STRING    | Customer key                                                 |
| client                         | STRING    | Client                                                       |
| customer                       | STRING    | Customer Number                                              |
| country                        | STRING    | Country Key                                                  |
| name                           | STRING    | Name 1                                                       |
| name_2                         | STRING    | Name 2                                                       |
| city                           | STRING    | City                                                         |
| postal_code                    | STRING    | Postal Code                                                  |
| region                         | STRING    | Region (State, Province, County)                             |
| search_term                    | STRING    | Sort field                                                   |
| street                         | STRING    | Street and House Number                                      |
| telephone_1                    | STRING    | First telephone number                                       |
| fax_number                     | STRING    | Fax Number                                                   |
| one_time_acct                  | STRING    | Indicator: Is the account a one-time account?                |
| address                        | STRING    | Address                                                      |
| name_1                         | STRING    | Search term for matchcode search                             |
| name_2_1                       | STRING    | Search Term for Matchcode Search                             |
| city_1                         | STRING    | Search term for matchcode search                             |
| title                          | STRING    | Title                                                        |
| order_block                    | STRING    | Central order block for customer                             |
| express_station                | STRING    | Express train station                                        |
| train_station                  | STRING    | Train station                                                |
| location_no_1                  | STRING    | International location number  (part 1)                      |
| location_no_2                  | STRING    | International location number (Part 2)                       |
| authorization                  | STRING    | Authorization Group                                          |
| industry                       | STRING    | Industry key                                                 |
| check_digit                    | STRING    | Check digit for the international location number            |
| data_line                      | STRING    | Data communication line no.                                  |
| created_on                     | DATE      | Date on which the Record Was Created                         |
| created_by                     | STRING    | Name of Person who Created the Object                        |
| unloading_pts                  | STRING    | Indicator: Unloading points exist                            |
| billing_block                  | STRING    | Central billing block for customer                           |
| fiscal_address                 | STRING    | Account number of the master record with the fiscal address  |
| working_times                  | STRING    | Working Time Calendar                                        |
| alternat_payer                 | STRING    | Account number of an alternative payer                       |
| group_key                      | STRING    | Group key                                                    |
| account_group                  | STRING    | Customer Account Group                                       |
| customer_class                 | STRING    | Customer classification                                      |
| vendor                         | STRING    | Account Number of Vendor or Creditor                         |
| delivery_block                 | STRING    | Central delivery block for the customer                      |
| location_code                  | STRING    | City Coordinates                                             |
| deletion_flag                  | STRING    | Central Deletion Flag for Master Record                      |
| name_3                         | STRING    | Name 3                                                       |
| name_4                         | STRING    | Name 4                                                       |
| nielsen_id                     | STRING    | Nielsen ID                                                   |
| district                       | STRING    | District                                                     |
| po_box                         | STRING    | PO Box                                                       |
| po_box_pcode                   | STRING    | P.O. Box Postal Code                                         |
| county_code                    | STRING    | County Code                                                  |
| city_code                      | STRING    | City Code                                                    |
| regional_market                | STRING    | Regional market                                              |
| posting_block                  | STRING    | Central posting block                                        |
| language_key                   | STRING    | Language Key                                                 |
| tax_number_1                   | STRING    | Tax Number 1                                                 |
| tax_number_2                   | STRING    | Tax Number 2                                                 |
| equalizatn_tax                 | STRING    | Indicator: Business Partner Subject to Equalization Tax?     |
| liable_for_vat                 | STRING    | Liable for VAT                                               |
| telebox                        | STRING    | Telebox number                                               |
| telephone_2                    | STRING    | Second telephone number                                      |
| teletex                        | STRING    | Teletex number                                               |
| telex                          | STRING    | Telex number                                                 |
| transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| al_payer_in_doc                | STRING    | Indicator: Is an alternative payer allowed in document?      |
| trading_partner                | STRING    | Company ID of Trading Partner                                |
| vat_reg_no                     | STRING    | VAT Registration Number                                      |
| competitors                    | STRING    | Indicator: Competitor                                        |
| sales_partner                  | STRING    | Indicator: Sales partner                                     |
| prospect                       | STRING    | Indicator: Sales prospect                                    |
| cust_type_4                    | STRING    | Indicator for customer type 4                                |
| default_sp                     | STRING    | ID for default sold-to party                                 |
| legal_status                   | STRING    | Legal status                                                 |
| industry_code_1                | STRING    | Industry code 1                                              |
| industry_code_2                | STRING    | Industry code 2                                              |
| industry_code_3                | STRING    | Industry code 3                                              |
| industry_code_4                | STRING    | Industry code 4                                              |
| industry_code_5                | STRING    | Industry code 5                                              |
| initial_contact                | STRING    | Initial contact                                              |
| annual_sales                   | NUMERIC   | Annual sales                                                 |
| sales_year                     | STRING    | Year For Which Sales are Given                               |
| currency                       | STRING    | Currency of sales figure                                     |
| employee                       | STRING    | Yearly number of employees                                   |
| year                           | STRING    | Year for which the number of employees is given              |
| attribute_1                    | STRING    | Attribute 1                                                  |
| attribute_2                    | STRING    | Attribute 2                                                  |
| attribute_3                    | STRING    | Attribute 3                                                  |
| attribute_4                    | STRING    | Attribute 4                                                  |
| attribute_5                    | STRING    | Attribute 5                                                  |
| attribute_6                    | STRING    | Attribute 6                                                  |
| attribute_7                    | STRING    | Attribute 7                                                  |
| attribute_8                    | STRING    | Attribute 8                                                  |
| attribute_9                    | STRING    | Attribute 9                                                  |
| attribute_10                   | STRING    | Attribute 10                                                 |
| natural_person                 | STRING    | Natural Person                                               |
| annual_sales_1                 | NUMERIC   | Annual sales                                                 |
| tax_jur                        | STRING    | Tax Jurisdiction                                             |
| fi_year_variant                | STRING    | Fiscal Year Variant                                          |
| usage                          | STRING    | Usage Indicator                                              |
| by_customer                    | STRING    | Inspection Carried Out By Customer (No Inspection Lot)       |
| after_delivery                 | STRING    | Inspection for a Delivery Note After Outbound Delivery       |
| ref_acct_group                 | STRING    | Reference Account Group for One-Time Account (Customer)      |
| p_o_box_city                   | STRING    | PO Box city                                                  |
| plant                          | STRING    | Plant                                                        |
| dme_indicator                  | STRING    | Report key for data medium exchange                          |
| instruction_key                | STRING    | Instruction key for data medium exchange                     |
| data_transfer_status           | STRING    | Status of Data Transfer into Subsequent Release              |
| hier_assignment                | STRING    | Assignment to Hierarchy                                      |
| payment_block                  | STRING    | Payment Block                                                |
| lab_cust_group                 | STRING    | IS-R Labeling: customer/plant group                          |
| non_milit_use                  | STRING    | ID for mainly non-military use                               |
| military_use                   | STRING    | ID for mainly military use                                   |
| condition_grp_1                | STRING    | Customer condition group 1                                   |
| condition_grp_2                | STRING    | Customer condition group 2                                   |
| condition_grp_3                | STRING    | Customer condition group 3                                   |
| condition_grp_4                | STRING    | Customer condition group 4                                   |
| condition_grp_5                | STRING    | Customer condition group 5                                   |
| alt_payer_doc                  | STRING    | Indicator: Alternative payer using account number            |
| tax_type                       | STRING    | Tax type                                                     |
| tax_number_type                | STRING    | Tax Number Type                                              |
| tax_number_3                   | STRING    | Tax Number 3                                                 |
| tax_number_4                   | STRING    | Tax Number 4                                                 |
| tax_number_5                   | STRING    | Tax Number 5                                                 |
| icms_exempt                    | STRING    | Customer is ICMS-exempt                                      |
| ipi_exempt                     | STRING    | Customer is IPI-exempt                                       |
| subtrib_group                  | STRING    | Customer group for Substituiçao Tributária calculation       |
| cfop_category                  | STRING    | Customers CFOP category                                      |
| icms_law                       | STRING    | Tax law: ICMS                                                |
| ipi_law                        | STRING    | Tax law: IPI                                                 |
| biochem_warfare                | STRING    | Indicator for biochemical warfare for legal control          |
| nucl_nonprolif                 | STRING    | Indicator for nuclear nonproliferation for legal control     |
| natl_security                  | STRING    | Indicator for national security for legal control            |
| missile_techn                  | STRING    | Indicator for missile technology for legal control           |
| bonded_area_confirm            | STRING    | TW: Bonded Area Confirm in Business Partner Extension        |
| donate_mark                    | STRING    | TW: Donate Mark in Business Partner Extension                |
| sales_block                    | STRING    | Central sales block for customer                             |
| url                            | STRING    | Uniform resource locator                                     |
| rep_s_name                     | STRING    | Name of Representative                                       |
| type_of_business               | STRING    | Type of Business                                             |
| type_of_industry               | STRING    | Type of Industry                                             |
| confirm_status                 | STRING    | Status of Change Authorization (Central)                     |
| confirm_date                   | DATE      | Date on Which the Changes Were Confirmed                     |
| confirm_time                   | TIME      | Time of Last Change Confirmation                             |
| deletion_block                 | STRING    | Central deletion block for master record                     |
| consumer                       | STRING    | Indicator: Consumer                                          |
| purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
| suframa_code                   | STRING    | Suframa Code                                                 |
| rg_number                      | STRING    | RG Number                                                    |
| issued_by                      | STRING    | Issued by                                                    |
| state                          | STRING    | State                                                        |
| rg_issuing_date                | DATE      | RG Issuing Date                                              |
| ric_number                     | STRING    | RIC Number                                                   |
| foreign_national_reg           | STRING    | Foreign National Registration                                |
| rne_issuing_date               | DATE      | RNE Issuing Date                                             |
| cnae                           | STRING    | CNAE                                                         |
| legal_nature                   | STRING    | Legal Nature                                                 |
| crt_number                     | STRING    | CRT Number                                                   |
| icms_taxpayer                  | STRING    | ICMS Taxpayer                                                |
| industry_main_type             | STRING    | Industry Main Type                                           |
| tax_declaration_type           | STRING    | Tax Declaration Type                                         |
| company_size                   | STRING    | Company Size                                                 |
| decl_reg_pis_cofi              | STRING    | Declaration Regimen for PIS/COFINS                           |
| data_element_for_customer      | STRING    | data element for customer                                    |
| account_excluded               | STRING    | Account Excluded from Rule-Based Assignment                  |
| max_stack_hght                 | NUMERIC   | Maximum Stacking Height of the Packaging Material (VSO)      |
| pkm_length_unit                | STRING    | Unit of Length for Packaging Material (VSO)                  |
| customerrelated                | STRING    | Customer-Related Packing for Each Packaging Material (VSO)   |
| pkm_of_custom                  | STRING    | Packaging Material of the Customer in VSO                    |
| no_layers_inpal                | STRING    | Number Layers Under an Inter-Pallet (VSO)                    |
| material_spec                  | STRING    | Packing Material-Specific for Each Packaging Material        |
| pack_pcktype                   | STRING    | Pack Only One Package Type for Each PKM (VSO)                |
| side_preference                | STRING    | Side Preference of Loading/Unloading (VSO)                   |
| f_b_preference                 | STRING    | Front/Back Preference of Loading/Unloading (VSO)             |
| collunloadpoint                | STRING    | Collective Unloading Point for VSO                           |
| agency_loc_cd                  | STRING    | Agency Location Code                                         |
| payment_office                 | STRING    | Payment Office                                               |
| fee_schedule                   | STRING    | Fee schedule                                                 |
| duns_number                    | STRING    | DUNS Number                                                  |
| duns_4                         | STRING    | DUNS+4                                                       |
| processor_group                | STRING    | Processor group                                              |
| slaprepr_proced                | STRING    | Subledger acct preprocessing procedure                       |
| name_5                         | STRING    | Name 1                                                       |
| name_2_2                       | STRING    | Name 2                                                       |
| name_3_1                       | STRING    | Name 3                                                       |
| first_name                     | STRING    | First Name                                                   |
| title_1                        | STRING    | Title                                                        |
| house_number                   | STRING    | House number: is no longer used from Release 4.6B            |
| street_1                       | STRING    | Street: No longer used from Release 4.6B                     |
| description                    | STRING    | Description                                                  |
| description_1                  | STRING    | Description                                                  |
| description_2                  | STRING    | Description                                                  |
| description_3                  | STRING    | Description                                                  |
| description_4                  | STRING    | Description                                                  |
| ecc_no                         | STRING    | ECC Number                                                   |
| excise_reg_no                  | STRING    | Excise Registration Number                                   |
| excise_range                   | STRING    | Excise Range                                                 |
| excise_division                | STRING    | Excise Division                                              |
| commissionerate                | STRING    | Excise Commissionerate                                       |
| cst_no                         | STRING    | Central Sales Tax Number                                     |
| lst_no                         | STRING    | Local Sales Tax Number                                       |
| pan                            | STRING    | Permanent Account Number                                     |
| exc_ind_cust                   | STRING    | Excise tax indicator for customer                            |
| changed_on                     | DATE      | Date of Last Change                                          |
| changed_by                     | STRING    | Changed by the user                                          |
| service_tax_regn_no            | STRING    | Service Tax Registration Number                              |
| pan_reference                  | STRING    | PAN Reference Number                                         |
| recipient_type                 | STRING    | Recipient Type                                               |
| reference_type                 | STRING    | Reference Type for Recipient                                 |
| wbs_element                    | STRING    | WBS Element                                                  |
| order_number                   | STRING    | Order Number                                                 |
| ext_sold_to_party              | STRING    | External Sold-to Party                                       |
| cust_int_settl                 | STRING    | Customer Internal Settlement                                 |
| dummy_recipient                | STRING    | Dummy Recipient                                              |
| std_recipient                  | STRING    | Standard Recipient                                           |
| stor_loc                       | STRING    | Storage location                                             |
| co_area                        | STRING    | Controlling Area                                             |
| cost_center                    | STRING    | Cost Center                                                  |
| retiredate_pbe                 | STRING    | Retirement Date Counts for Performance-Based Equipment       |
| retiredate_tbe                 | STRING    | Retirement Date Counts for Time-Based Equipment              |
| settl_type                     | STRING    | Settlement Type                                              |
| hours_per_month                | NUMERIC   | Hours per Month                                              |
| hours_days                     | NUMERIC   | Hours per Day                                                |
| days_month                     | NUMERIC   | Number of Days/Month                                         |
| acqdate_pbe                    | STRING    | Function for Settlement on Acquisition Date/PBE              |
| pbe_document                   | STRING    | Fill PBE Documents Indicator                                 |
| mltpl_usg_per                  | STRING    | Indicator: Take Multiple Usage Periods into Account          |
| short_op                       | STRING    | Indicator - Relevant to Short Operation Periods              |
| blckinddocentry                | STRING    | Blocking Indicator for Document Entry                        |
| pbe_as_tbe                     | STRING    | Indicator: Calculate PBE as TBE                              |
| calendar_id                    | STRING    | Calendar ID                                                  |
| complete_month                 | STRING    | Indicator for Complete Month                                 |
| settlmnt_ind                   | STRING    | Settlement Indicator                                         |
| last_settlement                | DATE      | Date of Last Settlement                                      |
| current_settl                  | DATE      | Date of Current Settlement                                   |
| with_acq_date                  | STRING    | Ind.: Acquisition Date Counts (as Daily Settlement for PBE)  |
| negqtyallowed                  | STRING    | Negative Quantities Allowed Even for Chronolog. Inv. Mgmt    |
| dlinelogic                     | STRING    | Indicator: Deadline Logic                                    |
| minusprd_rsctd                 | STRING    | Minimum Usage Period for Restricted Usage (Days)             |
| relnotallunrusg                | STRING    | Release Notification Allowance for Unrestricted Usage (Days) |
| srchrgeunrstuse                | STRING    | Surcharge for Unrestricted Usage (Days)                      |
| shift_price                    | STRING    | Indicator: Shift Price                                       |
| inv_status_cs                  | STRING    | Status of Construction Site Inventory                        |
| planning_area                  | STRING    | Planning Area                                                |
| settlqtyequirel                | STRING    | Indicator: Settlement Qty Relevant to Equipment              |
| address_number                 | STRING    | Address Number                                               |
| valid_from                     | DATE      | Valid-from date - in current Release only 00010101 possible  |
| address_version                | STRING    | Version ID for International Addresses                       |
| valid_to                       | DATE      | Valid-to date in current Release only 99991231 possible      |
| title_adrc                     | STRING    | Form-of-Address Key                                          |
| name_adrc                      | STRING    | Name 1                                                       |
| name_2_adrc                    | STRING    | Name 2                                                       |
| name_3_adrc                    | STRING    | Name 3                                                       |
| name_4_adrc                    | STRING    | Name 4                                                       |
| conv_name                      | STRING    | Converted name field (with form of address)                  |
| co_name                        | STRING    | c/o name                                                     |
| city_adrc                      | STRING    | City                                                         |
| district_adrc                  | STRING    | District                                                     |
| city_code_adrc                 | STRING    | City code for city/street file                               |
| district_1                     | STRING    | District code for City and Street file                       |
| different_city                 | STRING    | City (different from postal city)                            |
| city_code_1                    | STRING    | Different city for city/street file                          |
| check_status                   | STRING    | City file test status                                        |
| structure_group                | STRING    | Regional structure grouping                                  |
| postal_code_adrc               | STRING    | City postal code                                             |
| po_box_post_cde                | STRING    | PO Box Postal Code                                           |
| company_post_cd                | STRING    | Company Postal Code (for Large Customers)                    |
| postal_code_ext                | STRING    | (Not Supported)City Postal Code Extension, e.g. ZIP+4+2 Code |
| postal_code_ext_1              | STRING    | (Not Supported) PO Box Postal Code Extension                 |
| postal_code_ext_2              | STRING    | (Not Supported) Major Customer Postal Code Extension         |
| po_box_adrc                    | STRING    | PO Box                                                       |
| undeliverable                  | STRING    | PO Box Address Undeliverable Flag                            |
| po_box_w_o_no                  | STRING    | Flag: PO Box Without Number                                  |
| po_box_city                    | STRING    | PO Box city                                                  |
| city_code_2                    | STRING    | City PO box code (City file)                                 |
| po_region                      | STRING    | Region for PO Box (Country, State, Province, ...)            |
| po_box_country                 | STRING    | PO box country                                               |
| delivery_dist                  | STRING    | (Not Supported) Post Delivery District                       |
| transport_zone_adrc            | STRING    | Transportation zone to or from which the goods are delivered |
| street_adrc                    | STRING    | Street                                                       |
| undeliverable_1                | STRING    | Street Address Undeliverable Flag                            |
| street_code                    | STRING    | Street Number for City/Street File                           |
| street_abbrev                  | STRING    | (Not Supported) Abbreviation of Street Name                  |
| house_number_adrc              | STRING    | House Number                                                 |
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
| region_adrc                    | STRING    | Region (State, Province, County)                             |
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
| telephone_1_adrc               | STRING    | Flag: Telephone number(s) defined                            |
| fax_1                          | STRING    | Flag: Fax number(s) defined                                  |
| teletex_adrc                   | STRING    | Flag: Teletex number(s) defined                              |
| telex_adrc                     | STRING    | Flag: Telex number(s) defined                                |
| e_mail_defined                 | STRING    | Flag: E-mail address(es) defined                             |
| r_mail                         | STRING    | Flag: RML (remote mail) addresse(s) defined                  |
| x_400                          | STRING    | Flag: X.400 addresse(s) defined                              |
| rfc                            | STRING    | Flag: RFC destination(s) defined                             |
| printer                        | STRING    | Flag: Printer defined                                        |
| ssf                            | STRING    | Flag: SSF defined                                            |
| uri_ftp                        | STRING    | Flag: URI/FTP address defined                                |
| pager                          | STRING    | Flag: Pager address defined                                  |
| address_source                 | STRING    | (Not Supported) Address Data Source (Key)                    |
| name_1_adrc                    | STRING    | Name (Field NAME1) in Uppercase for Search Help              |
| city_1_adrc                    | STRING    | City name in Uppercase for Search Help                       |
| street_1_adrc                  | STRING    | Street Name in Uppercase for Search Help                     |
| data_line_adrc                 | STRING    | Extension (only for data conversion) (e.g. data line)        |
| telebox_adrc                   | STRING    | Extension (only for data conversion) (e.g. telebox)          |
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
| county_code_adrc               | STRING    | County code for county                                       |
| county                         | STRING    | County                                                       |
| township_code                  | STRING    | Township code for Township                                   |
| township                       | STRING    | Township                                                     |
| county_1                       | STRING    | County name in upper case for search help                    |
| township_1                     | STRING    | Township name in upper case for search help                  |
| purposecomplete_flag_adrc      | STRING    | Business Purpose Completed Flag                              |
| data_filter_value_for_data_agi | DATE      | Data Filter Value for Data Aging                             |
| duns_number_adrc               | STRING    | Dun & Bradstreet number (DUNS)                               |
| duns_4_adrc                    | STRING    | DUNS+4 number (the last four digit)                          |
| finalmd5key                    | STRING    | MD5 key combining all columns                                |
| input_last_update_date         | DATETIME  | Last Input read time                                         |
| dw_active_indicator            | STRING    | Valid Indicator                                              |
| dw_start_date                  | DATETIME  | Record start date                                            |
| dw_end_date                    | DATETIME  | Record end date                                              |
| dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms