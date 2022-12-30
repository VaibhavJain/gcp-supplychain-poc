
## Table Name : delivery_fact

| sap_table | sap_column                 | column_name                         | data_type | description                                                  |
|-----------|----------------------------|-------------------------------------|-----------|--------------------------------------------------------------|
|           |                            | delivery_uuid                       | STRING    | Universal unique id                                          |
|           |                            | delivery_key                        | STRING    | Delivery Key                                                 |
| LIKP      | MANDT                      | client                              | STRING    | Client                                                       |
| LIKP      | VBELN                      | delivery                            | STRING    | Delivery                                                     |
| LIPS      | POSNR                      | item                                | STRING    | Delivery Item                                                |
|           |                            | material_uuid                       | STRING    | Material Dimension Unique Generated Id                       |
|           |                            | material_key                        | STRING    | Material key from Material Dimension                         |
|           |                            | supplier_uuid                       | STRING    | Supplier Dimension Unique Generated Id                       |
|           |                            | supplier_key                        | STRING    | Supplier key from Supplier Dimension                         |
|           |                            | plant_uuid                          | STRING    | Plant Dimension Unique Generated Id                          |
|           |                            | plant_key                           | STRING    | Plant key from Plant Dimension                               |
|           |                            | customer_uuid                       | STRING    | Customer Dimension Unique Generated Id                       |
|           |                            | customer_key                        | STRING    | Customer Key from Customer Dimension                         |
|           |                            | customer_sales_org_uuid             | STRING    | Customer Sales Org Dimension Unique Generated Id             |
|           |                            | customer_sales_org_key              | STRING    | Customer Sales Org Key from Customer Sales Org Dimension     |
|           |                            | storage_location_uuid               | STRING    | Storage location Dimension Unique Generated Id               |
|           |                            | storage_location_key                | STRING    | Storage location key from Storage location Dimension         |
|           |                            | shipping_point_uuid                 | STRING    | Shipping Point Dimension Unique Generated Id                 |
|           |                            | shipping_point_key                  | STRING    | Shipping point key from Shipping Point Dimension             |
| LIKP      | ERNAM                      | created_by                          | STRING    | Name of Person who Created the Object                        |
| LIKP      | ERZET                      | entry_time                          | TIME      | Entry time                                                   |
| LIKP      | ERDAT                      | created_on                          | DATE      | Date on which the record was created                         |
| LIKP      | BZIRK                      | sales_district                      | STRING    | Sales District                                               |
| LIKP      | VSTEL                      | shipping_point                      | STRING    | Shipping Point / Receiving Point                             |
| LIKP      | VKORG                      | sales_org                           | STRING    | Sales Organization                                           |
| LIKP      | LFART                      | delivery_type                       | STRING    | Delivery Type                                                |
| LIKP      | AUTLF                      | complete_dlv                        | STRING    | Complete Delivery Defined for Each Sales Order?              |
| LIKP      | KZAZU                      | order_combinat                      | STRING    | Order Combination Indicator                                  |
| LIKP      | WADAT                      | planned_gds_mvmt                    | DATE      | Planned Goods Movement Date                                  |
| LIKP      | LDDAT                      | loading_date                        | DATE      | Loading Date                                                 |
| LIKP      | TDDAT                      | transpplngdate                      | DATE      | Transportation Planning Date                                 |
| LIKP      | LFDAT                      | delivery_date                       | DATE      | Delivery Date                                                |
| LIKP      | KODAT                      | pick_date                           | DATE      | Picking Date                                                 |
| LIKP      | ABLAD                      | unloading_point                     | STRING    | Unloading Point                                              |
| LIKP      | INCO1                      | incoterms                           | STRING    | Incoterms (Part 1)                                           |
| LIKP      | INCO2                      | incoterms_2                         | STRING    | Incoterms (Part 2)                                           |
| LIKP      | EXPKZ                      | export_indicator                    | STRING    | Export indicator                                             |
| LIKP      | ROUTE                      | route                               | STRING    | Route                                                        |
| LIKP      | FAKSK                      | billing_block                       | STRING    | Billing Block in SD Document                                 |
| LIKP      | LIFSK                      | delivery_block                      | STRING    | Delivery Block (Document Header)                             |
| LIKP      | VBTYP                      | document_cat                        | STRING    | SD Document Category                                         |
| LIKP      | KNFAK                      | factorycalendar                     | STRING    | Customer Factory Calendar                                    |
| LIKP      | TPQUA                      | means_transp_qual                   | STRING    | not currently in use                                         |
| LIKP      | TPGRP                      | means_of_transp_grp                 | STRING    | not currently in use                                         |
| LIKP      | LPRIO                      | delivery_prior                      | STRING    | Delivery Priority                                            |
| LIKP      | VSBED                      | shp_cond                            | STRING    | Shipping Conditions                                          |
| LIKP      | KUNNR                      | ship_to_party                       | STRING    | Ship-to party                                                |
| LIKP      | KUNAG                      | sold_to_party                       | STRING    | Sold-To Party                                                |
| LIKP      | KDGRP                      | customer_group                      | STRING    | Customer Group                                               |
| LIKP      | STZKL                      | wait_time_class                     | NUMERIC   | Not Currently in Use                                         |
| LIKP      | STZZU                      | wait_time_surcharge                 | NUMERIC   | not currently in use                                         |
| LIKP      | BTGEW                      | total_weight                        | NUMERIC   | Total Weight                                                 |
| LIKP      | NTGEW                      | net_weight                          | NUMERIC   | Net weight                                                   |
| LIKP      | GEWEI                      | weight_unit                         | STRING    | Weight Unit                                                  |
| LIKP      | VOLUM                      | volume                              | NUMERIC   | Volume                                                       |
| LIKP      | VOLEH                      | volume_unit                         | STRING    | Volume unit                                                  |
| LIKP      | ANZPK                      | no_of_packages                      | STRING    | Total Number of Packages in Delivery                         |
| LIKP      | BEROT                      | pickeditmlocat                      | STRING    | Picked Items Location                                        |
| LIKP      | LFUHR                      | timeofdelivery                      | TIME      | Time of delivery                                             |
| LIKP      | GRULG                      | weight_group                        | STRING    | Weight Group for Delivery                                    |
| LIKP      | LSTEL                      | loading_point                       | STRING    | Loading Point                                                |
| LIKP      | TRAGR                      | trans_group                         | STRING    | Transportation Group                                         |
| LIKP      | FKARV                      | dlvbillingtype                      | STRING    | Proposed billing type for a delivery-related billing doc.    |
| LIKP      | FKDAT                      | billing_date                        | DATE      | Billing Date                                                 |
| LIKP      | PERFK                      | invoicing_dates                     | STRING    | Invoice Dates (Calendar Identification)                      |
| LIKP      | ROUTA                      | route_1                             | STRING    | Route                                                        |
| LIKP      | STAFO                      | update_group                        | STRING    | Update Group for statistics update                           |
| LIKP      | KALSM                      | procedure_pricing                   | STRING    | Procedure (Pricing, Output Control, Acct. Det., Costing,...) |
| LIKP      | KNUMV                      | doc_condition                       | STRING    | Number of the Document Condition                             |
| LIKP      | WAERK                      | doc_currency                        | STRING    | SD document currency                                         |
| LIKP      | VKBUR                      | sales_office                        | STRING    | Sales office                                                 |
| LIKP      | VBEAK                      | total_proc_time                     | NUMERIC   | Shipping processing time for the entire document             |
| LIKP      | ZUKRL                      | comb_criteria                       | STRING    | Combination criteria for delivery                            |
| LIKP      | VERUR                      | original_doc                        | STRING    | Distribution delivery                                        |
| LIKP      | COMMN                      | communicationno                     | STRING    | Communication number for Q-API interface                     |
| LIKP      | STWAE                      | stats_currency                      | STRING    | Statistics Currency                                          |
| LIKP      | STCUR                      | exch_rate_stats                     | NUMERIC   | Exchange rate for statistics                                 |
| LIKP      | EXNUM                      | foreign_trade_datanr                | STRING    | Number of foreign trade data in MM and SD documents          |
| LIKP      | AENAM                      | changed_by                          | STRING    | Name of person who changed object                            |
| LIKP      | AEDAT                      | changed_on                          | DATE      | Date of Last Change                                          |
| LIKP      | LGNUM                      | warehouse_no                        | STRING    | Warehouse Number / Warehouse Complex                         |
| LIKP      | LISPL                      | id_delivery_split                   | STRING    | Delivery Within one Warehouse                                |
| LIKP      | VKOIV                      | sales_org_icb                       | STRING    | Sales Organization for Intercompany Billing                  |
| LIKP      | VTWIV                      | distrib_channel                     | STRING    | Distribution channel for intercompany billing                |
| LIKP      | SPAIV                      | div_iv                              | STRING    | Division for intercompany billing                            |
| LIKP      | FKAIV                      | intercobilltype                     | STRING    | Billing type for intercompany billing                        |
| LIKP      | PIOIV                      | billing_date_1                      | STRING    | Date for intercompany billing                                |
| LIKP      | FKDIV                      | billing_date_2                      | DATE      | Billing Date for Intercompany Billing                        |
| LIKP      | KUNIV                      | cust_inter_co                       | STRING    | Customer number for intercompany billing                     |
| LIKP      | KKBER                      | cred_contr_area                     | STRING    | Credit control area                                          |
| LIKP      | KNKLI                      | credit_account                      | STRING    | Customers Account Number with Credit Limit Reference         |
| LIKP      | GRUPP                      | cust_cred_group                     | STRING    | Customer Credit Group                                        |
| LIKP      | SBGRP                      | cred_rep_grp                        | STRING    | Credit Representative Group for Credit Management            |
| LIKP      | CTLPC                      | risk_category                       | STRING    | Credit Management: Risk Category                             |
| LIKP      | CMWAE                      | currency                            | STRING    | Currency key of credit control area                          |
| LIKP      | AMTBL                      | credit_value                        | NUMERIC   | Released credit value of the document                        |
| LIKP      | BOLNR                      | bill_of_lading                      | STRING    | Bill of Lading                                               |
| LIKP      | LIFNR                      | vendor                              | STRING    | Vendors account number                                       |
| LIKP      | TRATY                      | mnsoftrns_type                      | STRING    | Means-of-Transport Type                                      |
| LIKP      | TRAID                      | mns_of_trans_id                     | STRING    | Means of Transport ID                                        |
| LIKP      | CMFRE                      | release_date                        | DATE      | Release date of the document determined by credit management |
| LIKP      | CMNGV                      | next_date                           | DATE      | Next date                                                    |
| LIKP      | XABLN                      | gr_gi_slip_no                       | STRING    | Goods Receipt/Issue Slip Number                              |
| LIKP      | BLDAT                      | document_date                       | DATE      | Document Date in Document                                    |
| LIKP      | WADAT_IST                  | actual_gi_date                      | DATE      | Actual Goods Movement Date                                   |
| LIKP      | TRSPG                      | shpmtblreason                       | STRING    | Shipment Blocking Reason                                     |
| LIKP      | TPSID                      | id_transp_syst                      | STRING    | ID for External Transport System                             |
| LIKP      | LIFEX                      | ext_delivery                        | STRING    | External Identification of Delivery Note                     |
| LIKP      | TERNR                      | order_number                        | STRING    | Order Number                                                 |
| LIKP      | KALSM_CH                   | search_proced                       | STRING    | Search procedure for batch determination                     |
| LIKP      | KLIEF                      | corr_delivery                       | STRING    | Correction delivery                                          |
| LIKP      | KALSP                      | procedure_1                         | STRING    | Shipping: Pricing procedure                                  |
| LIKP      | KNUMP                      | doc_condition_1                     | STRING    | Number of document condition - pricing                       |
| LIKP      | NETWR                      | net_value                           | NUMERIC   | Net Value of the Sales Order in Document Currency            |
| LIKP      | AULWE                      | route_schedule                      | STRING    | Route Schedule                                               |
| LIKP      | WERKS                      | receiving_plant                     | STRING    | Receiving Plant for Deliveries                               |
| LIKP      | LCNUM                      | financ_doc_no                       | STRING    | Financial doc. processing: Internal financial doc. number    |
| LIKP      | ABSSC                      | paym_guar_proc                      | STRING    | Payment Guarantee Procedure                                  |
| LIKP      | KOUHR                      | picking_time                        | TIME      | Picking Time (Local Time, with Reference to a Plant)         |
| LIKP      | TDUHR                      | tr_plan_time                        | TIME      | Transp. Planning Time (Local, Relating to a Shipping Point)  |
| LIKP      | LDUHR                      | loading_time                        | TIME      | Loading Time (Local Time Relating to a Shipping Point)       |
| LIKP      | WAUHR                      | gi_time                             | TIME      | Time of Goods Issue (Local, Relating to a Plant)             |
| LIKP      | LGTOR                      | door_for_whse                       | STRING    | Door for Warehouse Number                                    |
| LIKP      | LGBZO                      | staging_area                        | STRING    | Staging Area for Warehouse Complex                           |
| LIKP      | AKWAE                      | lettofcredcrcy                      | STRING    | Currency key for letter-of-credit procg in foreign trade     |
| LIKP      | AKKUR                      | lettofcredrate                      | NUMERIC   | Exchange rate for letter-of-credit procg in foreign trade    |
| LIKP      | AKPRZ                      | depreciation                        | NUMERIC   | Depreciation percentage for financial document processing    |
| LIKP      | PROLI                      | dg_mgmt_profile                     | STRING    | Dangerous Goods Management Profile in SD Documents           |
| LIKP      | XBLNR                      | reference                           | STRING    | Reference Document Number                                    |
| LIKP      | HANDLE                     | key                                 | STRING    | Worldwide unique key for LIKP-VBELN                          |
| LIKP      | TSEGFL                     | tsegment_exists                     | STRING    | Time segment exists                                          |
| LIKP      | TSEGTP                     | template                            | STRING    | Event group time segment delivery header                     |
| LIKP      | TZONIS                     | del_loc_tzone                       | STRING    | Time zone of delivering location                             |
| LIKP      | TZONRC                     | rec_time_zone                       | STRING    | Time zone of recipient location                              |
| LIKP      | CONT_DG                    | contains_dg                         | STRING    | Indicator: Document contains dangerous goods                 |
| LIKP      | VERURSYS                   | original_system                     | STRING    | Distribution delivery: Original system                       |
| LIKP      | KZWAB                      | ind_gds_mvmnt                       | STRING    | Indicator for controlling goods movement                     |
| LIKP      | TCODE                      | transaction_code                    | STRING    | Transaction Code                                             |
| LIKP      | VSART                      | shipping_type                       | STRING    | Shipping Type                                                |
| LIKP      | TRMTYP                     | meanstransp                         | STRING    | Means of Transport                                           |
| LIKP      | SDABW                      | spec_processing                     | STRING    | Special Processing Indicator                                 |
| LIKP      | VBUND                      | company_id                          | STRING    | Company ID                                                   |
| LIKP      | XWOFF                      | calcn_of_val_open                   | STRING    | Calculation of val. open                                     |
| LIKP      | DIRTA                      | immed_to                            | STRING    | Automatic TO Creation Immediately After TR Generation        |
| LIKP      | PRVBE                      | supply_area                         | STRING    | Production Supply Area                                       |
| LIKP      | FOLAR                      | delivery_type_1                     | STRING    | Delivery Type                                                |
| LIKP      | PODAT                      | pod_date                            | DATE      | Date (Proof of Delivery)                                     |
| LIKP      | POTIM                      | confirm_time                        | TIME      | Confirmation Time                                            |
| LIKP      | VGANZ                      | no_itms_pred_sys                    | INT64     | Number of Delivery Items with Precedessor in Other System    |
| LIKP      | IMWRK                      | in_plant                            | STRING    | Delivery has Status In Plant                                 |
| LIKP      | SPE_LOEKZ                  | doc_delet_id                        | STRING    | Document deletion indicator                                  |
| LIKP      | SPE_LOC_SEQ                | location_seq                        | STRING    | Sequence of Intermediate Locations in Returns Process        |
| LIKP      | SPE_ACC_APP_STS            | del_conf_stat                       | STRING    | Delivery Confirmation Status                                 |
| LIKP      | SPE_SHP_INF_STS            | ship_info_stat                      | STRING    | Shipment Information Status                                  |
| LIKP      | SPE_RET_CANC               | ret_asn_canc                        | STRING    | Returns: Flag showing that an ASN is cancelled               |
| LIKP      | SPE_WAUHR_IST              | gi_time_1                           | TIME      | Time of Goods Issue (Local, Relating to a Plant)             |
| LIKP      | SPE_WAZONE_IST             | time_zone                           | STRING    | Time Zone                                                    |
| LIKP      | SPE_REV_VLSTK              | statdecntrlwhse                     | STRING    | Distribution Status (Decentralized Warehouse Processing)     |
| LIKP      | SPE_LE_SCENARIO            | scenario_logistic_ex                | STRING    | Scenario Logistic Execution                                  |
| LIKP      | SPE_ORIG_SYS               | original_system_type                | STRING    | Original System Type                                         |
| LIKP      | SPE_CHNG_SYS               | changer_s_sys_type                  | STRING    | Last Changers System Type                                    |
| LIKP      | SPE_GEOROUTE               | georoute                            | STRING    | Description of a Geographical Route                          |
| LIKP      | SPE_GEOROUTEIND            | chg_ind_route                       | STRING    | Change Indicator for the Route                               |
| LIKP      | SPE_CARRIER_IND            | change_ind                          | STRING    | Change Indicator for the Carrier                             |
| LIKP      | SPE_GTS_REL                | gds_traffic_ty                      | STRING    | Goods Traffic Type                                           |
| LIKP      | SPE_GTS_RT_CDE             | gtsroutecode                        | STRING    | Route Code for SAP Global Trade Services                     |
| LIKP      | SPE_REL_TMSTMP             | rls_time_stamp                      | NUMERIC   | Release Time Stamp                                           |
| LIKP      | SPE_UNIT_SYSTEM            | msrmnt_unit_sys                     | STRING    | Measurement Unit System                                      |
| LIKP      | SPE_INV_BFR_GI             | inv_bf_gi                           | STRING    | Invoice Creation Before Goods Issue                          |
| LIKP      | SPE_QI_STATUS              | qi_status                           | STRING    | Status of Quality Inspection for Returns Deliveries          |
| LIKP      | SPE_RED_IND                | redirected                          | STRING    | SPE indicator if redirecting has occured                     |
| LIKP      | SAKES                      | storage_status                      | STRING    | SAP Global Trade Services: Storage Status of Delivery        |
| LIKP      | SPE_LIFEX_TYPE             | type_ext_ident                      | STRING    | Type of External Identification                              |
| LIKP      | SPE_TTYPE                  | means_of_trans                      | STRING    | Means of Transport                                           |
| LIKP      | SPE_PRO_NUMBER             | pro_number                          | STRING    | Partner Identification : Progressive Identification Number   |
| LIKP      | LOC_GUID                   | akkreditiv                          | BYTES     | Akkreditiv (GUID)                                            |
| LIKP      | SPE_BILLING_IND            | billing_indicator                   | STRING    | EWM Billing Indicator                                        |
| LIKP      | PRINTER_PROFILE            | print_profile                       | STRING    | Description of Print Profile                                 |
| LIKP      | MSR_ACTIVE                 | adv_returns                         | STRING    | Advanced Returns Management Active                           |
| LIKP      | PRTNR                      | document_log                        | STRING    | Confirmation number                                          |
| LIKP      | STGE_LOC_CHANGE            | stor_loc_change                     | STRING    | Temporary Change of Storage Locations in Delivery            |
| LIKP      | TM_CTRL_KEY                | control_key                         | STRING    | Control Key for Document Transfer to TM                      |
| LIKP      | DLV_SPLIT_INITIA           | spl_iinitiator                      | STRING    | Delivery Split Initiator                                     |
| LIKP      | DLV_VERSION                | dlv_version                         | STRING    | Delivery Version                                             |
| LIKP      | _DATAAGING                 | data_filter_value_for_data_agi      | DATE      | Data Filter Value for Data Aging                             |
| LIKP      | GTS_VORPA                  | type_of_previous_doc                | STRING    | Type of Previous Document                                    |
| LIKP      | GTS_VORNU                  | no_of_previous_doc                  | STRING    | Number of Previous Document                                  |
| LIKP      | GTS_EXPVZ                  | mode_of_trans                       | STRING    | Mode of Transport at the Border (Intrastat)                  |
| LIKP      | GTS_PORTI                  | port_airport                        | STRING    | Port/Airport                                                 |
| LIKP      | ITM_EXPVZ                  | mode_of_transport                   | STRING    | Mode of Transport at the Border                              |
| LIKP      | ITM_STGBE                  | ctry_meanstr_border                 | STRING    | Origin of Means of Transport when Crossing the Border        |
| LIKP      | ITM_KZGBE                  | id_means_transp_bord                | STRING    | Identifier for Means of Transport crossing the Border        |
| LIKP      | ITM_VYGID                  | conveyancerefidn                    | STRING    | Cross-Border Conveyance Reference ID                         |
| LIKP      | ITM_IEVER                  | mode_transp_inland                  | STRING    | Inland Mode of Transport                                     |
| LIKP      | ITM_STABE                  | ctry_meanstr_inland                 | STRING    | Country of Origin of the Means of Transport at Departure     |
| LIKP      | ITM_KZABE                  | id_means_transp_inl                 | STRING    | Identification for the Means of Transport Inland             |
| LIKP      | HANDOVERLOC                | handover_location                   | STRING    | Location for a physical handover of goods                    |
| LIKP      | HANDOVERDATE               | handover_date                       | DATE      | Handover Date at the Handover Location                       |
| LIKP      | HANDOVERTIME               | handover_time                       | TIME      | Handover time at the handover location                       |
| LIKP      | HANDOVERTZONE              | handoverloc_timezone                | STRING    | Time Zone of Handover Location                               |
| LIKP      | BESTK                      | confirmed                           | STRING    | Confirmation Status (All Items)                              |
| LIKP      | CMPSC                      | value                               | STRING    | Status of Credit Check Against Maximum Document Value        |
| LIKP      | CMPSD                      | termsofpayment                      | STRING    | Status of Credit Check Against Terms of Payment              |
| LIKP      | CMPSI                      | financial_doc                       | STRING    | Status of Credit Check Against Financial Document            |
| LIKP      | CMPSJ                      | exptcreditinsur                     | STRING    | Status of Credit Check Against Export Credit Insurance       |
| LIKP      | CMPSK                      | payment_card                        | STRING    | Status of Credit Check Against Payment Card Authorization    |
| LIKP      | CMPS_CM                    | sap_cred_mgmt                       | STRING    | Status of Credit Check SAP Credit Management                 |
| LIKP      | CMPS_TE                    | crma_te_status                      | STRING    | Status of Technical Error SAP Credit Management              |
| LIKP      | CMGST                      | overallcredstat                     | STRING    | Overall Status of Credit Checks                              |
| LIKP      | FKIVK                      | totals_status                       | STRING    | Intercompany Billing Status (All Items)                      |
| LIKP      | FKSTK                      | billing_status                      | STRING    | Billing Status                                               |
| LIKP      | GBSTK                      | overall_status                      | STRING    | Overall Processing Status (Header/All Items)                 |
| LIKP      | HDALL                      | hold                                | STRING    | Inbound delivery header not yet complete (on Hold)           |
| LIKP      | HDALS                      | phold                               | STRING    | At least one of ID items not yet complete (on Hold)          |
| LIKP      | KOQUK                      | confirmation                        | STRING    | Status of Pick Confirmation                                  |
| LIKP      | KOSTK                      | ovr_pick_status                     | STRING    | Picking Status/Putaway Status (All Items)                    |
| LIKP      | LVSTK                      | overallwmstatus                     | STRING    | Status of Warehouse Management Activities (All Items)        |
| LIKP      | PDSTK                      | pod_status                          | STRING    | POD Status on Header Level                                   |
| LIKP      | PKSTK                      | packing_status                      | STRING    | Packing Status (All Items)                                   |
| LIKP      | SPE_TMPID                  | temporary_inbound_delivery          | STRING    | Temporary inbound delivery                                   |
| LIKP      | SPSTG                      | overall_blk_st                      | STRING    | Overall Block Status (Header)                                |
| LIKP      | TRSTA                      | trns_plan_stat                      | STRING    | Transportation Planning Status (Header)                      |
| LIKP      | UVALL                      | header_data                         | STRING    | Incompletion Status (Header)                                 |
| LIKP      | UVALS                      | item_data                           | STRING    | Incompletion Status (All Items)                              |
| LIKP      | UVFAK                      | header_bill_dat                     | STRING    | Billing Incompletion Status (Header)                         |
| LIKP      | UVFAS                      | item_bill_data                      | STRING    | Billing Incompletion Status (All Items)                      |
| LIKP      | UVPAK                      | head_data_pckg                      | STRING    | Header Incomplete Status for Packaging                       |
| LIKP      | UVPAS                      | it_data_packag                      | STRING    | Totals Incomplete Status for all Items: Packaging            |
| LIKP      | UVPIK                      | head_data_pck_putawy                | STRING    | Header Incomplete Status for Picking/Putaway                 |
| LIKP      | UVPIS                      | it_data_pck_putaway                 | STRING    | Totals Incomplete Status for all Items: Picking              |
| LIKP      | UVVLK                      | header_dlv_data                     | STRING    | Delivery Incompletion Status (Header)                        |
| LIKP      | UVVLS                      | item_deliv_data                     | STRING    | Delivery Incompletion Status (All Items)                     |
| LIKP      | UVWAK                      | head_data_gm                        | STRING    | Post Header Incomplete Status for Goods Movement             |
| LIKP      | UVWAS                      | item_data_gm                        | STRING    | Total Incomplete Status of all Items: Post Goods Movement    |
| LIKP      | VESTK                      | hu_in_stock                         | STRING    | Handling Unit Placed in Stock                                |
| LIKP      | VLSTK                      | statdecntrlwhse_1                   | STRING    | Distribution Status (Decentralized Warehouse Processing)     |
| LIKP      | WBSTK                      | ovrlgdsmvtstat                      | STRING    | Goods Movement Status (All Items)                            |
| LIKP      | UVK01                      | hdr_reserves_1                      | STRING    | Customer reserves 1: Header status                           |
| LIKP      | UVK02                      | hdr_reserves_2                      | STRING    | Customer reserves 2: Header status                           |
| LIKP      | UVK03                      | hdr_reserves_3                      | STRING    | Customer reserves 3: Header status                           |
| LIKP      | UVK04                      | hdr_reserves_4                      | STRING    | Custmer reserves 4: Header status                            |
| LIKP      | UVK05                      | hdr_reserves_5                      | STRING    | Customer reserves 5: Header status                           |
| LIKP      | UVS01                      | total_reserves1                     | STRING    | Customer reserves 1: Sum of all items                        |
| LIKP      | UVS02                      | totalreserves2                      | STRING    | Customer reserves 2: Sum of all items                        |
| LIKP      | UVS03                      | total_reserves3                     | STRING    | Customer reserves 3: Sum of all items                        |
| LIKP      | UVS04                      | total_reserves4                     | STRING    | Customer reserves 4: Sum of all items                        |
| LIKP      | UVS05                      | total_reserves5                     | STRING    | Customer reserves 5: Sum of all items                        |
| LIKP      | TOTAL_PCSTA                | prod_marktablty_sts                 | STRING    | Total Product Marketability Check Status                     |
| LIKP      | TOTAL_DGSTA                | dangerous_goods_sts                 | STRING    | Total Dangerous Goods Check Status                           |
| LIKP      | TOTAL_SDSSTA               | sfty_data_sheet_sts                 | STRING    | Total Safety Data Sheet Check Status                         |
| LIKP      | __SAPMP__LBASK             | dtucsta                             | STRING    | DTUC Status                                                  |
| LIKP      | INCOV                      | inco_version                        | STRING    | Incoterms Version                                            |
| LIKP      | INCO2_L                    | inco_location1                      | STRING    | Incoterms Location 1                                         |
| LIKP      | INCO3_L                    | inco_location2                      | STRING    | Incoterms Location 2                                         |
| LIKP      | OID_EXTBOL                 | extern_bol_no                       | STRING    | External bill of lading                                      |
| LIKP      | OID_MISCDL                 | miscell_del_no                      | STRING    | Miscellaneous delivery number                                |
| LIKP      | EXT_BUS_SYST_ID            | ext_bus_syst_id                     | STRING    | External Business System ID                                  |
| LIKP      | SITKZ_DB                   | spec_iss_val_sit                    | STRING    | Specification for Issuing Valuated Stock in Transit          |
| LIKP      | DUMMY_DELIVERY_INCL_EEW_PS | dummy_function_in_length_1          | STRING    | Dummy function in length 1                                   |
| LIKP      | __BEV1__LULEINH            | loading_units                       | STRING    | Loading Units                                                |
| LIKP      | __BEV1__RPFAESS            | no_cat_1                            | NUMERIC   | Number Category 1                                            |
| LIKP      | __BEV1__RPKIST             | no_cat_2                            | NUMERIC   | Number Category 2                                            |
| LIKP      | __BEV1__RPCONT             | no_cat_3                            | NUMERIC   | Number Category 3                                            |
| LIKP      | __BEV1__RPSONST            | no_cat_4                            | NUMERIC   | Number Category 4                                            |
| LIKP      | __BEV1__RPFLGNR            | sequence_number                     | STRING    | Loading Sequence Number in the Tour                          |
| LIKP      | IDT_CUR_EVTLOC             | current_point                       | STRING    | Last Notified Point of the Route from Tracking               |
| LIKP      | IDT_CUR_EVTQUA             | arrival_departure                   | STRING    | Indicates Arrival or Departure at the Current Point          |
| LIKP      | IDT_CUR_EVTTST             | curr_tme_stamp                      | NUMERIC   | Event Time Stamp for the Tracking Message at Current Point   |
| LIKP      | IDT_CUR_ESTLOC             | base_point                          | STRING    | Base Point for Time Estimation from Tracking                 |
| LIKP      | IDT_CUR_ESTQUA             | arrival_departure_1                 | STRING    | Arrival/Departure for Time Estimation                        |
| LIKP      | IDT_CUR_ESTTST             | time_estim_stamp                    | NUMERIC   | Base Date for Estimation of the Delivery Date in Tracking    |
| LIKP      | IDT_CUR_WRKQUA             | event_estimation                    | STRING    | Various Qualifiers of the Tracking Entry                     |
| LIKP      | IDT_PRE_EVTLOC             | prior_point                         | STRING    | Prior Route Point From Tracking                              |
| LIKP      | IDT_PRE_EVTQUA             | arrival_departure_2                 | STRING    | Indicates the Arrival and Departure at Prior Point           |
| LIKP      | IDT_PRE_EVTTST             | prior_tme_stamp                     | NUMERIC   | Event Time Stamp for the Tracking Message at Prior Point     |
| LIKP      | IDT_PRE_ESTLOC             | prior_base_pt                       | STRING    | Prior Base Point for Time Estimation from Tracking           |
| LIKP      | IDT_PRE_ESTQUA             | arrival_departure_3                 | STRING    | Arrival/Departure for Time Estimation                        |
| LIKP      | IDT_PRE_ESTTST             | time_estim_stamp_1                  | NUMERIC   | Base Date for Estimation of the Delivery Date in Tracking    |
| LIKP      | IDT_PRE_WRKQUA             | event_estimation_1                  | STRING    | Various Qualifiers of the Prior Tracking Entry               |
| LIKP      | IDT_REF_ESTLOC             | base_point_1                        | STRING    | Reference Point for Time Estimation from Tracking            |
| LIKP      | IDT_REF_ESTQUA             | arrival_departure_4                 | STRING    | Indicates Arrival/Departure at the Reference Point           |
| LIKP      | IDT_REF_ESTTST             | time_estim_stamp_2                  | NUMERIC   | Base Date for Estimation of the Delivery Date in Tracking    |
| LIKP      | IDT_FIRM_LFDAT             | delivery_date_fixed                 | STRING    | Commitment Level of Delivery Date and Time                   |
| LIKP      | IDT_DOCNUM                 | idoc_number                         | STRING    | IDoc number                                                  |
| LIKP      | BORGR_GRP                  | inb_dly_group                       | STRING    | Inbound Dely Group: Multi-Level Goods Receipt Automotive     |
| LIKP      | KBNKZ                      | kanban_indicat                      | STRING    | Kanban Indicator                                             |
| LIKP      | FSH_TRANSACTION            | transaction_number                  | STRING    | Transaction Number                                           |
| LIKP      | FSH_VAS_LAST_ITEM          | last_vas_item_number                | STRING    | Last VAS Item Number                                         |
| LIKP      | FSH_VAS_CG                 | vas_cust_group                      | STRING    | Value-Added Services Customer Group                          |
| LIKP      | RFM_PSST_GROUP             | psst_group                          | STRING    | PSST Group                                                   |
| LIKP      | JIT_RLVNT                  | jit_relevant                        | STRING    | JIT-Relevant                                                 |
| LIPS      | VBELN                      | delivery_lips                       | STRING    | Delivery                                                     |
| LIPS      | PSTYV                      | item_category                       | STRING    | Delivery item category                                       |
| LIPS      | ERNAM                      | created_by_lips                     | STRING    | Name of Person who Created the Object                        |
| LIPS      | ERZET                      | entry_time_lips                     | TIME      | Entry time                                                   |
| LIPS      | ERDAT                      | created_on_lips                     | DATE      | Date on which the record was created                         |
| LIPS      | MATNR                      | material                            | STRING    | Material Number                                              |
| LIPS      | MATWA                      | materialentered                     | STRING    | Material entered                                             |
| LIPS      | MATKL                      | material_group                      | STRING    | Material Group                                               |
| LIPS      | WERKS                      | plant                               | STRING    | Plant                                                        |
| LIPS      | LGORT                      | stor_loc                            | STRING    | Storage location                                             |
| LIPS      | CHARG                      | batch                               | STRING    | Batch Number                                                 |
| LIPS      | LICHN                      | supplier_batch                      | STRING    | Supplier Batch Number                                        |
| LIPS      | KDMAT                      | customer_mat                        | STRING    | Customer Material                                            |
| LIPS      | PRODH                      | prod_hierarchy                      | STRING    | Product hierarchy                                            |
| LIPS      | LFIMG                      | delivery_qty                        | NUMERIC   | Actual quantity delivered (in sales units)                   |
| LIPS      | MEINS                      | base_unit                           | STRING    | Base Unit of Measure                                         |
| LIPS      | VRKME                      | sales_unit                          | STRING    | Sales unit                                                   |
| LIPS      | UMVKZ                      | numerator                           | NUMERIC   | Numerator (factor) for conversion of sales quantity into SKU |
| LIPS      | UMVKN                      | denominat                           | NUMERIC   | Denominator (Divisor) for Conversion of Sales Qty into SKU   |
| LIPS      | NTGEW                      | net_weight_lips                     | NUMERIC   | Net weight                                                   |
| LIPS      | BRGEW                      | gross_weight                        | NUMERIC   | Gross weight                                                 |
| LIPS      | GEWEI                      | weight_unit_lips                    | STRING    | Weight Unit                                                  |
| LIPS      | VOLUM                      | volume_lips                         | NUMERIC   | Volume                                                       |
| LIPS      | VOLEH                      | volume_unit_lips                    | STRING    | Volume unit                                                  |
| LIPS      | KZTLF                      | part_dlv_item                       | STRING    | Partial delivery at item level                               |
| LIPS      | UEBTK                      | unlimited                           | STRING    | Indicator: Unlimited Overdelivery Allowed                    |
| LIPS      | UEBTO                      | overdeliv_tol                       | NUMERIC   | Overdelivery Tolerance                                       |
| LIPS      | UNTTO                      | underdel_tol                        | NUMERIC   | Underdelivery Tolerance                                      |
| LIPS      | CHSPL                      | batch_split                         | STRING    | Batch split allowed                                          |
| LIPS      | FAKSP                      | billing_block_lips                  | STRING    | Billing Block                                                |
| LIPS      | MBDAT                      | mat_avail_date                      | DATE      | Material Staging/Availability Date                           |
| LIPS      | LGMNG                      | qty_stckp_unt                       | NUMERIC   | Actual quantity delivered in stockkeeping units              |
| LIPS      | ARKTX                      | item_descr                          | STRING    | Short text for sales order item                              |
| LIPS      | LGPBE                      | storage_bin                         | STRING    | Storage Bin                                                  |
| LIPS      | VBELV                      | originating_doc                     | STRING    | Originating Document                                         |
| LIPS      | POSNV                      | item_1                              | STRING    | Originating item                                             |
| LIPS      | VBTYV                      | document_cat_lips                   | STRING    | SD Document Category                                         |
| LIPS      | VGSYS                      | prdoclogsys                         | STRING    | Logical System in the Preceding Document                     |
| LIPS      | VGBEL                      | reference_doc                       | STRING    | Document number of the reference document                    |
| LIPS      | VGPOS                      | reference_item                      | STRING    | Item number of the reference item                            |
| LIPS      | UPFLU                      | update_doc_flow                     | STRING    | Update indicator for delivery document flow                  |
| LIPS      | UEPOS                      | higher_lev_item                     | STRING    | Higher-Level item in bill of material structures             |
| LIPS      | FKREL                      | relev_for_bill                      | STRING    | Relevant for Billing                                         |
| LIPS      | LADGR                      | loading_group                       | STRING    | Loading Group                                                |
| LIPS      | TRAGR                      | trans_group_lips                    | STRING    | Transportation Group                                         |
| LIPS      | KOMKZ                      | picking_id                          | STRING    | Indicator for picking control                                |
| LIPS      | LGNUM                      | warehouse_no_lips                   | STRING    | Warehouse Number / Warehouse Complex                         |
| LIPS      | LISPL                      | whse_no_split                       | STRING    | Split to warehouse number required                           |
| LIPS      | LGTYP                      | storage_type                        | STRING    | Storage Type                                                 |
| LIPS      | LGPLA                      | storage_bin_1                       | STRING    | Storage Bin                                                  |
| LIPS      | BWTEX                      | separate_val                        | STRING    | Indicator: Separate valuation                                |
| LIPS      | BWART                      | movement_type                       | STRING    | Movement type (inventory management)                         |
| LIPS      | BWLVS                      | movement_type_1                     | STRING    | Movement Type for Warehouse Management                       |
| LIPS      | KZDLG                      | ind_dynamic_bin                     | STRING    | Indicator: dynamic storage bin in warehouse management       |
| LIPS      | BDART                      | requirementtype                     | STRING    | Requirement type                                             |
| LIPS      | PLART                      | planning_type                       | STRING    | Planning type                                                |
| LIPS      | MTART                      | material_type                       | STRING    | Material type                                                |
| LIPS      | XCHPF                      | batch_mgmt_rqt                      | STRING    | Batch management requirement indicator                       |
| LIPS      | XCHAR                      | batches                             | STRING    | Batch management indicator (internal)                        |
| LIPS      | VGREF                      | preced_with_ref                     | STRING    | Preceding document has resulted from reference               |
| LIPS      | POSAR                      | item_type                           | STRING    | Item Type                                                    |
| LIPS      | BWTAR                      | valuation_type                      | STRING    | Valuation Type                                               |
| LIPS      | SUMBD                      | req_mt_totals                       | STRING    | Summing up of requirements                                   |
| LIPS      | MTVFP                      | avail_check                         | STRING    | Checking Group for Availability Check                        |
| LIPS      | EANNR                      | ean_number                          | STRING    | European Article Number (EAN) - obsolete!!!!!                |
| LIPS      | GSBER                      | business_area                       | STRING    | Business Area                                                |
| LIPS      | VKBUR                      | sales_office_lips                   | STRING    | Sales office                                                 |
| LIPS      | VKGRP                      | sales_group                         | STRING    | Sales group                                                  |
| LIPS      | VTWEG                      | distr_channel                       | STRING    | Distribution Channel                                         |
| LIPS      | SPART                      | division                            | STRING    | Division                                                     |
| LIPS      | GRKOR                      | delivery_group                      | STRING    | Delivery Group (Items are delivered together)                |
| LIPS      | FMENG                      | qty_is_fixed                        | STRING    | Quantity is fixed                                            |
| LIPS      | ANTLF                      | max_part_deliv                      | NUMERIC   | Maximum Number of Partial Deliveries Allowed Per Item        |
| LIPS      | VBEAF                      | fixed_proc_time                     | NUMERIC   | Fixed shipping processing time in days (= setup time)        |
| LIPS      | VBEAV                      | var_proc_time                       | NUMERIC   | Variable shipping processing time in days                    |
| LIPS      | STAFO                      | update_group_lips                   | STRING    | Update Group for statistics update                           |
| LIPS      | WAVWR                      | cost                                | NUMERIC   | Cost in document currency                                    |
| LIPS      | KZWI1                      | subtotal_1                          | NUMERIC   | Subtotal 1 from pricing procedure for condition              |
| LIPS      | KZWI2                      | subtotal_2                          | NUMERIC   | Subtotal 2 from pricing procedure for condition              |
| LIPS      | KZWI3                      | subtotal_3                          | NUMERIC   | Subtotal 3 from pricing procedure for condition              |
| LIPS      | KZWI4                      | subtotal_4                          | NUMERIC   | Subtotal 4 from pricing procedure for condition              |
| LIPS      | KZWI5                      | subtotal_5                          | NUMERIC   | Subtotal 5 from pricing procedure for condition              |
| LIPS      | KZWI6                      | subtotal_6                          | NUMERIC   | Subtotal 6 from pricing procedure for condition              |
| LIPS      | SOBKZ                      | special_stock                       | STRING    | Special Stock Indicator                                      |
| LIPS      | AEDAT                      | changed_on_lips                     | DATE      | Date of Last Change                                          |
| LIPS      | EAN11                      | ean_upc                             | STRING    | International Article Number (EAN/UPC)                       |
| LIPS      | KVGR1                      | customer_grp_1                      | STRING    | Customer group 1                                             |
| LIPS      | KVGR2                      | customer_grp_2                      | STRING    | Customer group 2                                             |
| LIPS      | KVGR3                      | customer_grp_3                      | STRING    | Customer group 3                                             |
| LIPS      | KVGR4                      | customer_grp_4                      | STRING    | Customer group 4                                             |
| LIPS      | KVGR5                      | customer_grp_5                      | STRING    | Customer group 5                                             |
| LIPS      | MVGR1                      | materialgroup_1                     | STRING    | Material group 1                                             |
| LIPS      | MVGR2                      | materialgroup_2                     | STRING    | Material group 2                                             |
| LIPS      | MVGR3                      | materialgroup_3                     | STRING    | Material group 3                                             |
| LIPS      | MVGR4                      | materialgroup_4                     | STRING    | Material group 4                                             |
| LIPS      | MVGR5                      | materialgroup_5                     | STRING    | Material group 5                                             |
| LIPS      | VPZUO                      | allocation_ind                      | STRING    | Allocation Indicator                                         |
| LIPS      | VGTYP                      | prec_doc_categ                      | STRING    | Document Category of Preceding SD Document                   |
| LIPS      | RFVGTYP                    | preceddoccentrl                     | STRING    | Type of preceding document in central system (long)          |
| LIPS      | KOSTL                      | cost_center                         | STRING    | Cost Center                                                  |
| LIPS      | KOKRS                      | co_area                             | STRING    | Controlling Area                                             |
| LIPS      | PAOBJNR                    | profit_segment                      | STRING    | Profitability Segment Number (CO-PA)                         |
| LIPS      | PRCTR                      | profit_center                       | STRING    | Profit Center                                                |
| LIPS      | PS_PSP_PNR                 | wbs_element                         | STRING    | Work Breakdown Structure Element (WBS Element)               |
| LIPS      | AUFNR                      | order_number_lips                   | STRING    | Order Number                                                 |
| LIPS      | POSNR_PP                   | order_item_no                       | STRING    | Order item number                                            |
| LIPS      | KDAUF                      | sales_order                         | STRING    | Sales Order Number                                           |
| LIPS      | KDPOS                      | sales_ord_item                      | STRING    | Item number in Sales Order                                   |
| LIPS      | VPMAT                      | plng_material                       | STRING    | Planning material                                            |
| LIPS      | VPWRK                      | planning_plant                      | STRING    | Planning plant                                               |
| LIPS      | PRBME                      | prod_grp_unit                       | STRING    | Base unit of measure for product group                       |
| LIPS      | UMREF                      | conversion                          | FLOAT64   | Conversion factor: quantities                                |
| LIPS      | KNTTP                      | acct_assgmt_cat                     | STRING    | Account Assignment Category                                  |
| LIPS      | KZVBR                      | consumption                         | STRING    | Consumption posting                                          |
| LIPS      | FIPOS                      | commitment_item                     | STRING    | Commitment Item                                              |
| LIPS      | FISTL                      | funds_center                        | STRING    | Funds Center                                                 |
| LIPS      | GEBER                      | fund                                | STRING    | Fund                                                         |
| LIPS      | PCKPF                      | packing_control                     | STRING    | Packing Control                                              |
| LIPS      | BEDAR_LF                   | reqmts_class                        | STRING    | Requirements class                                           |
| LIPS      | CMPNT                      | credit_active                       | STRING    | ID: Item with active credit function / relevant for credit   |
| LIPS      | KCMENG                     | cumul_batch_qty                     | NUMERIC   | Cumulative batch quantity of all split items (in StckUnit)   |
| LIPS      | KCBRGEW                    | cum_gross_wght                      | NUMERIC   | Cumulative gross weight of all batch split items             |
| LIPS      | KCNTGEW                    | cumul_net_wght                      | NUMERIC   | Cumulative net weight of all batch split items               |
| LIPS      | KCVOLUM                    | cumul_volume                        | NUMERIC   | Cumulative volume of all batch split items                   |
| LIPS      | UECHA                      | hghlevitmbatch                      | STRING    | Higher-Level Item of Batch Split Item                        |
| LIPS      | CUOBJ                      | configuration                       | STRING    | Configuration                                                |
| LIPS      | CUOBJ_CH                   | int_object_no                       | STRING    | Internal object number of the batch classification           |
| LIPS      | ANZSN                      | no_serial_no                        | INT64     | Number of serial numbers                                     |
| LIPS      | SERAIL                     | serialnoprofile                     | STRING    | Serial Number Profile                                        |
| LIPS      | KCGEWEI                    | weight_unit_1                       | STRING    | Weight Unit                                                  |
| LIPS      | KCVOLEH                    | volume_unit_1                       | STRING    | Volume unit                                                  |
| LIPS      | SERNR                      | bom_expl_number                     | STRING    | BOM explosion number                                         |
| LIPS      | ABRLI                      | int_dlv_scd_no                      | STRING    | Internal delivery schedule number                            |
| LIPS      | ABART                      | release_type                        | STRING    | Release type                                                 |
| LIPS      | ABRVW                      | usage                               | STRING    | Usage Indicator                                              |
| LIPS      | QPLOS                      | inspection_lot                      | STRING    | Inspection Lot Number                                        |
| LIPS      | QTLOS                      | partial_lot                         | STRING    | Partial lot number                                           |
| LIPS      | NACHL                      | no_gr_posted                        | STRING    | Customer has not posted goods receipt                        |
| LIPS      | MAGRV                      | matl_grp_pckmat                     | STRING    | Material Group: Packaging Materials                          |
| LIPS      | OBJKO                      | object_no_hdr                       | STRING    | Object Number at Header Level                                |
| LIPS      | OBJPO                      | objno_item                          | STRING    | Object Number at Item Level                                  |
| LIPS      | AESKD                      | engin_change                        | STRING    | Customer Engineering Change Status                           |
| LIPS      | SHKZG                      | returns_item                        | STRING    | Returns Item                                                 |
| LIPS      | PROSA                      | matdetermactive                     | STRING    | ID for material determination                                |
| LIPS      | UEPVW                      | usage_hl_item                       | STRING    | ID for higher-level item usage                               |
| LIPS      | EMPST                      | recv_point                          | STRING    | Receiving Point                                              |
| LIPS      | ABTNR                      | department                          | STRING    | Department number                                            |
| LIPS      | KOQUI                      | confirmation_lips                   | STRING    | Picking is subject to confirmation                           |
| LIPS      | STADAT                     | statistics_date                     | DATE      | Statistics date                                              |
| LIPS      | AKTNR                      | promotion                           | STRING    | Promotion                                                    |
| LIPS      | KNUMH_CH                   | nocondrec_batch                     | STRING    | Number of condition record from batch determination          |
| LIPS      | PREFE                      | cus_preference                      | STRING    | Customs Preference                                           |
| LIPS      | EXART                      | bus_trans_type                      | STRING    | Business Transaction Type                                    |
| LIPS      | CLINT                      | int_class_no                        | STRING    | Internal Class Number                                        |
| LIPS      | CHMVS                      | qty_proposal                        | STRING    | Batches: Exit to quantity proposal                           |
| LIPS      | ABELN                      | alloc_table                         | STRING    | Allocation Table                                             |
| LIPS      | ABELP                      | item_2                              | STRING    | Allocation Table Item                                        |
| LIPS      | LFIMG_FLO                  | internal_field_do_not_use           | FLOAT64   | Internal field/ Do not use     / LFIMG in float / MUM        |
| LIPS      | LGMNG_FLO                  | internal_field_do_not_use_1         | FLOAT64   | Internal field/ Do not use     / LGMNG in float / MUM        |
| LIPS      | KCMENG_FLO                 | internal_field_do_not_use_2         | FLOAT64   | Internal field/ Do not use     / KCMENG in float / MUM       |
| LIPS      | KZUMW                      | envt_relevant                       | STRING    | Environmentally Relevant                                     |
| LIPS      | KMPMG                      | quantity                            | NUMERIC   | Component Quantity                                           |
| LIPS      | AUREL                      | at_relevant                         | STRING    | Relevant to Allocation Table                                 |
| LIPS      | KPEIN                      | pricing_unit                        | NUMERIC   | Condition Pricing Unit                                       |
| LIPS      | KMEIN                      | unit_of_measure                     | STRING    | Condition Unit                                               |
| LIPS      | NETPR                      | net_price                           | NUMERIC   | Net Price                                                    |
| LIPS      | NETWR                      | net_value_lips                      | NUMERIC   | Net Value in Document Currency                               |
| LIPS      | KOWRR                      | stat_value                          | STRING    | Statistical Values                                           |
| LIPS      | KZBEW                      | movement_ind                        | STRING    | Movement Indicator                                           |
| LIPS      | MFRGR                      | mat_freight_grp                     | STRING    | Material freight group                                       |
| LIPS      | CHHPV                      | pack_acc_batch                      | STRING    | Pack accumulated batches / movement type item                |
| LIPS      | ABFOR                      | paytguarantform                     | STRING    | Form of payment guarantee                                    |
| LIPS      | ABGES                      | guaranteed                          | FLOAT64   | Guaranteed (factor between 0 and 1)                          |
| LIPS      | MBUHR                      | matl_staging_tme                    | TIME      | Material Staging Time (Local, Relating to a Plant)           |
| LIPS      | WKTNR                      | value_contract_no                   | STRING    | Value Contract No.                                           |
| LIPS      | WKTPS                      | val_cont_item                       | STRING    | Value Contract Item                                          |
| LIPS      | J_1BCFOP                   | cfop                                | STRING    | CFOP Code and Extension                                      |
| LIPS      | J_1BTAXLW1                 | icms_law                            | STRING    | Tax law: ICMS                                                |
| LIPS      | J_1BTAXLW2                 | ipi_law                             | STRING    | Tax law: IPI                                                 |
| LIPS      | J_1BTXSDC                  | tax_code                            | STRING    | SD tax code                                                  |
| LIPS      | SITUA                      | situation                           | STRING    | Indicator for situation                                      |
| LIPS      | RSNUM                      | reservation_number                  | STRING    | Number of reservation/dependent requirements                 |
| LIPS      | RSPOS                      | item_no                             | STRING    | Item Number of Reservation / Dependent Requirements          |
| LIPS      | RSART                      | record_type                         | STRING    | Record type                                                  |
| LIPS      | KANNR                      | sequence_number_lips                | STRING    | KANBAN/Sequence Number                                       |
| LIPS      | KZFME                      | leading_uom                         | STRING    | ID: Leading unit of measure for completing a transaction     |
| LIPS      | PROFL                      | dgindprofile                        | STRING    | Dangerous Goods Indicator Profile                            |
| LIPS      | KCMENGVME                  | cumul_batch_qty_1                   | NUMERIC   | Cumulative batch quantity of all split items in sales units  |
| LIPS      | KCMENGVMEF                 | cumulated_batch_split_quantity      | FLOAT64   | Cumulated batch split quantity in VRKME and float            |
| LIPS      | KZBWS                      | valuation                           | STRING    | Valuation of Special Stock                                   |
| LIPS      | PSPNR                      | project_def                         | STRING    | Project (internal)                                           |
| LIPS      | EPRIO                      | withdr_seq_grp                      | STRING    | Withdrawal Sequence Group for Stocks                         |
| LIPS      | RULES                      | stk_determ_rule                     | STRING    | Stock Determination Rule                                     |
| LIPS      | KZBEF                      | inv_mgmt_active                     | STRING    | Indicator Inventory Management active                        |
| LIPS      | MPROF                      | mfr_part_profile                    | STRING    | Mfr part profile                                             |
| LIPS      | EMATN                      | mpn_material                        | STRING    | Material number corresponding to manufacturer part number    |
| LIPS      | LGBZO                      | staging_area_lips                   | STRING    | Staging Area for Warehouse Complex                           |
| LIPS      | HANDLE                     | key_lips                            | STRING    | Worldwide unique key for LIPS-VBELN & LIPS_POSNR             |
| LIPS      | VERURPOS                   | orig_item                           | STRING    | Distribution delivery: Original item                         |
| LIPS      | LIFEXPOS                   | ext_item                            | STRING    | External item number                                         |
| LIPS      | NOATP                      | no_avail_check                      | STRING    | Indicator: deactivate availability check                     |
| LIPS      | NOPCK                      | not_rel_picking                     | STRING    | Indicator: not relevant for picking                          |
| LIPS      | RBLVS                      | refmvttype_wm                       | STRING    | Reference movement type for WM from material movements       |
| LIPS      | BERID                      | mrp_area                            | STRING    | MRP Area                                                     |
| LIPS      | BESTQ                      | stock_category                      | STRING    | Stock Category in the Warehouse Management System            |
| LIPS      | UMBSQ                      | stock_category_1                    | STRING    | Stock Category in the Warehouse Management System            |
| LIPS      | UMMAT                      | receiving_mat                       | STRING    | Receiving/Issuing Material                                   |
| LIPS      | UMWRK                      | receiving_plant_lips                | STRING    | Receiving plant/issuing plant                                |
| LIPS      | UMLGO                      | receiving_sloc                      | STRING    | Receiving/issuing storage location                           |
| LIPS      | UMCHA                      | receiving_batch                     | STRING    | Receiving/Issuing Batch                                      |
| LIPS      | UMBAR                      | val_type_tfr                        | STRING    | Valuation Type of Transfer Batch                             |
| LIPS      | UMSOK                      | sp_ind_st_tfr                       | STRING    | Special stock indicator for physical stock transfer          |
| LIPS      | SONUM                      | spec_stock_no                       | STRING    | Special Stock Number                                         |
| LIPS      | USONU                      | spec_stock_no_1                     | STRING    | Special Stock Number                                         |
| LIPS      | AKKUR                      | lettofcredrate_lips                 | NUMERIC   | Exchange rate for letter-of-credit procg in foreign trade    |
| LIPS      | AKMNG                      | current_qty                         | STRING    | Current Qty Field for Arithmetic Operations in Doc.Process.  |
| LIPS      | VKGRU                      | class_of_items                      | STRING    | Repair Processing: Classification of Items                   |
| LIPS      | SHKZG_UM                   | main_posting_id                     | STRING    | Indicator: UNMAT in main posting                             |
| LIPS      | INSMK                      | stock_type                          | STRING    | Stock Type                                                   |
| LIPS      | KZECH                      | enter_batch                         | STRING    | Determination of batch entry in the production/process order |
| LIPS      | FLGWM                      | indicator_copy_dest_storage         | STRING    | Indicator: Copy dest. storage data from preceding document   |
| LIPS      | BERKZ                      | staging_ind                         | STRING    | Material Staging Indicator for Production Supply             |
| LIPS      | HUPOS                      | indicator_delivery_item_is_a        | STRING    | Indicator: Delivery item is a HU item                        |
| LIPS      | NOWAB                      | no_gds_movement                     | STRING    | Indicator: Item Not Relevant for Goods Movements             |
| LIPS      | KONTO                      | g_l_account                         | STRING    | G/L Account Number                                           |
| LIPS      | KZEAR                      | final_issue                         | STRING    | Final issue for this reservation                             |
| LIPS      | HSDAT                      | date_of_manuf                       | DATE      | Date of Manufacture                                          |
| LIPS      | VFDAT                      | sled_bbd                            | DATE      | Shelf Life Expiration or Best-Before Date                    |
| LIPS      | LFGJA                      | year_cur_period                     | STRING    | Fiscal Year of Current Period                                |
| LIPS      | LFBNR                      | reference_doc_1                     | STRING    | Document No. of a Reference Document                         |
| LIPS      | LFPOS                      | ref_doc_item                        | STRING    | Item of a Reference Document                                 |
| LIPS      | GRUND                      | reason_for_mvt                      | STRING    | Reason for goods movment                                     |
| LIPS      | FOBWA                      | sub_movmnt_type                     | STRING    | Subsequent movement type                                     |
| LIPS      | DLVTP                      | delivery_cat                        | STRING    | Delivery Category                                            |
| LIPS      | EXBWR                      | ext_amount_lc                       | NUMERIC   | Externally Entered Posting Amount in Local Currency          |
| LIPS      | BPMNG                      | qty_in_opun                         | NUMERIC   | Quantity in Purchase Order Price Unit                        |
| LIPS      | EXVKW                      | sales_value                         | NUMERIC   | Externally Entered Sales Value in Local Currency             |
| LIPS      | CMPRE_FLT                  | credit_price                        | FLOAT64   | Item Credit Price                                            |
| LIPS      | KZPOD                      | pod_indicator                       | STRING    | POD indicator (relevance, verification, confirmation)        |
| LIPS      | LFDEZ                      | not_wms_relevnt                     | STRING    | Not relevant for distribution for WMS                        |
| LIPS      | UMREV                      | conversionfactr                     | FLOAT64   | Conversion Factor of Delivery Quantity VRKME for MEINS       |
| LIPS      | PODREL                     | pod_rel_rc_sc                       | STRING    | POD Control (Proof of Delivery)                              |
| LIPS      | KZUML                      | st_tfr_tfr_pst                      | STRING    | Stock transfer/transfer posting                              |
| LIPS      | FKBER                      | functional_area                     | STRING    | Functional Area                                              |
| LIPS      | GRANT_NBR                  | grants                              | STRING    | Grant                                                        |
| LIPS      | KZWSO                      | units_meas_use                      | STRING    | Units of measure usage                                       |
| LIPS      | GMCONTROL                  | gds_mvmt_contrl                     | STRING    | Goods Movement Control                                       |
| LIPS      | POSTING_CHANGE             | wbwkz                               | STRING    | Goods Movement Control: HU                                   |
| LIPS      | UM_PS_PSP_PNR              | trsfr_wbs_elmnt                     | STRING    | Receiving/Issuing (WBS Element)                              |
| LIPS      | PRE_VL_ETENS               | sequential_no                       | STRING    | Sequential Number of Supplier Confirmation                   |
| LIPS      | SPE_GEN_ELIKZ              | deliv_compl                         | STRING    | Delivery Completed Indicator                                 |
| LIPS      | SPE_SCRAP_IND              | scrap_indicator                     | STRING    | Scrap Indicator for EWM Processing                           |
| LIPS      | SPE_AUTH_NUMBER            | rma_number                          | STRING    | Return Material Authorization Number                         |
| LIPS      | SPE_INSPOUT_GUID           | inspection_guid                     | BYTES     | Inspections: Inspection outcome GUID set by EWM              |
| LIPS      | SPE_FOLLOW_UP              | follow_up_code                      | STRING    | Default Follow-Up Activity Code                              |
| LIPS      | SPE_EXP_DATE_EXT           | end_validity_period                 | NUMERIC   | End date of validity period of returns delivery              |
| LIPS      | SPE_EXP_DATE_INT           | end_internal_val                    | NUMERIC   | End date of internal validity period of returns delivery     |
| LIPS      | SPE_AUTH_COMPLET           | rma_no_completed                    | STRING    | RMA completion indicator                                     |
| LIPS      | ORMNG                      | delivery_qty_1                      | NUMERIC   | Original Quantity of Delivery Item                           |
| LIPS      | SPE_ATP_TMSTMP             | atp_time_stamp                      | NUMERIC   | ATP Time Stamp                                               |
| LIPS      | SPE_ORIG_SYS               | original_system_type_lips           | STRING    | Original System Type                                         |
| LIPS      | SPE_LIEFFZ                 | cq_vendor                           | NUMERIC   | Cumulative Qty for SchedAgr - Vendors Point of View          |
| LIPS      | SPE_IMWRK                  | in_plant_lips                       | STRING    | Inbound Delivery item has Status In Plant                    |
| LIPS      | SPE_LIFEXPOS2              | ext_ident                           | STRING    | External item identifier                                     |
| LIPS      | SPE_EXCEPT_CODE            | except_code_wh                      | STRING    | Exception Code Warehouse for Quantity Difference             |
| LIPS      | SPE_KEEP_QTY               | retention_qty                       | NUMERIC   | Retention Quantity for Scrap. Process in EWM                 |
| LIPS      | SPE_ALTERNATE              | alt_prodnr                          | STRING    | Alternate Product Number                                     |
| LIPS      | SPE_MAT_SUBST              | reasn                               | STRING    | Reason for material substitution                             |
| LIPS      | SPE_STRUC                  | structure                           | STRING    | Structure of Items That Are Delivered Together               |
| LIPS      | SPE_APO_QNTYFAC            | numerator_1                         | NUMERIC   | Numerator of Quotient for Unit of Measure Conversion         |
| LIPS      | SPE_APO_QNTYDIV            | denominator                         | NUMERIC   | Denominator of Quotient for Unit of Measure Conversion       |
| LIPS      | SPE_HERKL                  | ctry_of_origin                      | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| LIPS      | SPE_BXP_DATE_EXT           | begin_valid_period                  | NUMERIC   | Begin date of validity period of returns delivery            |
| LIPS      | SPE_VERSION                | deliveryvsn                         | STRING    | Delivery Version at Confirmation                             |
| LIPS      | SPE_COMPL_MVT              | gm_completion                       | STRING    | Completion of Goods Movements after Difference Postings      |
| LIPS      | J_1BTAXLW4                 | cofins_law                          | STRING    | COFINS Tax Law                                               |
| LIPS      | J_1BTAXLW5                 | pis_law                             | STRING    | PIS Tax Law                                                  |
| LIPS      | J_1BTAXLW3                 | iss_law                             | STRING    | ISS Tax Law                                                  |
| LIPS      | BUDGET_PD                  | budget_period                       | STRING    | Budget Period                                                |
| LIPS      | KBNKZ                      | kanban_indicat_lips                 | STRING    | Kanban Indicator                                             |
| LIPS      | FARR_RELTYPE               | type                                | STRING    | Revenue Accounting Type                                      |
| LIPS      | SITKZ                      | spec_iss_val_sit_lips               | STRING    | Specification for Issuing Valuated Stock in Transit          |
| LIPS      | SGT_RCAT                   | reqmnt_segment                      | STRING    | Requirement Segment                                          |
| LIPS      | SGT_SCAT                   | stock_segment                       | STRING    | Stock Segment                                                |
| LIPS      | BESTA                      | confirmed_lips                      | STRING    | Confirmation Status (Item)                                   |
| LIPS      | CMPPI                      | financial_doc_lips                  | STRING    | Status of Credit Check Against Financial Document            |
| LIPS      | CMPPJ                      | exptcreditinsur_lips                | STRING    | Status of Credit Check Against Export Credit Insurance       |
| LIPS      | FKIVP                      | interco_billst                      | STRING    | Intercompany Billing Status (Item)                           |
| LIPS      | FKSTA                      | billing_status_lips                 | STRING    | Delivery-Related Billing Status (Item)                       |
| LIPS      | GBSTA                      | overall_status_lips                 | STRING    | Overall Processing Status (Item)                             |
| LIPS      | HDALL                      | dlyitemnotcomp                      | STRING    | Inbound Delivery Item Not Yet Complete (on Hold)             |
| LIPS      | KOQUA                      | confirmation_1                      | STRING    | Confirmation status of picking/putaway                       |
| LIPS      | KOSTA                      | picking_status                      | STRING    | Picking Status/Putaway Status (Item)                         |
| LIPS      | LVSTA                      | wm_activ_status                     | STRING    | Status of Warehouse Management Activities (Item)             |
| LIPS      | PDSTA                      | pod_status_lips                     | STRING    | POD status on item level                                     |
| LIPS      | PKSTA                      | packing_status_lips                 | STRING    | Packing Status (Item)                                        |
| LIPS      | UVALL                      | item_3                              | STRING    | Incompletion Status (Item)                                   |
| LIPS      | UVFAK                      | item_bill_data_lips                 | STRING    | Billing Incompletion Status (Item)                           |
| LIPS      | UVPAK                      | it_data_pckgng                      | STRING    | Incomplete status of item for packaging                      |
| LIPS      | UVPIK                      | item_data_pck_putawy                | STRING    | Incomplete status of item for picking/putaway                |
| LIPS      | UVVLK                      | item_deliv_data_lips                | STRING    | Delivery Incompletion Status (Item)                          |
| LIPS      | UVWAK                      | item_data_gm_lips                   | STRING    | Incomplete status of item regarding goods issue              |
| LIPS      | VLSTP                      | decentr_whse                        | STRING    | Decentralized whse processing                                |
| LIPS      | WBSTA                      | goodsmovementst                     | STRING    | Goods Movement Status                                        |
| LIPS      | UVP01                      | item_reserves_1                     | STRING    | Customer reserves 1: Item status                             |
| LIPS      | UVP02                      | item_reserves_2                     | STRING    | Customer reserves 2: Item status                             |
| LIPS      | UVP03                      | item_reserves_3                     | STRING    | Item reserves 3: Item status                                 |
| LIPS      | UVP04                      | item_reserves_4                     | STRING    | Item reserves 4: Item status                                 |
| LIPS      | UVP05                      | item_reserves_5                     | STRING    | Customer reserves 5: Item status                             |
| LIPS      | EMCST                      | embargo_status                      | STRING    | Embargo Check Status (Item)                                  |
| LIPS      | SLCST                      | wls_status                          | STRING    | Watch List Screening Check Status                            |
| LIPS      | LCCST                      | ovr_status                          | STRING    | Legal Control Check Status                                   |
| LIPS      | PCSTA                      | prod_marktablty_sts_lips            | STRING    | Product Marketability Check Status                           |
| LIPS      | DGSTA                      | prod_marktablty_sts_1               | STRING    | Dangerous Goods Check Status                                 |
| LIPS      | SDSSTA                     | sfty_data_sheet_sts_lips            | STRING    | Safety Data Sheet Check Status                               |
| LIPS      | __SAPMP__LBASP             | dtucsta_lips                        | STRING    | DTUC Status                                                  |
| LIPS      | _DATAAGING                 | data_filter_value_for_data_agi_lips | DATE      | Data Filter Value for Data Aging                             |
| LIPS      | __CWM__LFIMG               | deliv_qty_puom                      | NUMERIC   | Actual Delivered Quantity in Parallel Unit of Measure        |
| LIPS      | __CWM__LFIME               | cwm_duom                            | STRING    | CWM Delivery Unit of Measure                                 |
| LIPS      | __CWM__PIKMG               | picked_qty_puom                     | NUMERIC   | Quantity Picked/Placed in Storage in Parallel UoM            |
| LIPS      | __CWM__PIKME               | puom_qty_picked                     | STRING    | Picked/Stored Parallel Unit of Measure                       |
| LIPS      | __CWM__XENTER              | pq_entered                          | STRING    | Indicator Stating Whether Quantity Clearly Entered in PUoM   |
| LIPS      | __CWM__XTAENTER            | to_entry                            | STRING    | Indicator Stating Whether Qty to Be Entered in PUoM in TO    |
| LIPS      | __CWM__KCMENG              | cum_cw_batch_qty                    | NUMERIC   | Cumulatd CWM Batch Quantity of all Split Items (in StckUnit) |
| LIPS      | __CWM__EBUMG               | qty_to_post_in_puom                 | NUMERIC   | Quantity to Be Posted in PUoM                                |
| LIPS      | DUMMY_DELITM_INCL_EEW_PS   | dummy_function_in_length_1_lips     | STRING    | Dummy function in length 1                                   |
| LIPS      | __KJEDM__INVERTED          | inverted                            | STRING    | Inverted Flag                                                |
| LIPS      | __SAPMP__LBA_NO            | dtuc                                | STRING    | DTUC Complete                                                |
| LIPS      | __SAPMP__ALT_CONV          | prov_conv_fact                      | STRING    | Mill: Indicator Provisional Conversion Factors               |
| LIPS      | LGTOR                      | door_for_whse_lips                  | STRING    | Door for Warehouse Number                                    |
| LIPS      | FSH_SEASON_YEAR            | season_year                         | STRING    | Season Year                                                  |
| LIPS      | FSH_SEASON                 | season                              | STRING    | Season                                                       |
| LIPS      | FSH_COLLECTION             | collection                          | STRING    | Fashion Collection                                           |
| LIPS      | FSH_THEME                  | theme                               | STRING    | Fashion Theme                                                |
| LIPS      | FSH_KVGR6                  | customer_grp_6                      | STRING    | Customer Group 6                                             |
| LIPS      | FSH_KVGR7                  | customer_grp_7                      | STRING    | Customer Group 7                                             |
| LIPS      | FSH_KVGR8                  | customer_grp_8                      | STRING    | Customer Group 8                                             |
| LIPS      | FSH_KVGR9                  | customer_grp_5_1                    | STRING    | Customer Group 9                                             |
| LIPS      | FSH_KVGR10                 | customer_grp_10                     | STRING    | Customer Group 10                                            |
| LIPS      | FSH_VAS_REL                | vas_relevant                        | STRING    | VAS Relevant                                                 |
| LIPS      | FSH_VAS_PRNT_ID            | item_4                              | STRING    | Delivery Item                                                |
| LIPS      | FSH_TRANSACTION            | transaction_number_lips             | STRING    | Transaction Number                                           |
| LIPS      | FSH_ITEM_GROUP             | item_group                          | STRING    | Item Group                                                   |
| LIPS      | FSH_ITEM                   | item_number                         | STRING    | Item Number                                                  |
| LIPS      | FSH_RSNUM                  | reservation_1                       | STRING    | Number of reservation/dependent requirements                 |
| LIPS      | FSH_RSPOS                  | item_no_1                           | STRING    | Item Number of Reservation / Dependent Requirements          |
| LIPS      | MILL_UCDET                 | ob_purity                           | STRING    | Batch Determination for Original Batches                     |
| LIPS      | CONS_ORDER                 | consignment                         | STRING    | Purchase Order for Consignment                               |
| LIPS      | WRF_CHARSTC1               | characteristic_1                    | STRING    | Characteristic Value 1                                       |
| LIPS      | WRF_CHARSTC2               | characteristic_2                    | STRING    | Characteristic Value 2                                       |
| LIPS      | WRF_CHARSTC3               | characteristic_3                    | STRING    | Characteristic Value 3                                       |
|           |                            | finalmd5key                         | STRING    | MD5 key combining all columns                                |
|           |                            | input_last_update_date              | DATETIME  | Last Input read time                                         |
|           |                            | dw_active_indicator                 | STRING    | Valid Indicator                                              |
|           |                            | dw_start_date                       | DATETIME  | Record start date                                            |
|           |                            | dw_end_date                         | DATETIME  | Record end date                                              |
|           |                            | dw_last_update_date                 | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms