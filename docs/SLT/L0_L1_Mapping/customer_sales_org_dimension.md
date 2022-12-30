
## Table Name : customer_sales_org_dimension

| sap_table | sap_column          | column_name                    | data_type | description                                                  |
|-----------|---------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                     | customer_sales_org_uuid        | STRING    | Universal unique id                                          |
|           |                     | customer_sales_org_key         | STRING    | Customer Sale Organization Key                               |
| KNA1      | MANDT               | client                         | STRING    | Client                                                       |
| KNA1      | KUNNR               | customer                       | STRING    | Customer Number                                              |
| KNVV      | VKORG               | sales_org                      | STRING    | Sales Organization                                           |
| KNVV      | VTWEG               | distr_channel                  | STRING    | Distribution Channel                                         |
| KNVV      | SPART               | division                       | STRING    | Division                                                     |
| KNA1      | LAND1               | country                        | STRING    | Country Key                                                  |
| KNA1      | NAME1               | name                           | STRING    | Name 1                                                       |
| KNA1      | NAME2               | name_2                         | STRING    | Name 2                                                       |
| KNA1      | ORT01               | city                           | STRING    | City                                                         |
| KNA1      | PSTLZ               | postal_code                    | STRING    | Postal Code                                                  |
| KNA1      | REGIO               | region                         | STRING    | Region (State, Province, County)                             |
| KNA1      | SORTL               | search_term                    | STRING    | Sort field                                                   |
| KNA1      | STRAS               | street                         | STRING    | Street and House Number                                      |
| KNA1      | TELF1               | telephone_1                    | STRING    | First telephone number                                       |
| KNA1      | TELFX               | fax_number                     | STRING    | Fax Number                                                   |
| KNA1      | XCPDK               | one_time_acct                  | STRING    | Indicator: Is the account a one-time account?                |
| KNA1      | ADRNR               | address                        | STRING    | Address                                                      |
| KNA1      | MCOD1               | name_1                         | STRING    | Search term for matchcode search                             |
| KNA1      | MCOD2               | name_2_1                       | STRING    | Search Term for Matchcode Search                             |
| KNA1      | MCOD3               | city_1                         | STRING    | Search term for matchcode search                             |
| KNA1      | ANRED               | title                          | STRING    | Title                                                        |
| KNA1      | AUFSD               | order_block                    | STRING    | Central order block for customer                             |
| KNA1      | BAHNE               | express_station                | STRING    | Express train station                                        |
| KNA1      | BAHNS               | train_station                  | STRING    | Train station                                                |
| KNA1      | BBBNR               | location_no_1                  | STRING    | International location number  (part 1)                      |
| KNA1      | BBSNR               | location_no_2                  | STRING    | International location number (Part 2)                       |
| KNA1      | BEGRU               | authorization                  | STRING    | Authorization Group                                          |
| KNA1      | BRSCH               | industry                       | STRING    | Industry key                                                 |
| KNA1      | BUBKZ               | check_digit                    | STRING    | Check digit for the international location number            |
| KNA1      | DATLT               | data_line                      | STRING    | Data communication line no.                                  |
| KNA1      | ERDAT               | created_on                     | DATE      | Date on which the Record Was Created                         |
| KNA1      | ERNAM               | created_by                     | STRING    | Name of Person who Created the Object                        |
| KNA1      | EXABL               | unloading_pts                  | STRING    | Indicator: Unloading points exist                            |
| KNA1      | FAKSD               | billing_block                  | STRING    | Central billing block for customer                           |
| KNA1      | FISKN               | fiscal_address                 | STRING    | Account number of the master record with the fiscal address  |
| KNA1      | KNAZK               | working_times                  | STRING    | Working Time Calendar                                        |
| KNA1      | KNRZA               | alternat_payer                 | STRING    | Account number of an alternative payer                       |
| KNA1      | KONZS               | group_key                      | STRING    | Group key                                                    |
| KNA1      | KTOKD               | account_group                  | STRING    | Customer Account Group                                       |
| KNA1      | KUKLA               | customer_class                 | STRING    | Customer classification                                      |
| KNA1      | LIFNR               | vendor                         | STRING    | Account Number of Vendor or Creditor                         |
| KNA1      | LIFSD               | delivery_block                 | STRING    | Central delivery block for the customer                      |
| KNA1      | LOCCO               | location_code                  | STRING    | City Coordinates                                             |
| KNA1      | LOEVM               | deletion_flag                  | STRING    | Central Deletion Flag for Master Record                      |
| KNA1      | NAME3               | name_3                         | STRING    | Name 3                                                       |
| KNA1      | NAME4               | name_4                         | STRING    | Name 4                                                       |
| KNA1      | NIELS               | nielsen_id                     | STRING    | Nielsen ID                                                   |
| KNA1      | ORT02               | district                       | STRING    | District                                                     |
| KNA1      | PFACH               | po_box                         | STRING    | PO Box                                                       |
| KNA1      | PSTL2               | po_box_pcode                   | STRING    | P.O. Box Postal Code                                         |
| KNA1      | COUNC               | county_code                    | STRING    | County Code                                                  |
| KNA1      | CITYC               | city_code                      | STRING    | City Code                                                    |
| KNA1      | RPMKR               | regional_market                | STRING    | Regional market                                              |
| KNA1      | SPERR               | posting_block                  | STRING    | Central posting block                                        |
| KNA1      | SPRAS               | language_key                   | STRING    | Language Key                                                 |
| KNA1      | STCD1               | tax_number_1                   | STRING    | Tax Number 1                                                 |
| KNA1      | STCD2               | tax_number_2                   | STRING    | Tax Number 2                                                 |
| KNA1      | STKZA               | equalizatn_tax                 | STRING    | Indicator: Business Partner Subject to Equalization Tax?     |
| KNA1      | STKZU               | liable_for_vat                 | STRING    | Liable for VAT                                               |
| KNA1      | TELBX               | telebox                        | STRING    | Telebox number                                               |
| KNA1      | TELF2               | telephone_2                    | STRING    | Second telephone number                                      |
| KNA1      | TELTX               | teletex                        | STRING    | Teletex number                                               |
| KNA1      | TELX1               | telex                          | STRING    | Telex number                                                 |
| KNA1      | LZONE               | transport_zone                 | STRING    | Transportation zone to or from which the goods are delivered |
| KNA1      | XZEMP               | al_payer_in_doc                | STRING    | Indicator: Is an alternative payer allowed in document?      |
| KNA1      | VBUND               | trading_partner                | STRING    | Company ID of Trading Partner                                |
| KNA1      | STCEG               | vat_reg_no                     | STRING    | VAT Registration Number                                      |
| KNA1      | DEAR1               | competitors                    | STRING    | Indicator: Competitor                                        |
| KNA1      | DEAR2               | sales_partner                  | STRING    | Indicator: Sales partner                                     |
| KNA1      | DEAR3               | prospect                       | STRING    | Indicator: Sales prospect                                    |
| KNA1      | DEAR4               | cust_type_4                    | STRING    | Indicator for customer type 4                                |
| KNA1      | DEAR5               | default_sp                     | STRING    | ID for default sold-to party                                 |
| KNA1      | GFORM               | legal_status                   | STRING    | Legal status                                                 |
| KNA1      | BRAN1               | industry_code_1                | STRING    | Industry code 1                                              |
| KNA1      | BRAN2               | industry_code_2                | STRING    | Industry code 2                                              |
| KNA1      | BRAN3               | industry_code_3                | STRING    | Industry code 3                                              |
| KNA1      | BRAN4               | industry_code_4                | STRING    | Industry code 4                                              |
| KNA1      | BRAN5               | industry_code_5                | STRING    | Industry code 5                                              |
| KNA1      | EKONT               | initial_contact                | STRING    | Initial contact                                              |
| KNA1      | UMSAT               | annual_sales                   | NUMERIC   | Annual sales                                                 |
| KNA1      | UMJAH               | sales_year                     | STRING    | Year For Which Sales are Given                               |
| KNA1      | UWAER               | currency                       | STRING    | Currency of sales figure                                     |
| KNA1      | JMZAH               | employee                       | STRING    | Yearly number of employees                                   |
| KNA1      | JMJAH               | year                           | STRING    | Year for which the number of employees is given              |
| KNA1      | KATR1               | attribute_1                    | STRING    | Attribute 1                                                  |
| KNA1      | KATR2               | attribute_2                    | STRING    | Attribute 2                                                  |
| KNA1      | KATR3               | attribute_3                    | STRING    | Attribute 3                                                  |
| KNA1      | KATR4               | attribute_4                    | STRING    | Attribute 4                                                  |
| KNA1      | KATR5               | attribute_5                    | STRING    | Attribute 5                                                  |
| KNA1      | KATR6               | attribute_6                    | STRING    | Attribute 6                                                  |
| KNA1      | KATR7               | attribute_7                    | STRING    | Attribute 7                                                  |
| KNA1      | KATR8               | attribute_8                    | STRING    | Attribute 8                                                  |
| KNA1      | KATR9               | attribute_9                    | STRING    | Attribute 9                                                  |
| KNA1      | KATR10              | attribute_10                   | STRING    | Attribute 10                                                 |
| KNA1      | STKZN               | natural_person                 | STRING    | Natural Person                                               |
| KNA1      | UMSA1               | annual_sales_1                 | NUMERIC   | Annual sales                                                 |
| KNA1      | TXJCD               | tax_jur                        | STRING    | Tax Jurisdiction                                             |
| KNA1      | PERIV               | fi_year_variant                | STRING    | Fiscal Year Variant                                          |
| KNA1      | ABRVW               | usage                          | STRING    | Usage Indicator                                              |
| KNA1      | INSPBYDEBI          | by_customer                    | STRING    | Inspection Carried Out By Customer (No Inspection Lot)       |
| KNA1      | INSPATDEBI          | after_delivery                 | STRING    | Inspection for a Delivery Note After Outbound Delivery       |
| KNA1      | KTOCD               | ref_acct_group                 | STRING    | Reference Account Group for One-Time Account (Customer)      |
| KNA1      | PFORT               | p_o_box_city                   | STRING    | PO Box city                                                  |
| KNA1      | WERKS               | plant                          | STRING    | Plant                                                        |
| KNA1      | DTAMS               | dme_indicator                  | STRING    | Report key for data medium exchange                          |
| KNA1      | DTAWS               | instruction_key                | STRING    | Instruction key for data medium exchange                     |
| KNA1      | DUEFL               | data_transfer_status           | STRING    | Status of Data Transfer into Subsequent Release              |
| KNA1      | HZUOR               | hier_assignment                | STRING    | Assignment to Hierarchy                                      |
| KNA1      | SPERZ               | payment_block                  | STRING    | Payment Block                                                |
| KNA1      | ETIKG               | lab_cust_group                 | STRING    | IS-R Labeling: customer/plant group                          |
| KNA1      | CIVVE               | non_milit_use                  | STRING    | ID for mainly non-military use                               |
| KNA1      | MILVE               | military_use                   | STRING    | ID for mainly military use                                   |
| KNA1      | KDKG1               | condition_grp_1                | STRING    | Customer condition group 1                                   |
| KNA1      | KDKG2               | condition_grp_2                | STRING    | Customer condition group 2                                   |
| KNA1      | KDKG3               | condition_grp_3                | STRING    | Customer condition group 3                                   |
| KNA1      | KDKG4               | condition_grp_4                | STRING    | Customer condition group 4                                   |
| KNA1      | KDKG5               | condition_grp_5                | STRING    | Customer condition group 5                                   |
| KNA1      | XKNZA               | alt_payer_doc                  | STRING    | Indicator: Alternative payer using account number            |
| KNA1      | FITYP               | tax_type                       | STRING    | Tax type                                                     |
| KNA1      | STCDT               | tax_number_type                | STRING    | Tax Number Type                                              |
| KNA1      | STCD3               | tax_number_3                   | STRING    | Tax Number 3                                                 |
| KNA1      | STCD4               | tax_number_4                   | STRING    | Tax Number 4                                                 |
| KNA1      | STCD5               | tax_number_5                   | STRING    | Tax Number 5                                                 |
| KNA1      | XICMS               | icms_exempt                    | STRING    | Customer is ICMS-exempt                                      |
| KNA1      | XXIPI               | ipi_exempt                     | STRING    | Customer is IPI-exempt                                       |
| KNA1      | XSUBT               | subtrib_group                  | STRING    | Customer group for Substituiçao Tributária calculation       |
| KNA1      | CFOPC               | cfop_category                  | STRING    | Customers CFOP category                                      |
| KNA1      | TXLW1               | icms_law                       | STRING    | Tax law: ICMS                                                |
| KNA1      | TXLW2               | ipi_law                        | STRING    | Tax law: IPI                                                 |
| KNA1      | CCC01               | biochem_warfare                | STRING    | Indicator for biochemical warfare for legal control          |
| KNA1      | CCC02               | nucl_nonprolif                 | STRING    | Indicator for nuclear nonproliferation for legal control     |
| KNA1      | CCC03               | natl_security                  | STRING    | Indicator for national security for legal control            |
| KNA1      | CCC04               | missile_techn                  | STRING    | Indicator for missile technology for legal control           |
| KNA1      | BONDED_AREA_CONFIRM | bonded_area_confirm            | STRING    | TW: Bonded Area Confirm in Business Partner Extension        |
| KNA1      | DONATE_MARK         | donate_mark                    | STRING    | TW: Donate Mark in Business Partner Extension                |
| KNA1      | CASSD               | sales_block                    | STRING    | Central sales block for customer                             |
| KNA1      | KNURL               | url                            | STRING    | Uniform resource locator                                     |
| KNA1      | J_1KFREPRE          | rep_s_name                     | STRING    | Name of Representative                                       |
| KNA1      | J_1KFTBUS           | type_of_business               | STRING    | Type of Business                                             |
| KNA1      | J_1KFTIND           | type_of_industry               | STRING    | Type of Industry                                             |
| KNA1      | CONFS               | confirm_status                 | STRING    | Status of Change Authorization (Central)                     |
| KNA1      | UPDAT               | confirm_date                   | DATE      | Date on Which the Changes Were Confirmed                     |
| KNA1      | UPTIM               | confirm_time                   | TIME      | Time of Last Change Confirmation                             |
| KNA1      | NODEL               | deletion_block                 | STRING    | Central deletion block for master record                     |
| KNA1      | DEAR6               | consumer                       | STRING    | Indicator: Consumer                                          |
| KNA1      | CVP_XBLCK           | purposecomplete_flag           | STRING    | Business Purpose Completed Flag                              |
| KNA1      | SUFRAMA             | suframa_code                   | STRING    | Suframa Code                                                 |
| KNA1      | RG                  | rg_number                      | STRING    | RG Number                                                    |
| KNA1      | EXP                 | issued_by                      | STRING    | Issued by                                                    |
| KNA1      | UF                  | state                          | STRING    | State                                                        |
| KNA1      | RGDATE              | rg_issuing_date                | DATE      | RG Issuing Date                                              |
| KNA1      | RIC                 | ric_number                     | STRING    | RIC Number                                                   |
| KNA1      | RNE                 | foreign_national_reg           | STRING    | Foreign National Registration                                |
| KNA1      | RNEDATE             | rne_issuing_date               | DATE      | RNE Issuing Date                                             |
| KNA1      | CNAE                | cnae                           | STRING    | CNAE                                                         |
| KNA1      | LEGALNAT            | legal_nature                   | STRING    | Legal Nature                                                 |
| KNA1      | CRTN                | crt_number                     | STRING    | CRT Number                                                   |
| KNA1      | ICMSTAXPAY          | icms_taxpayer                  | STRING    | ICMS Taxpayer                                                |
| KNA1      | INDTYP              | industry_main_type             | STRING    | Industry Main Type                                           |
| KNA1      | TDT                 | tax_declaration_type           | STRING    | Tax Declaration Type                                         |
| KNA1      | COMSIZE             | company_size                   | STRING    | Company Size                                                 |
| KNA1      | DECREGPC            | decl_reg_pis_cofi              | STRING    | Declaration Regimen for PIS/COFINS                           |
| KNA1      | KNA1_EEW_CUST       | data_element_for_customer      | STRING    | data element for customer                                    |
| KNA1      | RULE_EXCLUSION      | account_excluded               | STRING    | Account Excluded from Rule-Based Assignment                  |
| KNA1      | __VSO__R_PALHGT     | max_stack_hght                 | NUMERIC   | Maximum Stacking Height of the Packaging Material (VSO)      |
| KNA1      | __VSO__R_PAL_UL     | pkm_length_unit                | STRING    | Unit of Length for Packaging Material (VSO)                  |
| KNA1      | __VSO__R_PK_MAT     | customerrelated                | STRING    | Customer-Related Packing for Each Packaging Material (VSO)   |
| KNA1      | __VSO__R_MATPAL     | pkm_of_custom                  | STRING    | Packaging Material of the Customer in VSO                    |
| KNA1      | __VSO__R_I_NO_LYR   | no_layers_inpal                | STRING    | Number Layers Under an Inter-Pallet (VSO)                    |
| KNA1      | __VSO__R_ONE_MAT    | material_spec                  | STRING    | Packing Material-Specific for Each Packaging Material        |
| KNA1      | __VSO__R_ONE_SORT   | pack_pcktype                   | STRING    | Pack Only One Package Type for Each PKM (VSO)                |
| KNA1      | __VSO__R_ULD_SIDE   | side_preference                | STRING    | Side Preference of Loading/Unloading (VSO)                   |
| KNA1      | __VSO__R_LOAD_PREF  | f_b_preference                 | STRING    | Front/Back Preference of Loading/Unloading (VSO)             |
| KNA1      | __VSO__R_DPOINT     | collunloadpoint                | STRING    | Collective Unloading Point for VSO                           |
| KNA1      | ALC                 | agency_loc_cd                  | STRING    | Agency Location Code                                         |
| KNA1      | PMT_OFFICE          | payment_office                 | STRING    | Payment Office                                               |
| KNA1      | FEE_SCHEDULE        | fee_schedule                   | STRING    | Fee schedule                                                 |
| KNA1      | DUNS                | duns_number                    | STRING    | DUNS Number                                                  |
| KNA1      | DUNS4               | duns_4                         | STRING    | DUNS+4                                                       |
| KNA1      | PSOFG               | processor_group                | STRING    | Processor group                                              |
| KNA1      | PSOIS               | slaprepr_proced                | STRING    | Subledger acct preprocessing procedure                       |
| KNA1      | PSON1               | name_5                         | STRING    | Name 1                                                       |
| KNA1      | PSON2               | name_2_2                       | STRING    | Name 2                                                       |
| KNA1      | PSON3               | name_3_1                       | STRING    | Name 3                                                       |
| KNA1      | PSOVN               | first_name                     | STRING    | First Name                                                   |
| KNA1      | PSOTL               | title_1                        | STRING    | Title                                                        |
| KNA1      | PSOHS               | house_number                   | STRING    | House number: is no longer used from Release 4.6B            |
| KNA1      | PSOST               | street_1                       | STRING    | Street: No longer used from Release 4.6B                     |
| KNA1      | PSOO1               | description                    | STRING    | Description                                                  |
| KNA1      | PSOO2               | description_1                  | STRING    | Description                                                  |
| KNA1      | PSOO3               | description_2                  | STRING    | Description                                                  |
| KNA1      | PSOO4               | description_3                  | STRING    | Description                                                  |
| KNA1      | PSOO5               | description_4                  | STRING    | Description                                                  |
| KNA1      | J_1IEXCD            | ecc_no                         | STRING    | ECC Number                                                   |
| KNA1      | J_1IEXRN            | excise_reg_no                  | STRING    | Excise Registration Number                                   |
| KNA1      | J_1IEXRG            | excise_range                   | STRING    | Excise Range                                                 |
| KNA1      | J_1IEXDI            | excise_division                | STRING    | Excise Division                                              |
| KNA1      | J_1IEXCO            | commissionerate                | STRING    | Excise Commissionerate                                       |
| KNA1      | J_1ICSTNO           | cst_no                         | STRING    | Central Sales Tax Number                                     |
| KNA1      | J_1ILSTNO           | lst_no                         | STRING    | Local Sales Tax Number                                       |
| KNA1      | J_1IPANNO           | pan                            | STRING    | Permanent Account Number                                     |
| KNA1      | J_1IEXCICU          | exc_ind_cust                   | STRING    | Excise tax indicator for customer                            |
| KNA1      | AEDAT               | changed_on                     | DATE      | Date of Last Change                                          |
| KNA1      | USNAM               | changed_by                     | STRING    | Changed by the user                                          |
| KNA1      | J_1ISERN            | service_tax_regn_no            | STRING    | Service Tax Registration Number                              |
| KNA1      | J_1IPANREF          | pan_reference                  | STRING    | PAN Reference Number                                         |
| KNA1      | J_3GETYP            | recipient_type                 | STRING    | Recipient Type                                               |
| KNA1      | J_3GREFTYP          | reference_type                 | STRING    | Reference Type for Recipient                                 |
| KNA1      | PSPNR               | wbs_element                    | STRING    | WBS Element                                                  |
| KNA1      | COAUFNR             | order_number                   | STRING    | Order Number                                                 |
| KNA1      | J_3GAGEXT           | ext_sold_to_party              | STRING    | External Sold-to Party                                       |
| KNA1      | J_3GAGINT           | cust_int_settl                 | STRING    | Customer Internal Settlement                                 |
| KNA1      | J_3GAGDUMI          | dummy_recipient                | STRING    | Dummy Recipient                                              |
| KNA1      | J_3GAGSTDI          | std_recipient                  | STRING    | Standard Recipient                                           |
| KNA1      | LGORT               | stor_loc                       | STRING    | Storage location                                             |
| KNA1      | KOKRS               | co_area                        | STRING    | Controlling Area                                             |
| KNA1      | KOSTL               | cost_center                    | STRING    | Cost Center                                                  |
| KNA1      | J_3GABGLG           | retiredate_pbe                 | STRING    | Retirement Date Counts for Performance-Based Equipment       |
| KNA1      | J_3GABGVG           | retiredate_tbe                 | STRING    | Retirement Date Counts for Time-Based Equipment              |
| KNA1      | J_3GABRART          | settl_type                     | STRING    | Settlement Type                                              |
| KNA1      | J_3GSTDMON          | hours_per_month                | NUMERIC   | Hours per Month                                              |
| KNA1      | J_3GSTDTAG          | hours_days                     | NUMERIC   | Hours per Day                                                |
| KNA1      | J_3GTAGMON          | days_month                     | NUMERIC   | Number of Days/Month                                         |
| KNA1      | J_3GZUGTAG          | acqdate_pbe                    | STRING    | Function for Settlement on Acquisition Date/PBE              |
| KNA1      | J_3GMASCHB          | pbe_document                   | STRING    | Fill PBE Documents Indicator                                 |
| KNA1      | J_3GMEINSA          | mltpl_usg_per                  | STRING    | Indicator: Take Multiple Usage Periods into Account          |
| KNA1      | J_3GKEINSA          | short_op                       | STRING    | Indicator - Relevant to Short Operation Periods              |
| KNA1      | J_3GBLSPER          | blckinddocentry                | STRING    | Blocking Indicator for Document Entry                        |
| KNA1      | J_3GKLEIVO          | pbe_as_tbe                     | STRING    | Indicator: Calculate PBE as TBE                              |
| KNA1      | J_3GCALID           | calendar_id                    | STRING    | Calendar ID                                                  |
| KNA1      | J_3GVMONAT          | complete_month                 | STRING    | Indicator for Complete Month                                 |
| KNA1      | J_3GABRKEN          | settlmnt_ind                   | STRING    | Settlement Indicator                                         |
| KNA1      | J_3GLABRECH         | last_settlement                | DATE      | Date of Last Settlement                                      |
| KNA1      | J_3GAABRECH         | current_settl                  | DATE      | Date of Current Settlement                                   |
| KNA1      | J_3GZUTVHLG         | with_acq_date                  | STRING    | Ind.: Acquisition Date Counts (as Daily Settlement for PBE)  |
| KNA1      | J_3GNEGMEN          | negqtyallowed                  | STRING    | Negative Quantities Allowed Even for Chronolog. Inv. Mgmt    |
| KNA1      | J_3GFRISTLO         | dlinelogic                     | STRING    | Indicator: Deadline Logic                                    |
| KNA1      | J_3GEMINBE          | minusprd_rsctd                 | STRING    | Minimum Usage Period for Restricted Usage (Days)             |
| KNA1      | J_3GFMGUE           | relnotallunrusg                | STRING    | Release Notification Allowance for Unrestricted Usage (Days) |
| KNA1      | J_3GZUSCHUE         | srchrgeunrstuse                | STRING    | Surcharge for Unrestricted Usage (Days)                      |
| KNA1      | J_3GSCHPRS          | shift_price                    | STRING    | Indicator: Shift Price                                       |
| KNA1      | J_3GINVSTA          | inv_status_cs                  | STRING    | Status of Construction Site Inventory                        |
| KNA1      | __SAPCEM__DBER      | planning_area                  | STRING    | Planning Area                                                |
| KNA1      | __SAPCEM__KVMEQ     | settlqtyequirel                | STRING    | Indicator: Settlement Qty Relevant to Equipment              |
| KNVV      | KUNNR               | customer_knvv                  | STRING    | Customer Number                                              |
| KNVV      | ERNAM               | created_by_knvv                | STRING    | Name of Person who Created the Object                        |
| KNVV      | ERDAT               | created_on_knvv                | DATE      | Date on which the record was created                         |
| KNVV      | BEGRU               | authorizgroup                  | STRING    | Authorization Group                                          |
| KNVV      | LOEVM               | del_id_slsarea                 | STRING    | Deletion flag for customer (sales level)                     |
| KNVV      | VERSG               | cust_stats_grp                 | STRING    | Customer Statistics Group                                    |
| KNVV      | AUFSD               | ord_blk_sls_ar                 | STRING    | Customer order block (sales area)                            |
| KNVV      | KALKS               | cust_pric_proc                 | STRING    | Customer Classification for Pricing Procedure Determination  |
| KNVV      | KDGRP               | customer_group                 | STRING    | Customer Group                                               |
| KNVV      | BZIRK               | sales_district                 | STRING    | Sales District                                               |
| KNVV      | KONDA               | custprice_group                | STRING    | Customer Price Group                                         |
| KNVV      | PLTYP               | price_list_tp                  | STRING    | Price List Type                                              |
| KNVV      | AWAHR               | order_probab                   | STRING    | Order Probability of the Item                                |
| KNVV      | INCO1               | incoterms                      | STRING    | Incoterms (Part 1)                                           |
| KNVV      | INCO2               | incoterms_2                    | STRING    | Incoterms (Part 2)                                           |
| KNVV      | LIFSD               | delblcksalesar                 | STRING    | Customer delivery block (sales area)                         |
| KNVV      | AUTLF               | complete_dlv                   | STRING    | Complete Delivery Defined for Each Sales Order?              |
| KNVV      | ANTLF               | max_part_deliv                 | NUMERIC   | Maximum Number of Partial Deliveries Allowed Per Item        |
| KNVV      | KZTLF               | part_dlv_item                  | STRING    | Partial delivery at item level                               |
| KNVV      | KZAZU               | order_combinat                 | STRING    | Order Combination Indicator                                  |
| KNVV      | CHSPL               | batch_split                    | STRING    | Batch split allowed                                          |
| KNVV      | LPRIO               | delivery_prior                 | STRING    | Delivery Priority                                            |
| KNVV      | EIKTO               | acct_at_cust                   | STRING    | Shippers (Our) Account Number at the Customer or Vendor      |
| KNVV      | VSBED               | shp_cond                       | STRING    | Shipping Conditions                                          |
| KNVV      | FAKSD               | bblock_for_slsa                | STRING    | Billing block for customer (sales and distribution)          |
| KNVV      | MRNKZ               | man_inv_maint                  | STRING    | Manual Invoice Maintenance                                   |
| KNVV      | PERFK               | invoicing_dates                | STRING    | Invoice Dates (Calendar Identification)                      |
| KNVV      | PERRL               | inv_list_sched                 | STRING    | Invoice List Schedule (calendar identification)              |
| KNVV      | KVAKZ               | cost_estimate                  | STRING    | Cost estimate indicator (inactive)                           |
| KNVV      | KVAWT               | max_cost_estim                 | NUMERIC   | Value limit for cost estimate (inactive)                     |
| KNVV      | WAERS               | currency_knvv                  | STRING    | Currency                                                     |
| KNVV      | KLABC               | abc_class                      | STRING    | Customer classification (ABC analysis)                       |
| KNVV      | KTGRD               | accassmtgrpcust                | STRING    | Account Assignment Group for this customer                   |
| KNVV      | ZTERM               | payt_terms                     | STRING    | Terms of payment key                                         |
| KNVV      | VWERK               | deliver_plant                  | STRING    | Delivering Plant (Own or External)                           |
| KNVV      | VKGRP               | sales_group                    | STRING    | Sales group                                                  |
| KNVV      | VKBUR               | sales_office                   | STRING    | Sales office                                                 |
| KNVV      | VSORT               | item_proposal                  | STRING    | Item proposal                                                |
| KNVV      | KVGR1               | customer_grp_1                 | STRING    | Customer group 1                                             |
| KNVV      | KVGR2               | customer_grp_2                 | STRING    | Customer group 2                                             |
| KNVV      | KVGR3               | customer_grp_3                 | STRING    | Customer group 3                                             |
| KNVV      | KVGR4               | customer_grp_4                 | STRING    | Customer group 4                                             |
| KNVV      | KVGR5               | customer_grp_5                 | STRING    | Customer group 5                                             |
| KNVV      | BOKRE               | rebate                         | STRING    | Indicator: Customer Is Rebate-Relevant                       |
| KNVV      | BOIDT               | rebate_index                   | DATE      | Start of validity per.for the rebate index for the customer  |
| KNVV      | KURST               | exch_rate_type                 | STRING    | Exchange Rate Type                                           |
| KNVV      | PRFRE               | price_determin                 | STRING    | Relevant for price determination ID                          |
| KNVV      | PRAT1               | product_attr_1                 | STRING    | ID for product attribute 1                                   |
| KNVV      | PRAT2               | product_attr_2                 | STRING    | ID for product attribute 2                                   |
| KNVV      | PRAT3               | product_attr_3                 | STRING    | ID for product attribute 3                                   |
| KNVV      | PRAT4               | product_attr_4                 | STRING    | ID for product attribute 4                                   |
| KNVV      | PRAT5               | product_attr_5                 | STRING    | ID for product attribute 5                                   |
| KNVV      | PRAT6               | prod_attribute6                | STRING    | ID for product attribute 6                                   |
| KNVV      | PRAT7               | product_attr_7                 | STRING    | ID for product attribute 7                                   |
| KNVV      | PRAT8               | prod_attribute8                | STRING    | ID for product attribute 8                                   |
| KNVV      | PRAT9               | product_attr_9                 | STRING    | ID for product attribute 9                                   |
| KNVV      | PRATA               | prd_attribute10                | STRING    | ID for product attribute 10                                  |
| KNVV      | KABSS               | paym_guar_proc                 | STRING    | Customer payment guarantee procedure                         |
| KNVV      | KKBER               | cred_contr_area                | STRING    | Credit control area                                          |
| KNVV      | CASSD               | sales_block_knvv               | STRING    | Sales Block for Customer (Sales Area)                        |
| KNVV      | RDOFF               | rounding_off                   | STRING    | Switch off rounding?                                         |
| KNVV      | AGREL               | settlem_mgmt                   | STRING    | Indicator: Relevant for Settlement Management                |
| KNVV      | MEGRU               | uom_group                      | STRING    | Unit of Measure Group                                        |
| KNVV      | UEBTO               | overdeliv_tol                  | NUMERIC   | Overdelivery Tolerance                                       |
| KNVV      | UNTTO               | underdel_tol                   | NUMERIC   | Underdelivery Tolerance                                      |
| KNVV      | UEBTK               | unlimited_tol                  | STRING    | Unlimited Overdelivery Allowed                               |
| KNVV      | PVKSM               | pp_cust_proc                   | STRING    | Customer procedure for product proposal                      |
| KNVV      | PODKZ               | pod_relevant                   | STRING    | Relevant for POD processing                                  |
| KNVV      | PODTG               | pod_timeframe                  | NUMERIC   | Timeframe for Confirmation of POD                            |
| KNVV      | BLIND               | document_index                 | STRING    | Index Structure Active for Subsequent Settlement             |
| KNVV      | CARRIER_NOTIF       | carrier_notification           | STRING    | Carrier is to be notified                                    |
| KNVV      | CVP_XBLCK_V         | purposecomplete_flag_knvv      | STRING    | Business Purpose Completed Flag                              |
| KNVV      | INCOV               | inco_version                   | STRING    | Incoterms Version                                            |
| KNVV      | INCO2_L             | inco_location1                 | STRING    | Incoterms Location 1                                         |
| KNVV      | INCO3_L             | inco_location2                 | STRING    | Incoterms Location 2                                         |
| KNVV      | KNVV_EEW_CONTACT    | data_element_extension_for_con | STRING    | Data element Extension for Contact                           |
| KNVV      | STATUS_OBJ_GUID     | guid                           | BYTES     | Globally Unique Identifier                                   |
| KNVV      | BILLPLAN_PROC       | bill_planproc                  | STRING    | Billing Plan Procedure                                       |
| KNVV      | __BEV1__EMLGPFAND   | empts_depos_fr                 | STRING    | Deposit on Empties                                           |
| KNVV      | __BEV1__EMLGFORTS   | emp_update_off                 | STRING    | Indicator for Empties Update                                 |
| KNVV      | J_1NBOESL           | exchange_key                   | STRING    | Exchange Key for NF Processing                               |
| KNVV      | FSH_KVGR6           | customer_grp_6                 | STRING    | Customer Group 6                                             |
| KNVV      | FSH_KVGR7           | customer_grp_7                 | STRING    | Customer Group 7                                             |
| KNVV      | FSH_KVGR8           | customer_grp_8                 | STRING    | Customer Group 8                                             |
| KNVV      | FSH_KVGR9           | customer_grp_5_1               | STRING    | Customer Group 9                                             |
| KNVV      | FSH_KVGR10          | customer_grp_10                | STRING    | Customer Group 10                                            |
| KNVV      | FSH_GRREG           | grouping_rule                  | STRING    | Grouping Rule                                                |
| KNVV      | FSH_RESGY           | rel_strategy                   | STRING    | Release Strategy                                             |
| KNVV      | FSH_SC_CID          | cust_sup_id                    | STRING    | Customer/Supplier Identifier                                 |
| KNVV      | FSH_VAS_DETC        | vas_determin_mode              | STRING    | VAS Determination Mode                                       |
| KNVV      | FSH_VAS_CG          | vas_cust_group                 | STRING    | Value-Added Services Customer Group                          |
| KNVV      | FSH_GRSGY           | group_strategy                 | STRING    | ARUN Grouping Strategy                                       |
| KNVV      | FSH_SS              | sched_strat                    | STRING    | Order Scheduling Strategy                                    |
| KNVV      | FSH_FRATE           | fill_rate                      | STRING    | Fill Rate %                                                  |
| KNVV      | FSH_FRATE_AGG_LEVEL | aggregation_level              | STRING    | Fill Rate Aggregation Level                                  |
| KNVV      | FSH_MSOCDC          | customer_dc                    | STRING    | Distribution Center of Customer                              |
| KNVV      | FSH_MSOPID          | custid_partner                 | STRING    | Customer Identification in the Partner System                |
| KNVV      | RFM_PSST_RULE       | psst_grouping_rule             | STRING    | PSST Grouping Rule                                           |
| KNVV      | RFM_PSST_EXCLUDE    | exclude_from_psst              | STRING    | Exclude from PSST Grouping Rule Determination                |
| ADRC      | ADDRNUMBER          | address_number                 | STRING    | Address Number                                               |
| ADRC      | DATE_FROM           | valid_from                     | DATE      | Valid-from date - in current Release only 00010101 possible  |
| ADRC      | NATION              | address_version                | STRING    | Version ID for International Addresses                       |
| ADRC      | DATE_TO             | valid_to                       | DATE      | Valid-to date in current Release only 99991231 possible      |
| ADRC      | TITLE               | title_adrc                     | STRING    | Form-of-Address Key                                          |
| ADRC      | NAME1               | name_adrc                      | STRING    | Name 1                                                       |
| ADRC      | NAME2               | name_2_adrc                    | STRING    | Name 2                                                       |
| ADRC      | NAME3               | name_3_adrc                    | STRING    | Name 3                                                       |
| ADRC      | NAME4               | name_4_adrc                    | STRING    | Name 4                                                       |
| ADRC      | NAME_TEXT           | conv_name                      | STRING    | Converted name field (with form of address)                  |
| ADRC      | NAME_CO             | co_name                        | STRING    | c/o name                                                     |
| ADRC      | CITY1               | city_adrc                      | STRING    | City                                                         |
| ADRC      | CITY2               | district_adrc                  | STRING    | District                                                     |
| ADRC      | CITY_CODE           | city_code_adrc                 | STRING    | City code for city/street file                               |
| ADRC      | CITYP_CODE          | district_1                     | STRING    | District code for City and Street file                       |
| ADRC      | HOME_CITY           | different_city                 | STRING    | City (different from postal city)                            |
| ADRC      | CITYH_CODE          | city_code_1                    | STRING    | Different city for city/street file                          |
| ADRC      | CHCKSTATUS          | check_status                   | STRING    | City file test status                                        |
| ADRC      | REGIOGROUP          | structure_group                | STRING    | Regional structure grouping                                  |
| ADRC      | POST_CODE1          | postal_code_adrc               | STRING    | City postal code                                             |
| ADRC      | POST_CODE2          | po_box_post_cde                | STRING    | PO Box Postal Code                                           |
| ADRC      | POST_CODE3          | company_post_cd                | STRING    | Company Postal Code (for Large Customers)                    |
| ADRC      | PCODE1_EXT          | postal_code_ext                | STRING    | (Not Supported)City Postal Code Extension, e.g. ZIP+4+2 Code |
| ADRC      | PCODE2_EXT          | postal_code_ext_1              | STRING    | (Not Supported) PO Box Postal Code Extension                 |
| ADRC      | PCODE3_EXT          | postal_code_ext_2              | STRING    | (Not Supported) Major Customer Postal Code Extension         |
| ADRC      | PO_BOX              | po_box_adrc                    | STRING    | PO Box                                                       |
| ADRC      | DONT_USE_P          | undeliverable                  | STRING    | PO Box Address Undeliverable Flag                            |
| ADRC      | PO_BOX_NUM          | po_box_w_o_no                  | STRING    | Flag: PO Box Without Number                                  |
| ADRC      | PO_BOX_LOC          | po_box_city                    | STRING    | PO Box city                                                  |
| ADRC      | CITY_CODE2          | city_code_2                    | STRING    | City PO box code (City file)                                 |
| ADRC      | PO_BOX_REG          | po_region                      | STRING    | Region for PO Box (Country, State, Province, ...)            |
| ADRC      | PO_BOX_CTY          | po_box_country                 | STRING    | PO box country                                               |
| ADRC      | POSTALAREA          | delivery_dist                  | STRING    | (Not Supported) Post Delivery District                       |
| ADRC      | TRANSPZONE          | transport_zone_adrc            | STRING    | Transportation zone to or from which the goods are delivered |
| ADRC      | STREET              | street_adrc                    | STRING    | Street                                                       |
| ADRC      | DONT_USE_S          | undeliverable_1                | STRING    | Street Address Undeliverable Flag                            |
| ADRC      | STREETCODE          | street_code                    | STRING    | Street Number for City/Street File                           |
| ADRC      | STREETABBR          | street_abbrev                  | STRING    | (Not Supported) Abbreviation of Street Name                  |
| ADRC      | HOUSE_NUM1          | house_number_adrc              | STRING    | House Number                                                 |
| ADRC      | HOUSE_NUM2          | supplement                     | STRING    | House number supplement                                      |
| ADRC      | HOUSE_NUM3          | number_range                   | STRING    | (Not supported) House Number Range                           |
| ADRC      | STR_SUPPL1          | street_2                       | STRING    | Street 2                                                     |
| ADRC      | STR_SUPPL2          | street_3                       | STRING    | Street 3                                                     |
| ADRC      | STR_SUPPL3          | street_4                       | STRING    | Street 4                                                     |
| ADRC      | LOCATION            | street_5                       | STRING    | Street 5                                                     |
| ADRC      | BUILDING            | building_code                  | STRING    | Building (Number or Code)                                    |
| ADRC      | FLOOR               | floor_in_building              | STRING    | Floor in building                                            |
| ADRC      | ROOMNUMBER          | room_number                    | STRING    | Room or Apartment Number                                     |
| ADRC      | COUNTRY             | country_adrc                   | STRING    | Country Key                                                  |
| ADRC      | LANGU               | language_key_adrc              | STRING    | Language Key                                                 |
| ADRC      | REGION              | region_adrc                    | STRING    | Region (State, Province, County)                             |
| ADRC      | ADDR_GROUP          | address_group                  | STRING    | Address Group (Key) (Business Address Services)              |
| ADRC      | FLAGGROUPS          | flag_there_are_more_address_g  | STRING    | Flag: There are more address group assignments               |
| ADRC      | PERS_ADDR           | pers_address                   | STRING    | Flag: This is a personal address                             |
| ADRC      | SORT1               | search_term_1                  | STRING    | Search Term 1                                                |
| ADRC      | SORT2               | search_term_2                  | STRING    | Search Term 2                                                |
| ADRC      | SORT_PHN            | phonet_sort                    | STRING    | (Not Supported) Phonetic Search Sort Field                   |
| ADRC      | DEFLT_COMM          | comm_method                    | STRING    | Communication Method (Key) (Business Address Services)       |
| ADRC      | TEL_NUMBER          | telephone                      | STRING    | First telephone no.: dialling code+number                    |
| ADRC      | TEL_EXTENS          | extension                      | STRING    | First Telephone No.: Extension                               |
| ADRC      | FAX_NUMBER          | fax                            | STRING    | First fax no.: dialling code+number                          |
| ADRC      | FAX_EXTENS          | extension_1                    | STRING    | First fax no.: extension                                     |
| ADRC      | FLAGCOMM2           | telephone_1_adrc               | STRING    | Flag: Telephone number(s) defined                            |
| ADRC      | FLAGCOMM3           | fax_1                          | STRING    | Flag: Fax number(s) defined                                  |
| ADRC      | FLAGCOMM4           | teletex_adrc                   | STRING    | Flag: Teletex number(s) defined                              |
| ADRC      | FLAGCOMM5           | telex_adrc                     | STRING    | Flag: Telex number(s) defined                                |
| ADRC      | FLAGCOMM6           | e_mail_defined                 | STRING    | Flag: E-mail address(es) defined                             |
| ADRC      | FLAGCOMM7           | r_mail                         | STRING    | Flag: RML (remote mail) addresse(s) defined                  |
| ADRC      | FLAGCOMM8           | x_400                          | STRING    | Flag: X.400 addresse(s) defined                              |
| ADRC      | FLAGCOMM9           | rfc                            | STRING    | Flag: RFC destination(s) defined                             |
| ADRC      | FLAGCOMM10          | printer                        | STRING    | Flag: Printer defined                                        |
| ADRC      | FLAGCOMM11          | ssf                            | STRING    | Flag: SSF defined                                            |
| ADRC      | FLAGCOMM12          | uri_ftp                        | STRING    | Flag: URI/FTP address defined                                |
| ADRC      | FLAGCOMM13          | pager                          | STRING    | Flag: Pager address defined                                  |
| ADRC      | ADDRORIGIN          | address_source                 | STRING    | (Not Supported) Address Data Source (Key)                    |
| ADRC      | MC_NAME1            | name_1_adrc                    | STRING    | Name (Field NAME1) in Uppercase for Search Help              |
| ADRC      | MC_CITY1            | city_1_adrc                    | STRING    | City name in Uppercase for Search Help                       |
| ADRC      | MC_STREET           | street_1_adrc                  | STRING    | Street Name in Uppercase for Search Help                     |
| ADRC      | EXTENSION1          | data_line_adrc                 | STRING    | Extension (only for data conversion) (e.g. data line)        |
| ADRC      | EXTENSION2          | telebox_adrc                   | STRING    | Extension (only for data conversion) (e.g. telebox)          |
| ADRC      | TIME_ZONE           | time_zone                      | STRING    | Address time zone                                            |
| ADRC      | TAXJURCODE          | tax_jurisdiction               | STRING    | Tax Jurisdiction                                             |
| ADRC      | ADDRESS_ID          | address_id                     | STRING    | (Not supported) Physical address ID                          |
| ADRC      | LANGU_CREA          | creation_lang                  | STRING    | Address record creation original language                    |
| ADRC      | ADRC_UUID           | address_uuid                   | BYTES     | UUID Used in the Address                                     |
| ADRC      | UUID_BELATED        | subsequent_uuid                | STRING    | Indicator: UUID created later                                |
| ADRC      | ID_CATEGORY         | id_category                    | STRING    | Category of an Address ID                                    |
| ADRC      | ADRC_ERR_STATUS     | error_status                   | STRING    | Error Status of Address                                      |
| ADRC      | PO_BOX_LOBBY        | po_box_lobby                   | STRING    | PO Box Lobby                                                 |
| ADRC      | DELI_SERV_TYPE      | delvry_serv_type               | STRING    | Type of Delivery Service                                     |
| ADRC      | DELI_SERV_NUMBER    | delivery_service_no            | STRING    | Number of Delivery Service                                   |
| ADRC      | COUNTY_CODE         | county_code_adrc               | STRING    | County code for county                                       |
| ADRC      | COUNTY              | county                         | STRING    | County                                                       |
| ADRC      | TOWNSHIP_CODE       | township_code                  | STRING    | Township code for Township                                   |
| ADRC      | TOWNSHIP            | township                       | STRING    | Township                                                     |
| ADRC      | MC_COUNTY           | county_1                       | STRING    | County name in upper case for search help                    |
| ADRC      | MC_TOWNSHIP         | township_1                     | STRING    | Township name in upper case for search help                  |
| ADRC      | XPCPT               | purposecomplete_flag_adrc      | STRING    | Business Purpose Completed Flag                              |
| ADRC      | _DATAAGING          | data_filter_value_for_data_agi | DATE      | Data Filter Value for Data Aging                             |
| ADRC      | DUNS                | duns_number_adrc               | STRING    | Dun & Bradstreet number (DUNS)                               |
| ADRC      | DUNSP4              | duns_4_adrc                    | STRING    | DUNS+4 number (the last four digit)                          |
|           |                     | finalmd5key                    | STRING    | MD5 key combining all columns                                |
|           |                     | input_last_update_date         | DATETIME  | Last Input read time                                         |
|           |                     | dw_active_indicator            | STRING    | Valid Indicator                                              |
|           |                     | dw_start_date                  | DATETIME  | Record start date                                            |
|           |                     | dw_end_date                    | DATETIME  | Record end date                                              |
|           |                     | dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms