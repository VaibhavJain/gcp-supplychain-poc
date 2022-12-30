
## Table Name : supplier_dimension

| sap_table | sap_column       | column_name                    | data_type | description                                                  |
|-----------|------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                  | supplier_uuid                  | STRING    | Unique Generated Id                                          |
|           |                  | supplier_key                   | STRING    | Supplier Key                                                 |
| LFA1      | MANDT            | client                         | STRING    | Client                                                       |
| LFA1      | LIFNR            | vendor                         | STRING    | Account Number of Vendor or Creditor                         |
| LFA1      | LAND1            | country                        | STRING    | Country Key                                                  |
| LFA1      | NAME1            | name                           | STRING    | Name 1                                                       |
| LFA1      | NAME2            | name_2                         | STRING    | Name 2                                                       |
| LFA1      | NAME3            | name_3                         | STRING    | Name 3                                                       |
| LFA1      | NAME4            | name_4                         | STRING    | Name 4                                                       |
| LFA1      | ORT01            | city                           | STRING    | City                                                         |
| LFA1      | ORT02            | district                       | STRING    | District                                                     |
| LFA1      | PFACH            | po_box                         | STRING    | PO Box                                                       |
| LFA1      | PSTL2            | po_box_pcode                   | STRING    | P.O. Box Postal Code                                         |
| LFA1      | PSTLZ            | postal_code                    | STRING    | Postal Code                                                  |
| LFA1      | REGIO            | region                         | STRING    | Region (State, Province, County)                             |
| LFA1      | SORTL            | search_term                    | STRING    | Sort field                                                   |
| LFA1      | STRAS            | street                         | STRING    | Street and House Number                                      |
| LFA1      | ADRNR            | address                        | STRING    | Address                                                      |
| LFA1      | MCOD1            | name_1                         | STRING    | Search term for matchcode search                             |
| LFA1      | MCOD2            | name_2_1                       | STRING    | Search term for matchcode search                             |
| LFA1      | MCOD3            | city_1                         | STRING    | Search term for matchcode search                             |
| LFA1      | ANRED            | title                          | STRING    | Title                                                        |
| LFA1      | BAHNS            | train_station                  | STRING    | Train station                                                |
| LFA1      | BBBNR            | location_no_1                  | STRING    | International location number  (part 1)                      |
| LFA1      | BBSNR            | location_no_2                  | STRING    | International location number (Part 2)                       |
| LFA1      | BEGRU            | authorization                  | STRING    | Authorization Group                                          |
| LFA1      | BRSCH            | industry                       | STRING    | Industry key                                                 |
| LFA1      | BUBKZ            | check_digit                    | STRING    | Check digit for the international location number            |
| LFA1      | DATLT            | data_line                      | STRING    | Data communication line no.                                  |
| LFA1      | DTAMS            | dme_indicator                  | STRING    | Report key for data medium exchange                          |
| LFA1      | DTAWS            | instruction_key                | STRING    | Instruction key for data medium exchange                     |
| LFA1      | ERDAT            | created_on                     | DATE      | Date on which the Record Was Created                         |
| LFA1      | ERNAM            | created_by                     | STRING    | Name of Person who Created the Object                        |
| LFA1      | ESRNR            | isr_number                     | STRING    | ISR subscriber number                                        |
| LFA1      | KONZS            | group_key                      | STRING    | Group key                                                    |
| LFA1      | KTOKK            | account_group                  | STRING    | Vendor account group                                         |
| LFA1      | KUNNR            | customer                       | STRING    | Customer Number                                              |
| LFA1      | LNRZA            | alternat_payee                 | STRING    | Account Number of the Alternative Payee                      |
| LFA1      | LOEVM            | deletion_flag                  | STRING    | Central Deletion Flag for Master Record                      |
| LFA1      | SPERR            | posting_block                  | STRING    | Central posting block                                        |
| LFA1      | SPERM            | purch_block                    | STRING    | Centrally imposed purchasing block                           |
| LFA1      | SPRAS            | language_key                   | STRING    | Language Key                                                 |
| LFA1      | STCD1            | tax_number_1                   | STRING    | Tax Number 1                                                 |
| LFA1      | STCD2            | tax_number_2                   | STRING    | Tax Number 2                                                 |
| LFA1      | STKZA            | equalizatn_tax                 | STRING    | Indicator: Business Partner Subject to Equalization Tax?     |
| LFA1      | STKZU            | liable_for_vat                 | STRING    | Liable for VAT                                               |
| LFA1      | TELBX            | telebox                        | STRING    | Telebox number                                               |
| LFA1      | TELF1            | telephone_1                    | STRING    | First telephone number                                       |
| LFA1      | TELF2            | telephone_2                    | STRING    | Second telephone number                                      |
| LFA1      | TELFX            | fax_number                     | STRING    | Fax Number                                                   |
| LFA1      | TELTX            | teletex                        | STRING    | Teletex number                                               |
| LFA1      | TELX1            | telex                          | STRING    | Telex number                                                 |
| LFA1      | XCPDK            | one_time_acct                  | STRING    | Indicator: Is the account a one-time account?                |
| LFA1      | XZEMP            | payee_in_doc                   | STRING    | Indicator: Alternative Payee in Document Allowed?            |
| LFA1      | VBUND            | trading_partner                | STRING    | Company ID of Trading Partner                                |
| LFA1      | FISKN            | fiscal_address                 | STRING    | Account number of the master record with fiscal address      |
| LFA1      | STCEG            | vat_reg_no                     | STRING    | VAT Registration Number                                      |
| LFA1      | STKZN            | natural_person                 | STRING    | Natural Person                                               |
| LFA1      | SPERQ            | block_function                 | STRING    | Function That Will Be Blocked                                |
| LFA1      | GBORT            | place_of_birth                 | STRING    | Place of birth of the person subject to withholding tax      |
| LFA1      | GBDAT            | date_of_birth                  | DATE      | Date of Birth of the Person Subject to Withholding Tax       |
| LFA1      | SEXKZ            | sex                            | STRING    | Key for the Sex of the Person Subject to Withholding Tax     |
| LFA1      | KRAUS            | info_number                    | STRING    | Credit Information Number                                    |
| LFA1      | REVDB            | last_ext_review                | DATE      | Last External Review                                         |
| LFA1      | QSSYS            | actual_qm_sys                  | STRING    | Suppliers QM system                                          |
| LFA1      | KTOCK            | ref_acct_group                 | STRING    | Reference Account Group for One-Time Account (Vendor)        |
| LFA1      | PFORT            | p_o_box_city                   | STRING    | PO Box city                                                  |
| LFA1      | WERKS            | plant                          | STRING    | Plant (Own or External)                                      |
| LFA1      | LTSNA            | vsr_relevant                   | STRING    | Indicator: vendor sub-range relevant                         |
| LFA1      | WERKR            | plant_relevant                 | STRING    | Indicator: plant level relevant                              |
| LFA1      | PLKAL            | factory_calend                 | STRING    | Factory calendar key                                         |
| LFA1      | DUEFL            | data_transfer_status           | STRING    | Status of Data Transfer into Subsequent Release              |
| LFA1      | TXJCD            | tax_jur                        | STRING    | Tax Jurisdiction                                             |
| LFA1      | SPERZ            | payment_block                  | STRING    | Payment Block                                                |
| LFA1      | SCACD            | scac                           | STRING    | Standard carrier access code                                 |
| LFA1      | SFRGR            | car_freight_grp                | STRING    | Forwarding agent freight group                               |
| LFA1      | LZONE            | transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| LFA1      | XLFZA            | alt_payee_doc                  | STRING    | Indicator: Alternative Payee Using Account Number            |
| LFA1      | DLGRP            | servagntprocgrp                | STRING    | Service agent procedure group                                |
| LFA1      | FITYP            | tax_type                       | STRING    | Tax type                                                     |
| LFA1      | STCDT            | tax_number_type                | STRING    | Tax Number Type                                              |
| LFA1      | REGSS            | social_ins                     | STRING    | Registered for Social Insurance                              |
| LFA1      | ACTSS            | soc_ins_code                   | STRING    | Activity Code for Social Insurance                           |
| LFA1      | STCD3            | tax_number_3                   | STRING    | Tax Number 3                                                 |
| LFA1      | STCD4            | tax_number_4                   | STRING    | Tax Number 4                                                 |
| LFA1      | STCD5            | tax_number_5                   | STRING    | Tax Number 5                                                 |
| LFA1      | IPISP            | tax_split                      | STRING    | Tax Split                                                    |
| LFA1      | TAXBS            | tax_base                       | STRING    | Tax Base in Percentage                                       |
| LFA1      | PROFS            | profession                     | STRING    | Profession                                                   |
| LFA1      | STGDL            | stat_grp_agent                 | STRING    | Shipment: statistics group, transportation service agent     |
| LFA1      | EMNFR            | external_manuf                 | STRING    | External manufacturer code name or number                    |
| LFA1      | LFURL            | url                            | STRING    | Uniform resource locator                                     |
| LFA1      | J_1KFREPRE       | rep_s_name                     | STRING    | Name of Representative                                       |
| LFA1      | J_1KFTBUS        | type_of_business               | STRING    | Type of Business                                             |
| LFA1      | J_1KFTIND        | type_of_industry               | STRING    | Type of Industry                                             |
| LFA1      | CONFS            | confirm_status                 | STRING    | Status of Change Authorization (Central)                     |
| LFA1      | UPDAT            | confirm_date                   | DATE      | Date on Which the Changes Were Confirmed                     |
| LFA1      | UPTIM            | confirm_time                   | TIME      | Time of Last Change Confirmation                             |
| LFA1      | NODEL            | deletion_block                 | STRING    | Central deletion block for master record                     |
| LFA1      | QSSYSDAT         | qm_system_to                   | DATE      | Validity date of certification                               |
| LFA1      | PODKZB           | pod_relevant                   | STRING    | Supplier indicator relevant for proof of delivery            |
| LFA1      | FISKU            | tax_office                     | STRING    | Account Number of Master Record of Tax Office Responsible    |
| LFA1      | STENR            | tax_number                     | STRING    | Tax Number at Responsible Tax Authority                      |
| LFA1      | CARRIER_CONF     | carrier_confirmation           | STRING    | Carrier confirmation is expected                             |
| LFA1      | MIN_COMP         | micro_comp                     | STRING    | Micro company indicator                                      |
| LFA1      | TERM_LI          | terms_liab                     | STRING    | Terms of Liability                                           |
| LFA1      | CRC_NUM          | crc_number                     | STRING    | CRC number                                                   |
| LFA1      | CVP_XBLCK        | purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
| LFA1      | RG               | rg_number                      | STRING    | RG Number                                                    |
| LFA1      | EXP              | issued_by                      | STRING    | Issued by                                                    |
| LFA1      | UF               | state                          | STRING    | State                                                        |
| LFA1      | RGDATE           | rg_issuing_date                | DATE      | RG Issuing Date                                              |
| LFA1      | RIC              | ric_number                     | STRING    | RIC Number                                                   |
| LFA1      | RNE              | foreign_national_reg           | STRING    | Foreign National Registration                                |
| LFA1      | RNEDATE          | rne_issuing_date               | DATE      | RNE Issuing Date                                             |
| LFA1      | CNAE             | cnae                           | STRING    | CNAE                                                         |
| LFA1      | LEGALNAT         | legal_nature                   | STRING    | Legal Nature                                                 |
| LFA1      | CRTN             | crt_number                     | STRING    | CRT Number                                                   |
| LFA1      | ICMSTAXPAY       | icms_taxpayer                  | STRING    | ICMS Taxpayer                                                |
| LFA1      | INDTYP           | industry_main_type             | STRING    | Industry Main Type                                           |
| LFA1      | TDT              | tax_declaration_type           | STRING    | Tax Declaration Type                                         |
| LFA1      | COMSIZE          | company_size                   | STRING    | Company Size                                                 |
| LFA1      | DECREGPC         | decl_reg_pis_cofi              | STRING    | Declaration Regimen for PIS/COFINS                           |
| LFA1      | LFA1_EEW_SUPP    | dataelement_exstensibility_for | STRING    | Dataelement Exstensibility for Supplier                      |
| LFA1      | J_SC_CAPITAL     | capital_amount                 | NUMERIC   | Capital Amount                                               |
| LFA1      | J_SC_CURRENCY    | currency                       | STRING    | Currency                                                     |
| LFA1      | ALC              | agency_loc_cd                  | STRING    | Agency Location Code                                         |
| LFA1      | PMT_OFFICE       | payment_office                 | STRING    | Payment Office                                               |
| LFA1      | PPA_RELEVANT     | ppa_relevant                   | STRING    | Vendor is PPA relevant                                       |
| LFA1      | PSOFG            | processor_group                | STRING    | Processor group                                              |
| LFA1      | PSOIS            | slaprepr_proced                | STRING    | Subledger acct preprocessing procedure                       |
| LFA1      | PSON1            | name_5                         | STRING    | Name 1                                                       |
| LFA1      | PSON2            | name_2_2                       | STRING    | Name 2                                                       |
| LFA1      | PSON3            | name_3_1                       | STRING    | Name 3                                                       |
| LFA1      | PSOVN            | first_name                     | STRING    | First Name                                                   |
| LFA1      | PSOTL            | title_1                        | STRING    | Title                                                        |
| LFA1      | PSOHS            | house_number                   | STRING    | House number: is no longer used from Release 4.6B            |
| LFA1      | PSOST            | street_1                       | STRING    | Street: No longer used from Release 4.6B                     |
| LFA1      | BORGR_DATUN      | dtelimit_ext_id                | DATE      | Date Limit for External Document Identification              |
| LFA1      | BORGR_YEAUN      | repetition                     | STRING    | Annual Repetition of Date Limit                              |
| LFA1      | ADDR2_STREET     | street_2                       | STRING    | Street                                                       |
| LFA1      | ADDR2_HOUSE_NUM  | house_number_1                 | STRING    | House Number                                                 |
| LFA1      | ADDR2_POST       | postal_code_1                  | STRING    | City postal code                                             |
| LFA1      | ADDR2_CITY       | city_2                         | STRING    | City                                                         |
| LFA1      | ADDR2_COUNTRY    | country_1                      | STRING    | Country Key                                                  |
| LFA1      | CATEG            | business_type                  | STRING    | Subcontractors Business Type                                 |
| LFA1      | PARTNER_NAME     | prtnr_trad_name                | STRING    | Partners Trading Name                                        |
| LFA1      | PARTNER_UTR      | partner_s_utr                  | STRING    | Partners Unique Tax Reference (UTR)                          |
| LFA1      | STATUS           | verif_status                   | STRING    | Verification Status                                          |
| LFA1      | VFNUM            | verification_n                 | STRING    | Verification Number                                          |
| LFA1      | VFNID            | tax_status                     | STRING    | Tax Status of the Verified Subcontractor                     |
| LFA1      | CRN              | comp_house_reg_no              | STRING    | Companies House Registration Number                          |
| LFA1      | J_1IEXCD         | ecc_no                         | STRING    | ECC Number                                                   |
| LFA1      | J_1IEXRN         | excise_reg_no                  | STRING    | Excise Registration Number                                   |
| LFA1      | J_1IEXRG         | excise_range                   | STRING    | Excise Range                                                 |
| LFA1      | J_1IEXDI         | excise_division                | STRING    | Excise Division                                              |
| LFA1      | J_1IEXCO         | commissionerate                | STRING    | Excise Commissionerate                                       |
| LFA1      | J_1ICSTNO        | cst_no                         | STRING    | Central Sales Tax Number                                     |
| LFA1      | J_1ILSTNO        | lst_no                         | STRING    | Local Sales Tax Number                                       |
| LFA1      | J_1IPANNO        | pan                            | STRING    | Permanent Account Number                                     |
| LFA1      | J_1IEXCIVE       | exc_ind_vendor                 | STRING    | Excise tax indicator for vendor                              |
| LFA1      | J_1ISSIST        | ssi_status                     | STRING    | SSI Status                                                   |
| LFA1      | J_1IVTYP         | type_of_vendor                 | STRING    | Type of Vendor                                               |
| LFA1      | J_1IVENCRE       | cenvat                         | STRING    | CENVAT Scheme Participant                                    |
| LFA1      | AEDAT            | changed_on                     | DATE      | Date of Last Change                                          |
| LFA1      | USNAM            | changed_by                     | STRING    | Changed by the user                                          |
| LFA1      | J_1ISERN         | service_tax_regn_no            | STRING    | Service Tax Registration Number                              |
| LFA1      | J_1IPANREF       | pan_reference                  | STRING    | PAN Reference Number                                         |
| LFA1      | J_1IPANVALDT     | pan_valid_from_date            | DATE      | PAN Valid From Date                                          |
| LFA1      | J_1I_CUSTOMS     | customs_vendor                 | STRING    | Customs Vendor                                               |
| LFA1      | J_1IDEDREF       | deductee_ref_no                | STRING    | Deductee Reference Number                                    |
| LFA1      | VEN_CLASS        | gst_ven_class                  | STRING    | Vendor Classification for GST                                |
| LFA1      | ENTPUB           | public_entity                  | STRING    | Vendor is public entity?                                     |
| LFA1      | ESCRIT           | deed_public_use                | STRING    | Deed of public use                                           |
| LFA1      | DVALSS           | ss_certif_valid_date           | DATE      | Social Security certificate validity date                    |
| LFA1      | FRMCSS           | ss_certificate_form            | STRING    | Social Security certificate submission form                  |
| LFA1      | CODCAE           | cae_code                       | STRING    | CAE code                                                     |
| LFA1      | AUSDIV           | absence_of_debt                | STRING    | Absence of debt                                              |
| LFA1      | TRANSPORT_CHAIN  | transportation_chain           | STRING    | Transportation Chain                                         |
| LFA1      | STAGING_TIME     | staging_time                   | NUMERIC   | Staging Time in Days                                         |
| LFA1      | SCHEDULING_TYPE  | scheduling_procedure           | STRING    | Scheduling Procedure                                         |
| LFA1      | SUBMI_RELEVANT   | rel_for_coll_no                | STRING    | Cross Docking: Relevant for Collective Numbering             |
| ADRC      | ADDRNUMBER       | address_number                 | STRING    | Address Number                                               |
| ADRC      | DATE_FROM        | valid_from                     | DATE      | Valid-from date - in current Release only 00010101 possible  |
| ADRC      | NATION           | address_version                | STRING    | Version ID for International Addresses                       |
| ADRC      | DATE_TO          | valid_to                       | DATE      | Valid-to date in current Release only 99991231 possible      |
| ADRC      | TITLE            | title_adrc                     | STRING    | Form-of-Address Key                                          |
| ADRC      | NAME1            | name_adrc                      | STRING    | Name 1                                                       |
| ADRC      | NAME2            | name_2_adrc                    | STRING    | Name 2                                                       |
| ADRC      | NAME3            | name_3_adrc                    | STRING    | Name 3                                                       |
| ADRC      | NAME4            | name_4_adrc                    | STRING    | Name 4                                                       |
| ADRC      | NAME_TEXT        | conv_name                      | STRING    | Converted name field (with form of address)                  |
| ADRC      | NAME_CO          | co_name                        | STRING    | c/o name                                                     |
| ADRC      | CITY1            | city_adrc                      | STRING    | City                                                         |
| ADRC      | CITY2            | district_adrc                  | STRING    | District                                                     |
| ADRC      | CITY_CODE        | city_code                      | STRING    | City code for city/street file                               |
| ADRC      | CITYP_CODE       | district_1                     | STRING    | District code for City and Street file                       |
| ADRC      | HOME_CITY        | different_city                 | STRING    | City (different from postal city)                            |
| ADRC      | CITYH_CODE       | city_code_1                    | STRING    | Different city for city/street file                          |
| ADRC      | CHCKSTATUS       | check_status                   | STRING    | City file test status                                        |
| ADRC      | REGIOGROUP       | structure_group                | STRING    | Regional structure grouping                                  |
| ADRC      | POST_CODE1       | postal_code_adrc               | STRING    | City postal code                                             |
| ADRC      | POST_CODE2       | po_box_post_cde                | STRING    | PO Box Postal Code                                           |
| ADRC      | POST_CODE3       | company_post_cd                | STRING    | Company Postal Code (for Large Customers)                    |
| ADRC      | PCODE1_EXT       | postal_code_ext                | STRING    | (Not Supported)City Postal Code Extension, e.g. ZIP+4+2 Code |
| ADRC      | PCODE2_EXT       | postal_code_ext_1              | STRING    | (Not Supported) PO Box Postal Code Extension                 |
| ADRC      | PCODE3_EXT       | postal_code_ext_2              | STRING    | (Not Supported) Major Customer Postal Code Extension         |
| ADRC      | PO_BOX           | po_box_adrc                    | STRING    | PO Box                                                       |
| ADRC      | DONT_USE_P       | undeliverable                  | STRING    | PO Box Address Undeliverable Flag                            |
| ADRC      | PO_BOX_NUM       | po_box_w_o_no                  | STRING    | Flag: PO Box Without Number                                  |
| ADRC      | PO_BOX_LOC       | po_box_city                    | STRING    | PO Box city                                                  |
| ADRC      | CITY_CODE2       | city_code_2                    | STRING    | City PO box code (City file)                                 |
| ADRC      | PO_BOX_REG       | po_region                      | STRING    | Region for PO Box (Country, State, Province, ...)            |
| ADRC      | PO_BOX_CTY       | po_box_country                 | STRING    | PO box country                                               |
| ADRC      | POSTALAREA       | delivery_dist                  | STRING    | (Not Supported) Post Delivery District                       |
| ADRC      | TRANSPZONE       | transport_zone_adrc            | STRING    | Transportation zone to or from which the goods are delivered |
| ADRC      | STREET           | street_adrc                    | STRING    | Street                                                       |
| ADRC      | DONT_USE_S       | undeliverable_1                | STRING    | Street Address Undeliverable Flag                            |
| ADRC      | STREETCODE       | street_code                    | STRING    | Street Number for City/Street File                           |
| ADRC      | STREETABBR       | street_abbrev                  | STRING    | (Not Supported) Abbreviation of Street Name                  |
| ADRC      | HOUSE_NUM1       | house_number_adrc              | STRING    | House Number                                                 |
| ADRC      | HOUSE_NUM2       | supplement                     | STRING    | House number supplement                                      |
| ADRC      | HOUSE_NUM3       | number_range                   | STRING    | (Not supported) House Number Range                           |
| ADRC      | STR_SUPPL1       | street_2_adrc                  | STRING    | Street 2                                                     |
| ADRC      | STR_SUPPL2       | street_3                       | STRING    | Street 3                                                     |
| ADRC      | STR_SUPPL3       | street_4                       | STRING    | Street 4                                                     |
| ADRC      | LOCATION         | street_5                       | STRING    | Street 5                                                     |
| ADRC      | BUILDING         | building_code                  | STRING    | Building (Number or Code)                                    |
| ADRC      | FLOOR            | floor_in_building              | STRING    | Floor in building                                            |
| ADRC      | ROOMNUMBER       | room_number                    | STRING    | Room or Apartment Number                                     |
| ADRC      | COUNTRY          | country_adrc                   | STRING    | Country Key                                                  |
| ADRC      | LANGU            | language_key_adrc              | STRING    | Language Key                                                 |
| ADRC      | REGION           | region_adrc                    | STRING    | Region (State, Province, County)                             |
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
| ADRC      | FLAGCOMM2        | telephone_1_adrc               | STRING    | Flag: Telephone number(s) defined                            |
| ADRC      | FLAGCOMM3        | fax_1                          | STRING    | Flag: Fax number(s) defined                                  |
| ADRC      | FLAGCOMM4        | teletex_adrc                   | STRING    | Flag: Teletex number(s) defined                              |
| ADRC      | FLAGCOMM5        | telex_adrc                     | STRING    | Flag: Telex number(s) defined                                |
| ADRC      | FLAGCOMM6        | e_mail_defined                 | STRING    | Flag: E-mail address(es) defined                             |
| ADRC      | FLAGCOMM7        | r_mail                         | STRING    | Flag: RML (remote mail) addresse(s) defined                  |
| ADRC      | FLAGCOMM8        | x_400                          | STRING    | Flag: X.400 addresse(s) defined                              |
| ADRC      | FLAGCOMM9        | rfc                            | STRING    | Flag: RFC destination(s) defined                             |
| ADRC      | FLAGCOMM10       | printer                        | STRING    | Flag: Printer defined                                        |
| ADRC      | FLAGCOMM11       | ssf                            | STRING    | Flag: SSF defined                                            |
| ADRC      | FLAGCOMM12       | uri_ftp                        | STRING    | Flag: URI/FTP address defined                                |
| ADRC      | FLAGCOMM13       | pager                          | STRING    | Flag: Pager address defined                                  |
| ADRC      | ADDRORIGIN       | address_source                 | STRING    | (Not Supported) Address Data Source (Key)                    |
| ADRC      | MC_NAME1         | name_1_adrc                    | STRING    | Name (Field NAME1) in Uppercase for Search Help              |
| ADRC      | MC_CITY1         | city_1_adrc                    | STRING    | City name in Uppercase for Search Help                       |
| ADRC      | MC_STREET        | street_1_adrc                  | STRING    | Street Name in Uppercase for Search Help                     |
| ADRC      | EXTENSION1       | data_line_adrc                 | STRING    | Extension (only for data conversion) (e.g. data line)        |
| ADRC      | EXTENSION2       | telebox_adrc                   | STRING    | Extension (only for data conversion) (e.g. telebox)          |
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
| ADRC      | XPCPT            | purposecomplete_flag_adrc      | STRING    | Business Purpose Completed Flag                              |
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