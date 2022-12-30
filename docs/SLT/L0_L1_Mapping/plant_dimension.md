
## Table Name : plant_dimension

| sap_table | sap_column                  | column_name                    | data_type | description                                                  |
|-----------|-----------------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                             | plant_uuid                     | STRING    | Unique Generated Id                                          |
|           |                             | plant_key                      | STRING    | Plant Key                                                    |
| T001W     | MANDT                       | client                         | STRING    | Client                                                       |
| T001W     | WERKS                       | plant                          | STRING    | Plant                                                        |
| T001W     | NAME1                       | name_1                         | STRING    | Name                                                         |
| T001W     | BWKEY                       | valuation_area                 | STRING    | Valuation area                                               |
| T001W     | KUNNR                       | customernoplant                | STRING    | Customer Number of Plant                                     |
| T001W     | LIFNR                       | sppl_no_plnt                   | STRING    | Supplier Number of Plant                                     |
| T001W     | FABKL                       | factory_calend                 | STRING    | Factory calendar key                                         |
| T001W     | NAME2                       | name_2                         | STRING    | Name 2                                                       |
| T001W     | STRAS                       | street_house                   | STRING    | Street and House Number                                      |
| T001W     | PFACH                       | po_box                         | STRING    | PO Box                                                       |
| T001W     | PSTLZ                       | postal_code                    | STRING    | Postal Code                                                  |
| T001W     | ORT01                       | city                           | STRING    | City                                                         |
| T001W     | EKORG                       | purchasing_org                 | STRING    | Purchasing organization                                      |
| T001W     | VKORG                       | sales_org_icb                  | STRING    | Sales Organization for Intercompany Billing                  |
| T001W     | CHAZV                       | batch_stat_mgmt                | STRING    | Indicator: batch status management active                    |
| T001W     | KKOWK                       | cond_plnt_level                | STRING    | Indicator: Conditions at plant level                         |
| T001W     | KORDB                       | source_list                    | STRING    | Indicator: Source list requirement                           |
| T001W     | BEDPL                       | reqmts_planning                | STRING    | Activating requirements planning                             |
| T001W     | LAND1                       | country                        | STRING    | Country Key                                                  |
| T001W     | REGIO                       | region                         | STRING    | Region (State, Province, County)                             |
| T001W     | COUNC                       | county_code                    | STRING    | County Code                                                  |
| T001W     | CITYC                       | city_code                      | STRING    | City Code                                                    |
| T001W     | ADRNR                       | address                        | STRING    | Address                                                      |
| T001W     | IWERK                       | planning_plant                 | STRING    | Maintenance Planning Plant                                   |
| T001W     | TXJCD                       | tax_jur                        | STRING    | Tax Jurisdiction                                             |
| T001W     | VTWEG                       | distrib_channel                | STRING    | Distribution channel for intercompany billing                |
| T001W     | SPART                       | div_iv                         | STRING    | Division for intercompany billing                            |
| T001W     | SPRAS                       | language_key                   | STRING    | Language Key                                                 |
| T001W     | WKSOP                       | sop_plant                      | STRING    | SOP plant                                                    |
| T001W     | AWSLS                       | variance_key                   | STRING    | Variance Key                                                 |
| T001W     | CHAZV_OLD                   | batch_stat_mgmt_1              | STRING    | Indicator: batch status management active                    |
| T001W     | VLFKZ                       | plant_cat                      | STRING    | Plant category                                               |
| T001W     | BZIRK                       | sales_district                 | STRING    | Sales District                                               |
| T001W     | ZONE1                       | supply_region                  | STRING    | Supply region (region supplied)                              |
| T001W     | TAXIW                       | tax_ind_plant                  | STRING    | Tax Indicator: Plant (Purchasing)                            |
| T001W     | BZQHL                       | reg_supplier                   | STRING    | Take Regular Supplier into Account                           |
| T001W     | LET01                       | st_rem_exped                   | NUMERIC   | Number of Days for First Reminder/Expediter                  |
| T001W     | LET02                       | nd_rem_exped                   | NUMERIC   | Number of Days for Second Reminder/Expediter                 |
| T001W     | LET03                       | rd_rem_exped                   | NUMERIC   | Number of Days for Third Reminder/Expediter                  |
| T001W     | TXNAM_MA1                   | text_1st_dunn                  | STRING    | Text name of 1st dunning of vendor declarations              |
| T001W     | TXNAM_MA2                   | text_2nd_dunn                  | STRING    | Text name of the 2nd dunning of vendor declarations          |
| T001W     | TXNAM_MA3                   | text_3rd_dunn                  | STRING    | Text name of 3rd dunning of vendor declarations              |
| T001W     | BETOL                       | po_tolerance                   | STRING    | Number of days for PO tolerance - Compress info records - SU |
| T001W     | J_1BBRANCH                  | business_place                 | STRING    | Business Place                                               |
| T001W     | VTBFI                       | sales_area_det                 | STRING    | Rule for determining the sales area for stock transfers      |
| T001W     | FPRFW                       | distr_profile                  | STRING    | Distribution profile at plant level                          |
| T001W     | ACHVM                       | archiving_flag                 | STRING    | Central archiving marker for master record                   |
| T001W     | DVSART                      | dms_type                       | STRING    | Batch Record: Type of DMS Used                               |
| T001W     | NODETYPE                    | node_type_scn                  | STRING    | Node type: supply chain network                              |
| T001W     | NSCHEMA                     | naming_struct                  | STRING    | Structure for Name Formation                                 |
| T001W     | PKOSA                       | cost_object                    | STRING    | Cost Object Controlling Linking Active                       |
| T001W     | MISCH                       | mixed_costing                  | STRING    | Updating Is Active for Mixed Costing                         |
| T001W     | MGVUPD                      | act_costing                    | STRING    | Updating Is Active in Actual Costing                         |
| T001W     | VSTEL                       | shipping_point                 | STRING    | Shipping Point / Receiving Point                             |
| T001W     | MGVLAUPD                    | actual_activities              | STRING    | Update of Activity Consumption in the Quantity Structure     |
| T001W     | MGVLAREVAL                  | cctr_credit_cont               | STRING    | Control of Credit of Cost Centers                            |
| T001W     | SOURCING                    | afsd_via_atp                   | STRING    | Invoke Added-Function Source Determination via ATP           |
| T001W     | NO_DEFAULT_BATCH_MANAGEMENT | no_batch_management            | STRING    | Batch Management Not Active by Default                       |
| T001W     | FSH_MG_ARUN_REQ             | arun                           | STRING    | Supply Assignment (ARun)                                     |
| T001W     | FSH_SEAIM                   | season_act_im                  | STRING    | Indicator: Season Active in Inventory Management             |
| T001W     | FSH_BOM_MAINTENANCE         | control_data_for_bom           | STRING    | Control data for Fashion BOM Maintenance                     |
| T001W     | FSH_GROUP_PR                | activate_var_group             | STRING    | Activate Variant Grouping                                    |
| T001W     | ARUN_FIX_BATCH              | assign_batches                 | STRING    | Assign Batches in Supply Assignment (ARun)                   |
| T001W     | OILIVAL                     | exg_valuation                  | STRING    | Exchange valuation indicator                                 |
| T001W     | OIHVTYPE                    | vendor_type                    | STRING    | Vendor type (refinery/mill/other) (Brazil)                   |
| T001W     | OIHCREDIPI                  | cred_ipi                       | STRING    | IPI credit allowed                                           |
| T001W     | STORETYPE                   | store_cat                      | STRING    | Store Category to Differentiate Store, Dep. Store, Shop      |
| T001W     | DEP_STORE                   | sup_ds                         | STRING    | Superior Department Store                                    |
| ADRC      | ADDRNUMBER                  | address_number                 | STRING    | Address Number                                               |
| ADRC      | DATE_FROM                   | valid_from                     | DATE      | Valid-from date - in current Release only 00010101 possible  |
| ADRC      | NATION                      | address_version                | STRING    | Version ID for International Addresses                       |
| ADRC      | DATE_TO                     | valid_to                       | DATE      | Valid-to date in current Release only 99991231 possible      |
| ADRC      | TITLE                       | title                          | STRING    | Form-of-Address Key                                          |
| ADRC      | NAME1                       | name                           | STRING    | Name 1                                                       |
| ADRC      | NAME2                       | name_2_adrc                    | STRING    | Name 2                                                       |
| ADRC      | NAME3                       | name_3                         | STRING    | Name 3                                                       |
| ADRC      | NAME4                       | name_4                         | STRING    | Name 4                                                       |
| ADRC      | NAME_TEXT                   | conv_name                      | STRING    | Converted name field (with form of address)                  |
| ADRC      | NAME_CO                     | co_name                        | STRING    | c/o name                                                     |
| ADRC      | CITY1                       | city_adrc                      | STRING    | City                                                         |
| ADRC      | CITY2                       | district                       | STRING    | District                                                     |
| ADRC      | CITY_CODE                   | city_code_adrc                 | STRING    | City code for city/street file                               |
| ADRC      | CITYP_CODE                  | district_1                     | STRING    | District code for City and Street file                       |
| ADRC      | HOME_CITY                   | different_city                 | STRING    | City (different from postal city)                            |
| ADRC      | CITYH_CODE                  | city_code_1                    | STRING    | Different city for city/street file                          |
| ADRC      | CHCKSTATUS                  | check_status                   | STRING    | City file test status                                        |
| ADRC      | REGIOGROUP                  | structure_group                | STRING    | Regional structure grouping                                  |
| ADRC      | POST_CODE1                  | postal_code_adrc               | STRING    | City postal code                                             |
| ADRC      | POST_CODE2                  | po_box_post_cde                | STRING    | PO Box Postal Code                                           |
| ADRC      | POST_CODE3                  | company_post_cd                | STRING    | Company Postal Code (for Large Customers)                    |
| ADRC      | PCODE1_EXT                  | postal_code_ext                | STRING    | (Not Supported)City Postal Code Extension, e.g. ZIP+4+2 Code |
| ADRC      | PCODE2_EXT                  | postal_code_ext_1              | STRING    | (Not Supported) PO Box Postal Code Extension                 |
| ADRC      | PCODE3_EXT                  | postal_code_ext_2              | STRING    | (Not Supported) Major Customer Postal Code Extension         |
| ADRC      | PO_BOX                      | po_box_adrc                    | STRING    | PO Box                                                       |
| ADRC      | DONT_USE_P                  | undeliverable                  | STRING    | PO Box Address Undeliverable Flag                            |
| ADRC      | PO_BOX_NUM                  | po_box_w_o_no                  | STRING    | Flag: PO Box Without Number                                  |
| ADRC      | PO_BOX_LOC                  | po_box_city                    | STRING    | PO Box city                                                  |
| ADRC      | CITY_CODE2                  | city_code_2                    | STRING    | City PO box code (City file)                                 |
| ADRC      | PO_BOX_REG                  | po_region                      | STRING    | Region for PO Box (Country, State, Province, ...)            |
| ADRC      | PO_BOX_CTY                  | po_box_country                 | STRING    | PO box country                                               |
| ADRC      | POSTALAREA                  | delivery_dist                  | STRING    | (Not Supported) Post Delivery District                       |
| ADRC      | TRANSPZONE                  | transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| ADRC      | STREET                      | street                         | STRING    | Street                                                       |
| ADRC      | DONT_USE_S                  | undeliverable_1                | STRING    | Street Address Undeliverable Flag                            |
| ADRC      | STREETCODE                  | street_code                    | STRING    | Street Number for City/Street File                           |
| ADRC      | STREETABBR                  | street_abbrev                  | STRING    | (Not Supported) Abbreviation of Street Name                  |
| ADRC      | HOUSE_NUM1                  | house_number                   | STRING    | House Number                                                 |
| ADRC      | HOUSE_NUM2                  | supplement                     | STRING    | House number supplement                                      |
| ADRC      | HOUSE_NUM3                  | number_range                   | STRING    | (Not supported) House Number Range                           |
| ADRC      | STR_SUPPL1                  | street_2                       | STRING    | Street 2                                                     |
| ADRC      | STR_SUPPL2                  | street_3                       | STRING    | Street 3                                                     |
| ADRC      | STR_SUPPL3                  | street_4                       | STRING    | Street 4                                                     |
| ADRC      | LOCATION                    | street_5                       | STRING    | Street 5                                                     |
| ADRC      | BUILDING                    | building_code                  | STRING    | Building (Number or Code)                                    |
| ADRC      | FLOOR                       | floor_in_building              | STRING    | Floor in building                                            |
| ADRC      | ROOMNUMBER                  | room_number                    | STRING    | Room or Apartment Number                                     |
| ADRC      | COUNTRY                     | country_adrc                   | STRING    | Country Key                                                  |
| ADRC      | LANGU                       | language_key_adrc              | STRING    | Language Key                                                 |
| ADRC      | REGION                      | region_adrc                    | STRING    | Region (State, Province, County)                             |
| ADRC      | ADDR_GROUP                  | address_group                  | STRING    | Address Group (Key) (Business Address Services)              |
| ADRC      | FLAGGROUPS                  | flag_there_are_more_address_g  | STRING    | Flag: There are more address group assignments               |
| ADRC      | PERS_ADDR                   | pers_address                   | STRING    | Flag: This is a personal address                             |
| ADRC      | SORT1                       | search_term_1                  | STRING    | Search Term 1                                                |
| ADRC      | SORT2                       | search_term_2                  | STRING    | Search Term 2                                                |
| ADRC      | SORT_PHN                    | phonet_sort                    | STRING    | (Not Supported) Phonetic Search Sort Field                   |
| ADRC      | DEFLT_COMM                  | comm_method                    | STRING    | Communication Method (Key) (Business Address Services)       |
| ADRC      | TEL_NUMBER                  | telephone                      | STRING    | First telephone no.: dialling code+number                    |
| ADRC      | TEL_EXTENS                  | extension                      | STRING    | First Telephone No.: Extension                               |
| ADRC      | FAX_NUMBER                  | fax                            | STRING    | First fax no.: dialling code+number                          |
| ADRC      | FAX_EXTENS                  | extension_1                    | STRING    | First fax no.: extension                                     |
| ADRC      | FLAGCOMM2                   | telephone_1                    | STRING    | Flag: Telephone number(s) defined                            |
| ADRC      | FLAGCOMM3                   | fax_1                          | STRING    | Flag: Fax number(s) defined                                  |
| ADRC      | FLAGCOMM4                   | teletex                        | STRING    | Flag: Teletex number(s) defined                              |
| ADRC      | FLAGCOMM5                   | telex                          | STRING    | Flag: Telex number(s) defined                                |
| ADRC      | FLAGCOMM6                   | e_mail_defined                 | STRING    | Flag: E-mail address(es) defined                             |
| ADRC      | FLAGCOMM7                   | r_mail                         | STRING    | Flag: RML (remote mail) addresse(s) defined                  |
| ADRC      | FLAGCOMM8                   | x_400                          | STRING    | Flag: X.400 addresse(s) defined                              |
| ADRC      | FLAGCOMM9                   | rfc                            | STRING    | Flag: RFC destination(s) defined                             |
| ADRC      | FLAGCOMM10                  | printer                        | STRING    | Flag: Printer defined                                        |
| ADRC      | FLAGCOMM11                  | ssf                            | STRING    | Flag: SSF defined                                            |
| ADRC      | FLAGCOMM12                  | uri_ftp                        | STRING    | Flag: URI/FTP address defined                                |
| ADRC      | FLAGCOMM13                  | pager                          | STRING    | Flag: Pager address defined                                  |
| ADRC      | ADDRORIGIN                  | address_source                 | STRING    | (Not Supported) Address Data Source (Key)                    |
| ADRC      | MC_NAME1                    | name_1_adrc                    | STRING    | Name (Field NAME1) in Uppercase for Search Help              |
| ADRC      | MC_CITY1                    | city_1                         | STRING    | City name in Uppercase for Search Help                       |
| ADRC      | MC_STREET                   | street_1                       | STRING    | Street Name in Uppercase for Search Help                     |
| ADRC      | EXTENSION1                  | data_line                      | STRING    | Extension (only for data conversion) (e.g. data line)        |
| ADRC      | EXTENSION2                  | telebox                        | STRING    | Extension (only for data conversion) (e.g. telebox)          |
| ADRC      | TIME_ZONE                   | time_zone                      | STRING    | Address time zone                                            |
| ADRC      | TAXJURCODE                  | tax_jurisdiction               | STRING    | Tax Jurisdiction                                             |
| ADRC      | ADDRESS_ID                  | address_id                     | STRING    | (Not supported) Physical address ID                          |
| ADRC      | LANGU_CREA                  | creation_lang                  | STRING    | Address record creation original language                    |
| ADRC      | ADRC_UUID                   | address_uuid                   | BYTES     | UUID Used in the Address                                     |
| ADRC      | UUID_BELATED                | subsequent_uuid                | STRING    | Indicator: UUID created later                                |
| ADRC      | ID_CATEGORY                 | id_category                    | STRING    | Category of an Address ID                                    |
| ADRC      | ADRC_ERR_STATUS             | error_status                   | STRING    | Error Status of Address                                      |
| ADRC      | PO_BOX_LOBBY                | po_box_lobby                   | STRING    | PO Box Lobby                                                 |
| ADRC      | DELI_SERV_TYPE              | delvry_serv_type               | STRING    | Type of Delivery Service                                     |
| ADRC      | DELI_SERV_NUMBER            | delivery_service_no            | STRING    | Number of Delivery Service                                   |
| ADRC      | COUNTY_CODE                 | county_code_adrc               | STRING    | County code for county                                       |
| ADRC      | COUNTY                      | county                         | STRING    | County                                                       |
| ADRC      | TOWNSHIP_CODE               | township_code                  | STRING    | Township code for Township                                   |
| ADRC      | TOWNSHIP                    | township                       | STRING    | Township                                                     |
| ADRC      | MC_COUNTY                   | county_1                       | STRING    | County name in upper case for search help                    |
| ADRC      | MC_TOWNSHIP                 | township_1                     | STRING    | Township name in upper case for search help                  |
| ADRC      | XPCPT                       | purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
| ADRC      | _DATAAGING                  | data_filter_value_for_data_agi | DATE      | Data Filter Value for Data Aging                             |
| ADRC      | DUNS                        | duns_number                    | STRING    | Dun & Bradstreet number (DUNS)                               |
| ADRC      | DUNSP4                      | duns_4                         | STRING    | DUNS+4 number (the last four digit)                          |
| ADRC      |                             | finalmd5key                    | STRING    | MD5 key combining all columns                                |
|           |                             | input_last_update_date         | DATETIME  | Last Input read time                                         |
|           |                             | dw_active_indicator            | STRING    | Valid Indicator                                              |
|           |                             | dw_start_date                  | DATETIME  | Record start date                                            |
|           |                             | dw_end_date                    | DATETIME  | Record end date                                              |
|           |                             | dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms