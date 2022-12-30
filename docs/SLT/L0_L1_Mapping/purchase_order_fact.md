
## Table Name : purchase_order_fact

| sap_table | sap_column              | column_name                         | data_type | description                                                  |
|-----------|-------------------------|-------------------------------------|-----------|--------------------------------------------------------------|
|           |                         | purchase_order_uuid                 | STRING    | Unique Generated Id                                          |
|           |                         | purchase_order_key                  | STRING    | Purchase order Key                                           |
| EKKO      | MANDT                   | client                              | STRING    | Client                                                       |
| EKKO      | EBELN                   | purchasing_doc                      | STRING    | Purchasing Document Number                                   |
| EKPO      | EBELP                   | item                                | STRING    | Item Number of Purchasing Document                           |
| EKET      | ETENR                   | schedule_line                       | STRING    | Delivery Schedule Line Counter                               |
| EKBE      | ZEKKN                   | account_assgmt_no                   | STRING    | Sequential Number of Account Assignment                      |
| EKBE      | VGABE                   | trans_ev_type                       | STRING    | Transaction/event type, purchase order history               |
| EKBE      | GJAHR                   | mat_doc_year                        | STRING    | Material Document Year                                       |
| EKBE      | BELNR                   | material_doc                        | STRING    | Number of Material Document                                  |
| EKBE      | BUZEI                   | mat_doc_item                        | STRING    | Item in Material Document                                    |
|           |                         | material_uuid                       | STRING    | Material Dimension Unique Generated Id                       |
|           |                         | material_key                        | STRING    | Material key from Material Dimension                         |
|           |                         | supplier_uuid                       | STRING    | Supplier Dimension Unique Generated Id                       |
|           |                         | supplier_key                        | STRING    | Supplier key from Supplier Dimension                         |
|           |                         | plant_uuid                          | STRING    | Plant Dimension Unique Generated Id                          |
|           |                         | plant_key                           | STRING    | Plant key from Plant Dimension                               |
|           |                         | customer_uuid                       | STRING    | Customer Dimension Unique Generated Id                       |
|           |                         | customer_key                        | STRING    | Customer Key from Customer Dimension                         |
|           |                         | supplier_company_code_uuid          | STRING    | Supplier Code Dimension Unique Generated Id                  |
|           |                         | supplier_company_code_key           | STRING    | Supplier Company Code Key from Supplier Code Dimension       |
|           |                         | company_code_uuid                   | STRING    | Company code Dimension Unique Generated Id                   |
|           |                         | company_code_key                    | STRING    | Company code key from Company code Dimension                 |
|           |                         | storage_location_uuid               | STRING    | Storage location Dimension Unique Generated Id               |
|           |                         | storage_location_key                | STRING    | Storage location key from Storage location Dimension         |
| EKKO      | BUKRS                   | company_code                        | STRING    | Company Code                                                 |
| EKKO      | BSTYP                   | doc_category                        | STRING    | Purchasing Document Category                                 |
| EKKO      | BSART                   | document_type                       | STRING    | Purchasing Document Type                                     |
| EKKO      | BSAKZ                   | control                             | STRING    | Control indicator for purchasing document type               |
| EKKO      | LOEKZ                   | deletion_ind                        | STRING    | Deletion indicator in purchasing document                    |
| EKKO      | STATU                   | status                              | STRING    | Status of Purchasing Document                                |
| EKKO      | AEDAT                   | created_on                          | DATE      | Date on which the record was created                         |
| EKKO      | ERNAM                   | created_by                          | STRING    | Name of Person who Created the Object                        |
| EKKO      | LASTCHANGEDATETIME      | last_changed                        | NUMERIC   | Change Time Stamp                                            |
| EKKO      | PINCR                   | item_interval                       | STRING    | Item Number Interval                                         |
| EKKO      | LPONR                   | last_item                           | STRING    | Last Item Number                                             |
| EKKO      | LIFNR                   | vendor                              | STRING    | Vendors account number                                       |
| EKKO      | SPRAS                   | language_key                        | STRING    | Language Key                                                 |
| EKKO      | ZTERM                   | payt_terms                          | STRING    | Terms of payment key                                         |
| EKKO      | ZBD1T                   | payment_in                          | NUMERIC   | Cash (Prompt Payment) Discount Days                          |
| EKKO      | ZBD2T                   | payment_in_1                        | NUMERIC   | Cash (Prompt Payment) Discount Days                          |
| EKKO      | ZBD3T                   | payment_in_2                        | NUMERIC   | Cash (Prompt Payment) Discount Days                          |
| EKKO      | ZBD1P                   | disc_percent_1                      | NUMERIC   | Cash discount percentage 1                                   |
| EKKO      | ZBD2P                   | disc_percent_2                      | NUMERIC   | Cash Discount Percentage 2                                   |
| EKKO      | EKORG                   | purchasing_org                      | STRING    | Purchasing organization                                      |
| EKKO      | EKGRP                   | purch_group                         | STRING    | Purchasing Group                                             |
| EKKO      | WAERS                   | currency                            | STRING    | Currency Key                                                 |
| EKKO      | WKURS                   | exchange_rate                       | NUMERIC   | Exchange Rate                                                |
| EKKO      | KUFIX                   | fixed_exch_rate                     | STRING    | Indicator for Fixed Exchange Rate                            |
| EKKO      | BEDAT                   | document_date                       | DATE      | Purchasing Document Date                                     |
| EKKO      | KDATB                   | validity_start                      | DATE      | Start of Validity Period                                     |
| EKKO      | KDATE                   | validity_end                        | DATE      | End of Validity Period                                       |
| EKKO      | BWBDT                   | application_by                      | DATE      | Closing Date for Applications                                |
| EKKO      | ANGDT                   | quot_deadline                       | DATE      | Deadline for Submission of Bid/Quotation                     |
| EKKO      | BNDDT                   | binding_period                      | DATE      | Binding Period for Quotation                                 |
| EKKO      | GWLDT                   | warranty                            | DATE      | Warranty Date                                                |
| EKKO      | AUSNR                   | bid_invitation                      | STRING    | Bid invitation number                                        |
| EKKO      | ANGNR                   | quotation                           | STRING    | Quotation Number                                             |
| EKKO      | IHRAN                   | quotation_date                      | DATE      | Quotation Submission Date                                    |
| EKKO      | IHREZ                   | your_reference                      | STRING    | Your Reference                                               |
| EKKO      | VERKF                   | salesperson                         | STRING    | Responsible Salesperson at Suppliers Office                  |
| EKKO      | TELF1                   | telephone                           | STRING    | Suppliers Telephone Number                                   |
| EKKO      | LLIEF                   | goods_supplier                      | STRING    | Goods Supplier                                               |
| EKKO      | KUNNR                   | customer                            | STRING    | Customer Number                                              |
| EKKO      | KONNR                   | agreement                           | STRING    | Number of principal purchase agreement                       |
| EKKO      | ABGRU                   | field_not_used                      | STRING    | Field Not Used                                               |
| EKKO      | AUTLF                   | complete_deliv                      | STRING    | Complete Delivery Stipulated for Each Purchase Order         |
| EKKO      | WEAKT                   | gr_message                          | STRING    | Indicator: Goods Receipt Message                             |
| EKKO      | RESWK                   | supplying_plant                     | STRING    | Supplying (issuing) plant in case of stock transport order   |
| EKKO      | LBLIF                   | rec_supplier                        | STRING    | Field not used                                               |
| EKKO      | INCO1                   | incoterms                           | STRING    | Incoterms (Part 1)                                           |
| EKKO      | INCO2                   | incoterms_2                         | STRING    | Incoterms (Part 2)                                           |
| EKKO      | KTWRT                   | target_value                        | NUMERIC   | Target Value for Header Area per Distribution                |
| EKKO      | DISTRIBUTIONTYPE        | distribution_type                   | STRING    | Distribution Type for Purchasing Document                    |
| EKKO      | SUBMI                   | collective_no                       | STRING    | Collective Number                                            |
| EKKO      | KNUMV                   | doc_condition                       | STRING    | Number of the Document Condition                             |
| EKKO      | KALSM                   | procedure_pricing                   | STRING    | Procedure (Pricing, Output Control, Acct. Det., Costing,...) |
| EKKO      | STAFO                   | update_group                        | STRING    | Update Group for statistics update                           |
| EKKO      | LIFRE                   | invoicing_party                     | STRING    | Different Invoicing Party                                    |
| EKKO      | EXNUM                   | foreign_trade_datanr                | STRING    | Number of foreign trade data in MM and SD documents          |
| EKKO      | UNSEZ                   | our_reference                       | STRING    | Our Reference                                                |
| EKKO      | LOGSY                   | logical_system                      | STRING    | Logical System                                               |
| EKKO      | UPINC                   | subitem_interv                      | STRING    | Item Number Interval for Subitems                            |
| EKKO      | STAKO                   | tm_dep_conds                        | STRING    | Document with time-dependent conditions                      |
| EKKO      | FRGGR                   | release_group                       | STRING    | Release group                                                |
| EKKO      | FRGSX                   | rel_strategy                        | STRING    | Release Strategy                                             |
| EKKO      | FRGKE                   | release_ind                         | STRING    | Release Indicator: Purchasing Document                       |
| EKKO      | FRGZU                   | release_state                       | STRING    | Release State                                                |
| EKKO      | FRGRL                   | subj_to_release                     | STRING    | Release Not Yet Completely Effected                          |
| EKKO      | LANDS                   | reporting_cntry                     | STRING    | Country for Tax Return                                       |
| EKKO      | LPHIS                   | release_docu                        | STRING    | Indicator for scheduling agreement release documentation     |
| EKKO      | ADRNR                   | address_number                      | STRING    | Address Number                                               |
| EKKO      | STCEG_L                 | ctryslstxno                         | STRING    | Country of Sales Tax ID Number                               |
| EKKO      | STCEG                   | vat_reg_no                          | STRING    | VAT Registration Number                                      |
| EKKO      | ABSGR                   | reas_for_canc                       | STRING    | Reason for Cancellation                                      |
| EKKO      | ADDNR                   | document_number                     | STRING    | Document number for additional                               |
| EKKO      | KORNR                   | corr_misc_pr                        | STRING    | Correction of miscellaneous provisions                       |
| EKKO      | MEMORY                  | incomplete                          | STRING    | Purchase order not yet complete                              |
| EKKO      | PROCSTAT                | proc_state                          | STRING    | Purchasing document processing state                         |
| EKKO      | RLWRT                   | tot_val_rel                         | NUMERIC   | Total value at time of release                               |
| EKKO      | REVNO                   | version                             | STRING    | Version number in Purchasing                                 |
| EKKO      | SCMPROC                 | scmproc                             | STRING    | SCM Process That Created the Purchase Order                  |
| EKKO      | REASON_CODE             | reason_code                         | STRING    | Goods Receipt Reason Code                                    |
| EKKO      | MEMORYTYPE              | incompl_cat                         | STRING    | Category of Incompleteness                                   |
| EKKO      | RETTP                   | retention                           | STRING    | Retention Indicator                                          |
| EKKO      | RETPC                   | retention_1                         | NUMERIC   | Retention in Percent                                         |
| EKKO      | DPTYP                   | down_payment                        | STRING    | Down Payment Indicator                                       |
| EKKO      | DPPCT                   | down_payment_1                      | NUMERIC   | Down Payment Percentage                                      |
| EKKO      | DPAMT                   | down_payment_amt                    | NUMERIC   | Down Payment Amount in Document Currency                     |
| EKKO      | DPDAT                   | due_date_for_dp                     | DATE      | Due Date for Down Payment                                    |
| EKKO      | MSR_ID                  | process_id_no                       | STRING    | Process Identification Number                                |
| EKKO      | HIERARCHY_EXISTS        | contract_hierarchy                  | STRING    | Part of a Contract Hierarchy                                 |
| EKKO      | THRESHOLD_EXISTS        | thresh_val_exists                   | STRING    | Threshold Value for Exchange Rates Exists                    |
| EKKO      | LEGAL_CONTRACT          | legal_contract_no                   | STRING    | Legal Contract Number                                        |
| EKKO      | DESCRIPTION             | contract_name                       | STRING    | Contract Name                                                |
| EKKO      | RELEASE_DATE            | released_on                         | DATE      | Release Date of Contract                                     |
| EKKO      | VSART                   | shipping_type                       | STRING    | Shipping Type                                                |
| EKKO      | HANDOVERLOC             | handover_location                   | STRING    | Location for a physical handover of goods                    |
| EKKO      | SHIPCOND                | shp_cond                            | STRING    | Shipping Conditions                                          |
| EKKO      | INCOV                   | inco_version                        | STRING    | Incoterms Version                                            |
| EKKO      | INCO2_L                 | inco_location1                      | STRING    | Incoterms Location 1                                         |
| EKKO      | INCO3_L                 | inco_location2                      | STRING    | Incoterms Location 2                                         |
| EKKO      | GRWCU                   | currency_1                          | STRING    | Currency of statistical values for foreign trade             |
| EKKO      | INTRA_REL               | intrastat_rel                       | STRING    | Relevant for Intrastat Reporting                             |
| EKKO      | INTRA_EXCL              | exclude_intra                       | STRING    | Exclude from Intrastat Reporting                             |
| EKKO      | QTN_ERLST_SUBMSN_DATE   | start_date                          | DATE      | The date as of which Quotations can be submitted             |
| EKKO      | FOLLOWON_DOC_CAT        | follow_on_doc_cat                   | STRING    | Follow-On Purchasing Document Category                       |
| EKKO      | FOLLOWON_DOC_TYPE       | follow_on_doc_type                  | STRING    | Follow-On Purchasing Document Type                           |
| EKKO      | DUMMY_EKKO_INCL_EEW_PS  | ext_include                         | STRING    | Data Element for Extensibility of Purchasing Document Header |
| EKKO      | EXTERNALSYSTEM          | ext_ref_system                      | STRING    | ID of External Reference System                              |
| EKKO      | EXTERNALREFERENCEID     | ext_reference_id                    | STRING    | External Reference ID                                        |
| EKKO      | EXT_REV_TMSTMP          | external_revision                   | NUMERIC   | Timestamp for Revision of External Calls                     |
| EKKO      | ISEOPBLOCKED            | business_purp_compl                 | STRING    | Business Purpose Completed                                   |
| EKKO      | ISAGED                  | document_aged                       | STRING    | Document is aged                                             |
| EKKO      | FORCE_ID                | guid_32                             | STRING    | Internal Key for Force Element                               |
| EKKO      | FORCE_CNT               | counter                             | STRING    | Internal (Version) Counter                                   |
| EKKO      | RELOC_ID                | relocation_id                       | STRING    | Relocation ID                                                |
| EKKO      | RELOC_SEQ_ID            | relocation_step                     | STRING    | Relocation Step ID                                           |
| EKKO      | SOURCE_LOGSYS           | logical_system_1                    | STRING    | Logical system                                               |
| EKKO      | FSH_TRANSACTION         | transaction_number                  | STRING    | Transaction Number                                           |
| EKKO      | FSH_ITEM_GROUP          | item_group                          | STRING    | Item Group                                                   |
| EKKO      | FSH_VAS_LAST_ITEM       | last_vas_item_number                | STRING    | Last VAS Item Number                                         |
| EKKO      | FSH_OS_STG_CHANGE       | changed_manually                    | STRING    | Order Scheduling Strategy Fields Changed Manually            |
| EKKO      | TMS_REF_UUID            | guid_of_sap_tm                      | STRING    | Reference UUID of Transportation Management                  |
| EKKO      | ZAPCGK                  | annexing_package                    | STRING    | Annexing package key                                         |
| EKKO      | APCGK_EXTEND            | ann_package_extend                  | STRING    | Extended key for annexing package                            |
| EKKO      | ZBAS_DATE               | base_date                           | DATE      | Base Date                                                    |
| EKKO      | ZADATTYP                | annexing_date_type                  | STRING    | Annexing Date Type                                           |
| EKKO      | ZSTART_DAT              | annexing_start_date                 | DATE      | Annexing start date                                          |
| EKKO      | Z_DEV                   | deviation_percen                    | NUMERIC   | deviation percentage                                         |
| EKKO      | ZINDANX                 | annexed_ind                         | STRING    | indicator for annexed order type                             |
| EKKO      | ZLIMIT_DAT              | limit_date                          | DATE      | Annexing limit date (purchasing)                             |
| EKKO      | NUMERATOR               | char20                              | STRING    | Char 20                                                      |
| EKKO      | HASHCAL_BDAT            | new_base_date                       | DATE      | The general acountant method New base date.                  |
| EKKO      | HASHCAL                 | accountant_gen_mth                  | STRING    | Accountant general method                                    |
| EKKO      | NEGATIVE                | no_negative_annexing                | STRING    | Do not allow negative annexing                               |
| EKKO      | HASHCAL_EXISTS          | purchasing_org_1                    | STRING    | Purchasing organization                                      |
| EKKO      | KNOWN_INDEX             | known_index_indic                   | STRING    | Known Index indicator in /ILE/T_ANNEXING_CALCULATION Func    |
| EKKO      | POSTAT                  | s1postat_check                      | STRING    | Flag for the S1POSTAT message                                |
| EKKO      | VZSKZ                   | interest_indic                      | STRING    | Interest calculation indicator                               |
| EKKO      | FSH_SNST_STATUS         | snap_status                         | STRING    | Snapshot Status                                              |
| EKKO      | PROCE                   | procedure_number                    | STRING    | Procedure number                                             |
| EKKO      | CONC                    | adjust_contest                      | STRING    | Adjustment/contest                                           |
| EKKO      | CONT                    | contract_type                       | STRING    | Contract                                                     |
| EKKO      | COMP                    | legal_competence                    | STRING    | Legal competence                                             |
| EKKO      | OUTR                    | miscellaneous                       | STRING    | Miscellaneous                                                |
| EKKO      | DESP                    | despatch                            | STRING    | Despatch                                                     |
| EKKO      | DESP_DAT                | input_date                          | DATE      | Date                                                         |
| EKKO      | DESP_CARGO              | job                                 | STRING    | Job                                                          |
| EKKO      | PARE                    | assessment                          | STRING    | Assessment                                                   |
| EKKO      | PARE_DAT                | date_1                              | DATE      | Date                                                         |
| EKKO      | PARE_CARGO              | job_1                               | STRING    | Job                                                          |
| EKKO      | PFM_CONTRACT            | contract                            | STRING    | PTFM: Contract in Purchasing process                         |
| EKKO      | POHF_TYPE               | document_category                   | STRING    | Document for Seasonal Purchase Order Processing              |
| EKKO      | EQ_EINDT                | same_delivery_date                  | DATE      | Delivery Date Header: All Items Have Same Delivery Date      |
| EKKO      | EQ_WERKS                | same_plant                          | STRING    | Plant Header: All Items Have Same Receiving Plant            |
| EKKO      | FIXPO                   | firm_deal_id                        | STRING    | Firm Deal Indicator                                          |
| EKKO      | EKGRP_ALLOW             | take_acc_of_prchgrp                 | STRING    | Take Account of Purch. Group                                 |
| EKKO      | WERKS_ALLOW             | take_acc_of_plant                   | STRING    | Take Account of Plants                                       |
| EKKO      | CONTRACT_ALLOW          | take_acc_of_contract                | STRING    | Take Account of Contracts                                    |
| EKKO      | PSTYP_ALLOW             | take_acc_of_itmcat                  | STRING    | Take Account of Item Categories                              |
| EKKO      | FIXPO_ALLOW             | fixed_date_purchases                | STRING    | Take Account of Fixed-Date Purchases Indicator               |
| EKKO      | KEY_ID_ALLOW            | consider_budget                     | STRING    | Consider Budget                                              |
| EKKO      | AUREL_ALLOW             | alloc_table_rel                     | STRING    | Take Account of Alloc. Table Relevance                       |
| EKKO      | DELPER_ALLOW            | take_acc_of_delper                  | STRING    | Take Account of Dlvy Period                                  |
| EKKO      | EINDT_ALLOW             | take_acc_of_dlvydt                  | STRING    | Take Account of Delivery Date                                |
| EKKO      | LTSNR_ALLOW             | include_vendor_subr                 | STRING    | Include Vendor Subrange                                      |
| EKKO      | OTB_LEVEL               | check_level                         | STRING    | OTB Check Level                                              |
| EKKO      | OTB_COND_TYPE           | condition_type                      | STRING    | OTB Condition Type                                           |
| EKKO      | KEY_ID                  | budget_number                       | STRING    | Unique Number of Budget                                      |
| EKKO      | OTB_VALUE               | required_budget                     | NUMERIC   | Required Budget                                              |
| EKKO      | OTB_CURR                | otb_currency                        | STRING    | OTB Currency                                                 |
| EKKO      | OTB_RES_VALUE           | reserved_budget                     | NUMERIC   | Reserved Budget for OTB-Relevant Purchasing Document         |
| EKKO      | OTB_SPEC_VALUE          | special_release                     | NUMERIC   | Special Release Budget                                       |
| EKKO      | SPR_RSN_PROFILE         | otb_reason_profile                  | STRING    | Reason Profile for OTB Special Release                       |
| EKKO      | BUDG_TYPE               | budget_type                         | STRING    | Budget Type                                                  |
| EKKO      | OTB_STATUS              | otb_status                          | STRING    | OTB Check Status                                             |
| EKKO      | OTB_REASON              | reason                              | STRING    | Reason Indicator for OTB Check Status                        |
| EKKO      | CHECK_TYPE              | type_of_otb_check                   | STRING    | Type of OTB Check                                            |
| EKKO      | CON_OTB_REQ             | otb_rel_contract                    | STRING    | OTB-Relevant Contract                                        |
| EKKO      | CON_PREBOOK_LEV         | contr_indicator_lvl                 | STRING    | OTB Indicator Level for Contracts                            |
| EKKO      | CON_DISTR_LEV           | distrib_targ_val_itm                | STRING    | Distribution Using Target Value or Item Data                 |
| EKPO      | EBELN                   | purchasing_doc_ekpo                 | STRING    | Purchasing Document Number                                   |
| EKPO      | UNIQUEID                | document_item                       | STRING    | Concatenation of EBELN and EBELP                             |
| EKPO      | LOEKZ                   | deletion_ind_ekpo                   | STRING    | Deletion indicator in purchasing document                    |
| EKPO      | STATU                   | rfq_status                          | STRING    | RFQ status                                                   |
| EKPO      | AEDAT                   | changed_on                          | DATE      | Purchasing Document Item Change Date                         |
| EKPO      | TXZ01                   | short_text                          | STRING    | Short Text                                                   |
| EKPO      | MATNR                   | material                            | STRING    | Material Number                                              |
| EKPO      | EMATN                   | material_1                          | STRING    | Material number                                              |
| EKPO      | BUKRS                   | company_code_ekpo                   | STRING    | Company Code                                                 |
| EKPO      | WERKS                   | plant                               | STRING    | Plant                                                        |
| EKPO      | LGORT                   | stor_loc                            | STRING    | Storage location                                             |
| EKPO      | BEDNR                   | tracking_number                     | STRING    | Requirement Tracking Number                                  |
| EKPO      | MATKL                   | material_group                      | STRING    | Material Group                                               |
| EKPO      | INFNR                   | info_record                         | STRING    | Number of purchasing info record                             |
| EKPO      | IDNLF                   | supp_mat_no                         | STRING    | Material Number Used by Supplier                             |
| EKPO      | KTMNG                   | target_quantity                     | NUMERIC   | Target Quantity                                              |
| EKPO      | MENGE                   | po_quantity                         | NUMERIC   | Purchase Order Quantity                                      |
| EKPO      | MEINS                   | order_unit                          | STRING    | Purchase Order Unit of Measure                               |
| EKPO      | BPRME                   | order_price_un                      | STRING    | Order Price Unit (Purchasing)                                |
| EKPO      | BPUMZ                   | qty_conversion                      | NUMERIC   | Numerator for Conversion of Order Price Unit into Order Unit |
| EKPO      | BPUMN                   | qty_conversion_1                    | NUMERIC   | Denominator for Conv. of Order Price Unit into Order Unit    |
| EKPO      | UMREZ                   | equal_to                            | NUMERIC   | Numerator for Conversion of Order Unit to Base Unit          |
| EKPO      | UMREN                   | denominator                         | NUMERIC   | Denominator for Conversion of Order Unit to Base Unit        |
| EKPO      | NETPR                   | net_price                           | NUMERIC   | Net Price in Purchasing Document (in Document Currency)      |
| EKPO      | PEINH                   | price_unit                          | NUMERIC   | Price unit                                                   |
| EKPO      | NETWR                   | net_value                           | NUMERIC   | Net Order Value in PO Currency                               |
| EKPO      | BRTWR                   | gross_value                         | NUMERIC   | Gross order value in PO currency                             |
| EKPO      | AGDAT                   | quot_deadline_ekpo                  | DATE      | Deadline for Submission of Bid/Quotation                     |
| EKPO      | WEBAZ                   | gr_proc_time                        | NUMERIC   | Goods receipt processing time in days                        |
| EKPO      | MWSKZ                   | tax_code                            | STRING    | Tax on sales/purchases code                                  |
| EKPO      | TXDAT_FROM              | tax_rate_valid_from                 | DATE      | Valid-From Date of the Tax Rate                              |
| EKPO      | TXDAT                   | tax_date                            | DATE      | Date for defining tax rates                                  |
| EKPO      | BONUS                   | sett_group_1                        | STRING    | Settlement Group 1 (Purchasing)                              |
| EKPO      | INSMK                   | stock_type                          | STRING    | Stock Type                                                   |
| EKPO      | SPINF                   | infoupdate                          | STRING    | Indicator: Update Info Record                                |
| EKPO      | PRSDR                   | print_price                         | STRING    | Price Printout                                               |
| EKPO      | SCHPR                   | estimated_price                     | STRING    | Indicator: Estimated Price                                   |
| EKPO      | MAHNZ                   | no_rem_exp                          | NUMERIC   | Number of Reminders/Expediters                               |
| EKPO      | MAHN1                   | st_rem_exped                        | NUMERIC   | Number of Days for First Reminder/Expediter                  |
| EKPO      | MAHN2                   | nd_rem_exped                        | NUMERIC   | Number of Days for Second Reminder/Expediter                 |
| EKPO      | MAHN3                   | rd_rem_exped                        | NUMERIC   | Number of Days for Third Reminder/Expediter                  |
| EKPO      | UEBTO                   | overdeliv_tol                       | NUMERIC   | Overdelivery Tolerance                                       |
| EKPO      | UEBTK                   | unlimited                           | STRING    | Indicator: Unlimited Overdelivery Allowed                    |
| EKPO      | UNTTO                   | underdel_tol                        | NUMERIC   | Underdelivery Tolerance                                      |
| EKPO      | BWTAR                   | valuation_type                      | STRING    | Valuation Type                                               |
| EKPO      | BWTTY                   | valuation_cat                       | STRING    | Valuation Category                                           |
| EKPO      | ABSKZ                   | rejection_ind                       | STRING    | Rejection Indicator                                          |
| EKPO      | AGMEM                   | quot_comment                        | STRING    | Internal Comment on Quotation                                |
| EKPO      | ELIKZ                   | deliv_compl                         | STRING    | Delivery Completed Indicator                                 |
| EKPO      | EREKZ                   | final_invoice                       | STRING    | Final Invoice Indicator                                      |
| EKPO      | PSTYP                   | item_category                       | STRING    | Item category in purchasing document                         |
| EKPO      | KNTTP                   | acct_assgmt_cat                     | STRING    | Account Assignment Category                                  |
| EKPO      | KZVBR                   | consumption                         | STRING    | Consumption posting                                          |
| EKPO      | VRTKZ                   | distribution                        | STRING    | Distribution Indicator for Multiple Account Assignment       |
| EKPO      | TWRKZ                   | partial_invoice                     | STRING    | Partial invoice indicator                                    |
| EKPO      | WEPOS                   | goods_receipt                       | STRING    | Goods Receipt Indicator                                      |
| EKPO      | WEUNB                   | gr_non_valuated                     | STRING    | Goods Receipt, Non-Valuated                                  |
| EKPO      | REPOS                   | invoice_receipt                     | STRING    | Invoice receipt indicator                                    |
| EKPO      | WEBRE                   | gr_based_iv                         | STRING    | Indicator: GR-Based Invoice Verification                     |
| EKPO      | KZABS                   | acknowl_reqd                        | STRING    | Order Acknowledgment Requirement                             |
| EKPO      | LABNR                   | order_acknowl                       | STRING    | Order Acknowledgment Number                                  |
| EKPO      | KONNR                   | agreement_ekpo                      | STRING    | Number of principal purchase agreement                       |
| EKPO      | KTPNR                   | agreement_item                      | STRING    | Item number of principal purchase agreement                  |
| EKPO      | ABDAT                   | reconcil_date                       | DATE      | Reconciliation date for agreed cumulative quantity           |
| EKPO      | ABFTZ                   | agr_cum_qty                         | NUMERIC   | Agreed Cumulative Quantity                                   |
| EKPO      | ETFZ1                   | firm_zone                           | NUMERIC   | Firm Zone (Go-Ahead for Production)                          |
| EKPO      | ETFZ2                   | trade_off_zone                      | NUMERIC   | Trade-Off Zone (Go-Ahead for Materials Procurement)          |
| EKPO      | KZSTU                   | binding_on_mrp                      | STRING    | Firm/Trade-Off Zones Binding with Regard to Mat. Planning    |
| EKPO      | NOTKZ                   | exclusion                           | STRING    | Exclusion in Outline Agreement Item with Material Class      |
| EKPO      | LMEIN                   | base_unit                           | STRING    | Base Unit of Measure                                         |
| EKPO      | EVERS                   | shipping_instr                      | STRING    | Shipping Instructions                                        |
| EKPO      | ZWERT                   | target_value_ekpo                   | NUMERIC   | Target Value for Outline Agreement in Document Currency      |
| EKPO      | NAVNW                   | non_deductible                      | NUMERIC   | Non-deductible input tax                                     |
| EKPO      | ABMNG                   | rel_order_qty                       | NUMERIC   | Standard release order quantity                              |
| EKPO      | PRDAT                   | price_date                          | DATE      | Date of Price Determination                                  |
| EKPO      | BSTYP                   | doc_category_ekpo                   | STRING    | Purchasing Document Category                                 |
| EKPO      | EFFWR                   | effective_value                     | NUMERIC   | Effective value of item                                      |
| EKPO      | XOBLR                   | commitments                         | STRING    | Item affects commitments                                     |
| EKPO      | KUNNR                   | customer_ekpo                       | STRING    | Customer                                                     |
| EKPO      | ADRNR                   | address                             | STRING    | Manual address number in purchasing document item            |
| EKPO      | EKKOL                   | condition_group                     | STRING    | Condition Group with Supplier                                |
| EKPO      | SKTOF                   | no_cash_disc                        | STRING    | Item Does Not Qualify for Cash Discount                      |
| EKPO      | STAFO                   | update_group_ekpo                   | STRING    | Update Group for statistics update                           |
| EKPO      | PLIFZ                   | pl_deliv_time                       | NUMERIC   | Planned Delivery Time in Days                                |
| EKPO      | NTGEW                   | net_weight                          | NUMERIC   | Net Weight                                                   |
| EKPO      | GEWEI                   | unit_of_weight                      | STRING    | Unit of Weight                                               |
| EKPO      | TXJCD                   | tax_jur                             | STRING    | Tax Jurisdiction                                             |
| EKPO      | ETDRK                   | print_relevant                      | STRING    | Indicator: Print-relevant schedule lines exist               |
| EKPO      | SOBKZ                   | special_stock                       | STRING    | Special Stock Indicator                                      |
| EKPO      | ARSNR                   | settle_reser_no                     | STRING    | Settlement reservation number                                |
| EKPO      | ARSPS                   | settle_item_no                      | STRING    | Item number of the settlement reservation                    |
| EKPO      | INSNC                   | not_changeable                      | STRING    | Quality inspection indicator cannot be changed               |
| EKPO      | SSQSS                   | qm_control_key                      | STRING    | Control Key for Quality Management in Procurement            |
| EKPO      | ZGTYP                   | certificatetype                     | STRING    | Certificate Type                                             |
| EKPO      | EAN11                   | ean_upc                             | STRING    | International Article Number (EAN/UPC)                       |
| EKPO      | BSTAE                   | conf_control                        | STRING    | Confirmation Control Key                                     |
| EKPO      | REVLV                   | revision_level                      | STRING    | Revision level                                               |
| EKPO      | GEBER                   | fund                                | STRING    | Fund                                                         |
| EKPO      | FISTL                   | funds_center                        | STRING    | Funds Center                                                 |
| EKPO      | FIPOS                   | commitment_item                     | STRING    | Commitment Item                                              |
| EKPO      | KO_GSBER                | bus_area_prtner                     | STRING    | Business area reported to the partner                        |
| EKPO      | KO_PARGB                | ptr_s_assum_ba                      | STRING    | assumed business area of the business partner                |
| EKPO      | KO_PRCTR                | profit_center                       | STRING    | Profit Center                                                |
| EKPO      | KO_PPRCTR               | partner_pc                          | STRING    | Partner Profit Center                                        |
| EKPO      | MEPRF                   | pr_date_cat                         | STRING    | Price Determination (Pricing) Date Control                   |
| EKPO      | BRGEW                   | gross_weight                        | NUMERIC   | Gross weight                                                 |
| EKPO      | VOLUM                   | volume                              | NUMERIC   | Volume                                                       |
| EKPO      | VOLEH                   | volume_unit                         | STRING    | Volume unit                                                  |
| EKPO      | INCO1                   | incoterms_ekpo                      | STRING    | Incoterms (Part 1)                                           |
| EKPO      | INCO2                   | incoterms_2_ekpo                    | STRING    | Incoterms (Part 2)                                           |
| EKPO      | VORAB                   | advance_proc                        | STRING    | Advance procurement: project stock                           |
| EKPO      | KOLIF                   | prior_supplier                      | STRING    | Prior Supplier                                               |
| EKPO      | LTSNR                   | suppl_subrange                      | STRING    | Supplier Subrange                                            |
| EKPO      | PACKNO                  | package_number                      | STRING    | Package number                                               |
| EKPO      | FPLNR                   | invoicing_plan                      | STRING    | Invoicing plan number                                        |
| EKPO      | GNETWR                  | net_value_1                         | NUMERIC   | Currently not used                                           |
| EKPO      | STAPO                   | statistical                         | STRING    | Item is statistical                                          |
| EKPO      | UEBPO                   | h_lev_item                          | STRING    | Higher-Level Item in Purchasing Documents                    |
| EKPO      | LEWED                   | latest_gr_date                      | DATE      | Latest Possible Goods Receipt                                |
| EKPO      | EMLIF                   | supplier                            | STRING    | Supplier to be Supplied/Who is to Receive Delivery           |
| EKPO      | LBLKZ                   | sc_supplier                         | STRING    | Subcontracting Supplier                                      |
| EKPO      | SATNR                   | cross_plant_cm                      | STRING    | Cross-Plant Configurable Material                            |
| EKPO      | ATTYP                   | matl_category                       | STRING    | Material Category                                            |
| EKPO      | VSART                   | shipping_type_ekpo                  | STRING    | Shipping Type                                                |
| EKPO      | HANDOVERLOC             | handover_location_ekpo              | STRING    | Location for a physical handover of goods                    |
| EKPO      | KANBA                   | kanban_indicat                      | STRING    | Kanban Indicator                                             |
| EKPO      | ADRN2                   | address_1                           | STRING    | Number of delivery address                                   |
| EKPO      | CUOBJ                   | int_object_no                       | STRING    | Configuration (internal object number)                       |
| EKPO      | XERSY                   | ers                                 | STRING    | Evaluated Receipt Settlement (ERS)                           |
| EKPO      | EILDT                   | gr_b_sett_from                      | DATE      | Start Date for GR-Based Settlement                           |
| EKPO      | DRDAT                   | last_transm                         | DATE      | Last Transmission                                            |
| EKPO      | DRUHR                   | time_of_transmission                | TIME      | Time                                                         |
| EKPO      | DRUNR                   | sequential_number                   | STRING    | Sequential Number                                            |
| EKPO      | AKTNR                   | promotion                           | STRING    | Promotion                                                    |
| EKPO      | ABELN                   | alloc_table                         | STRING    | Allocation Table                                             |
| EKPO      | ABELP                   | item_1                              | STRING    | Allocation Table Item                                        |
| EKPO      | ANZPU                   | points                              | NUMERIC   | Number of Points                                             |
| EKPO      | PUNEI                   | points_unit                         | STRING    | Points Unit                                                  |
| EKPO      | SAISO                   | season                              | STRING    | Season Category                                              |
| EKPO      | SAISJ                   | season_year                         | STRING    | Season Year                                                  |
| EKPO      | EBON2                   | sett_group_2                        | STRING    | Settlement Group 2 (Rebate Settlement, Purchasing)           |
| EKPO      | EBON3                   | sett_group_3                        | STRING    | Settlement Group 3 (Rebate Settlement, Purchasing)           |
| EKPO      | EBONF                   | settlement                          | STRING    | Item Relevant to Subsequent (Period-End Rebate) Settlement   |
| EKPO      | MLMAA                   | ml_act                              | STRING    | Material Ledger Activated at Material Level                  |
| EKPO      | MHDRZ                   | rem_shelf_life                      | NUMERIC   | Minimum Remaining Shelf Life                                 |
| EKPO      | ANFNR                   | rfq                                 | STRING    | RFQ Number                                                   |
| EKPO      | ANFPS                   | item_2                              | STRING    | Item Number of RFQ                                           |
| EKPO      | KZKFG                   | origin_of_config                    | STRING    | Origin of Configuration                                      |
| EKPO      | USEQU                   | quota_arr_usage                     | STRING    | Quota arrangement usage                                      |
| EKPO      | UMSOK                   | sp_ind_st_tfr                       | STRING    | Special stock indicator for physical stock transfer          |
| EKPO      | BANFN                   | purchase_req                        | STRING    | Purchase Requisition Number                                  |
| EKPO      | BNFPO                   | requisn_item                        | STRING    | Item number of purchase requisition                          |
| EKPO      | MTART                   | material_type                       | STRING    | Material type                                                |
| EKPO      | UPTYP                   | subitem_cat                         | STRING    | Subitem Category, Purchasing Document                        |
| EKPO      | UPVOR                   | sub_items                           | STRING    | Subitems Exist                                               |
| EKPO      | KZWI1                   | subtotal_1                          | NUMERIC   | Subtotal 1 from pricing procedure for condition              |
| EKPO      | KZWI2                   | subtotal_2                          | NUMERIC   | Subtotal 2 from pricing procedure for condition              |
| EKPO      | KZWI3                   | subtotal_3                          | NUMERIC   | Subtotal 3 from pricing procedure for condition              |
| EKPO      | KZWI4                   | subtotal_4                          | NUMERIC   | Subtotal 4 from pricing procedure for condition              |
| EKPO      | KZWI5                   | subtotal_5                          | NUMERIC   | Subtotal 5 from pricing procedure for condition              |
| EKPO      | KZWI6                   | subtotal_6                          | NUMERIC   | Subtotal 6 from pricing procedure for condition              |
| EKPO      | SIKGR                   | key                                 | STRING    | Processing key for sub-items                                 |
| EKPO      | MFZHI                   | max_cmg_qty                         | NUMERIC   | Maximum Cumulative Material Go-Ahead Quantity                |
| EKPO      | FFZHI                   | maximum_cpgq                        | NUMERIC   | Maximum Cumulative Production Go-Ahead Quantity              |
| EKPO      | RETPO                   | returns_item                        | STRING    | Returns Item                                                 |
| EKPO      | AUREL                   | at_relevant                         | STRING    | Relevant to Allocation Table                                 |
| EKPO      | BSGRU                   | reason_for_ord                      | STRING    | Reason for Ordering                                          |
| EKPO      | LFRET                   | del_type_rtns                       | STRING    | Delivery Type for Returns to Supplier                        |
| EKPO      | MFRGR                   | mat_freight_grp                     | STRING    | Material freight group                                       |
| EKPO      | NRFHG                   | disc_in_kind                        | STRING    | Material qualifies for discount in kind                      |
| EKPO      | J_1BNBM                 | ncm_code                            | STRING    | Brazilian NCM Code                                           |
| EKPO      | J_1BMATUSE              | material_usage                      | STRING    | Usage of the material                                        |
| EKPO      | J_1BMATORG              | material_origin                     | STRING    | Origin of the material                                       |
| EKPO      | J_1BOWNPRO              | prod_in_house                       | STRING    | Produced in-house                                            |
| EKPO      | J_1BINDUST              | mat_category                        | STRING    | Material CFOP category                                       |
| EKPO      | ABUEB                   | creation_profile                    | STRING    | Release Creation Profile                                     |
| EKPO      | NLABD                   | next_frc_sched                      | DATE      | Next Forecast Delivery Schedule Transmission                 |
| EKPO      | NFABD                   | next_jit_sched                      | DATE      | Next JIT Delivery Schedule Transmission                      |
| EKPO      | KZBWS                   | valuation                           | STRING    | Valuation of Special Stock                                   |
| EKPO      | BONBA                   | rebate_basis                        | NUMERIC   | Rebate basis 1                                               |
| EKPO      | FABKZ                   | jit_indicator                       | STRING    | Indicator: Item Relevant to JIT Delivery Schedules           |
| EKPO      | J_1AINDXP               | inflation_index                     | STRING    | Inflation Index                                              |
| EKPO      | J_1AIDATEP              | index_date                          | DATE      | Inflation Index Date                                         |
| EKPO      | MPROF                   | mfr_part_profile                    | STRING    | Mfr part profile                                             |
| EKPO      | EGLKZ                   | final_delivery                      | STRING    | Outward Delivery Completed Indicator                         |
| EKPO      | KZTLF                   | part_del_item                       | STRING    | Partial Delivery at Item Level (Stock Transfer)              |
| EKPO      | KZFME                   | units_meas_use                      | STRING    | Units of measure usage                                       |
| EKPO      | RDPRF                   | rnding_profile                      | STRING    | Rounding Profile                                             |
| EKPO      | TECHS                   | standardvariant                     | STRING    | Parameter Variant/Standard Variant                           |
| EKPO      | CHG_SRV                 | configuration_changed               | STRING    | Configuration changed                                        |
| EKPO      | CHG_FPLNR               | no_invoice_for_this_item_altho      | STRING    | No invoice for this item although not free of charge         |
| EKPO      | MFRPN                   | mfr_part_number                     | STRING    | Manufacturer Part Number                                     |
| EKPO      | MFRNR                   | manufacturer                        | STRING    | Manufacturer number                                          |
| EKPO      | EMNFR                   | external_manuf                      | STRING    | External manufacturer code name or number                    |
| EKPO      | NOVET                   | shipping_block                      | STRING    | Item blocked for SD delivery                                 |
| EKPO      | AFNAM                   | requisitioner                       | STRING    | Name of requisitioner/requester                              |
| EKPO      | TZONRC                  | rec_time_zone                       | STRING    | Time zone of recipient location                              |
| EKPO      | IPRKZ                   | period_ind                          | STRING    | Period Indicator for Shelf Life Expiration Date              |
| EKPO      | LEBRE                   | srv_based_inv_ver                   | STRING    | Indicator for Service-Based Invoice Verification             |
| EKPO      | BERID                   | mrp_area                            | STRING    | MRP Area                                                     |
| EKPO      | XCONDITIONS             | conditions_for_item_although_n      | STRING    | Conditions for item although no invoice                      |
| EKPO      | APOMS                   | ext_planning                        | STRING    | APO as Planning System                                       |
| EKPO      | CCOMP                   | stock_transf_cat                    | STRING    | Posting Logic in the Case of Stock Transfers                 |
| EKPO      | GRANT_NBR               | grants                              | STRING    | Grant                                                        |
| EKPO      | FKBER                   | functional_area                     | STRING    | Functional Area                                              |
| EKPO      | STATUS                  | item_status                         | STRING    | Status of Purchasing Document Item                           |
| EKPO      | RESLO                   | iss_stor_loc                        | STRING    | Issuing Storage Location for Stock Transport Order           |
| EKPO      | KBLNR                   | earmarked_funds                     | STRING    | Document Number for Earmarked Funds                          |
| EKPO      | KBLPOS                  | document_item_1                     | STRING    | Earmarked Funds: Document Item                               |
| EKPO      | PS_PSP_PNR              | wbs_element                         | STRING    | Work Breakdown Structure Element (WBS Element)               |
| EKPO      | KOSTL                   | cost_center                         | STRING    | Cost Center                                                  |
| EKPO      | SAKTO                   | g_l_account                         | STRING    | G/L Account Number                                           |
| EKPO      | WEORA                   | origin_accept                       | STRING    | Acceptance At Origin                                         |
| EKPO      | SRV_BAS_COM             | service_based_comm                  | STRING    | Service-Based Commitment                                     |
| EKPO      | PRIO_URG                | reqmt_urgency                       | STRING    | Requirement Urgency                                          |
| EKPO      | PRIO_REQ                | reqmt_priority                      | STRING    | Requirement Priority                                         |
| EKPO      | EMPST                   | recv_point                          | STRING    | Receiving Point                                              |
| EKPO      | DIFF_INVOICE            | diff_invoicing                      | STRING    | Differential Invoicing                                       |
| EKPO      | TRMRISK_RELEVANT        | risk_relevancy                      | STRING    | Risk Relevancy in Purchasing                                 |
| EKPO      | CREATIONDATE            | creation_date                       | DATE      | Purchasing Document Creation Date                            |
| EKPO      | CREATIONTIME            | creation_time                       | TIME      | Purchasing Document Creation Time                            |
| EKPO      | SPE_ABGRU               | rejectionreason                     | STRING    | Reason for rejection of quotations and sales orders          |
| EKPO      | SPE_CRM_SO              | crm_sales_order                     | STRING    | CRM Sales Order Number for TPOP Process                      |
| EKPO      | SPE_CRM_SO_ITEM         | crm_item_no                         | STRING    | CRM Sales Order Item Number in TPOP Process                  |
| EKPO      | SPE_CRM_REF_SO          | crm_ref_order                       | STRING    | CRM Reference Order Number for TPOP Process                  |
| EKPO      | SPE_CRM_REF_ITEM        | crm_rf_item_no                      | STRING    | CRM Reference Sales Order Item Number in TPOP Process        |
| EKPO      | SPE_CRM_FKREL           | bill_relevance                      | STRING    | Billing Relevance CRM                                        |
| EKPO      | SPE_CHNG_SYS            | changer_s_sys_type                  | STRING    | Last Changers System Type                                    |
| EKPO      | SPE_INSMK_SRC           | source_stock_type                   | STRING    | Stock Type of Source Storage Location in STO                 |
| EKPO      | SPE_CQ_CTRLTYPE         | control_type                        | STRING    | CQ Control Type                                              |
| EKPO      | SPE_CQ_NOCQ             | no_cq_transmission                  | STRING    | No Transmission of Cumulative Quantities in SA Release       |
| EKPO      | REASON_CODE             | reason_code_ekpo                    | STRING    | Goods Receipt Reason Code                                    |
| EKPO      | CQU_SAR                 | cumulative_grs                      | NUMERIC   | Cumulative Goods Receipts from Redirected Purchase Orders    |
| EKPO      | ANZSN                   | no_serial_no                        | INT64     | Number of serial numbers                                     |
| EKPO      | SPE_EWM_DTC             | ewm_del_tol_chk                     | STRING    | EWM Delivery Based Tolerance Check                           |
| EKPO      | EXLIN                   | configurable_itemno                 | STRING    | Item Number Length                                           |
| EKPO      | EXSNR                   | external_sort_no                    | STRING    | External Sorting                                             |
| EKPO      | EHTYP                   | ext_hierarchy_cat                   | STRING    | External Hierarchy Category                                  |
| EKPO      | RETPC                   | retention_ekpo                      | NUMERIC   | Retention in Percent                                         |
| EKPO      | DPTYP                   | down_payment_ekpo                   | STRING    | Down Payment Indicator                                       |
| EKPO      | DPPCT                   | down_payment_1_ekpo                 | NUMERIC   | Down Payment Percentage                                      |
| EKPO      | DPAMT                   | down_payment_amt_ekpo               | NUMERIC   | Down Payment Amount in Document Currency                     |
| EKPO      | DPDAT                   | due_date_for_dp_ekpo                | DATE      | Due Date for Down Payment                                    |
| EKPO      | FLS_RSTO                | enh_store_ret                       | STRING    | Store Return with Inbound and Outbound Delivery              |
| EKPO      | EXT_RFX_NUMBER          | external_document                   | STRING    | Document Number of External Document                         |
| EKPO      | EXT_RFX_ITEM            | external_item                       | STRING    | Item Number of External Document                             |
| EKPO      | EXT_RFX_SYSTEM          | logical_system_ekpo                 | STRING    | Logical System                                               |
| EKPO      | SRM_CONTRACT_ID         | central_contract                    | STRING    | Central Contract                                             |
| EKPO      | SRM_CONTRACT_ITM        | cent_contract_item                  | STRING    | Central Contract Item Number                                 |
| EKPO      | BLK_REASON_ID           | block_reason_id                     | STRING    | Blocking Reason - ID                                         |
| EKPO      | BLK_REASON_TXT          | block_reas_text                     | STRING    | Blocking Reason - Text                                       |
| EKPO      | ITCONS                  | rt_consumption                      | STRING    | Real-Time Consumption Posting of Subcontracting Components   |
| EKPO      | FIXMG                   | fixed_date                          | STRING    | Delivery Date and Quantity Fixed                             |
| EKPO      | WABWE                   | gi_based_gr                         | STRING    | Indicator for GI-based goods receipt                         |
| EKPO      | CMPL_DLV_ITM            | complete_deliv_ekpo                 | STRING    | Complete Delivery Requested for Purchase Order Item          |
| EKPO      | INCO2_L                 | inco_location1_ekpo                 | STRING    | Incoterms Location 1                                         |
| EKPO      | INCO3_L                 | inco_location2_ekpo                 | STRING    | Incoterms Location 2                                         |
| EKPO      | STAWN                   | commodity_code                      | STRING    | Commodity Code                                               |
| EKPO      | ISVCO                   | intrastat_srvc_code                 | STRING    | Intrastat Service Code                                       |
| EKPO      | GRWRT                   | statist_value                       | NUMERIC   | Statistical value for foreign trade                          |
| EKPO      | SERVICEPERFORMER        | service_performer                   | STRING    | Service Performer                                            |
| EKPO      | PRODUCTTYPE             | product_type_group                  | STRING    | Product Type Group                                           |
| EKPO      | REQUESTFORQUOTATION     | rfq_1                               | STRING    | Identifier for Request for Quotation                         |
| EKPO      | REQUESTFORQUOTATIONITEM | item_number_for_rfq                 | STRING    | Item Number for Request for Quotation                        |
| EKPO      | EXTMATERIALFORPURG      | material_2                          | STRING    | Material of External System                                  |
| EKPO      | TARGET_VALUE            | item_target_value                   | NUMERIC   | Target Value at Item Level in Procurement Hub                |
| EKPO      | EXTERNALREFERENCEID     | ext_reference_id_ekpo               | STRING    | External Reference ID                                        |
| EKPO      | TC_AUT_DET              | tc_auto_det                         | STRING    | Tax Code Automatically Determined                            |
| EKPO      | MANUAL_TC_REASON        | man_tc_reason                       | STRING    | Manual Tax Code Reason                                       |
| EKPO      | FISCAL_INCENTIVE        | tax_incent_type                     | STRING    | Tax Incentive Type                                           |
| EKPO      | TAX_SUBJECT_ST          | tax_subj_to_st                      | STRING    | Tax Subject to Substituição Tributária                       |
| EKPO      | FISCAL_INCENTIVE_ID     | incentive_id                        | STRING    | Incentive ID                                                 |
| EKPO      | SF_TXJCD                | origjurcod                          | STRING    | Jurisdiction Code of the Point of Origin                     |
| EKPO      | DUMMY_EKPO_INCL_EEW_PS  | ext_include_ekpo                    | STRING    | Data Element for Extensibility of Purchasing Document Item   |
| EKPO      | EXPECTED_VALUE          | expected_value                      | NUMERIC   | Expected Value of Overall Limit                              |
| EKPO      | LIMIT_AMOUNT            | overall_limit                       | NUMERIC   | Overall Limit                                                |
| EKPO      | ENH_DATE1               | wka_start_date                      | DATE      | Start date of WKA working period                             |
| EKPO      | ENH_DATE2               | wka_end_date                        | DATE      | End date of WKA working period                               |
| EKPO      | ENH_PERCENT             | percentage                          | NUMERIC   | WKA: Percentage of wages                                     |
| EKPO      | ENH_NUMC1               | wrk_time_hours                      | STRING    | Working time in hours                                        |
| EKPO      | _DATAAGING              | data_filter_value_for_data_agi      | DATE      | Data Filter Value for Data Aging                             |
| EKPO      | __BEV1__NEGEN_ITEM      | item_generated                      | STRING    | Indicator: Item Is Generated                                 |
| EKPO      | __BEV1__NEDEPFREE       | dependent_free                      | STRING    | Indicator: Dependent Items Are Free of Charge                |
| EKPO      | __BEV1__NESTRUCCAT      | struct_category                     | STRING    | Structure Category for Material Relationship                 |
| EKPO      | ADVCODE                 | advice_code                         | STRING    | Advice Code                                                  |
| EKPO      | BUDGET_PD               | budget_period                       | STRING    | Budget Period                                                |
| EKPO      | EXCPE                   | acceptance_period                   | STRING    | Acceptance Period                                            |
| EKPO      | FMFGUS_KEY              | us_govt                             | STRING    | United States Federal Government Fields                      |
| EKPO      | IUID_RELEVANT           | iuid_relevant                       | STRING    | IUID-Relevant                                                |
| EKPO      | MRPIND                  | mrpind                              | STRING    | Max. Retail Price Relevant                                   |
| EKPO      | SGT_SCAT                | stock_segment                       | STRING    | Stock Segment                                                |
| EKPO      | SGT_RCAT                | reqmnt_segment                      | STRING    | Requirement Segment                                          |
| EKPO      | TMS_REF_UUID            | guid_of_sap_tm_ekpo                 | STRING    | Reference UUID of Transportation Management                  |
| EKPO      | TMS_SRC_LOC_KEY         | location                            | BYTES     | Location GUID (004) with Conversion Exit                     |
| EKPO      | TMS_DES_LOC_KEY         | location_1                          | BYTES     | Location GUID (004) with Conversion Exit                     |
| EKPO      | WRF_CHARSTC1            | characteristic_1                    | STRING    | Characteristic Value 1                                       |
| EKPO      | WRF_CHARSTC2            | characteristic_2                    | STRING    | Characteristic Value 2                                       |
| EKPO      | WRF_CHARSTC3            | characteristic_3                    | STRING    | Characteristic Value 3                                       |
| EKPO      | REFSITE                 | purchasing_ref_site                 | STRING    | Reference Site For Purchasing                                |
| EKPO      | ZAPCGK                  | annexing_package_ekpo               | STRING    | Annexing package key                                         |
| EKPO      | APCGK_EXTEND            | ann_package_extend_ekpo             | STRING    | Extended key for annexing package                            |
| EKPO      | ZBAS_DATE               | base_date_ekpo                      | DATE      | Base Date                                                    |
| EKPO      | ZADATTYP                | annexing_date_type_ekpo             | STRING    | Annexing Date Type                                           |
| EKPO      | ZSTART_DAT              | annexing_start_date_ekpo            | DATE      | Annexing start date                                          |
| EKPO      | Z_DEV                   | deviation_percen_ekpo               | NUMERIC   | deviation percentage                                         |
| EKPO      | ZINDANX                 | annexed_ind_ekpo                    | STRING    | indicator for annexed order type                             |
| EKPO      | ZLIMIT_DAT              | limit_date_ekpo                     | DATE      | Annexing limit date (purchasing)                             |
| EKPO      | NUMERATOR               | char20_ekpo                         | STRING    | Char 20                                                      |
| EKPO      | HASHCAL_BDAT            | new_base_date_ekpo                  | DATE      | The general acountant method New base date.                  |
| EKPO      | HASHCAL                 | accountant_gen_mth_ekpo             | STRING    | Accountant general method                                    |
| EKPO      | NEGATIVE                | no_negative_annexing_ekpo           | STRING    | Do not allow negative annexing                               |
| EKPO      | HASHCAL_EXISTS          | purchasing_org_ekpo                 | STRING    | Purchasing organization                                      |
| EKPO      | KNOWN_INDEX             | known_index_indic_ekpo              | STRING    | Known Index indicator in /ILE/T_ANNEXING_CALCULATION Func    |
| EKPO      | __SAPMP__GPOSE          | global_item_no                      | STRING    | Global Item Number in Purchasing Document                    |
| EKPO      | ANGPN                   | quotation_item                      | STRING    | Quotation Item Number (SD)                                   |
| EKPO      | ADMOI                   | model_id_code                       | STRING    | Model ID Code                                                |
| EKPO      | ADPRI                   | order_priority                      | STRING    | Order Priority                                               |
| EKPO      | LPRIO                   | delivery_prior                      | STRING    | Delivery Priority                                            |
| EKPO      | ADACN                   | aircraftreg_no                      | STRING    | Aircraft registration number                                 |
| EKPO      | AFPNR                   | item_3                              | STRING    | Sales Document Item                                          |
| EKPO      | BSARK                   | conf_type                           | STRING    | Vendor confirmation type                                     |
| EKPO      | AUDAT                   | document_date_ekpo                  | DATE      | Document Date (Date Received/Sent)                           |
| EKPO      | ANGNR                   | quotation_ekpo                      | STRING    | Quotation number                                             |
| EKPO      | PNSTAT                  | s1pnstat_message                    | STRING    | Flag for  the S1PNSTAT message                               |
| EKPO      | ADDNS                   | donotsub                            | STRING    | Do Not Substitute                                            |
| EKPO      | SERRU                   | subcon_type                         | STRING    | Type of subcontracting                                       |
| EKPO      | SERNP                   | serialnoprofile                     | STRING    | Serial Number Profile                                        |
| EKPO      | DISUB_SOBKZ             | sp_stock                            | STRING    | Special stock indicator Subcontracting                       |
| EKPO      | DISUB_PSPNR             | wbs_element_1                       | STRING    | Work Breakdown Structure Element (WBS Element)               |
| EKPO      | DISUB_KUNNR             | customer_1                          | STRING    | Customer Number                                              |
| EKPO      | DISUB_VBELN             | sales_document                      | STRING    | Sales and Distribution Document Number                       |
| EKPO      | DISUB_POSNR             | item_4                              | STRING    | Item number of the SD document                               |
| EKPO      | DISUB_OWNER             | owner_of_stock                      | STRING    | Owner of stock                                               |
| EKPO      | FSH_SEASON_YEAR         | season_year_1                       | STRING    | Season Year                                                  |
| EKPO      | FSH_SEASON              | season_1                            | STRING    | Season                                                       |
| EKPO      | FSH_COLLECTION          | collection                          | STRING    | Fashion Collection                                           |
| EKPO      | FSH_THEME               | theme                               | STRING    | Fashion Theme                                                |
| EKPO      | FSH_ATP_DATE            | start_date_atp                      | DATE      | Starting Date with ATP                                       |
| EKPO      | FSH_VAS_REL             | vas_relevant                        | STRING    | VAS Relevant                                                 |
| EKPO      | FSH_VAS_PRNT_ID         | item_5                              | STRING    | Item Number of Purchasing Document                           |
| EKPO      | FSH_TRANSACTION         | transaction_number_ekpo             | STRING    | Transaction Number                                           |
| EKPO      | FSH_ITEM_GROUP          | item_group_ekpo                     | STRING    | Item Group                                                   |
| EKPO      | FSH_ITEM                | item_number                         | STRING    | Item Number                                                  |
| EKPO      | FSH_SS                  | sched_strat                         | STRING    | Order Scheduling Strategy                                    |
| EKPO      | FSH_GRID_COND_REC       | record_num                          | STRING    | Grid Condition Record Number                                 |
| EKPO      | FSH_PSM_PFM_SPLIT       | split_id                            | STRING    | PSM and PFM Split ID                                         |
| EKPO      | CNFM_QTY                | committed_qty                       | NUMERIC   | Committed Quantity                                           |
| EKPO      | FSH_PQR_UEPOS           | higher_lev_item_pqr                 | STRING    | Higher-level item in Partial Quantity Rejection              |
| EKPO      | RFM_DIVERSION           | diversion_status                    | STRING    | Status of Diversion process                                  |
| EKPO      | RFM_SCC_INDICATOR       | season_comp_ind                     | STRING    | Season Completeness Indicator                                |
| EKPO      | STPAC                   | activate_stop                       | STRING    | Activate Static Stopping of Releases                         |
| EKPO      | LGBZO                   | auto_unloadpt                       | STRING    | (Automotive) Unloading Point                                 |
| EKPO      | LGBZO_B                 | auto_unloadpt_1                     | STRING    | (Automotive) Unloading Point                                 |
| EKPO      | ADDRNUM                 | address_number_ekpo                 | STRING    | Address Number                                               |
| EKPO      | CONSNUM                 | sequence_number                     | STRING    | Sequence Number                                              |
| EKPO      | BORGR_MISS              | info_at_reg                         | STRING    | Indicator: Action at Registration                            |
| EKPO      | DEP_ID                  | department                          | STRING    | Department                                                   |
| EKPO      | BELNR                   | earmarked_funds_1                   | STRING    | Document Number for Earmarked Funds                          |
| EKPO      | KBLPOS_CAB              | document_item_2                     | STRING    | Earmarked Funds: Document Item                               |
| EKPO      | KBLNR_COMP              | commitment_doc                      | STRING    | Commitment document                                          |
| EKPO      | KBLPOS_COMP             | commitment_item_1                   | STRING    | Commitment item                                              |
| EKPO      | WBS_ELEMENT             | wbs_element_2                       | STRING    | Work Breakdown Structure Element (WBS Element)               |
| EKPO      | RFM_PSST_RULE           | psst_grouping_rule                  | STRING    | PSST Grouping Rule                                           |
| EKPO      | RFM_PSST_GROUP          | psst_group                          | STRING    | PSST Group                                                   |
| EKPO      | RFM_REF_DOC             | reference_document                  | STRING    | Reference Document number for PO Traceability                |
| EKPO      | RFM_REF_ITEM            | reference_item                      | STRING    | Reference Item number for PO Traceability                    |
| EKPO      | RFM_REF_ACTION          | reference_action                    | STRING    | Action for Traceability in  PO                               |
| EKPO      | RFM_REF_SLITEM          | reference_schedule_line_item_n      | STRING    | Reference Schedule Line Item number for PO Traceability      |
| EKPO      | REF_ITEM                | reference_item_1                    | STRING    | Reference Item for Remaining Qty Cancellation                |
| EKPO      | SOURCE_ID               | origin_profile                      | STRING    | Origin Profile                                               |
| EKPO      | SOURCE_KEY              | source_system_key                   | STRING    | Key in Source System                                         |
| EKPO      | PUT_BACK                | put_back_id                         | STRING    | Indicator for Putting Back from Grouped PO Document          |
| EKPO      | POL_ID                  | order_list_item_no                  | STRING    | Order List Item Number                                       |
| EKPO      | CONS_ORDER              | consignment                         | STRING    | Purchase Order for Consignment                               |
| EKET      | EBELN                   | purchasing_doc_eket                 | STRING    | Purchasing Document Number                                   |
| EKET      | EBELP                   | item_eket                           | STRING    | Item Number of Purchasing Document                           |
| EKET      | UNIQUEID                | schedule_line_1                     | STRING    | Schedule line id(Concatenation of EBELN, EBELP, EETEN)       |
| EKET      | EINDT                   | delivery_date                       | DATE      | Item delivery date                                           |
| EKET      | SLFDT                   | stat_del_date                       | DATE      | Statistics-Relevant Delivery Date                            |
| EKET      | LPEIN                   | delivery_date_1                     | STRING    | Category of delivery date                                    |
| EKET      | MENGE                   | scheduled_qty                       | NUMERIC   | Scheduled Quantity                                           |
| EKET      | AMENG                   | previous_qty                        | NUMERIC   | Previous Quantity (Delivery Schedule Lines)                  |
| EKET      | WEMNG                   | delivered                           | NUMERIC   | Quantity of goods received                                   |
| EKET      | WAMNG                   | issued                              | NUMERIC   | Issued Quantity                                              |
| EKET      | UZEIT                   | delivery_date_time                  | TIME      | Delivery Date Time-Spot                                      |
| EKET      | BANFN                   | purchase_req_eket                   | STRING    | Purchase Requisition Number                                  |
| EKET      | BNFPO                   | requisn_item_eket                   | STRING    | Item number of purchase requisition                          |
| EKET      | ESTKZ                   | creation_ind                        | STRING    | Creation indicator (purchase requisition/schedule lines)     |
| EKET      | QUNUM                   | quota_arr                           | STRING    | Number of quota arrangement                                  |
| EKET      | QUPOS                   | quota_arr_item                      | STRING    | Quota arrangement item                                       |
| EKET      | MAHNZ                   | no_rem_exp_eket                     | NUMERIC   | No. of Reminders/Expediters for Schedule Line                |
| EKET      | BEDAT                   | purchorderdate                      | DATE      | Order date of schedule line                                  |
| EKET      | RSNUM                   | reservation_number                  | STRING    | Number of reservation/dependent requirements                 |
| EKET      | SERNR                   | bom_expl_number                     | STRING    | BOM explosion number                                         |
| EKET      | FIXKZ                   | fixing_ind                          | STRING    | Schedule Line is Fixed                                       |
| EKET      | GLMNG                   | qty_delivered                       | NUMERIC   | Quantity Delivered (Stock Transfer)                          |
| EKET      | DABMG                   | qty_reduced                         | NUMERIC   | Quantity Reduced (MRP)                                       |
| EKET      | CHARG                   | batch                               | STRING    | Batch Number                                                 |
| EKET      | LICHA                   | supplier_batch                      | STRING    | Supplier Batch Number                                        |
| EKET      | CHKOM                   | components_chg                      | STRING    | Components                                                   |
| EKET      | VERID                   | prod_version                        | STRING    | Production Version                                           |
| EKET      | ABART                   | release_type                        | STRING    | Scheduling agreement release type                            |
| EKET      | MNG02                   | committed_qty_eket                  | NUMERIC   | Committed Quantity                                           |
| EKET      | DAT01                   | committed_date                      | DATE      | Committed date                                               |
| EKET      | ALTDT                   | prev_deliv_date                     | DATE      | Previous delivery date                                       |
| EKET      | AULWE                   | route_schedule                      | STRING    | Route Schedule                                               |
| EKET      | MBDAT                   | mat_avail_date                      | DATE      | Material Staging/Availability Date                           |
| EKET      | MBUHR                   | matl_staging_tme                    | TIME      | Material Staging Time (Local, Relating to a Plant)           |
| EKET      | LDDAT                   | loading_date                        | DATE      | Loading Date                                                 |
| EKET      | LDUHR                   | loading_time                        | TIME      | Loading Time (Local Time Relating to a Shipping Point)       |
| EKET      | TDDAT                   | transpplngdate                      | DATE      | Transportation Planning Date                                 |
| EKET      | TDUHR                   | tr_plan_time                        | TIME      | Transp. Planning Time (Local, Relating to a Shipping Point)  |
| EKET      | WADAT                   | goods_issue                         | DATE      | Goods Issue Date                                             |
| EKET      | WAUHR                   | gi_time                             | TIME      | Time of Goods Issue (Local, Relating to a Plant)             |
| EKET      | ELDAT                   | gr_end_date                         | DATE      | Goods Receipt End Date                                       |
| EKET      | ELUHR                   | gr_end_time                         | TIME      | Goods Receipt End Time (Local, Relating to a Plant)          |
| EKET      | ANZSN                   | no_serial_no_eket                   | INT64     | Number of serial numbers                                     |
| EKET      | NODISP                  | res_purc_req                        | STRING    | Ind: Reserv. not applicable to MRP;Purc. req. not created    |
| EKET      | GEO_ROUTE               | georoute                            | STRING    | Description of a Geographical Route                          |
| EKET      | ROUTE_GTS               | gtsroutecode                        | STRING    | Route Code for SAP Global Trade Services                     |
| EKET      | GTS_IND                 | gds_traffic_ty                      | STRING    | Goods Traffic Type                                           |
| EKET      | TSP                     | fwd_agent                           | STRING    | Forwarding Agent                                             |
| EKET      | CD_LOCNO                | apo_location                        | STRING    | Location number in APO                                       |
| EKET      | CD_LOCTYPE              | apo_locatn_type                     | STRING    | APO location type                                            |
| EKET      | HANDOVERDATE            | handover_date                       | DATE      | Handover Date at the Handover Location                       |
| EKET      | HANDOVERTIME            | handover_time                       | TIME      | Handover time at the handover location                       |
| EKET      | STARTDATE               | start_date_eket                     | DATE      | Start Date for Period of Performance                         |
| EKET      | ENDDATE                 | end_date                            | DATE      | End Date for Period of Performance                           |
| EKET      | _DATAAGING              | data_filter_value_for_data_agi_eket | DATE      | Data Filter Value for Data Aging                             |
| EKET      | __CWM__MENGE            | cw_sched_line_qty                   | NUMERIC   | Schedule Line Quantity in Base/Parallel Unit of Measure      |
| EKET      | __CWM__DABMG            | cw_mrp_reduced_qty                  | NUMERIC   | MRP Reduced Quantity in Base/Parallel UoM                    |
| EKET      | __CWM__WEMNG            | par_gr_qty                          | NUMERIC   | Goods Receipt Quantity in Base or Parallel Unit of Measure   |
| EKET      | TMS_REF_UUID            | guid_of_sap_tm_eket                 | STRING    | Reference UUID of Transportation Management                  |
| EKET      | ARUN_REQ_DLVDATE        | input_date_eket                     | DATE      | Date                                                         |
| EKET      | FSH_RALLOC_QTY          | alloc_qty                           | NUMERIC   | ARun Requirement Allocated Quantity                          |
| EKET      | FSH_SALLOC_QTY          | allocated_stock                     | NUMERIC   | Allocated Stock Quantity                                     |
| EKET      | FSH_OS_ID               | order_sch_gr_id                     | STRING    | Order Scheduling Group ID                                    |
| EKET      | KEY_ID                  | budget_number_eket                  | STRING    | Unique Number of Budget                                      |
| EKET      | OTB_VALUE               | required_budget_eket                | NUMERIC   | Required Budget                                              |
| EKET      | OTB_CURR                | otb_currency_eket                   | STRING    | OTB Currency                                                 |
| EKET      | OTB_RES_VALUE           | reserved_budget_eket                | NUMERIC   | Reserved Budget for OTB-Relevant Purchasing Document         |
| EKET      | OTB_SPEC_VALUE          | special_release_eket                | NUMERIC   | Special Release Budget                                       |
| EKET      | SPR_RSN_PROFILE         | otb_reason_profile_eket             | STRING    | Reason Profile for OTB Special Release                       |
| EKET      | BUDG_TYPE               | budget_type_eket                    | STRING    | Budget Type                                                  |
| EKET      | OTB_STATUS              | otb_status_eket                     | STRING    | OTB Check Status                                             |
| EKET      | OTB_REASON              | reason_eket                         | STRING    | Reason Indicator for OTB Check Status                        |
| EKET      | CHECK_TYPE              | type_of_otb_check_eket              | STRING    | Type of OTB Check                                            |
| EKET      | DL_ID                   | dateline_id                         | STRING    | Date Line ID (GUID)                                          |
| EKET      | HANDOVER_DATE           | transfer_date                       | DATE      | Transfer Date                                                |
| EKET      | NO_SCEM                 | no_scem_contr                       | STRING    | Purchase Order Not Transferred to SCEM                       |
| EKET      | DNG_DATE                | rem_date                            | DATE      | Creation Date of Reminder Message Record                     |
| EKET      | DNG_TIME                | reminder_time                       | TIME      | Creation Time of Reminder Message Record                     |
| EKET      | CNCL_ANCMNT_DONE        | cancel_threat_made                  | STRING    | Cancellation Threat Made                                     |
| EKET      | DATESHIFT_NUMBER        | no_date_shifts                      | NUMERIC   | Number of Current Date Shifts                                |
| EKBE      | EBELN                   | purchasing_doc_ekbe                 | STRING    | Purchasing Document Number                                   |
| EKBE      | EBELP                   | item_ekbe                           | STRING    | Item Number of Purchasing Document                           |
| EKBE      | BEWTP                   | po_history_cat                      | STRING    | Purchase Order History Category                              |
| EKBE      | BWART                   | movement_type                       | STRING    | Movement type (inventory management)                         |
| EKBE      | BUDAT                   | posting_date                        | DATE      | Posting Date in the Document                                 |
| EKBE      | MENGE                   | quantity                            | NUMERIC   | Quantity                                                     |
| EKBE      | BPMNG                   | qty_in_opun                         | NUMERIC   | Quantity in purchase order price unit                        |
| EKBE      | DMBTR                   | amount_in_lc                        | NUMERIC   | Amount in Local Currency                                     |
| EKBE      | WRBTR                   | amount                              | NUMERIC   | Amount in Document Currency                                  |
| EKBE      | WAERS                   | currency_ekbe                       | STRING    | Currency Key                                                 |
| EKBE      | AREWR                   | gr_ir_clr_value                     | NUMERIC   | GR/IR account clearing value in local currency               |
| EKBE      | WESBS                   | gr_bl_st_oun                        | NUMERIC   | Goods Receipt Blocked Stock in Order Unit                    |
| EKBE      | BPWES                   | gr_blocked_stck                     | NUMERIC   | Quantity in GR blocked stock in order price unit             |
| EKBE      | SHKZG                   | debit_credit                        | STRING    | Debit/Credit Indicator                                       |
| EKBE      | BWTAR                   | valuation_type_ekbe                 | STRING    | Valuation Type                                               |
| EKBE      | ELIKZ                   | deliv_compl_ekbe                    | STRING    | Delivery Completed Indicator                                 |
| EKBE      | XBLNR                   | reference                           | STRING    | Reference Document Number                                    |
| EKBE      | LFGJA                   | fisc_yr_ref_doc                     | STRING    | Fiscal Year of a Reference Document                          |
| EKBE      | LFBNR                   | reference_doc                       | STRING    | Document No. of a Reference Document                         |
| EKBE      | LFPOS                   | ref_doc_item                        | STRING    | Item of a Reference Document                                 |
| EKBE      | GRUND                   | reason_for_mvmt                     | STRING    | Reason for Movement                                          |
| EKBE      | CPUDT                   | entered_on                          | DATE      | Day On Which Accounting Document Was Entered                 |
| EKBE      | CPUTM                   | entered_at                          | TIME      | Time of Entry                                                |
| EKBE      | REEWR                   | invoice_value                       | NUMERIC   | Invoice Value Entered (in Local Currency)                    |
| EKBE      | EVERE                   | compliance                          | STRING    | Compliance with Shipping Instructions                        |
| EKBE      | REFWR                   | inv_value_in_fc                     | NUMERIC   | Invoice Value in Foreign Currency                            |
| EKBE      | MATNR                   | material_ekbe                       | STRING    | Material Number                                              |
| EKBE      | WERKS                   | plant_ekbe                          | STRING    | Plant                                                        |
| EKBE      | XWSBR                   | revgr_desp_ir                       | STRING    | Reversal of GR allowed for GR-based IV despite invoice       |
| EKBE      | ETENS                   | sequential_no                       | STRING    | Sequential Number of Supplier Confirmation                   |
| EKBE      | KNUMV                   | doc_condition_ekbe                  | STRING    | Number of the Document Condition                             |
| EKBE      | MWSKZ                   | tax_code_ekbe                       | STRING    | Tax on sales/purchases code                                  |
| EKBE      | LSMNG                   | del_note_qty                        | NUMERIC   | Quantity in Unit of Measure from Delivery Note               |
| EKBE      | LSMEH                   | del_note_unit                       | STRING    | Unit of Measure From Delivery Note                           |
| EKBE      | EMATN                   | material_1_ekbe                     | STRING    | Material number                                              |
| EKBE      | AREWW                   | gr_ir_clr_value_1                   | NUMERIC   | Clearing value on GR/IR clearing account (transac. currency) |
| EKBE      | HSWAE                   | local_currency                      | STRING    | Local currency key                                           |
| EKBE      | BAMNG                   | quantity_1                          | NUMERIC   | Quantity                                                     |
| EKBE      | CHARG                   | batch_ekbe                          | STRING    | Batch Number                                                 |
| EKBE      | BLDAT                   | document_date_ekbe                  | DATE      | Document Date in Document                                    |
| EKBE      | XWOFF                   | calcn_of_val_open                   | STRING    | Calculation of val. open                                     |
| EKBE      | XUNPL                   | uacctassignment                     | STRING    | Unplanned Account Assignment from Invoice Verification       |
| EKBE      | ERNAM                   | created_by_ekbe                     | STRING    | Name of Person who Created the Object                        |
| EKBE      | SRVPOS                  | service                             | STRING    | Service number                                               |
| EKBE      | PACKNO                  | package_number_ekbe                 | STRING    | Package Number of Service                                    |
| EKBE      | INTROW                  | service_line                        | STRING    | Line Number of Service                                       |
| EKBE      | BEKKN                   | seqno_po_accass                     | STRING    | Number of PO Account Assignment                              |
| EKBE      | LEMIN                   | srv_returns_ind                     | STRING    | Returns Indicator                                            |
| EKBE      | AREWB                   | gr_ir_clr_value_2                   | NUMERIC   | Clearing Value on GR/IR Account in PO Currency               |
| EKBE      | REWRB                   | fc_invoice_amnt                     | NUMERIC   | Invoice Amount in PO Currency                                |
| EKBE      | SAPRL                   | sap_release                         | STRING    | SAP Release                                                  |
| EKBE      | MENGE_POP               | quantity_2                          | NUMERIC   | Quantity                                                     |
| EKBE      | BPMNG_POP               | qty_in_opun_1                       | NUMERIC   | Quantity in purchase order price unit                        |
| EKBE      | DMBTR_POP               | amount_in_lc_1                      | NUMERIC   | Amount in Local Currency                                     |
| EKBE      | WRBTR_POP               | amount_1                            | NUMERIC   | Amount in Document Currency                                  |
| EKBE      | WESBB                   | val_gr_blstock_oun                  | NUMERIC   | Valuated Goods Receipt Blocked Stock in Order Unit           |
| EKBE      | BPWEB                   | val_gr_bs_opun                      | NUMERIC   | Quantity in Valuated GR Blocked Stock in Order Price Unit    |
| EKBE      | WEORA                   | origin_accept_ekbe                  | STRING    | Acceptance At Origin                                         |
| EKBE      | AREWR_POP               | gr_ir_clr_value_3                   | NUMERIC   | GR/IR account clearing value in local currency               |
| EKBE      | KUDIF                   | exch_rate_diff                      | NUMERIC   | Exchange Rate Difference Amount                              |
| EKBE      | RETAMT_FC               | retent_in_doc_crcy                  | NUMERIC   | Retention Amount in Document Currency                        |
| EKBE      | RETAMT_LC               | retention_in_cc_crcy                | NUMERIC   | Retention Amount in Company Code Currency                    |
| EKBE      | RETAMTP_FC              | retent_in_doc_crcy_1                | NUMERIC   | Posted Retention Amount in Document Currency                 |
| EKBE      | RETAMTP_LC              | retention_in_cc_crcy_1              | NUMERIC   | Posted Security Retention Amount in Company Code Currency    |
| EKBE      | XMACC                   | multi_acct_assgt                    | STRING    | Multiple Account Assignment                                  |
| EKBE      | WKURS                   | exchange_rate_ekbe                  | NUMERIC   | Exchange Rate                                                |
| EKBE      | INV_ITEM_ORIGIN         | item_origin                         | STRING    | Origin of an Invoice Item                                    |
| EKBE      | VBELN_ST                | delivery                            | STRING    | Delivery                                                     |
| EKBE      | VBELP_ST                | item_1_ekbe                         | STRING    | Delivery Item                                                |
| EKBE      | SGT_SCAT                | stock_segment_ekbe                  | STRING    | Stock Segment                                                |
| EKBE      | _DATAAGING              | data_filter_value_for_data_agi_ekbe | DATE      | Data Filter Value for Data Aging                             |
| EKBE      | SESUOM                  | ses_uom                             | STRING    | Unit of Measure from Service Entry Sheet                     |
| EKBE      | LOGSY                   | logical_system_ekbe                 | STRING    | Logical System                                               |
| EKBE      | ET_UPD                  | slpu                                | STRING    | Procedure for Updating the Schedule Line Quantity            |
| EKBE      | __CWM__BAMNG            | cw_qty                              | NUMERIC   | Quantity in Parallel Unit of Measure                         |
| EKBE      | __CWM__WESBS            | cwm_gr_blkd_stk_qty                 | NUMERIC   | Goods Receipt Blocked Stock in Base/Parallel Unit of Measure |
| EKBE      | __CWM__TY2TQ            | puom_type                           | STRING    | Type of Parallel Unit of Measure                             |
| EKBE      | __CWM__WESBB            | cwm_gr_blkd_stk_qty_1               | NUMERIC   | Val. Goods Receipt Blocked Stock in Basis or Parallel UoM    |
| EKBE      | J_SC_DIE_COMP_F         | die_complete_flag                   | STRING    | Depreciation completion flag                                 |
| EKBE      | FSH_SEASON_YEAR         | season_year_ekbe                    | STRING    | Season Year                                                  |
| EKBE      | FSH_SEASON              | season_ekbe                         | STRING    | Season                                                       |
| EKBE      | FSH_COLLECTION          | collection_ekbe                     | STRING    | Fashion Collection                                           |
| EKBE      | FSH_THEME               | theme_ekbe                          | STRING    | Fashion Theme                                                |
| EKBE      | QTY_DIFF                | quantity_3                          | NUMERIC   | Quantity                                                     |
| EKBE      | WRF_CHARSTC1            | characteristic_1_ekbe               | STRING    | Characteristic Value 1                                       |
| EKBE      | WRF_CHARSTC2            | characteristic_2_ekbe               | STRING    | Characteristic Value 2                                       |
| EKBE      | WRF_CHARSTC3            | characteristic_3_ekbe               | STRING    | Characteristic Value 3                                       |
|           |                         | finalmd5key                         | STRING    | MD5 key combining all columns                                |
|           |                         | input_last_update_date              | DATETIME  | Last Input read time                                         |
|           |                         | dw_active_indicator                 | STRING    | Valid Indicator                                              |
|           |                         | dw_start_date                       | DATETIME  | Record start date                                            |
|           |                         | dw_end_date                         | DATETIME  | Record end date                                              |
|           |                         | dw_last_update_date                 | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms