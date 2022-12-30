
## Table Name : sales_order_fact

| sap_table | sap_column                     | column_name                         | data_type | description                                                      |
|-----------|--------------------------------|-------------------------------------|-----------|------------------------------------------------------------------|
|           |                                | sales_order_uuid                    | STRING    | Unique Generated Id                                              |
|           |                                | sales_order_key                     | STRING    | Sales order Key                                                  |
| VBAK      | MANDT                          | client                              | STRING    | Client                                                           |
| VBAK      | VBELN                          | sales_document                      | STRING    | Sales Document                                                   |
| VBAP      | POSNR                          | item                                | STRING    | Sales Document Item                                              |
| VBEP      | ETENR                          | schedule_line                       | STRING    | Schedule Line Number                                             |
|           |                                | material_uuid                       | STRING    | Material Dimension Unique Generated Id                           |
|           |                                | material_key                        | STRING    | Material key from Material Dimension                             |
|           |                                | supplier_uuid                       | STRING    | Supplier Dimension Unique Generated Id                           |
|           |                                | supplier_key                        | STRING    | Supplier key from Supplier Dimension                             |
|           |                                | plant_uuid                          | STRING    | Plant Dimension Unique Generated Id                              |
|           |                                | plant_key                           | STRING    | Plant key from Plant Dimension                                   |
|           |                                | storage_location_uuid               | STRING    | Storage location Dimension Unique Generated Id                   |
|           |                                | storage_location_key                | STRING    | Storage location key from Storage location Dimension             |
|           |                                | customer_sales_org_uuid             | STRING    | Customer Sales Org Dimension Unique Generated Id                 |
|           |                                | customer_sales_org_key              | STRING    | Customer Sale Organization Key from Customer Sales Org Dimension |
|           |                                | shipping_point_uuid                 | STRING    | Shipping Point Dimension Unique Generated Id                     |
|           |                                | shipping_point_key                  | STRING    | Shipping Point key from Shipping Point Dimension                 |
|           |                                | customer_uuid                       | STRING    | Customer Dimension Unique Generated Id                           |
|           |                                | customer_key                        | STRING    | Customer Key from Customer Dimension                             |
| VBAK      | ERDAT                          | created_on                          | DATE      | Date on which the record was created                             |
| VBAK      | ERZET                          | entry_time                          | TIME      | Entry time                                                       |
| VBAK      | ERNAM                          | created_by                          | STRING    | Name of Person who Created the Object                            |
| VBAK      | ANGDT                          | valid_from                          | DATE      | Quotation/Inquiry is Valid From                                  |
| VBAK      | BNDDT                          | valid_to                            | DATE      | Date Until Which Bid/Quotation is Binding (Valid-To Date)        |
| VBAK      | AUDAT                          | document_date                       | DATE      | Document Date (Date Received/Sent)                               |
| VBAK      | VBTYP                          | document_cat                        | STRING    | SD Document Category                                             |
| VBAK      | TRVOG                          | transact_group                      | STRING    | Transaction Group                                                |
| VBAK      | AUART                          | sales_doc_type                      | STRING    | Sales Document Type                                              |
| VBAK      | AUGRU                          | order_reason                        | STRING    | Order Reason (Reason for the Business Transaction)               |
| VBAK      | GWLDT                          | begin_guarantee                     | DATE      | Guarantee date                                                   |
| VBAK      | SUBMI                          | collective_no                       | STRING    | Collective Number (SD)                                           |
| VBAK      | LIFSK                          | delivery_block                      | STRING    | Delivery Block (Document Header)                                 |
| VBAK      | FAKSK                          | billing_block                       | STRING    | Billing Block in SD Document                                     |
| VBAK      | NETWR                          | net_value                           | NUMERIC   | Net Value of the Sales Order in Document Currency                |
| VBAK      | WAERK                          | doc_currency                        | STRING    | SD document currency                                             |
| VBAK      | VKORG                          | sales_org                           | STRING    | Sales Organization                                               |
| VBAK      | VTWEG                          | distr_channel                       | STRING    | Distribution Channel                                             |
| VBAK      | SPART                          | division                            | STRING    | Division                                                         |
| VBAK      | VKGRP                          | sales_group                         | STRING    | Sales group                                                      |
| VBAK      | VKBUR                          | sales_office                        | STRING    | Sales office                                                     |
| VBAK      | GSBER                          | business_area                       | STRING    | Business Area                                                    |
| VBAK      | GSKST                          | business_area_1                     | STRING    | Business Area from Cost Center                                   |
| VBAK      | GUEBG                          | valid_from_1                        | DATE      | Valid-From Date (Outline Agreements, Product Proposals)          |
| VBAK      | GUEEN                          | valid_to_1                          | DATE      | Valid-To Date (Outline Agreements, Product Proposals)            |
| VBAK      | KNUMV                          | doc_condition                       | STRING    | Number of the Document Condition                                 |
| VBAK      | VDATU                          | reqd_deliv_date                     | DATE      | Requested Delivery Date                                          |
| VBAK      | VPRGR                          | prop_date_type                      | STRING    | Proposed date type                                               |
| VBAK      | AUTLF                          | complete_dlv                        | STRING    | Complete Delivery Defined for Each Sales Order?                  |
| VBAK      | VBKLA                          | original_system                     | STRING    | Original system with release and transaction control             |
| VBAK      | VBKLT                          | indicator                           | STRING    | SD document indicator                                            |
| VBAK      | KALSM                          | pric_procedure                      | STRING    | Pricing Procedure in Pricing                                     |
| VBAK      | VSBED                          | shp_cond                            | STRING    | Shipping Conditions                                              |
| VBAK      | FKARA                          | ord_rel_bill_ty                     | STRING    | Proposed billing type for an order-related billing document      |
| VBAK      | AWAHR                          | probability                         | STRING    | Sales probability                                                |
| VBAK      | KTEXT                          | description                         | STRING    | Search term for product proposal                                 |
| VBAK      | BSTNK                          | cust_reference                      | STRING    | Customer Reference                                               |
| VBAK      | BSARK                          | pur_ord_type                        | STRING    | Customer Purchase Order Type                                     |
| VBAK      | BSTDK                          | cust_ref_date                       | DATE      | Customer Reference Date                                          |
| VBAK      | BSTZD                          | supplement                          | STRING    | Purchase order number supplement                                 |
| VBAK      | IHREZ                          | your_reference                      | STRING    | Your Reference                                                   |
| VBAK      | BNAME                          | name                                | STRING    | Name of orderer                                                  |
| VBAK      | TELF1                          | telephone                           | STRING    | Telephone Number                                                 |
| VBAK      | MAHZA                          | no_of_contacts                      | NUMERIC   | Number of Contacts from the Customer                             |
| VBAK      | MAHDT                          | last_contact_dt                     | DATE      | Last Customer Contact Date                                       |
| VBAK      | KUNNR                          | sold_to_party                       | STRING    | Sold-To Party                                                    |
| VBAK      | KOSTL                          | cost_center                         | STRING    | Cost Center                                                      |
| VBAK      | STAFO                          | update_group                        | STRING    | Update Group for statistics update                               |
| VBAK      | STWAE                          | stats_currency                      | STRING    | Statistics Currency                                              |
| VBAK      | AEDAT                          | changed_on                          | DATE      | Date of Last Change                                              |
| VBAK      | KVGR1                          | customer_grp_1                      | STRING    | Customer group 1                                                 |
| VBAK      | KVGR2                          | customer_grp_2                      | STRING    | Customer group 2                                                 |
| VBAK      | KVGR3                          | customer_grp_3                      | STRING    | Customer group 3                                                 |
| VBAK      | KVGR4                          | customer_grp_4                      | STRING    | Customer group 4                                                 |
| VBAK      | KVGR5                          | customer_grp_5                      | STRING    | Customer group 5                                                 |
| VBAK      | KNUMA                          | agreement                           | STRING    | Agreement (various conditions grouped together)                  |
| VBAK      | KOKRS                          | co_area                             | STRING    | Controlling Area                                                 |
| VBAK      | PS_PSP_PNR                     | wbs_element                         | STRING    | Work Breakdown Structure Element (WBS Element)                   |
| VBAK      | KURST                          | exch_rate_type                      | STRING    | Exchange Rate Type                                               |
| VBAK      | KKBER                          | cred_contr_area                     | STRING    | Credit control area                                              |
| VBAK      | KNKLI                          | credit_account                      | STRING    | Customers Account Number with Credit Limit Reference             |
| VBAK      | GRUPP                          | cust_cred_group                     | STRING    | Customer Credit Group                                            |
| VBAK      | SBGRP                          | cred_rep_grp                        | STRING    | Credit Representative Group for Credit Management                |
| VBAK      | CTLPC                          | risk_category                       | STRING    | Credit Management: Risk Category                                 |
| VBAK      | CMWAE                          | currency                            | STRING    | Currency key of credit control area                              |
| VBAK      | CMFRE                          | release_date                        | DATE      | Release date of the document determined by credit management     |
| VBAK      | CMNUP                          | next_check                          | DATE      | Date of Next Credit Check of Document                            |
| VBAK      | CMNGV                          | next_date                           | DATE      | Next date                                                        |
| VBAK      | AMTBL                          | credit_value                        | NUMERIC   | Released credit value of the document                            |
| VBAK      | HITYP_PR                       | hiertypepricing                     | STRING    | Hierarchy type for pricing                                       |
| VBAK      | ABRVW                          | usage                               | STRING    | Usage Indicator                                                  |
| VBAK      | ABDIS                          | mrp_for_ds_type                     | STRING    | MRP for delivery schedule types                                  |
| VBAK      | VGBEL                          | reference_doc                       | STRING    | Document number of the reference document                        |
| VBAK      | OBJNR                          | object_no_hdr                       | STRING    | Object Number at Header Level                                    |
| VBAK      | BUKRS_VF                       | ccodetobebilled                     | STRING    | Company Code to Be Billed                                        |
| VBAK      | TAXK1                          | alt_tax_class                       | STRING    | Alternative Tax Classification                                   |
| VBAK      | TAXK2                          | taxclass2_cust                      | STRING    | Tax Classification 2 for Customer                                |
| VBAK      | TAXK3                          | taxclass3_cust                      | STRING    | Tax classification 3 for customer                                |
| VBAK      | TAXK4                          | taxclass4_cust                      | STRING    | Tax Classification 4 Customer                                    |
| VBAK      | TAXK5                          | taxclass5_cust                      | STRING    | Tax Classification 5 for Customer                                |
| VBAK      | TAXK6                          | taxclass6_cust                      | STRING    | Tax Classification 6 for Customer                                |
| VBAK      | TAXK7                          | taxclass7_cust                      | STRING    | Tax Classification 7 for Customer                                |
| VBAK      | TAXK8                          | taxclass8_cust                      | STRING    | Tax Classification 8 for Customer                                |
| VBAK      | TAXK9                          | taxclass9_cust                      | STRING    | Tax Classification 9 for Customer                                |
| VBAK      | XBLNR                          | reference                           | STRING    | Reference Document Number                                        |
| VBAK      | ZUONR                          | assignment_number                   | STRING    | Assignment number                                                |
| VBAK      | VGTYP                          | prec_doc_categ                      | STRING    | Document Category of Preceding SD Document                       |
| VBAK      | KALSM_CH                       | search_proced                       | STRING    | Search procedure for batch determination                         |
| VBAK      | AGRZR                          | accrual_period                      | STRING    | Accrual period for order-related billing docs.to be accrued      |
| VBAK      | AUFNR                          | order_number                        | STRING    | Order Number                                                     |
| VBAK      | QMNUM                          | notification                        | STRING    | Notification Number                                              |
| VBAK      | VBELN_GRP                      | master_contract                     | STRING    | Master Contract Number                                           |
| VBAK      | SCHEME_GRP                     | ref_procedure                       | STRING    | Referencing requirement: Procedure                               |
| VBAK      | ABRUF_PART                     | check_partner                       | STRING    | Check partner authorizations                                     |
| VBAK      | ABHOD                          | pick_up_date                        | DATE      | Pick-Up Date                                                     |
| VBAK      | ABHOV                          | pick_up_time                        | TIME      | Pick-Up Time                                                     |
| VBAK      | ABHOB                          | pick_up_time_1                      | TIME      | Pick-Up Time                                                     |
| VBAK      | RPLNR                          | paym_ca_pl_no                       | STRING    | Number of payment card plan type                                 |
| VBAK      | VZEIT                          | req_dely_time                       | TIME      | Proposed schedule line time (local with ref. to sales org.)      |
| VBAK      | STCEG_L                        | tax_dest_cntry                      | STRING    | Tax Destination Country                                          |
| VBAK      | LANDTX                         | tax_depart_cty                      | STRING    | Tax Departure Country                                            |
| VBAK      | XEGDR                          | eu_triang_deal                      | STRING    | Indicator: Triangular Deal Within the EU?                        |
| VBAK      | ENQUEUE_GRP                    | block_master_contr_until_all        | STRING    | Block master contr. until all lower level contracts updated      |
| VBAK      | DAT_FZAU                       | cmlqtydate                          | DATE      | Cml delivery order qty date                                      |
| VBAK      | FMBDAT                         | mat_avail_date                      | DATE      | Material Staging/Availability Date                               |
| VBAK      | VSNMR_V                        | version                             | STRING    | Sales document version number                                    |
| VBAK      | HANDLE                         | int_id                              | STRING    | International unique key for VBAK-VBELN                          |
| VBAK      | PROLI                          | dg_mgmt_profile                     | STRING    | Dangerous Goods Management Profile in SD Documents               |
| VBAK      | CONT_DG                        | contains_dg                         | STRING    | Indicator: Document contains dangerous goods                     |
| VBAK      | CRM_GUID                       | char_70                             | STRING    | Character field, length 70                                       |
| VBAK      | UPD_TMSTMP                     | time_stamp                          | NUMERIC   | UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)              |
| VBAK      | MSR_ID                         | process_id_no                       | STRING    | Process Identification Number                                    |
| VBAK      | TM_CTRL_KEY                    | control_key                         | STRING    | Control Key for Document Transfer to TM                          |
| VBAK      | OIPBL                          | location_id                         | STRING    | Business location identifier (IS-Oil MRN)                        |
| VBAK      | LAST_CHANGED_BY_USER           | last_changed_by                     | STRING    | User Who Last Changed the Business Document                      |
| VBAK      | HANDOVERLOC                    | handover_location                   | STRING    | Location for a physical handover of goods                        |
| VBAK      | EXT_BUS_SYST_ID                | ext_bus_syst_id                     | STRING    | External Business System ID                                      |
| VBAK      | EXT_REF_DOC_ID                 | external_document_id                | STRING    | External Document ID                                             |
| VBAK      | EXT_REV_TMSTMP                 | external_revision                   | NUMERIC   | Timestamp for Revision of External Calls                         |
| VBAK      | APM_APPROVAL_STATUS            | approval_status                     | STRING    | Sales Document Approval Status                                   |
| VBAK      | APM_APPROVAL_REASON            | apprvl_req_rsn_id                   | STRING    | Approval Request Reason ID                                       |
| VBAK      | APM_REJECTION_REASON           | apprvl_req_rjcn_rsn                 | STRING    | ID of Reason for Rejection of Approval Request                   |
| VBAK      | _DATAAGING                     | data_filter_value_for_data_agi      | DATE      | Data Filter Value for Data Aging                                 |
| VBAK      | ABSTK                          | rejection_sts                       | STRING    | Rejection Status (All Items)                                     |
| VBAK      | BESTK                          | confirmed                           | STRING    | Confirmation Status (All Items)                                  |
| VBAK      | CMPSC                          | value                               | STRING    | Status of Credit Check Against Maximum Document Value            |
| VBAK      | CMPSD                          | termsofpayment                      | STRING    | Status of Credit Check Against Terms of Payment                  |
| VBAK      | CMPSI                          | financial_doc                       | STRING    | Status of Credit Check Against Financial Document                |
| VBAK      | CMPSJ                          | exptcreditinsur                     | STRING    | Status of Credit Check Against Export Credit Insurance           |
| VBAK      | CMPSK                          | payment_card                        | STRING    | Status of Credit Check Against Payment Card Authorization        |
| VBAK      | CMPS_CM                        | sap_cred_mgmt                       | STRING    | Status of Credit Check SAP Credit Management                     |
| VBAK      | CMPS_TE                        | crma_te_status                      | STRING    | Status of Technical Error SAP Credit Management                  |
| VBAK      | CMGST                          | overallcredstat                     | STRING    | Overall Status of Credit Checks                                  |
| VBAK      | COSTA                          | confirm_status                      | STRING    | Confirmation Status for ALE                                      |
| VBAK      | DCSTK                          | delay_status                        | STRING    | Delay Status (All Items)                                         |
| VBAK      | FKSAK                          | bill_stat_order                     | STRING    | Billing Status (Order-Related Billing Document)                  |
| VBAK      | FMSTK                          | status_funds_mgmt                   | STRING    | Status Funds Management                                          |
| VBAK      | FSSTK                          | ov_b_blk_stat                       | STRING    | Billing Block Status (All Items)                                 |
| VBAK      | GBSTK                          | overall_status                      | STRING    | Overall Processing Status (Header/All Items)                     |
| VBAK      | LFGSK                          | ovrl_delvry_sts                     | STRING    | Overall Delivery Status (All Items)                              |
| VBAK      | LFSTK                          | delivery_status                     | STRING    | Delivery Status (All Items)                                      |
| VBAK      | LSSTK                          | dlv_blk_status                      | STRING    | Overall Delivery Block Status (All Items)                        |
| VBAK      | MANEK                          | manual_completion                   | STRING    | Manual Completion of Contract                                    |
| VBAK      | RFGSK                          | total_refstatus                     | STRING    | Overall Reference Status (All Items)                             |
| VBAK      | RFSTK                          | ref_status                          | STRING    | Reference Status (All Items)                                     |
| VBAK      | SPSTG                          | overall_blk_st                      | STRING    | Overall Block Status (Header)                                    |
| VBAK      | TRSTA                          | trns_plan_stat                      | STRING    | Transportation Planning Status (Header)                          |
| VBAK      | UVALL                          | header_data                         | STRING    | Incompletion Status (Header)                                     |
| VBAK      | UVALS                          | item_data                           | STRING    | Incompletion Status (All Items)                                  |
| VBAK      | UVFAK                          | header_bill_dat                     | STRING    | Billing Incompletion Status (Header)                             |
| VBAK      | UVFAS                          | item_bill_data                      | STRING    | Billing Incompletion Status (All Items)                          |
| VBAK      | UVPRS                          | pricing                             | STRING    | Pricing Incompletion Status (All Items)                          |
| VBAK      | UVVLK                          | header_dlv_data                     | STRING    | Delivery Incompletion Status (Header)                            |
| VBAK      | UVVLS                          | item_deliv_data                     | STRING    | Delivery Incompletion Status (All Items)                         |
| VBAK      | UVK01                          | hdr_reserves_1                      | STRING    | Customer reserves 1: Header status                               |
| VBAK      | UVK02                          | hdr_reserves_2                      | STRING    | Customer reserves 2: Header status                               |
| VBAK      | UVK03                          | hdr_reserves_3                      | STRING    | Customer reserves 3: Header status                               |
| VBAK      | UVK04                          | hdr_reserves_4                      | STRING    | Custmer reserves 4: Header status                                |
| VBAK      | UVK05                          | hdr_reserves_5                      | STRING    | Customer reserves 5: Header status                               |
| VBAK      | UVS01                          | total_reserves1                     | STRING    | Customer reserves 1: Sum of all items                            |
| VBAK      | UVS02                          | totalreserves2                      | STRING    | Customer reserves 2: Sum of all items                            |
| VBAK      | UVS03                          | total_reserves3                     | STRING    | Customer reserves 3: Sum of all items                            |
| VBAK      | UVS04                          | total_reserves4                     | STRING    | Customer reserves 4: Sum of all items                            |
| VBAK      | UVS05                          | total_reserves5                     | STRING    | Customer reserves 5: Sum of all items                            |
| VBAK      | WBSTK                          | ovrlgdsmvtstat                      | STRING    | Goods Movement Status (All Items)                                |
| VBAK      | TOTAL_EMCST                    | embargo_status                      | STRING    | Embargo Check Status (All Items)                                 |
| VBAK      | TOTAL_SLCST                    | wls_sts                             | STRING    | Total Watch List Screening Check Status                          |
| VBAK      | TOTAL_LCCST                    | total_legal_status                  | STRING    | Legal Control Status                                             |
| VBAK      | TOTAL_PCSTA                    | prod_marktablty_sts                 | STRING    | Product Marketability Check Status (All Items)                   |
| VBAK      | TOTAL_DGSTA                    | dangerous_goods_sts                 | STRING    | Dangerous Goods Check Status (All Items)                         |
| VBAK      | TOTAL_SDSSTA                   | sfty_data_sheet_sts                 | STRING    | Safety Data Sheet Check Status (All Items)                       |
| VBAK      | DP_CLEAR_STA_HDR               | down_payment_status                 | STRING    | Down Payment Status                                              |
| VBAK      | DUMMY_SALESDOC_INCL_EEW_PS     | dummy_function_in_length_1          | STRING    | Dummy function in length 1                                       |
| VBAK      | ZAPCGKH                        | annexing_package                    | STRING    | Annexing package key                                             |
| VBAK      | APCGK_EXTENDH                  | ann_package_extend                  | STRING    | Extended key for annexing package                                |
| VBAK      | ZABDATH                        | annexing_base_date                  | DATE      | Annexing base date                                               |
| VBAK      | AD01FAREG                      | a_d_bill_rule                       | STRING    | Rule for Billing                                                 |
| VBAK      | AD01BASDOC                     | initial_doc                         | STRING    | Initial document                                                 |
| VBAK      | LASTVCHR                       | last_voucher                        | STRING    | Last voucher number                                              |
| VBAK      | PSM_BUDAT                      | posting_date                        | DATE      | Posting Date in the Document                                     |
| VBAK      | FSH_KVGR6                      | customer_grp_6                      | STRING    | Customer Group 6                                                 |
| VBAK      | FSH_KVGR7                      | customer_grp_7                      | STRING    | Customer Group 7                                                 |
| VBAK      | FSH_KVGR8                      | customer_grp_8                      | STRING    | Customer Group 8                                                 |
| VBAK      | FSH_KVGR9                      | customer_grp_5_1                    | STRING    | Customer Group 9                                                 |
| VBAK      | FSH_KVGR10                     | customer_grp_10                     | STRING    | Customer Group 10                                                |
| VBAK      | FSH_REREG                      | release_rule                        | STRING    | Release Rule                                                     |
| VBAK      | FSH_CQ_CHECK                   | rqmt_relevant                       | STRING    | Requirement Relevance for Contract                               |
| VBAK      | FSH_VRSN_STATUS                | snap_status                         | STRING    | Snapshot Status                                                  |
| VBAK      | FSH_TRANSACTION                | transaction_number                  | STRING    | Transaction Number                                               |
| VBAK      | FSH_VAS_CG                     | vas_cust_group                      | STRING    | Value-Added Services Customer Group                              |
| VBAK      | FSH_CANDATE                    | cancel_date                         | DATE      | Cancellation Date                                                |
| VBAK      | FSH_SS                         | sched_strat                         | STRING    | Order Scheduling Strategy                                        |
| VBAK      | FSH_OS_STG_CHANGE              | changed_manually                    | STRING    | Order Scheduling Strategy Fields Changed Manually                |
| VBAK      | J_3GKBAUL                      | etm_rel_ind                         | STRING    | ETM-Relevant Indicator                                           |
| VBAK      | MILL_APPL_ID                   | application_id                      | STRING    | Application ID Category for Configuration                        |
| VBAK      | TAS                            | treasury_account_sym                | STRING    | Treasury Account Symbol                                          |
| VBAK      | BETC                           | business_evt_typ_cd                 | STRING    | Business Event Type Code                                         |
| VBAK      | MOD_ALLOW                      | modification_allowed                | STRING    | Modification Allowed                                             |
| VBAK      | CANCEL_ALLOW                   | cancellation_allowed                | STRING    | Cancellation Allowed                                             |
| VBAK      | PAY_METHOD                     | payment_methods                     | STRING    | List of Respected Payment Methods                                |
| VBAK      | BPN                            | business_partner_no                 | STRING    | Business Partner Number                                          |
| VBAK      | REP_FREQ                       | reporting_frequency                 | STRING    | Reporting Frequency                                              |
| VBAK      | LOGSYSB                        | logical_system                      | STRING    | Logical system with which document was created                   |
| VBAK      | KALCD                          | proc_camp_det                       | STRING    | Procedure for Campaign Determination                             |
| VBAK      | MULTI                          | multiple_promotions                 | STRING    | Multiple Campaigns/Trade Promotions Active Indicator             |
| VBAK      | SPPAYM                         | paymmethod                          | STRING    | Payment Form for Special Payment Method                          |
| VBAK      | WTYSC_CLM_HDR                  | claim_header                        | STRING    | Claim header                                                     |
| VBAP      | VBELN                          | sales_document_vbap                 | STRING    | Sales Document                                                   |
| VBAP      | MATNR                          | material                            | STRING    | Material Number                                                  |
| VBAP      | MATWA                          | materialentered                     | STRING    | Material entered                                                 |
| VBAP      | PMATN                          | pr_ref_matl                         | STRING    | Pricing Reference Material                                       |
| VBAP      | CHARG                          | batch                               | STRING    | Batch Number                                                     |
| VBAP      | MATKL                          | material_group                      | STRING    | Material Group                                                   |
| VBAP      | ARKTX                          | item_descr                          | STRING    | Short text for sales order item                                  |
| VBAP      | PSTYV                          | item_category                       | STRING    | Sales document item category                                     |
| VBAP      | POSAR                          | item_type                           | STRING    | Item Type                                                        |
| VBAP      | LFREL                          | item_del_f_dlv                      | STRING    | Item Is Relevant for Delivery                                    |
| VBAP      | FKREL                          | relev_for_bill                      | STRING    | Relevant for Billing                                             |
| VBAP      | UEPOS                          | higher_lev_item                     | STRING    | Higher-Level item in bill of material structures                 |
| VBAP      | GRPOS                          | altern_to_item                      | STRING    | Item for Which this Item is an Alternative                       |
| VBAP      | ABGRU                          | rejectionreason                     | STRING    | Reason for Rejection of Sales Documents                          |
| VBAP      | PRODH                          | prod_hierarchy                      | STRING    | Product hierarchy                                                |
| VBAP      | PRODH_UNIV_SALES_PARNT_NODID   | node_id                             | STRING    | Node ID                                                          |
| VBAP      | PRODH_UNIV_SALES_DET_ORIGIN    | origin_of_prodhier                  | STRING    | Origin of Product Hierarchy                                      |
| VBAP      | PRODH_UNIV_BATDET_PARNT_NODID  | node_id_1                           | STRING    | Node ID                                                          |
| VBAP      | PRODH_UNIV_BATDET_DET_ORIGIN   | origin_of_prodhier_1                | STRING    | Origin of Product Hierarchy                                      |
| VBAP      | ZWERT                          | target_value                        | NUMERIC   | Target Value for Outline Agreement in Document Currency          |
| VBAP      | ZMENG                          | target_quantity                     | NUMERIC   | Target Quantity in Sales Units                                   |
| VBAP      | ZIEME                          | target_qty_uom                      | STRING    | Target Quantity UoM                                              |
| VBAP      | UMZIZ                          | convers_factor                      | NUMERIC   | Factor for Converting Sales Units to Base Units (Target Qty)     |
| VBAP      | UMZIN                          | convers_factor_1                    | NUMERIC   | Factor for Converting Sales Units to Base Units (Target Qty)     |
| VBAP      | MEINS                          | base_unit                           | STRING    | Base Unit of Measure                                             |
| VBAP      | SMENG                          | scale_quantity                      | NUMERIC   | Scale Quantity in base unit of measure                           |
| VBAP      | ABLFZ                          | rounding_qty                        | NUMERIC   | Rounding quantity for delivery                                   |
| VBAP      | ABDAT                          | reconcil_date                       | DATE      | Reconciliation date for agreed cumulative quantity               |
| VBAP      | ABSFZ                          | absolute_deviation                  | NUMERIC   | Allowed deviation in quantity (absolute)                         |
| VBAP      | POSEX                          | po_item                             | STRING    | Item Number of the Underlying Purchase Order                     |
| VBAP      | KDMAT                          | cust_material                       | STRING    | Material Number Used by Customer                                 |
| VBAP      | KBVER                          | deviation                           | NUMERIC   | Allowed deviation in quantity (in percent)                       |
| VBAP      | KEVER                          | dev_days                            | NUMERIC   | Days by which the quantity can be shifted                        |
| VBAP      | VKGRU                          | class_of_items                      | STRING    | Repair Processing: Classification of Items                       |
| VBAP      | VKAUS                          | usage_vbap                          | STRING    | Usage Indicator                                                  |
| VBAP      | GRKOR                          | delivery_group                      | STRING    | Delivery Group (Items are delivered together)                    |
| VBAP      | FMENG                          | qty_is_fixed                        | STRING    | Quantity is fixed                                                |
| VBAP      | UEBTK                          | unlimited_tol                       | STRING    | Unlimited Overdelivery Allowed                                   |
| VBAP      | UEBTO                          | overdeliv_tol                       | NUMERIC   | Overdelivery Tolerance                                           |
| VBAP      | UNTTO                          | underdel_tol                        | NUMERIC   | Underdelivery Tolerance                                          |
| VBAP      | FAKSP                          | billing_block_vbap                  | STRING    | Billing Block for Item                                           |
| VBAP      | ATPKZ                          | replacemt_part                      | STRING    | Replacement part                                                 |
| VBAP      | RKFKF                          | bill_meth_co_ppc                    | STRING    | Method of billing for CO/PPC orders                              |
| VBAP      | SPART                          | division_vbap                       | STRING    | Division                                                         |
| VBAP      | GSBER                          | business_area_vbap                  | STRING    | Business Area                                                    |
| VBAP      | NETWR                          | net_value_vbap                      | NUMERIC   | Net Value of the Order Item in Document Currency                 |
| VBAP      | WAERK                          | doc_currency_vbap                   | STRING    | SD document currency                                             |
| VBAP      | ANTLF                          | max_part_deliv                      | NUMERIC   | Maximum Number of Partial Deliveries Allowed Per Item            |
| VBAP      | KZTLF                          | part_dlv_item                       | STRING    | Partial delivery at item level                                   |
| VBAP      | CHSPL                          | batch_split                         | STRING    | Batch split allowed                                              |
| VBAP      | KWMENG                         | order_quantity                      | NUMERIC   | Cumulative order quantity in sales units                         |
| VBAP      | LSMENG                         | required_dlvqty                     | NUMERIC   | Cumulative Required Delivery Qty (All Dlv-Relev.Sched.Lines)     |
| VBAP      | KBMENG                         | cumltvconfdqty                      | NUMERIC   | Cumulative Confirmed Quantity in Sales Unit                      |
| VBAP      | KLMENG                         | cumltvconfdqty_1                    | NUMERIC   | Cumulative Confirmed Quantity in Base Unit                       |
| VBAP      | VRKME                          | sales_unit                          | STRING    | Sales unit                                                       |
| VBAP      | UMVKZ                          | numerator                           | NUMERIC   | Numerator (factor) for conversion of sales quantity into SKU     |
| VBAP      | UMVKN                          | denominat                           | NUMERIC   | Denominator (Divisor) for Conversion of Sales Qty into SKU       |
| VBAP      | BRGEW                          | gross_weight                        | NUMERIC   | Gross Weight of the Item                                         |
| VBAP      | NTGEW                          | net_weight                          | NUMERIC   | Net Weight of the Item                                           |
| VBAP      | GEWEI                          | weight_unit                         | STRING    | Weight Unit                                                      |
| VBAP      | VOLUM                          | volume                              | NUMERIC   | Volume of the item                                               |
| VBAP      | VOLEH                          | volume_unit                         | STRING    | Volume unit                                                      |
| VBAP      | VBELV                          | originating_doc                     | STRING    | Originating Document                                             |
| VBAP      | POSNV                          | item_1                              | STRING    | Originating item                                                 |
| VBAP      | VGBEL                          | reference_doc_vbap                  | STRING    | Document number of the reference document                        |
| VBAP      | VGPOS                          | reference_item                      | STRING    | Item number of the reference item                                |
| VBAP      | VOREF                          | complete_refer                      | STRING    | Complete Reference Indicator                                     |
| VBAP      | UPFLU                          | update_doc_flow                     | STRING    | Update Indicator for Document Flow of Sales Document             |
| VBAP      | ERLRE                          | completion_rule                     | STRING    | Completion Rule for Quotation / Contract                         |
| VBAP      | LPRIO                          | delivery_prior                      | STRING    | Delivery Priority                                                |
| VBAP      | WERKS                          | plant                               | STRING    | Plant (Own or External)                                          |
| VBAP      | LGORT                          | stor_loc                            | STRING    | Storage location                                                 |
| VBAP      | VSTEL                          | shipping_point                      | STRING    | Shipping Point / Receiving Point                                 |
| VBAP      | ROUTE                          | route                               | STRING    | Route                                                            |
| VBAP      | STKEY                          | bom_origin                          | STRING    | Origin of the bill of material                                   |
| VBAP      | STDAT                          | bom_key_date                        | DATE      | Key date of the bill of material                                 |
| VBAP      | STLNR                          | bom                                 | STRING    | Bill of Material                                                 |
| VBAP      | STPOS                          | bom_item_number                     | NUMERIC   | Bill of material item number VBAP not used                       |
| VBAP      | AWAHR                          | order_probab                        | STRING    | Order Probability of the Item                                    |
| VBAP      | ERDAT                          | created_on_vbap                     | DATE      | Date on which the record was created                             |
| VBAP      | ERNAM                          | created_by_vbap                     | STRING    | Name of Person who Created the Object                            |
| VBAP      | ERZET                          | entry_time_vbap                     | TIME      | Entry time                                                       |
| VBAP      | TAXM1                          | tax_classific                       | STRING    | Tax classification material                                      |
| VBAP      | TAXM2                          | tax_classific_1                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM3                          | tax_classific_2                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM4                          | tax_classific_3                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM5                          | tax_classific_4                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM6                          | tax_classific_5                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM7                          | tax_classific_6                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM8                          | tax_classific_7                     | STRING    | Tax classification material                                      |
| VBAP      | TAXM9                          | tax_classific_8                     | STRING    | Tax classification material                                      |
| VBAP      | VBEAF                          | fixed_proc_time                     | NUMERIC   | Fixed shipping processing time in days (= setup time)            |
| VBAP      | VBEAV                          | var_proc_time                       | NUMERIC   | Variable shipping processing time in days                        |
| VBAP      | VGREF                          | preced_with_ref                     | STRING    | Preceding document has resulted from reference                   |
| VBAP      | NETPR                          | net_price                           | NUMERIC   | Net Price                                                        |
| VBAP      | KPEIN                          | pricing_unit                        | NUMERIC   | Condition Pricing Unit                                           |
| VBAP      | KMEIN                          | unit_of_measure                     | STRING    | Condition Unit                                                   |
| VBAP      | SHKZG                          | returns_item                        | STRING    | Returns Item                                                     |
| VBAP      | SKTOF                          | cash_discount                       | STRING    | Cash discount indicator                                          |
| VBAP      | MTVFP                          | avail_check                         | STRING    | Checking Group for Availability Check                            |
| VBAP      | SUMBD                          | req_mt_totals                       | STRING    | Summing up of requirements                                       |
| VBAP      | KONDM                          | mat_price_grp                       | STRING    | Material Price Group                                             |
| VBAP      | KTGRM                          | acctassmtgrpmat                     | STRING    | Account Assignment Group for Material                            |
| VBAP      | BONUS                          | vol_rebate_grp                      | STRING    | Volume rebate group                                              |
| VBAP      | PROVG                          | commission_grp                      | STRING    | Commission group                                                 |
| VBAP      | EANNR                          | ean_number                          | STRING    | European Article Number (EAN) - obsolete!!!!!                    |
| VBAP      | PRSOK                          | pricing_vbap                        | STRING    | Pricing is OK                                                    |
| VBAP      | BWTAR                          | valuation_type                      | STRING    | Valuation Type                                                   |
| VBAP      | BWTEX                          | separate_val                        | STRING    | Indicator: Separate valuation                                    |
| VBAP      | XCHPF                          | batch_mgmt_rqt                      | STRING    | Batch management requirement indicator                           |
| VBAP      | XCHAR                          | batches                             | STRING    | Batch management indicator (internal)                            |
| VBAP      | LFMNG                          | min_dely_qty                        | NUMERIC   | Minimum Delivery Quantity in Delivery Note Processing            |
| VBAP      | STAFO                          | update_group_vbap                   | STRING    | Update Group for statistics update                               |
| VBAP      | WAVWR                          | cost                                | NUMERIC   | Cost in document currency                                        |
| VBAP      | KZWI1                          | subtotal_1                          | NUMERIC   | Subtotal 1 from pricing procedure for condition                  |
| VBAP      | KZWI2                          | subtotal_2                          | NUMERIC   | Subtotal 2 from pricing procedure for condition                  |
| VBAP      | KZWI3                          | subtotal_3                          | NUMERIC   | Subtotal 3 from pricing procedure for condition                  |
| VBAP      | KZWI4                          | subtotal_4                          | NUMERIC   | Subtotal 4 from pricing procedure for condition                  |
| VBAP      | KZWI5                          | subtotal_5                          | NUMERIC   | Subtotal 5 from pricing procedure for condition                  |
| VBAP      | KZWI6                          | subtotal_6                          | NUMERIC   | Subtotal 6 from pricing procedure for condition                  |
| VBAP      | STCUR                          | exch_rate_stats                     | NUMERIC   | Exchange rate for statistics (Exch.rate at time of creation)     |
| VBAP      | AEDAT                          | changed_on_vbap                     | DATE      | Date of Last Change                                              |
| VBAP      | EAN11                          | ean_upc                             | STRING    | International Article Number (EAN/UPC)                           |
| VBAP      | FIXMG                          | fix_qty_date                        | STRING    | Delivery Date and Quantity Fixed                                 |
| VBAP      | PRCTR                          | profit_center                       | STRING    | Profit Center                                                    |
| VBAP      | MVGR1                          | materialgroup_1                     | STRING    | Material group 1                                                 |
| VBAP      | MVGR2                          | materialgroup_2                     | STRING    | Material group 2                                                 |
| VBAP      | MVGR3                          | materialgroup_3                     | STRING    | Material group 3                                                 |
| VBAP      | MVGR4                          | materialgroup_4                     | STRING    | Material group 4                                                 |
| VBAP      | MVGR5                          | materialgroup_5                     | STRING    | Material group 5                                                 |
| VBAP      | KMPMG                          | quantity                            | NUMERIC   | Component Quantity                                               |
| VBAP      | SUGRD                          | reasn                               | STRING    | Reason for material substitution                                 |
| VBAP      | SOBKZ                          | special_stock                       | STRING    | Special Stock Indicator                                          |
| VBAP      | VPZUO                          | allocation_ind                      | STRING    | Allocation Indicator                                             |
| VBAP      | PAOBJNR                        | profit_segment                      | STRING    | Profitability Segment Number (CO-PA)                             |
| VBAP      | PS_PSP_PNR                     | wbs_element_vbap                    | STRING    | Work Breakdown Structure Element (WBS Element)                   |
| VBAP      | AUFNR                          | order_number_vbap                   | STRING    | Order Number                                                     |
| VBAP      | VPMAT                          | plng_material                       | STRING    | Planning material                                                |
| VBAP      | VPWRK                          | planning_plant                      | STRING    | Planning plant                                                   |
| VBAP      | PRBME                          | prod_grp_unit                       | STRING    | Base unit of measure for product group                           |
| VBAP      | UMREF                          | conversion                          | FLOAT64   | Conversion factor: quantities                                    |
| VBAP      | KNTTP                          | acct_assgmt_cat                     | STRING    | Account Assignment Category                                      |
| VBAP      | KZVBR                          | consumption                         | STRING    | Consumption posting                                              |
| VBAP      | SERNR                          | bom_expl_number                     | STRING    | BOM explosion number                                             |
| VBAP      | OBJNR                          | objno_item                          | STRING    | Object Number at Item Level                                      |
| VBAP      | ABGRS                          | ra_key                              | STRING    | Results Analysis Key                                             |
| VBAP      | BEDAE                          | reqmts_type                         | STRING    | Requirements type                                                |
| VBAP      | CMPRE                          | credit_price                        | NUMERIC   | Item credit price                                                |
| VBAP      | CMTFG                          | partial_release                     | STRING    | ID for partial release of order item, credit block               |
| VBAP      | CMPNT                          | credit_active                       | STRING    | ID: Item with active credit function / relevant for credit       |
| VBAP      | CMKUA                          | exchange_rate                       | NUMERIC   | Credit data exchange rate for requested delivery date            |
| VBAP      | CUOBJ                          | configuration                       | STRING    | Configuration                                                    |
| VBAP      | CUOBJ_CH                       | int_object_no                       | STRING    | Internal object number of the batch classification               |
| VBAP      | CEPOK                          | expected_price                      | STRING    | Status expected price                                            |
| VBAP      | KOUPD                          | condit_update                       | STRING    | Condition Update                                                 |
| VBAP      | SERAIL                         | serialnoprofile                     | STRING    | Serial Number Profile                                            |
| VBAP      | ANZSN                          | no_serial_no                        | INT64     | Number of serial numbers                                         |
| VBAP      | NACHL                          | no_gr_posted                        | STRING    | Customer has not posted goods receipt                            |
| VBAP      | MAGRV                          | matl_grp_pckmat                     | STRING    | Material Group: Packaging Materials                              |
| VBAP      | MPROK                          | manual_price                        | STRING    | Status manual price change                                       |
| VBAP      | VGTYP                          | prec_doc_categ_vbap                 | STRING    | Document Category of Preceding SD Document                       |
| VBAP      | PROSA                          | matdetermactive                     | STRING    | ID for material determination                                    |
| VBAP      | UEPVW                          | usage_hl_item                       | STRING    | ID for higher-level item usage                                   |
| VBAP      | KALNR                          | cost_estimateno                     | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure             |
| VBAP      | KLVAR                          | costing_variant                     | STRING    | Costing Variant                                                  |
| VBAP      | SPOSN                          | item_2                              | STRING    | BOM Item Number                                                  |
| VBAP      | KOWRR                          | stat_value                          | STRING    | Statistical Values                                               |
| VBAP      | STADAT                         | statistics_date                     | DATE      | Statistics date                                                  |
| VBAP      | EXART                          | bus_trans_type                      | STRING    | Business Transaction Type                                        |
| VBAP      | PREFE                          | cus_preference                      | STRING    | Customs Preference                                               |
| VBAP      | KNUMH                          | nocondrec_batch                     | STRING    | Number of condition record from batch determination              |
| VBAP      | CLINT                          | int_class_no                        | STRING    | Internal Class Number                                            |
| VBAP      | CHMVS                          | qty_proposal                        | STRING    | Batches: Exit to quantity proposal                               |
| VBAP      | STLTY                          | bom_category                        | STRING    | BOM category                                                     |
| VBAP      | STLKN                          | item_node                           | STRING    | BOM item node number                                             |
| VBAP      | STPOZ                          | counter                             | STRING    | Internal counter                                                 |
| VBAP      | STMAN                          | inconsist_conf                      | STRING    | Inconsistent configuration                                       |
| VBAP      | ZSCHL_K                        | overhead_key                        | STRING    | Overhead key                                                     |
| VBAP      | KALSM_K                        | costing_sheet                       | STRING    | Costing Sheet                                                    |
| VBAP      | KALVAR                         | costing_variant_1                   | STRING    | Costing Variant                                                  |
| VBAP      | KOSCH                          | prod_allocation                     | STRING    | Product allocation determination procedure                       |
| VBAP      | UPMAT                          | mnitm_prrefmatl                     | STRING    | Pricing reference material of main item                          |
| VBAP      | UKONM                          | mnitem_matprcgr                     | STRING    | Material pricing group of main item                              |
| VBAP      | MFRGR                          | mat_freight_grp                     | STRING    | Material freight group                                           |
| VBAP      | PLAVO                          | plandelschedins                     | STRING    | Instruction for Planning Delivery Schedule                       |
| VBAP      | KANNR                          | sequence_number                     | STRING    | KANBAN/Sequence Number                                           |
| VBAP      | CMPRE_FLT                      | credit_price_1                      | FLOAT64   | Item Credit Price                                                |
| VBAP      | ABFOR                          | paytguarantform                     | STRING    | Form of payment guarantee                                        |
| VBAP      | ABGES                          | guaranteed                          | FLOAT64   | Guaranteed (factor between 0 and 1)                              |
| VBAP      | J_1BCFOP                       | cfop                                | STRING    | CFOP Code and Extension                                          |
| VBAP      | J_1BTAXLW1                     | icms_law                            | STRING    | Tax law: ICMS                                                    |
| VBAP      | J_1BTAXLW2                     | ipi_law                             | STRING    | Tax law: IPI                                                     |
| VBAP      | J_1BTXSDC                      | tax_code                            | STRING    | SD tax code                                                      |
| VBAP      | WKTNR                          | value_contract_no                   | STRING    | Value Contract No.                                               |
| VBAP      | WKTPS                          | val_cont_item                       | STRING    | Value Contract Item                                              |
| VBAP      | SKOPF                          | module                              | STRING    | Assortment module                                                |
| VBAP      | KZBWS                          | valuation                           | STRING    | Valuation of Special Stock                                       |
| VBAP      | WGRU1                          | matgroup_1                          | STRING    | Material group hierarchy 1                                       |
| VBAP      | WGRU2                          | matgroup_2                          | STRING    | Material group hierarchy 2                                       |
| VBAP      | KNUMA_PI                       | promotion                           | STRING    | Promotion                                                        |
| VBAP      | KNUMA_AG                       | sales_deal                          | STRING    | Sales deal                                                       |
| VBAP      | KZFME                          | leading_uom                         | STRING    | ID: Leading unit of measure for completing a transaction         |
| VBAP      | LSTANR                         | freegoods_delycontrl                | STRING    | Free goods delivery control                                      |
| VBAP      | TECHS                          | standardvariant                     | STRING    | Parameter Variant/Standard Variant                               |
| VBAP      | MWSBP                          | tax_amount                          | NUMERIC   | Tax amount in document currency                                  |
| VBAP      | BERID                          | mrp_area                            | STRING    | MRP Area                                                         |
| VBAP      | PCTRF                          | profit_ctr_bill                     | STRING    | Profit Center for Billing                                        |
| VBAP      | LOGSYS_EXT                     | logical_system_vbap                 | STRING    | Logical system                                                   |
| VBAP      | J_1BTAXLW3                     | iss_law                             | STRING    | ISS Tax Law                                                      |
| VBAP      | J_1BTAXLW4                     | cofins_law                          | STRING    | COFINS Tax Law                                                   |
| VBAP      | J_1BTAXLW5                     | pis_law                             | STRING    | PIS Tax Law                                                      |
| VBAP      | STOCKLOC                       | location                            | STRING    | First Inventory-Managing Location                                |
| VBAP      | SLOCTYPE                       | location_type                       | STRING    | Type of First Inventory-Managing Location                        |
| VBAP      | MSR_RET_REASON                 | return_reason                       | STRING    | Return Reason                                                    |
| VBAP      | MSR_REFUND_CODE                | refund_code                         | STRING    | Returns Refund Code                                              |
| VBAP      | MSR_APPROV_BLOCK               | approval                            | STRING    | Approval Block                                                   |
| VBAP      | NRAB_KNUMH                     | cond_record_no                      | STRING    | Number of the Condition Record                                   |
| VBAP      | TRMRISK_RELEVANT               | risk_relevancy                      | STRING    | Risk Relevancy in Sales                                          |
| VBAP      | SGT_RCAT                       | reqmnt_segment                      | STRING    | Requirement Segment                                              |
| VBAP      | VBKD_POSNR                     | item_3                              | STRING    | Sales Document Item                                              |
| VBAP      | VEDA_POSNR                     | item_4                              | STRING    | Sales Document Item                                              |
| VBAP      | HANDOVERLOC                    | handover_location_vbap              | STRING    | Location for a physical handover of goods                        |
| VBAP      | EXT_REF_ITEM_ID                | external_item_id                    | STRING    | External Item ID                                                 |
| VBAP      | HANDOVERDATE                   | handover_date                       | DATE      | Handover Date at the Handover Location                           |
| VBAP      | HANDOVERTIME                   | handover_time                       | TIME      | Handover time at the handover location                           |
| VBAP      | TC_AUT_DET                     | tc_auto_det                         | STRING    | Tax Code Automatically Determined                                |
| VBAP      | MANUAL_TC_REASON               | man_tc_reason                       | STRING    | Manual Tax Code Reason                                           |
| VBAP      | FISCAL_INCENTIVE               | tax_incent_type                     | STRING    | Tax Incentive Type                                               |
| VBAP      | TAX_SUBJECT_ST                 | tax_subj_to_st                      | STRING    | Tax Subject to Substituição Tributária                           |
| VBAP      | FISCAL_INCENTIVE_ID            | incentive_id                        | STRING    | Incentive ID                                                     |
| VBAP      | SPCSTO                         | nf_special_case                     | STRING    | Nota Fiscal Special Case for CFOP Determination                  |
| VBAP      | REVACC_REFID                   | rev_acc_ref_id                      | STRING    | Revenue Accounting: Reference ID                                 |
| VBAP      | REVACC_REFTYPE                 | rev_acc_ref_type                    | STRING    | Revenue Accounting: Reference Type                               |
| VBAP      | _DATAAGING                     | data_filter_value_for_data_agi_vbap | DATE      | Data Filter Value for Data Aging                                 |
| VBAP      | ABSTA                          | rejection_sts_vbap                  | STRING    | Rejection Status (Item)                                          |
| VBAP      | BESTA                          | confirmed_vbap                      | STRING    | Confirmation Status (Item)                                       |
| VBAP      | CMPPI                          | financial_doc_vbap                  | STRING    | Status of Credit Check Against Financial Document                |
| VBAP      | CMPPJ                          | exptcreditinsur_vbap                | STRING    | Status of Credit Check Against Export Credit Insurance           |
| VBAP      | COSTA                          | confirm_status_vbap                 | STRING    | Confirmation Status for ALE                                      |
| VBAP      | DCSTA                          | delay_status_vbap                   | STRING    | Delay Status (Item)                                              |
| VBAP      | FKSAA                          | billing_status                      | STRING    | Order-Related Billing Status (Item)                              |
| VBAP      | FSSTA                          | billg_block_sts                     | STRING    | Billing Block Status (Item)                                      |
| VBAP      | GBSTA                          | overall_status_vbap                 | STRING    | Overall Processing Status (Item)                                 |
| VBAP      | LFGSA                          | ovrl_delvry_sts_vbap                | STRING    | Overall Delivery Status (Item)                                   |
| VBAP      | LFSTA                          | delivery_status_vbap                | STRING    | Delivery Status (Item)                                           |
| VBAP      | LSSTA                          | dlv_blk_status_vbap                 | STRING    | Overall Delivery Block Status (Item)                             |
| VBAP      | MANEK                          | manual_completion_vbap              | STRING    | Manual Completion of Contract                                    |
| VBAP      | RFGSA                          | reference_stat                      | STRING    | Overall Reference Status (Item)                                  |
| VBAP      | RFSTA                          | reference_sts                       | STRING    | Reference Status (Item)                                          |
| VBAP      | UVALL                          | item_5                              | STRING    | Incompletion Status (Item)                                       |
| VBAP      | UVFAK                          | item_bill_data_vbap                 | STRING    | Billing Incompletion Status (Item)                               |
| VBAP      | UVPRS                          | pricing_1                           | STRING    | Pricing Incompletion Status (Item)                               |
| VBAP      | UVVLK                          | item_deliv_data_vbap                | STRING    | Delivery Incompletion Status (Item)                              |
| VBAP      | UVP01                          | item_reserves_1                     | STRING    | Customer reserves 1: Item status                                 |
| VBAP      | UVP02                          | item_reserves_2                     | STRING    | Customer reserves 2: Item status                                 |
| VBAP      | UVP03                          | item_reserves_3                     | STRING    | Item reserves 3: Item status                                     |
| VBAP      | UVP04                          | item_reserves_4                     | STRING    | Item reserves 4: Item status                                     |
| VBAP      | UVP05                          | item_reserves_5                     | STRING    | Customer reserves 5: Item status                                 |
| VBAP      | WBSTA                          | goodsmovementst                     | STRING    | Goods Movement Status                                            |
| VBAP      | EMCST                          | embargo_status_vbap                 | STRING    | Embargo Check Status (Item)                                      |
| VBAP      | SLCST                          | wls_status                          | STRING    | Watch List Screening Check Status                                |
| VBAP      | TOTAL_LCCST                    | total_legal_status_vbap             | STRING    | Legal Control Status                                             |
| VBAP      | PCSTA                          | prod_marktablty_sts_vbap            | STRING    | Product Marketability Check Status (Item)                        |
| VBAP      | DGSTA                          | dangerous_goods_sts_vbap            | STRING    | Dangerous Goods Check Status (Item)                              |
| VBAP      | SDSSTA                         | sfty_data_sheet_sts_vbap            | STRING    | Safety Data Sheet Check Status (Item)                            |
| VBAP      | DP_CLEAR_STA_ITM               | down_payment_status_vbap            | STRING    | Down Payment Status                                              |
| VBAP      | CMTD_DELIV_DATE                | committed_deliv_date                | DATE      | Delivery Date that the Supplier Has Committed To                 |
| VBAP      | CMTD_DELIV_CREADATE            | cmtd_deliv_crtn_date                | DATE      | Deliv. Creation Date in Order to Meet Committed Deliv. Date      |
| VBAP      | CMTD_DELIV_QTY_SU              | cmtd_delivery_qty                   | NUMERIC   | Committed Delivery Quantity in Sales Unit                        |
| VBAP      | REQQTY_BU                      | requ_salesorder_qty                 | NUMERIC   | Requested Order Quantity in Base Unit                            |
| VBAP      | HANDLE                         | guid_16                             | STRING    | GUID in CHAR Format in Uppercase                                 |
| VBAP      | PBS_STATE                      | pbs_state                           | STRING    | State of Project-Based Service                                   |
| VBAP      | IFRS15_RELEVANCE               | ifrs_15_relevant                    | STRING    | Item is relevant for IFRS 15                                     |
| VBAP      | IFRS15_TOTAL_SSP               | ssp                                 | NUMERIC   | IFRS 15: Standalone Selling Price                                |
| VBAP      | REVFP                          | availcheck_rule                     | STRING    | Rule for transferring the results of the availability check      |
| VBAP      | CAPPED_NET_AMOUNT              | net_amount_cap                      | NUMERIC   | Net Amount Cap                                                   |
| VBAP      | CAPPED_NET_AMOUNT_ALERT_THLD   | cap_notif_threshold                 | STRING    | Notification Threshold (in Pct) for Exceeded Net Amount Cap      |
| VBAP      | CATS_OVERTIME_CATEGORY         | overtime_category                   | STRING    | Overtime Category                                                |
| VBAP      | SESSION_CREATION_DATE          | session_created_on                  | DATE      | Date of the Session During Which the Record Was Created          |
| VBAP      | SESSION_CREATION_TIME          | session_created_at                  | TIME      | Time of the Session During Which the Record Was Created          |
| VBAP      | ORIGINAL_PLANT                 | original_plant                      | STRING    | Original Plant in Plant Substitution                             |
| VBAP      | ATP_ABC_SUBSTITUTION_STATUS    | sub_status                          | STRING    | Substitution Status for Alternative-Based Confirmation (ABC)     |
| VBAP      | DUMMY_SLSDOCITEM_INCL_EEW_PS   | dummy_function_in_length_1_vbap     | STRING    | Dummy function in length 1                                       |
| VBAP      | PO_QUAN                        | po_quantity                         | NUMERIC   | Purchase Order Quantity                                          |
| VBAP      | PO_UNIT                        | order_unit                          | STRING    | Purchase Order Unit of Measure                                   |
| VBAP      | MILL_SE_GPOSN                  | global_item                         | STRING    | Global Item                                                      |
| VBAP      | MILL_BATCH_SEL_F               | mill_bselind                        | STRING    | Control of Batch Selection                                       |
| VBAP      | CPD_UPDAT                      | time_stamp_vbap                     | NUMERIC   | Time Stamp                                                       |
| VBAP      | ZAPCGKI                        | annexing_package_vbap               | STRING    | Annexing package key                                             |
| VBAP      | APCGK_EXTENDI                  | ann_package_extend_vbap             | STRING    | Extended key for annexing package                                |
| VBAP      | ZABDATI                        | annexing_base_date_vbap             | DATE      | Annexing base date                                               |
| VBAP      | AUFPL_OLC                      | plan_no_f_oper                      | STRING    | Routing number of operations in the order                        |
| VBAP      | APLZL_OLC                      | counter_1                           | STRING    | Internal counter                                                 |
| VBAP      | AD01PROFNR                     | dip_profile                         | STRING    | Dynamic Item Processor Profile                                   |
| VBAP      | ADMOI                          | model_id_code                       | STRING    | Model ID Code                                                    |
| VBAP      | ADICC                          | interchang_code                     | STRING    | Interchangeability Code                                          |
| VBAP      | ADPRI                          | order_priority                      | STRING    | Order Priority                                                   |
| VBAP      | ADDNS                          | donotsub                            | STRING    | Do Not Substitute                                                |
| VBAP      | ADACN                          | aircraftreg_no                      | STRING    | Aircraft registration number                                     |
| VBAP      | LABSG                          | fcstdelsched_edi_ind                | STRING    | Indicator for Inbound Forecast and JIT Delivery Schedules        |
| VBAP      | FABSG                          | jitdschdedi_ind                     | STRING    | Indicator for Inbound Forecast Delivery Schedule Headers         |
| VBAP      | PR_L_L                         | comp_fctds_fctds                    | STRING    | Profile for Comparison of Frcst.DelSched with Frcst.DelSched     |
| VBAP      | PR_F_F                         | comp_jitds_jitds                    | STRING    | Profile for Comparison of JIT Del.Sched. with JIT Del.Sched.     |
| VBAP      | PR_F_L                         | comp_jitds_fcstds                   | STRING    | Profile for Comp. of JIT Del.Sched. with Forecast Del.Sched.     |
| VBAP      | FERC_IND                       | reg_indicator                       | STRING    | Regulatory indicator                                             |
| VBAP      | FSH_SEASON_YEAR                | season_year                         | STRING    | Season Year                                                      |
| VBAP      | FSH_SEASON                     | season                              | STRING    | Season                                                           |
| VBAP      | FSH_COLLECTION                 | collection                          | STRING    | Fashion Collection                                               |
| VBAP      | FSH_THEME                      | theme                               | STRING    | Fashion Theme                                                    |
| VBAP      | FSH_CRSD                       | cond_record_no_1                    | STRING    | Condition Record Number for Seasons                              |
| VBAP      | FSH_SEAREF                     | copied_season                       | STRING    | Season Determined from Reference Document                        |
| VBAP      | FSH_CANDATE                    | cancel_date_vbap                    | DATE      | Cancellation Date                                                |
| VBAP      | FSH_PSM_PFM_SPLIT              | split_id                            | STRING    | PSM and PFM Split ID                                             |
| VBAP      | FSH_VAS_REL                    | vas_relevant                        | STRING    | VAS Relevant                                                     |
| VBAP      | FSH_VAS_PRNT_ID                | item_6                              | STRING    | Item number of the SD document                                   |
| VBAP      | FSH_TRANSACTION                | transaction_number_vbap             | STRING    | Transaction Number                                               |
| VBAP      | FSH_ITEM_GROUP                 | item_group                          | STRING    | Item Group                                                       |
| VBAP      | FSH_ITEM                       | item_number                         | STRING    | Item Number                                                      |
| VBAP      | FSH_VASREF                     | copied_vas_data                     | STRING    | VAS Determined from Reference Document                           |
| VBAP      | FSH_GRID_COND_REC              | record_num                          | STRING    | Grid Condition Record Number                                     |
| VBAP      | FSH_PQR_UEPOS                  | higher_lev_item_pqr                 | STRING    | Higher-level item in Partial Quantity Rejection                  |
| VBAP      | RFM_SCC_INDICATOR              | season_comp_ind                     | STRING    | Season Completeness Indicator                                    |
| VBAP      | KOSTL                          | cost_center_vbap                    | STRING    | Cost Center                                                      |
| VBAP      | FONDS                          | fund                                | STRING    | Fund                                                             |
| VBAP      | FISTL                          | funds_center                        | STRING    | Funds Center                                                     |
| VBAP      | FKBER                          | functional_area                     | STRING    | Functional Area                                                  |
| VBAP      | GRANT_NBR                      | grant_vbap                          | STRING    | Grant                                                            |
| VBAP      | BUDGET_PD                      | budget_period                       | STRING    | Budget Period                                                    |
| VBAP      | IUID_RELEVANT                  | iuid_cust_rel                       | STRING    | IUID Relevant for Customer                                       |
| VBAP      | EQUNR                          | equipment                           | STRING    | Equipment Number                                                 |
| VBAP      | EQART                          | object_type                         | STRING    | Type of Technical Object                                         |
| VBAP      | J_3GLVART                      | activity_type                       | STRING    | Activity Type                                                    |
| VBAP      | J_3GDATVO                      | from_date                           | DATE      | From Date                                                        |
| VBAP      | J_3GDATBI                      | to_date                             | DATE      | To Date                                                          |
| VBAP      | J_3GBELNRI                     | document_number                     | STRING    | Document Number                                                  |
| VBAP      | J_3GPOSNRI                     | item_number_1                       | STRING    | Document Item                                                    |
| VBAP      | PRS_OBJNR                      | eng_mgmt_object_nr                  | STRING    | Engagement mgmt: Object number                                   |
| VBAP      | PRS_SD_SPSNR                   | std_wbs_element                     | STRING    | Standard WBS Element for Project Inception via SD                |
| VBAP      | PRS_WORK_PERIOD                | work_period                         | STRING    | Work Period (Internal Representation)                            |
| VBAP      | TAS                            | treasury_account_sym_vbap           | STRING    | Treasury Account Symbol                                          |
| VBAP      | BETC                           | business_evt_typ_cd_vbap            | STRING    | Business Event Type Code                                         |
| VBAP      | MOD_ALLOW                      | modification_allowed_vbap           | STRING    | Modification Allowed                                             |
| VBAP      | CANCEL_ALLOW                   | cancellation_allowed_vbap           | STRING    | Cancellation Allowed                                             |
| VBAP      | PAY_METHOD                     | payment_methods_vbap                | STRING    | List of Respected Payment Methods                                |
| VBAP      | BPN                            | business_partner_no_vbap            | STRING    | Business Partner Number                                          |
| VBAP      | REP_FREQ                       | reporting_frequency_vbap            | STRING    | Reporting Frequency                                              |
| VBAP      | FMFGUS_KEY                     | us_govt                             | STRING    | United States Federal Government Fields                          |
| VBAP      | RFM_PSST_RULE                  | psst_grouping_rule                  | STRING    | PSST Grouping Rule                                               |
| VBAP      | RFM_PSST_GROUP                 | psst_group                          | STRING    | PSST Group                                                       |
| VBAP      | PARGB                          | trdg_part_ba                        | STRING    | Trading partners business area                                   |
| VBAP      | AUFPL_OAA                      | plan_no_f_oper_1                    | STRING    | Routing number of operations in the order                        |
| VBAP      | APLZL_OAA                      | counter_2                           | STRING    | Internal counter                                                 |
| VBAP      | VLCENDCU                       | end_customer                        | STRING    | End Customer (Central Business Partner)                          |
| VBAP      | WRF_CHARSTC1                   | characteristic_1                    | STRING    | Characteristic Value 1                                           |
| VBAP      | WRF_CHARSTC2                   | characteristic_2                    | STRING    | Characteristic Value 2                                           |
| VBAP      | WRF_CHARSTC3                   | characteristic_3                    | STRING    | Characteristic Value 3                                           |
| VBAP      | ARSNUM                         | reservation_number                  | STRING    | Number of reservation/dependent requirements                     |
| VBAP      | ARSPOS                         | item_no                             | STRING    | Item number of reservation/dependent requirements                |
| VBAP      | WTYSC_CLMITEM                  | claim_item_no                       | STRING    | Claim item number                                                |
| VBEP      | VBELN                          | sales_document_vbep                 | STRING    | Sales Document                                                   |
| VBEP      | POSNR                          | item_vbep                           | STRING    | Sales Document Item                                              |
| VBEP      | ETTYP                          | sched_line_cat                      | STRING    | Schedule line category                                           |
| VBEP      | LFREL                          | item_rel_f_dlv                      | STRING    | Item is relevant for delivery                                    |
| VBEP      | EDATU                          | delivery_date                       | DATE      | Schedule line date                                               |
| VBEP      | EZEIT                          | arrival_time                        | TIME      | Arrival time                                                     |
| VBEP      | WMENG                          | order_quantity_vbep                 | NUMERIC   | Order Quantity in Sales Units                                    |
| VBEP      | BMENG                          | confirmed_qty                       | NUMERIC   | Confirmed Quantity                                               |
| VBEP      | VRKME                          | sales_unit_vbep                     | STRING    | Sales unit                                                       |
| VBEP      | LMENG                          | required_qty                        | NUMERIC   | Required quantity for mat.management in stockkeeping units       |
| VBEP      | MEINS                          | base_unit_vbep                      | STRING    | Base Unit of Measure                                             |
| VBEP      | BDDAT                          | requirement_dte                     | DATE      | Requirement date (deadline for procurement)                      |
| VBEP      | BDART                          | requirementtype                     | STRING    | Requirement type                                                 |
| VBEP      | PLART                          | planning_type                       | STRING    | Planning type                                                    |
| VBEP      | VBELE                          | business_docum                      | STRING    | Business document number                                         |
| VBEP      | POSNE                          | items                               | STRING    | Business item number                                             |
| VBEP      | ETENE                          | schedule_line_1                     | STRING    | Schedule line                                                    |
| VBEP      | RSDAT                          | reservation_number_vbep             | DATE      | Earliest possible reservation date                               |
| VBEP      | IDNNR                          | maintenance_req                     | STRING    | Maintenance request                                              |
| VBEP      | BANFN                          | purchase_req                        | STRING    | Purchase Requisition Number                                      |
| VBEP      | BSART                          | order_type                          | STRING    | Order Type (Purchasing)                                          |
| VBEP      | BSTYP                          | doc_category                        | STRING    | Purchasing Document Category                                     |
| VBEP      | WEPOS                          | confirm_status_vbep                 | STRING    | Confirmation status of schedule line (incl.ALE)                  |
| VBEP      | REPOS                          | invoice_receipt                     | STRING    | Invoice receipt indicator                                        |
| VBEP      | LRGDT                          | returnpackaging                     | DATE      | Return date for returnable packaging                             |
| VBEP      | PRGRS                          | date_type                           | STRING    | Date type (day, week, month, interval)                           |
| VBEP      | TDDAT                          | transpplngdate                      | DATE      | Transportation Planning Date                                     |
| VBEP      | MBDAT                          | mat_avail_date_vbep                 | DATE      | Material Staging/Availability Date                               |
| VBEP      | LDDAT                          | loading_date                        | DATE      | Loading Date                                                     |
| VBEP      | WADAT                          | goods_issue                         | DATE      | Goods Issue Date                                                 |
| VBEP      | CMENG                          | corr_qty                            | NUMERIC   | Corrected quantity in sales unit                                 |
| VBEP      | LIFSP                          | delivery_block_vbep                 | STRING    | Schedule Line Blocked for Delivery                               |
| VBEP      | GRSTR                          | group_definition_of_structure       | STRING    | Group definition of structure data                               |
| VBEP      | ABART                          | release_type                        | STRING    | Release type                                                     |
| VBEP      | ABRUF                          | f_dlv_sched                         | STRING    | Forecast Delivery schedule number                                |
| VBEP      | ROMS1                          | committed_qty                       | NUMERIC   | Committed quantity                                               |
| VBEP      | ROMS2                          | size_2                              | NUMERIC   | Size 2                                                           |
| VBEP      | ROMS3                          | size_3                              | NUMERIC   | Size 3                                                           |
| VBEP      | ROMEI                          | size_unit                           | STRING    | Unit of measure for sizes 1 to 3                                 |
| VBEP      | RFORM                          | formula_key                         | STRING    | Formula Key for Variable-Size Items                              |
| VBEP      | UMVKZ                          | numerator_vbep                      | NUMERIC   | Numerator (factor) for conversion of sales quantity into SKU     |
| VBEP      | UMVKN                          | denominat_vbep                      | NUMERIC   | Denominator (Divisor) for Conversion of Sales Qty into SKU       |
| VBEP      | VERFP                          | avail_confirm                       | STRING    | Availability confirmed automatically                             |
| VBEP      | BWART                          | movement_type                       | STRING    | Movement type (inventory management)                             |
| VBEP      | BNFPO                          | requisn_item                        | STRING    | Item number of purchase requisition                              |
| VBEP      | ETART                          | sched_line_type                     | STRING    | Schedule line type EDI                                           |
| VBEP      | AUFNR                          | order_number_vbep                   | STRING    | Order Number                                                     |
| VBEP      | PLNUM                          | planned_order                       | STRING    | Planned Order                                                    |
| VBEP      | SERNR                          | bom_expl_number_vbep                | STRING    | BOM explosion number                                             |
| VBEP      | AESKD                          | engin_change                        | STRING    | Customer Engineering Change Status                               |
| VBEP      | ABGES                          | guaranteed_vbep                     | FLOAT64   | Guaranteed (factor between 0 and 1)                              |
| VBEP      | MBUHR                          | matl_staging_tme                    | TIME      | Material Staging Time (Local, Relating to a Plant)               |
| VBEP      | TDUHR                          | tr_plan_time                        | TIME      | Transp. Planning Time (Local, Relating to a Shipping Point)      |
| VBEP      | LDUHR                          | loading_time                        | TIME      | Loading Time (Local Time Relating to a Shipping Point)           |
| VBEP      | WAUHR                          | gi_time                             | TIME      | Time of Goods Issue (Local, Relating to a Plant)                 |
| VBEP      | AULWE                          | route_schedule                      | STRING    | Route Schedule                                                   |
| VBEP      | HANDOVERDATE                   | handover_date_vbep                  | DATE      | Handover Date at the Handover Location                           |
| VBEP      | HANDOVERTIME                   | handover_time_vbep                  | TIME      | Handover time at the handover location                           |
| VBEP      | DLVQTY_BU                      | delivered_qty                       | NUMERIC   | Delivered Quantity                                               |
| VBEP      | DLVQTY_SU                      | delivered_qty_1                     | NUMERIC   | Delivered Quantity                                               |
| VBEP      | OCDQTY_BU                      | open_quantity                       | NUMERIC   | Open Confirmed Delivery Quantity                                 |
| VBEP      | OCDQTY_SU                      | open_quantity_1                     | NUMERIC   | Open Confirmed Delivery Quantity                                 |
| VBEP      | ORDQTY_BU                      | open_quantity_2                     | NUMERIC   | Open requested Delivery Quantity                                 |
| VBEP      | ORDQTY_SU                      | open_quantity_3                     | NUMERIC   | Open requested Delivery Quantity                                 |
| VBEP      | CREA_DLVDATE                   | delivery_date_1                     | DATE      | Delivery Creation Date                                           |
| VBEP      | REQ_DLVDATE                    | delivery_date_2                     | DATE      | Schedule line date                                               |
| VBEP      | BEDAR                          | reqmts_class                        | STRING    | Requirements class                                               |
| VBEP      | _DATAAGING                     | data_filter_value_for_data_agi_vbep | DATE      | Data Filter Value for Data Aging                                 |
| VBEP      | WAERK                          | doc_currency_vbep                   | STRING    | SD document currency                                             |
| VBEP      | ODN_AMOUNT                     | open_delivery_amount                | NUMERIC   | Open Delivery Net Amount (in Sales Document Currency)            |
| VBEP      | HANDLE                         | guid_16_vbep                        | BYTES     | GUID in RAW format                                               |
| VBEP      | LCCST                          | legal_status                        | STRING    | Legal Control Check Status                                       |
| VBEP      | RRQQTY_BU                      | reqd_rqmt_qty                       | NUMERIC   | Requested Requirement Quantity in Base Unit                      |
| VBEP      | CRQQTY_BU                      | confd_rqmt_qty                      | NUMERIC   | Confirmed Requirement Quantity in Base Unit                      |
| VBEP      | DUMMY_SLSDOCSCHEDL_INCL_EEW_PS | dummy_function_in_length_1_vbep     | STRING    | Dummy function in length 1                                       |
| VBEP      | FSH_RALLOC_QTY                 | alloc_qty                           | NUMERIC   | ARun Requirement Allocated Quantity                              |
| VBEP      | FSH_OS_ID                      | order_sch_gr_id                     | STRING    | Order Scheduling Group ID                                        |
| VBEP      | FSH_PQR_RC                     | rejection_code                      | STRING    | Rejection Code for Partial Quantity Rejection                    |
| VBEP      | MBDAT_DRS                      | mat_av_date_tpp                     | DATE      | Material Availability Date Third-Party Order Planning            |
|           |                                | finalmd5key                         | STRING    | MD5 key combining all columns                                    |
|           |                                | input_last_update_date              | DATETIME  | Last Input read time                                             |
|           |                                | dw_active_indicator                 | STRING    | Valid Indicator                                                  |
|           |                                | dw_start_date                       | DATETIME  | Record start date                                                |
|           |                                | dw_end_date                         | DATETIME  | Record end date                                                  |
|           |                                | dw_last_update_date                 | DATETIME  | Record Inserted/Updated date)                                    |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms


