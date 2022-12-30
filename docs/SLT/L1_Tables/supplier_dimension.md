
## Table Name : supplier_dimension

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| supplier_uuid                  | STRING    | Unique Generated Id                                          |
| supplier_key                   | STRING    | Supplier Key                                                 |
| client                         | STRING    | Client                                                       |
| vendor                         | STRING    | Account Number of Vendor or Creditor                         |
| country                        | STRING    | Country Key                                                  |
| name                           | STRING    | Name 1                                                       |
| name_2                         | STRING    | Name 2                                                       |
| name_3                         | STRING    | Name 3                                                       |
| name_4                         | STRING    | Name 4                                                       |
| city                           | STRING    | City                                                         |
| district                       | STRING    | District                                                     |
| po_box                         | STRING    | PO Box                                                       |
| po_box_pcode                   | STRING    | P.O. Box Postal Code                                         |
| postal_code                    | STRING    | Postal Code                                                  |
| region                         | STRING    | Region (State, Province, County)                             |
| search_term                    | STRING    | Sort field                                                   |
| street                         | STRING    | Street and House Number                                      |
| address                        | STRING    | Address                                                      |
| name_1                         | STRING    | Search term for matchcode search                             |
| name_2_1                       | STRING    | Search term for matchcode search                             |
| city_1                         | STRING    | Search term for matchcode search                             |
| title                          | STRING    | Title                                                        |
| train_station                  | STRING    | Train station                                                |
| location_no_1                  | STRING    | International location number  (part 1)                      |
| location_no_2                  | STRING    | International location number (Part 2)                       |
| authorization                  | STRING    | Authorization Group                                          |
| industry                       | STRING    | Industry key                                                 |
| check_digit                    | STRING    | Check digit for the international location number            |
| data_line                      | STRING    | Data communication line no.                                  |
| dme_indicator                  | STRING    | Report key for data medium exchange                          |
| instruction_key                | STRING    | Instruction key for data medium exchange                     |
| created_on                     | DATE      | Date on which the Record Was Created                         |
| created_by                     | STRING    | Name of Person who Created the Object                        |
| isr_number                     | STRING    | ISR subscriber number                                        |
| group_key                      | STRING    | Group key                                                    |
| account_group                  | STRING    | Vendor account group                                         |
| customer                       | STRING    | Customer Number                                              |
| alternat_payee                 | STRING    | Account Number of the Alternative Payee                      |
| deletion_flag                  | STRING    | Central Deletion Flag for Master Record                      |
| posting_block                  | STRING    | Central posting block                                        |
| purch_block                    | STRING    | Centrally imposed purchasing block                           |
| language_key                   | STRING    | Language Key                                                 |
| tax_number_1                   | STRING    | Tax Number 1                                                 |
| tax_number_2                   | STRING    | Tax Number 2                                                 |
| equalizatn_tax                 | STRING    | Indicator: Business Partner Subject to Equalization Tax?     |
| liable_for_vat                 | STRING    | Liable for VAT                                               |
| telebox                        | STRING    | Telebox number                                               |
| telephone_1                    | STRING    | First telephone number                                       |
| telephone_2                    | STRING    | Second telephone number                                      |
| fax_number                     | STRING    | Fax Number                                                   |
| teletex                        | STRING    | Teletex number                                               |
| telex                          | STRING    | Telex number                                                 |
| one_time_acct                  | STRING    | Indicator: Is the account a one-time account?                |
| payee_in_doc                   | STRING    | Indicator: Alternative Payee in Document Allowed?            |
| trading_partner                | STRING    | Company ID of Trading Partner                                |
| fiscal_address                 | STRING    | Account number of the master record with fiscal address      |
| vat_reg_no                     | STRING    | VAT Registration Number                                      |
| natural_person                 | STRING    | Natural Person                                               |
| block_function                 | STRING    | Function That Will Be Blocked                                |
| place_of_birth                 | STRING    | Place of birth of the person subject to withholding tax      |
| date_of_birth                  | DATE      | Date of Birth of the Person Subject to Withholding Tax       |
| sex                            | STRING    | Key for the Sex of the Person Subject to Withholding Tax     |
| info_number                    | STRING    | Credit Information Number                                    |
| last_ext_review                | DATE      | Last External Review                                         |
| actual_qm_sys                  | STRING    | Suppliers QM system                                          |
| ref_acct_group                 | STRING    | Reference Account Group for One-Time Account (Vendor)        |
| p_o_box_city                   | STRING    | PO Box city                                                  |
| plant                          | STRING    | Plant (Own or External)                                      |
| vsr_relevant                   | STRING    | Indicator: vendor sub-range relevant                         |
| plant_relevant                 | STRING    | Indicator: plant level relevant                              |
| factory_calend                 | STRING    | Factory calendar key                                         |
| data_transfer_status           | STRING    | Status of Data Transfer into Subsequent Release              |
| tax_jur                        | STRING    | Tax Jurisdiction                                             |
| payment_block                  | STRING    | Payment Block                                                |
| scac                           | STRING    | Standard carrier access code                                 |
| car_freight_grp                | STRING    | Forwarding agent freight group                               |
| transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| alt_payee_doc                  | STRING    | Indicator: Alternative Payee Using Account Number            |
| servagntprocgrp                | STRING    | Service agent procedure group                                |
| tax_type                       | STRING    | Tax type                                                     |
| tax_number_type                | STRING    | Tax Number Type                                              |
| social_ins                     | STRING    | Registered for Social Insurance                              |
| soc_ins_code                   | STRING    | Activity Code for Social Insurance                           |
| tax_number_3                   | STRING    | Tax Number 3                                                 |
| tax_number_4                   | STRING    | Tax Number 4                                                 |
| tax_number_5                   | STRING    | Tax Number 5                                                 |
| tax_split                      | STRING    | Tax Split                                                    |
| tax_base                       | STRING    | Tax Base in Percentage                                       |
| profession                     | STRING    | Profession                                                   |
| stat_grp_agent                 | STRING    | Shipment: statistics group, transportation service agent     |
| external_manuf                 | STRING    | External manufacturer code name or number                    |
| url                            | STRING    | Uniform resource locator                                     |
| rep_s_name                     | STRING    | Name of Representative                                       |
| type_of_business               | STRING    | Type of Business                                             |
| type_of_industry               | STRING    | Type of Industry                                             |
| confirm_status                 | STRING    | Status of Change Authorization (Central)                     |
| confirm_date                   | DATE      | Date on Which the Changes Were Confirmed                     |
| confirm_time                   | TIME      | Time of Last Change Confirmation                             |
| deletion_block                 | STRING    | Central deletion block for master record                     |
| qm_system_to                   | DATE      | Validity date of certification                               |
| pod_relevant                   | STRING    | Supplier indicator relevant for proof of delivery            |
| tax_office                     | STRING    | Account Number of Master Record of Tax Office Responsible    |
| tax_number                     | STRING    | Tax Number at Responsible Tax Authority                      |
| carrier_confirmation           | STRING    | Carrier confirmation is expected                             |
| micro_comp                     | STRING    | Micro company indicator                                      |
| terms_liab                     | STRING    | Terms of Liability                                           |
| crc_number                     | STRING    | CRC number                                                   |
| purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
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
| dataelement_exstensibility_for | STRING    | Dataelement Exstensibility for Supplier                      |
| capital_amount                 | NUMERIC   | Capital Amount                                               |
| currency                       | STRING    | Currency                                                     |
| agency_loc_cd                  | STRING    | Agency Location Code                                         |
| payment_office                 | STRING    | Payment Office                                               |
| ppa_relevant                   | STRING    | Vendor is PPA relevant                                       |
| processor_group                | STRING    | Processor group                                              |
| slaprepr_proced                | STRING    | Subledger acct preprocessing procedure                       |
| name_5                         | STRING    | Name 1                                                       |
| name_2_2                       | STRING    | Name 2                                                       |
| name_3_1                       | STRING    | Name 3                                                       |
| first_name                     | STRING    | First Name                                                   |
| title_1                        | STRING    | Title                                                        |
| house_number                   | STRING    | House number: is no longer used from Release 4.6B            |
| street_1                       | STRING    | Street: No longer used from Release 4.6B                     |
| dtelimit_ext_id                | DATE      | Date Limit for External Document Identification              |
| repetition                     | STRING    | Annual Repetition of Date Limit                              |
| street_2                       | STRING    | Street                                                       |
| house_number_1                 | STRING    | House Number                                                 |
| postal_code_1                  | STRING    | City postal code                                             |
| city_2                         | STRING    | City                                                         |
| country_1                      | STRING    | Country Key                                                  |
| business_type                  | STRING    | Subcontractors Business Type                                 |
| prtnr_trad_name                | STRING    | Partners Trading Name                                        |
| partner_s_utr                  | STRING    | Partners Unique Tax Reference (UTR)                          |
| verif_status                   | STRING    | Verification Status                                          |
| verification_n                 | STRING    | Verification Number                                          |
| tax_status                     | STRING    | Tax Status of the Verified Subcontractor                     |
| comp_house_reg_no              | STRING    | Companies House Registration Number                          |
| ecc_no                         | STRING    | ECC Number                                                   |
| excise_reg_no                  | STRING    | Excise Registration Number                                   |
| excise_range                   | STRING    | Excise Range                                                 |
| excise_division                | STRING    | Excise Division                                              |
| commissionerate                | STRING    | Excise Commissionerate                                       |
| cst_no                         | STRING    | Central Sales Tax Number                                     |
| lst_no                         | STRING    | Local Sales Tax Number                                       |
| pan                            | STRING    | Permanent Account Number                                     |
| exc_ind_vendor                 | STRING    | Excise tax indicator for vendor                              |
| ssi_status                     | STRING    | SSI Status                                                   |
| type_of_vendor                 | STRING    | Type of Vendor                                               |
| cenvat                         | STRING    | CENVAT Scheme Participant                                    |
| changed_on                     | DATE      | Date of Last Change                                          |
| changed_by                     | STRING    | Changed by the user                                          |
| service_tax_regn_no            | STRING    | Service Tax Registration Number                              |
| pan_reference                  | STRING    | PAN Reference Number                                         |
| pan_valid_from_date            | DATE      | PAN Valid From Date                                          |
| customs_vendor                 | STRING    | Customs Vendor                                               |
| deductee_ref_no                | STRING    | Deductee Reference Number                                    |
| gst_ven_class                  | STRING    | Vendor Classification for GST                                |
| public_entity                  | STRING    | Vendor is public entity?                                     |
| deed_public_use                | STRING    | Deed of public use                                           |
| ss_certif_valid_date           | DATE      | Social Security certificate validity date                    |
| ss_certificate_form            | STRING    | Social Security certificate submission form                  |
| cae_code                       | STRING    | CAE code                                                     |
| absence_of_debt                | STRING    | Absence of debt                                              |
| transportation_chain           | STRING    | Transportation Chain                                         |
| staging_time                   | NUMERIC   | Staging Time in Days                                         |
| scheduling_procedure           | STRING    | Scheduling Procedure                                         |
| rel_for_coll_no                | STRING    | Cross Docking: Relevant for Collective Numbering             |
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
| city_code                      | STRING    | City code for city/street file                               |
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
| street_2_adrc                  | STRING    | Street 2                                                     |
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
| county_code                    | STRING    | County code for county                                       |
| county                         | STRING    | County                                                       |
| township_code                  | STRING    | Township code for Township                                   |
| township                       | STRING    | Township                                                     |
| county_1                       | STRING    | County name in upper case for search help                    |
| township_1                     | STRING    | Township name in upper case for search help                  |
| purposecomplete_flag_adrc      | STRING    | Business Purpose Completed Flag                              |
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