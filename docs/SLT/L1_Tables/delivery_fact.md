
## Table Name : delivery_fact

| column_name                         | data_type | description                                                  |
|-------------------------------------|-----------|--------------------------------------------------------------|
| delivery_uuid                       | STRING    | Universal unique id                                          |
| delivery_key                        | STRING    | Delivery Key                                                 |
| client                              | STRING    | Client                                                       |
| delivery                            | STRING    | Delivery                                                     |
| item                                | STRING    | Delivery Item                                                |
| material_uuid                       | STRING    | Material Dimension Unique Generated Id                       |
| material_key                        | STRING    | Material key from Material Dimension                         |
| supplier_uuid                       | STRING    | Supplier Dimension Unique Generated Id                       |
| supplier_key                        | STRING    | Supplier key from Supplier Dimension                         |
| plant_uuid                          | STRING    | Plant Dimension Unique Generated Id                          |
| plant_key                           | STRING    | Plant key from Plant Dimension                               |
| customer_uuid                       | STRING    | Customer Dimension Unique Generated Id                       |
| customer_key                        | STRING    | Customer Key from Customer Dimension                         |
| customer_sales_org_uuid             | STRING    | Customer Sales Org Dimension Unique Generated Id             |
| customer_sales_org_key              | STRING    | Customer Sales Org Key from Customer Sales Org Dimension     |
| storage_location_uuid               | STRING    | Storage location Dimension Unique Generated Id               |
| storage_location_key                | STRING    | Storage location key from Storage location Dimension         |
| shipping_point_uuid                 | STRING    | Shipping Point Dimension Unique Generated Id                 |
| shipping_point_key                  | STRING    | Shipping point key from Shipping Point Dimension             |
| created_by                          | STRING    | Name of Person who Created the Object                        |
| entry_time                          | TIME      | Entry time                                                   |
| created_on                          | DATE      | Date on which the record was created                         |
| sales_district                      | STRING    | Sales District                                               |
| shipping_point                      | STRING    | Shipping Point / Receiving Point                             |
| sales_org                           | STRING    | Sales Organization                                           |
| delivery_type                       | STRING    | Delivery Type                                                |
| complete_dlv                        | STRING    | Complete Delivery Defined for Each Sales Order?              |
| order_combinat                      | STRING    | Order Combination Indicator                                  |
| planned_gds_mvmt                    | DATE      | Planned Goods Movement Date                                  |
| loading_date                        | DATE      | Loading Date                                                 |
| transpplngdate                      | DATE      | Transportation Planning Date                                 |
| delivery_date                       | DATE      | Delivery Date                                                |
| pick_date                           | DATE      | Picking Date                                                 |
| unloading_point                     | STRING    | Unloading Point                                              |
| incoterms                           | STRING    | Incoterms (Part 1)                                           |
| incoterms_2                         | STRING    | Incoterms (Part 2)                                           |
| export_indicator                    | STRING    | Export indicator                                             |
| route                               | STRING    | Route                                                        |
| billing_block                       | STRING    | Billing Block in SD Document                                 |
| delivery_block                      | STRING    | Delivery Block (Document Header)                             |
| document_cat                        | STRING    | SD Document Category                                         |
| factorycalendar                     | STRING    | Customer Factory Calendar                                    |
| means_transp_qual                   | STRING    | not currently in use                                         |
| means_of_transp_grp                 | STRING    | not currently in use                                         |
| delivery_prior                      | STRING    | Delivery Priority                                            |
| shp_cond                            | STRING    | Shipping Conditions                                          |
| ship_to_party                       | STRING    | Ship-to party                                                |
| sold_to_party                       | STRING    | Sold-To Party                                                |
| customer_group                      | STRING    | Customer Group                                               |
| wait_time_class                     | NUMERIC   | Not Currently in Use                                         |
| wait_time_surcharge                 | NUMERIC   | not currently in use                                         |
| total_weight                        | NUMERIC   | Total Weight                                                 |
| net_weight                          | NUMERIC   | Net weight                                                   |
| weight_unit                         | STRING    | Weight Unit                                                  |
| volume                              | NUMERIC   | Volume                                                       |
| volume_unit                         | STRING    | Volume unit                                                  |
| no_of_packages                      | STRING    | Total Number of Packages in Delivery                         |
| pickeditmlocat                      | STRING    | Picked Items Location                                        |
| timeofdelivery                      | TIME      | Time of delivery                                             |
| weight_group                        | STRING    | Weight Group for Delivery                                    |
| loading_point                       | STRING    | Loading Point                                                |
| trans_group                         | STRING    | Transportation Group                                         |
| dlvbillingtype                      | STRING    | Proposed billing type for a delivery-related billing doc.    |
| billing_date                        | DATE      | Billing Date                                                 |
| invoicing_dates                     | STRING    | Invoice Dates (Calendar Identification)                      |
| route_1                             | STRING    | Route                                                        |
| update_group                        | STRING    | Update Group for statistics update                           |
| procedure_pricing                   | STRING    | Procedure (Pricing, Output Control, Acct. Det., Costing,...) |
| doc_condition                       | STRING    | Number of the Document Condition                             |
| doc_currency                        | STRING    | SD document currency                                         |
| sales_office                        | STRING    | Sales office                                                 |
| total_proc_time                     | NUMERIC   | Shipping processing time for the entire document             |
| comb_criteria                       | STRING    | Combination criteria for delivery                            |
| original_doc                        | STRING    | Distribution delivery                                        |
| communicationno                     | STRING    | Communication number for Q-API interface                     |
| stats_currency                      | STRING    | Statistics Currency                                          |
| exch_rate_stats                     | NUMERIC   | Exchange rate for statistics                                 |
| foreign_trade_datanr                | STRING    | Number of foreign trade data in MM and SD documents          |
| changed_by                          | STRING    | Name of person who changed object                            |
| changed_on                          | DATE      | Date of Last Change                                          |
| warehouse_no                        | STRING    | Warehouse Number / Warehouse Complex                         |
| id_delivery_split                   | STRING    | Delivery Within one Warehouse                                |
| sales_org_icb                       | STRING    | Sales Organization for Intercompany Billing                  |
| distrib_channel                     | STRING    | Distribution channel for intercompany billing                |
| div_iv                              | STRING    | Division for intercompany billing                            |
| intercobilltype                     | STRING    | Billing type for intercompany billing                        |
| billing_date_1                      | STRING    | Date for intercompany billing                                |
| billing_date_2                      | DATE      | Billing Date for Intercompany Billing                        |
| cust_inter_co                       | STRING    | Customer number for intercompany billing                     |
| cred_contr_area                     | STRING    | Credit control area                                          |
| credit_account                      | STRING    | Customers Account Number with Credit Limit Reference         |
| cust_cred_group                     | STRING    | Customer Credit Group                                        |
| cred_rep_grp                        | STRING    | Credit Representative Group for Credit Management            |
| risk_category                       | STRING    | Credit Management: Risk Category                             |
| currency                            | STRING    | Currency key of credit control area                          |
| credit_value                        | NUMERIC   | Released credit value of the document                        |
| bill_of_lading                      | STRING    | Bill of Lading                                               |
| vendor                              | STRING    | Vendors account number                                       |
| mnsoftrns_type                      | STRING    | Means-of-Transport Type                                      |
| mns_of_trans_id                     | STRING    | Means of Transport ID                                        |
| release_date                        | DATE      | Release date of the document determined by credit management |
| next_date                           | DATE      | Next date                                                    |
| gr_gi_slip_no                       | STRING    | Goods Receipt/Issue Slip Number                              |
| document_date                       | DATE      | Document Date in Document                                    |
| actual_gi_date                      | DATE      | Actual Goods Movement Date                                   |
| shpmtblreason                       | STRING    | Shipment Blocking Reason                                     |
| id_transp_syst                      | STRING    | ID for External Transport System                             |
| ext_delivery                        | STRING    | External Identification of Delivery Note                     |
| order_number                        | STRING    | Order Number                                                 |
| search_proced                       | STRING    | Search procedure for batch determination                     |
| corr_delivery                       | STRING    | Correction delivery                                          |
| procedure_1                         | STRING    | Shipping: Pricing procedure                                  |
| doc_condition_1                     | STRING    | Number of document condition - pricing                       |
| net_value                           | NUMERIC   | Net Value of the Sales Order in Document Currency            |
| route_schedule                      | STRING    | Route Schedule                                               |
| receiving_plant                     | STRING    | Receiving Plant for Deliveries                               |
| financ_doc_no                       | STRING    | Financial doc. processing: Internal financial doc. number    |
| paym_guar_proc                      | STRING    | Payment Guarantee Procedure                                  |
| picking_time                        | TIME      | Picking Time (Local Time, with Reference to a Plant)         |
| tr_plan_time                        | TIME      | Transp. Planning Time (Local, Relating to a Shipping Point)  |
| loading_time                        | TIME      | Loading Time (Local Time Relating to a Shipping Point)       |
| gi_time                             | TIME      | Time of Goods Issue (Local, Relating to a Plant)             |
| door_for_whse                       | STRING    | Door for Warehouse Number                                    |
| staging_area                        | STRING    | Staging Area for Warehouse Complex                           |
| lettofcredcrcy                      | STRING    | Currency key for letter-of-credit procg in foreign trade     |
| lettofcredrate                      | NUMERIC   | Exchange rate for letter-of-credit procg in foreign trade    |
| depreciation                        | NUMERIC   | Depreciation percentage for financial document processing    |
| dg_mgmt_profile                     | STRING    | Dangerous Goods Management Profile in SD Documents           |
| reference                           | STRING    | Reference Document Number                                    |
| key                                 | STRING    | Worldwide unique key for LIKP-VBELN                          |
| tsegment_exists                     | STRING    | Time segment exists                                          |
| template                            | STRING    | Event group time segment delivery header                     |
| del_loc_tzone                       | STRING    | Time zone of delivering location                             |
| rec_time_zone                       | STRING    | Time zone of recipient location                              |
| contains_dg                         | STRING    | Indicator: Document contains dangerous goods                 |
| original_system                     | STRING    | Distribution delivery: Original system                       |
| ind_gds_mvmnt                       | STRING    | Indicator for controlling goods movement                     |
| transaction_code                    | STRING    | Transaction Code                                             |
| shipping_type                       | STRING    | Shipping Type                                                |
| meanstransp                         | STRING    | Means of Transport                                           |
| spec_processing                     | STRING    | Special Processing Indicator                                 |
| company_id                          | STRING    | Company ID                                                   |
| calcn_of_val_open                   | STRING    | Calculation of val. open                                     |
| immed_to                            | STRING    | Automatic TO Creation Immediately After TR Generation        |
| supply_area                         | STRING    | Production Supply Area                                       |
| delivery_type_1                     | STRING    | Delivery Type                                                |
| pod_date                            | DATE      | Date (Proof of Delivery)                                     |
| confirm_time                        | TIME      | Confirmation Time                                            |
| no_itms_pred_sys                    | INT64     | Number of Delivery Items with Precedessor in Other System    |
| in_plant                            | STRING    | Delivery has Status In Plant                                 |
| doc_delet_id                        | STRING    | Document deletion indicator                                  |
| location_seq                        | STRING    | Sequence of Intermediate Locations in Returns Process        |
| del_conf_stat                       | STRING    | Delivery Confirmation Status                                 |
| ship_info_stat                      | STRING    | Shipment Information Status                                  |
| ret_asn_canc                        | STRING    | Returns: Flag showing that an ASN is cancelled               |
| gi_time_1                           | TIME      | Time of Goods Issue (Local, Relating to a Plant)             |
| time_zone                           | STRING    | Time Zone                                                    |
| statdecntrlwhse                     | STRING    | Distribution Status (Decentralized Warehouse Processing)     |
| scenario_logistic_ex                | STRING    | Scenario Logistic Execution                                  |
| original_system_type                | STRING    | Original System Type                                         |
| changer_s_sys_type                  | STRING    | Last Changers System Type                                    |
| georoute                            | STRING    | Description of a Geographical Route                          |
| chg_ind_route                       | STRING    | Change Indicator for the Route                               |
| change_ind                          | STRING    | Change Indicator for the Carrier                             |
| gds_traffic_ty                      | STRING    | Goods Traffic Type                                           |
| gtsroutecode                        | STRING    | Route Code for SAP Global Trade Services                     |
| rls_time_stamp                      | NUMERIC   | Release Time Stamp                                           |
| msrmnt_unit_sys                     | STRING    | Measurement Unit System                                      |
| inv_bf_gi                           | STRING    | Invoice Creation Before Goods Issue                          |
| qi_status                           | STRING    | Status of Quality Inspection for Returns Deliveries          |
| redirected                          | STRING    | SPE indicator if redirecting has occured                     |
| storage_status                      | STRING    | SAP Global Trade Services: Storage Status of Delivery        |
| type_ext_ident                      | STRING    | Type of External Identification                              |
| means_of_trans                      | STRING    | Means of Transport                                           |
| pro_number                          | STRING    | Partner Identification : Progressive Identification Number   |
| akkreditiv                          | BYTES     | Akkreditiv (GUID)                                            |
| billing_indicator                   | STRING    | EWM Billing Indicator                                        |
| print_profile                       | STRING    | Description of Print Profile                                 |
| adv_returns                         | STRING    | Advanced Returns Management Active                           |
| document_log                        | STRING    | Confirmation number                                          |
| stor_loc_change                     | STRING    | Temporary Change of Storage Locations in Delivery            |
| control_key                         | STRING    | Control Key for Document Transfer to TM                      |
| spl_iinitiator                      | STRING    | Delivery Split Initiator                                     |
| dlv_version                         | STRING    | Delivery Version                                             |
| data_filter_value_for_data_agi      | DATE      | Data Filter Value for Data Aging                             |
| type_of_previous_doc                | STRING    | Type of Previous Document                                    |
| no_of_previous_doc                  | STRING    | Number of Previous Document                                  |
| mode_of_trans                       | STRING    | Mode of Transport at the Border (Intrastat)                  |
| port_airport                        | STRING    | Port/Airport                                                 |
| mode_of_transport                   | STRING    | Mode of Transport at the Border                              |
| ctry_meanstr_border                 | STRING    | Origin of Means of Transport when Crossing the Border        |
| id_means_transp_bord                | STRING    | Identifier for Means of Transport crossing the Border        |
| conveyancerefidn                    | STRING    | Cross-Border Conveyance Reference ID                         |
| mode_transp_inland                  | STRING    | Inland Mode of Transport                                     |
| ctry_meanstr_inland                 | STRING    | Country of Origin of the Means of Transport at Departure     |
| id_means_transp_inl                 | STRING    | Identification for the Means of Transport Inland             |
| handover_location                   | STRING    | Location for a physical handover of goods                    |
| handover_date                       | DATE      | Handover Date at the Handover Location                       |
| handover_time                       | TIME      | Handover time at the handover location                       |
| handoverloc_timezone                | STRING    | Time Zone of Handover Location                               |
| confirmed                           | STRING    | Confirmation Status (All Items)                              |
| value                               | STRING    | Status of Credit Check Against Maximum Document Value        |
| termsofpayment                      | STRING    | Status of Credit Check Against Terms of Payment              |
| financial_doc                       | STRING    | Status of Credit Check Against Financial Document            |
| exptcreditinsur                     | STRING    | Status of Credit Check Against Export Credit Insurance       |
| payment_card                        | STRING    | Status of Credit Check Against Payment Card Authorization    |
| sap_cred_mgmt                       | STRING    | Status of Credit Check SAP Credit Management                 |
| crma_te_status                      | STRING    | Status of Technical Error SAP Credit Management              |
| overallcredstat                     | STRING    | Overall Status of Credit Checks                              |
| totals_status                       | STRING    | Intercompany Billing Status (All Items)                      |
| billing_status                      | STRING    | Billing Status                                               |
| overall_status                      | STRING    | Overall Processing Status (Header/All Items)                 |
| hold                                | STRING    | Inbound delivery header not yet complete (on Hold)           |
| phold                               | STRING    | At least one of ID items not yet complete (on Hold)          |
| confirmation                        | STRING    | Status of Pick Confirmation                                  |
| ovr_pick_status                     | STRING    | Picking Status/Putaway Status (All Items)                    |
| overallwmstatus                     | STRING    | Status of Warehouse Management Activities (All Items)        |
| pod_status                          | STRING    | POD Status on Header Level                                   |
| packing_status                      | STRING    | Packing Status (All Items)                                   |
| temporary_inbound_delivery          | STRING    | Temporary inbound delivery                                   |
| overall_blk_st                      | STRING    | Overall Block Status (Header)                                |
| trns_plan_stat                      | STRING    | Transportation Planning Status (Header)                      |
| header_data                         | STRING    | Incompletion Status (Header)                                 |
| item_data                           | STRING    | Incompletion Status (All Items)                              |
| header_bill_dat                     | STRING    | Billing Incompletion Status (Header)                         |
| item_bill_data                      | STRING    | Billing Incompletion Status (All Items)                      |
| head_data_pckg                      | STRING    | Header Incomplete Status for Packaging                       |
| it_data_packag                      | STRING    | Totals Incomplete Status for all Items: Packaging            |
| head_data_pck_putawy                | STRING    | Header Incomplete Status for Picking/Putaway                 |
| it_data_pck_putaway                 | STRING    | Totals Incomplete Status for all Items: Picking              |
| header_dlv_data                     | STRING    | Delivery Incompletion Status (Header)                        |
| item_deliv_data                     | STRING    | Delivery Incompletion Status (All Items)                     |
| head_data_gm                        | STRING    | Post Header Incomplete Status for Goods Movement             |
| item_data_gm                        | STRING    | Total Incomplete Status of all Items: Post Goods Movement    |
| hu_in_stock                         | STRING    | Handling Unit Placed in Stock                                |
| statdecntrlwhse_1                   | STRING    | Distribution Status (Decentralized Warehouse Processing)     |
| ovrlgdsmvtstat                      | STRING    | Goods Movement Status (All Items)                            |
| hdr_reserves_1                      | STRING    | Customer reserves 1: Header status                           |
| hdr_reserves_2                      | STRING    | Customer reserves 2: Header status                           |
| hdr_reserves_3                      | STRING    | Customer reserves 3: Header status                           |
| hdr_reserves_4                      | STRING    | Custmer reserves 4: Header status                            |
| hdr_reserves_5                      | STRING    | Customer reserves 5: Header status                           |
| total_reserves1                     | STRING    | Customer reserves 1: Sum of all items                        |
| totalreserves2                      | STRING    | Customer reserves 2: Sum of all items                        |
| total_reserves3                     | STRING    | Customer reserves 3: Sum of all items                        |
| total_reserves4                     | STRING    | Customer reserves 4: Sum of all items                        |
| total_reserves5                     | STRING    | Customer reserves 5: Sum of all items                        |
| prod_marktablty_sts                 | STRING    | Total Product Marketability Check Status                     |
| dangerous_goods_sts                 | STRING    | Total Dangerous Goods Check Status                           |
| sfty_data_sheet_sts                 | STRING    | Total Safety Data Sheet Check Status                         |
| dtucsta                             | STRING    | DTUC Status                                                  |
| inco_version                        | STRING    | Incoterms Version                                            |
| inco_location1                      | STRING    | Incoterms Location 1                                         |
| inco_location2                      | STRING    | Incoterms Location 2                                         |
| extern_bol_no                       | STRING    | External bill of lading                                      |
| miscell_del_no                      | STRING    | Miscellaneous delivery number                                |
| ext_bus_syst_id                     | STRING    | External Business System ID                                  |
| spec_iss_val_sit                    | STRING    | Specification for Issuing Valuated Stock in Transit          |
| dummy_function_in_length_1          | STRING    | Dummy function in length 1                                   |
| loading_units                       | STRING    | Loading Units                                                |
| no_cat_1                            | NUMERIC   | Number Category 1                                            |
| no_cat_2                            | NUMERIC   | Number Category 2                                            |
| no_cat_3                            | NUMERIC   | Number Category 3                                            |
| no_cat_4                            | NUMERIC   | Number Category 4                                            |
| sequence_number                     | STRING    | Loading Sequence Number in the Tour                          |
| current_point                       | STRING    | Last Notified Point of the Route from Tracking               |
| arrival_departure                   | STRING    | Indicates Arrival or Departure at the Current Point          |
| curr_tme_stamp                      | NUMERIC   | Event Time Stamp for the Tracking Message at Current Point   |
| base_point                          | STRING    | Base Point for Time Estimation from Tracking                 |
| arrival_departure_1                 | STRING    | Arrival/Departure for Time Estimation                        |
| time_estim_stamp                    | NUMERIC   | Base Date for Estimation of the Delivery Date in Tracking    |
| event_estimation                    | STRING    | Various Qualifiers of the Tracking Entry                     |
| prior_point                         | STRING    | Prior Route Point From Tracking                              |
| arrival_departure_2                 | STRING    | Indicates the Arrival and Departure at Prior Point           |
| prior_tme_stamp                     | NUMERIC   | Event Time Stamp for the Tracking Message at Prior Point     |
| prior_base_pt                       | STRING    | Prior Base Point for Time Estimation from Tracking           |
| arrival_departure_3                 | STRING    | Arrival/Departure for Time Estimation                        |
| time_estim_stamp_1                  | NUMERIC   | Base Date for Estimation of the Delivery Date in Tracking    |
| event_estimation_1                  | STRING    | Various Qualifiers of the Prior Tracking Entry               |
| base_point_1                        | STRING    | Reference Point for Time Estimation from Tracking            |
| arrival_departure_4                 | STRING    | Indicates Arrival/Departure at the Reference Point           |
| time_estim_stamp_2                  | NUMERIC   | Base Date for Estimation of the Delivery Date in Tracking    |
| delivery_date_fixed                 | STRING    | Commitment Level of Delivery Date and Time                   |
| idoc_number                         | STRING    | IDoc number                                                  |
| inb_dly_group                       | STRING    | Inbound Dely Group: Multi-Level Goods Receipt Automotive     |
| kanban_indicat                      | STRING    | Kanban Indicator                                             |
| transaction_number                  | STRING    | Transaction Number                                           |
| last_vas_item_number                | STRING    | Last VAS Item Number                                         |
| vas_cust_group                      | STRING    | Value-Added Services Customer Group                          |
| psst_group                          | STRING    | PSST Group                                                   |
| jit_relevant                        | STRING    | JIT-Relevant                                                 |
| delivery_lips                       | STRING    | Delivery                                                     |
| item_category                       | STRING    | Delivery item category                                       |
| created_by_lips                     | STRING    | Name of Person who Created the Object                        |
| entry_time_lips                     | TIME      | Entry time                                                   |
| created_on_lips                     | DATE      | Date on which the record was created                         |
| material                            | STRING    | Material Number                                              |
| materialentered                     | STRING    | Material entered                                             |
| material_group                      | STRING    | Material Group                                               |
| plant                               | STRING    | Plant                                                        |
| stor_loc                            | STRING    | Storage location                                             |
| batch                               | STRING    | Batch Number                                                 |
| supplier_batch                      | STRING    | Supplier Batch Number                                        |
| customer_mat                        | STRING    | Customer Material                                            |
| prod_hierarchy                      | STRING    | Product hierarchy                                            |
| delivery_qty                        | NUMERIC   | Actual quantity delivered (in sales units)                   |
| base_unit                           | STRING    | Base Unit of Measure                                         |
| sales_unit                          | STRING    | Sales unit                                                   |
| numerator                           | NUMERIC   | Numerator (factor) for conversion of sales quantity into SKU |
| denominat                           | NUMERIC   | Denominator (Divisor) for Conversion of Sales Qty into SKU   |
| net_weight_lips                     | NUMERIC   | Net weight                                                   |
| gross_weight                        | NUMERIC   | Gross weight                                                 |
| weight_unit_lips                    | STRING    | Weight Unit                                                  |
| volume_lips                         | NUMERIC   | Volume                                                       |
| volume_unit_lips                    | STRING    | Volume unit                                                  |
| part_dlv_item                       | STRING    | Partial delivery at item level                               |
| unlimited                           | STRING    | Indicator: Unlimited Overdelivery Allowed                    |
| overdeliv_tol                       | NUMERIC   | Overdelivery Tolerance                                       |
| underdel_tol                        | NUMERIC   | Underdelivery Tolerance                                      |
| batch_split                         | STRING    | Batch split allowed                                          |
| billing_block_lips                  | STRING    | Billing Block                                                |
| mat_avail_date                      | DATE      | Material Staging/Availability Date                           |
| qty_stckp_unt                       | NUMERIC   | Actual quantity delivered in stockkeeping units              |
| item_descr                          | STRING    | Short text for sales order item                              |
| storage_bin                         | STRING    | Storage Bin                                                  |
| originating_doc                     | STRING    | Originating Document                                         |
| item_1                              | STRING    | Originating item                                             |
| document_cat_lips                   | STRING    | SD Document Category                                         |
| prdoclogsys                         | STRING    | Logical System in the Preceding Document                     |
| reference_doc                       | STRING    | Document number of the reference document                    |
| reference_item                      | STRING    | Item number of the reference item                            |
| update_doc_flow                     | STRING    | Update indicator for delivery document flow                  |
| higher_lev_item                     | STRING    | Higher-Level item in bill of material structures             |
| relev_for_bill                      | STRING    | Relevant for Billing                                         |
| loading_group                       | STRING    | Loading Group                                                |
| trans_group_lips                    | STRING    | Transportation Group                                         |
| picking_id                          | STRING    | Indicator for picking control                                |
| warehouse_no_lips                   | STRING    | Warehouse Number / Warehouse Complex                         |
| whse_no_split                       | STRING    | Split to warehouse number required                           |
| storage_type                        | STRING    | Storage Type                                                 |
| storage_bin_1                       | STRING    | Storage Bin                                                  |
| separate_val                        | STRING    | Indicator: Separate valuation                                |
| movement_type                       | STRING    | Movement type (inventory management)                         |
| movement_type_1                     | STRING    | Movement Type for Warehouse Management                       |
| ind_dynamic_bin                     | STRING    | Indicator: dynamic storage bin in warehouse management       |
| requirementtype                     | STRING    | Requirement type                                             |
| planning_type                       | STRING    | Planning type                                                |
| material_type                       | STRING    | Material type                                                |
| batch_mgmt_rqt                      | STRING    | Batch management requirement indicator                       |
| batches                             | STRING    | Batch management indicator (internal)                        |
| preced_with_ref                     | STRING    | Preceding document has resulted from reference               |
| item_type                           | STRING    | Item Type                                                    |
| valuation_type                      | STRING    | Valuation Type                                               |
| req_mt_totals                       | STRING    | Summing up of requirements                                   |
| avail_check                         | STRING    | Checking Group for Availability Check                        |
| ean_number                          | STRING    | European Article Number (EAN) - obsolete!!!!!                |
| business_area                       | STRING    | Business Area                                                |
| sales_office_lips                   | STRING    | Sales office                                                 |
| sales_group                         | STRING    | Sales group                                                  |
| distr_channel                       | STRING    | Distribution Channel                                         |
| division                            | STRING    | Division                                                     |
| delivery_group                      | STRING    | Delivery Group (Items are delivered together)                |
| qty_is_fixed                        | STRING    | Quantity is fixed                                            |
| max_part_deliv                      | NUMERIC   | Maximum Number of Partial Deliveries Allowed Per Item        |
| fixed_proc_time                     | NUMERIC   | Fixed shipping processing time in days (= setup time)        |
| var_proc_time                       | NUMERIC   | Variable shipping processing time in days                    |
| update_group_lips                   | STRING    | Update Group for statistics update                           |
| cost                                | NUMERIC   | Cost in document currency                                    |
| subtotal_1                          | NUMERIC   | Subtotal 1 from pricing procedure for condition              |
| subtotal_2                          | NUMERIC   | Subtotal 2 from pricing procedure for condition              |
| subtotal_3                          | NUMERIC   | Subtotal 3 from pricing procedure for condition              |
| subtotal_4                          | NUMERIC   | Subtotal 4 from pricing procedure for condition              |
| subtotal_5                          | NUMERIC   | Subtotal 5 from pricing procedure for condition              |
| subtotal_6                          | NUMERIC   | Subtotal 6 from pricing procedure for condition              |
| special_stock                       | STRING    | Special Stock Indicator                                      |
| changed_on_lips                     | DATE      | Date of Last Change                                          |
| ean_upc                             | STRING    | International Article Number (EAN/UPC)                       |
| customer_grp_1                      | STRING    | Customer group 1                                             |
| customer_grp_2                      | STRING    | Customer group 2                                             |
| customer_grp_3                      | STRING    | Customer group 3                                             |
| customer_grp_4                      | STRING    | Customer group 4                                             |
| customer_grp_5                      | STRING    | Customer group 5                                             |
| materialgroup_1                     | STRING    | Material group 1                                             |
| materialgroup_2                     | STRING    | Material group 2                                             |
| materialgroup_3                     | STRING    | Material group 3                                             |
| materialgroup_4                     | STRING    | Material group 4                                             |
| materialgroup_5                     | STRING    | Material group 5                                             |
| allocation_ind                      | STRING    | Allocation Indicator                                         |
| prec_doc_categ                      | STRING    | Document Category of Preceding SD Document                   |
| preceddoccentrl                     | STRING    | Type of preceding document in central system (long)          |
| cost_center                         | STRING    | Cost Center                                                  |
| co_area                             | STRING    | Controlling Area                                             |
| profit_segment                      | STRING    | Profitability Segment Number (CO-PA)                         |
| profit_center                       | STRING    | Profit Center                                                |
| wbs_element                         | STRING    | Work Breakdown Structure Element (WBS Element)               |
| order_number_lips                   | STRING    | Order Number                                                 |
| order_item_no                       | STRING    | Order item number                                            |
| sales_order                         | STRING    | Sales Order Number                                           |
| sales_ord_item                      | STRING    | Item number in Sales Order                                   |
| plng_material                       | STRING    | Planning material                                            |
| planning_plant                      | STRING    | Planning plant                                               |
| prod_grp_unit                       | STRING    | Base unit of measure for product group                       |
| conversion                          | FLOAT64   | Conversion factor: quantities                                |
| acct_assgmt_cat                     | STRING    | Account Assignment Category                                  |
| consumption                         | STRING    | Consumption posting                                          |
| commitment_item                     | STRING    | Commitment Item                                              |
| funds_center                        | STRING    | Funds Center                                                 |
| fund                                | STRING    | Fund                                                         |
| packing_control                     | STRING    | Packing Control                                              |
| reqmts_class                        | STRING    | Requirements class                                           |
| credit_active                       | STRING    | ID: Item with active credit function / relevant for credit   |
| cumul_batch_qty                     | NUMERIC   | Cumulative batch quantity of all split items (in StckUnit)   |
| cum_gross_wght                      | NUMERIC   | Cumulative gross weight of all batch split items             |
| cumul_net_wght                      | NUMERIC   | Cumulative net weight of all batch split items               |
| cumul_volume                        | NUMERIC   | Cumulative volume of all batch split items                   |
| hghlevitmbatch                      | STRING    | Higher-Level Item of Batch Split Item                        |
| configuration                       | STRING    | Configuration                                                |
| int_object_no                       | STRING    | Internal object number of the batch classification           |
| no_serial_no                        | INT64     | Number of serial numbers                                     |
| serialnoprofile                     | STRING    | Serial Number Profile                                        |
| weight_unit_1                       | STRING    | Weight Unit                                                  |
| volume_unit_1                       | STRING    | Volume unit                                                  |
| bom_expl_number                     | STRING    | BOM explosion number                                         |
| int_dlv_scd_no                      | STRING    | Internal delivery schedule number                            |
| release_type                        | STRING    | Release type                                                 |
| usage                               | STRING    | Usage Indicator                                              |
| inspection_lot                      | STRING    | Inspection Lot Number                                        |
| partial_lot                         | STRING    | Partial lot number                                           |
| no_gr_posted                        | STRING    | Customer has not posted goods receipt                        |
| matl_grp_pckmat                     | STRING    | Material Group: Packaging Materials                          |
| object_no_hdr                       | STRING    | Object Number at Header Level                                |
| objno_item                          | STRING    | Object Number at Item Level                                  |
| engin_change                        | STRING    | Customer Engineering Change Status                           |
| returns_item                        | STRING    | Returns Item                                                 |
| matdetermactive                     | STRING    | ID for material determination                                |
| usage_hl_item                       | STRING    | ID for higher-level item usage                               |
| recv_point                          | STRING    | Receiving Point                                              |
| department                          | STRING    | Department number                                            |
| confirmation_lips                   | STRING    | Picking is subject to confirmation                           |
| statistics_date                     | DATE      | Statistics date                                              |
| promotion                           | STRING    | Promotion                                                    |
| nocondrec_batch                     | STRING    | Number of condition record from batch determination          |
| cus_preference                      | STRING    | Customs Preference                                           |
| bus_trans_type                      | STRING    | Business Transaction Type                                    |
| int_class_no                        | STRING    | Internal Class Number                                        |
| qty_proposal                        | STRING    | Batches: Exit to quantity proposal                           |
| alloc_table                         | STRING    | Allocation Table                                             |
| item_2                              | STRING    | Allocation Table Item                                        |
| internal_field_do_not_use           | FLOAT64   | Internal field/ Do not use     / LFIMG in float / MUM        |
| internal_field_do_not_use_1         | FLOAT64   | Internal field/ Do not use     / LGMNG in float / MUM        |
| internal_field_do_not_use_2         | FLOAT64   | Internal field/ Do not use     / KCMENG in float / MUM       |
| envt_relevant                       | STRING    | Environmentally Relevant                                     |
| quantity                            | NUMERIC   | Component Quantity                                           |
| at_relevant                         | STRING    | Relevant to Allocation Table                                 |
| pricing_unit                        | NUMERIC   | Condition Pricing Unit                                       |
| unit_of_measure                     | STRING    | Condition Unit                                               |
| net_price                           | NUMERIC   | Net Price                                                    |
| net_value_lips                      | NUMERIC   | Net Value in Document Currency                               |
| stat_value                          | STRING    | Statistical Values                                           |
| movement_ind                        | STRING    | Movement Indicator                                           |
| mat_freight_grp                     | STRING    | Material freight group                                       |
| pack_acc_batch                      | STRING    | Pack accumulated batches / movement type item                |
| paytguarantform                     | STRING    | Form of payment guarantee                                    |
| guaranteed                          | FLOAT64   | Guaranteed (factor between 0 and 1)                          |
| matl_staging_tme                    | TIME      | Material Staging Time (Local, Relating to a Plant)           |
| value_contract_no                   | STRING    | Value Contract No.                                           |
| val_cont_item                       | STRING    | Value Contract Item                                          |
| cfop                                | STRING    | CFOP Code and Extension                                      |
| icms_law                            | STRING    | Tax law: ICMS                                                |
| ipi_law                             | STRING    | Tax law: IPI                                                 |
| tax_code                            | STRING    | SD tax code                                                  |
| situation                           | STRING    | Indicator for situation                                      |
| reservation_number                  | STRING    | Number of reservation/dependent requirements                 |
| item_no                             | STRING    | Item Number of Reservation / Dependent Requirements          |
| record_type                         | STRING    | Record type                                                  |
| sequence_number_lips                | STRING    | KANBAN/Sequence Number                                       |
| leading_uom                         | STRING    | ID: Leading unit of measure for completing a transaction     |
| dgindprofile                        | STRING    | Dangerous Goods Indicator Profile                            |
| cumul_batch_qty_1                   | NUMERIC   | Cumulative batch quantity of all split items in sales units  |
| cumulated_batch_split_quantity      | FLOAT64   | Cumulated batch split quantity in VRKME and float            |
| valuation                           | STRING    | Valuation of Special Stock                                   |
| project_def                         | STRING    | Project (internal)                                           |
| withdr_seq_grp                      | STRING    | Withdrawal Sequence Group for Stocks                         |
| stk_determ_rule                     | STRING    | Stock Determination Rule                                     |
| inv_mgmt_active                     | STRING    | Indicator Inventory Management active                        |
| mfr_part_profile                    | STRING    | Mfr part profile                                             |
| mpn_material                        | STRING    | Material number corresponding to manufacturer part number    |
| staging_area_lips                   | STRING    | Staging Area for Warehouse Complex                           |
| key_lips                            | STRING    | Worldwide unique key for LIPS-VBELN & LIPS_POSNR             |
| orig_item                           | STRING    | Distribution delivery: Original item                         |
| ext_item                            | STRING    | External item number                                         |
| no_avail_check                      | STRING    | Indicator: deactivate availability check                     |
| not_rel_picking                     | STRING    | Indicator: not relevant for picking                          |
| refmvttype_wm                       | STRING    | Reference movement type for WM from material movements       |
| mrp_area                            | STRING    | MRP Area                                                     |
| stock_category                      | STRING    | Stock Category in the Warehouse Management System            |
| stock_category_1                    | STRING    | Stock Category in the Warehouse Management System            |
| receiving_mat                       | STRING    | Receiving/Issuing Material                                   |
| receiving_plant_lips                | STRING    | Receiving plant/issuing plant                                |
| receiving_sloc                      | STRING    | Receiving/issuing storage location                           |
| receiving_batch                     | STRING    | Receiving/Issuing Batch                                      |
| val_type_tfr                        | STRING    | Valuation Type of Transfer Batch                             |
| sp_ind_st_tfr                       | STRING    | Special stock indicator for physical stock transfer          |
| spec_stock_no                       | STRING    | Special Stock Number                                         |
| spec_stock_no_1                     | STRING    | Special Stock Number                                         |
| lettofcredrate_lips                 | NUMERIC   | Exchange rate for letter-of-credit procg in foreign trade    |
| current_qty                         | STRING    | Current Qty Field for Arithmetic Operations in Doc.Process.  |
| class_of_items                      | STRING    | Repair Processing: Classification of Items                   |
| main_posting_id                     | STRING    | Indicator: UNMAT in main posting                             |
| stock_type                          | STRING    | Stock Type                                                   |
| enter_batch                         | STRING    | Determination of batch entry in the production/process order |
| indicator_copy_dest_storage         | STRING    | Indicator: Copy dest. storage data from preceding document   |
| staging_ind                         | STRING    | Material Staging Indicator for Production Supply             |
| indicator_delivery_item_is_a        | STRING    | Indicator: Delivery item is a HU item                        |
| no_gds_movement                     | STRING    | Indicator: Item Not Relevant for Goods Movements             |
| g_l_account                         | STRING    | G/L Account Number                                           |
| final_issue                         | STRING    | Final issue for this reservation                             |
| date_of_manuf                       | DATE      | Date of Manufacture                                          |
| sled_bbd                            | DATE      | Shelf Life Expiration or Best-Before Date                    |
| year_cur_period                     | STRING    | Fiscal Year of Current Period                                |
| reference_doc_1                     | STRING    | Document No. of a Reference Document                         |
| ref_doc_item                        | STRING    | Item of a Reference Document                                 |
| reason_for_mvt                      | STRING    | Reason for goods movment                                     |
| sub_movmnt_type                     | STRING    | Subsequent movement type                                     |
| delivery_cat                        | STRING    | Delivery Category                                            |
| ext_amount_lc                       | NUMERIC   | Externally Entered Posting Amount in Local Currency          |
| qty_in_opun                         | NUMERIC   | Quantity in Purchase Order Price Unit                        |
| sales_value                         | NUMERIC   | Externally Entered Sales Value in Local Currency             |
| credit_price                        | FLOAT64   | Item Credit Price                                            |
| pod_indicator                       | STRING    | POD indicator (relevance, verification, confirmation)        |
| not_wms_relevnt                     | STRING    | Not relevant for distribution for WMS                        |
| conversionfactr                     | FLOAT64   | Conversion Factor of Delivery Quantity VRKME for MEINS       |
| pod_rel_rc_sc                       | STRING    | POD Control (Proof of Delivery)                              |
| st_tfr_tfr_pst                      | STRING    | Stock transfer/transfer posting                              |
| functional_area                     | STRING    | Functional Area                                              |
| grants                              | STRING    | Grant                                                        |
| units_meas_use                      | STRING    | Units of measure usage                                       |
| gds_mvmt_contrl                     | STRING    | Goods Movement Control                                       |
| wbwkz                               | STRING    | Goods Movement Control: HU                                   |
| trsfr_wbs_elmnt                     | STRING    | Receiving/Issuing (WBS Element)                              |
| sequential_no                       | STRING    | Sequential Number of Supplier Confirmation                   |
| deliv_compl                         | STRING    | Delivery Completed Indicator                                 |
| scrap_indicator                     | STRING    | Scrap Indicator for EWM Processing                           |
| rma_number                          | STRING    | Return Material Authorization Number                         |
| inspection_guid                     | BYTES     | Inspections: Inspection outcome GUID set by EWM              |
| follow_up_code                      | STRING    | Default Follow-Up Activity Code                              |
| end_validity_period                 | NUMERIC   | End date of validity period of returns delivery              |
| end_internal_val                    | NUMERIC   | End date of internal validity period of returns delivery     |
| rma_no_completed                    | STRING    | RMA completion indicator                                     |
| delivery_qty_1                      | NUMERIC   | Original Quantity of Delivery Item                           |
| atp_time_stamp                      | NUMERIC   | ATP Time Stamp                                               |
| original_system_type_lips           | STRING    | Original System Type                                         |
| cq_vendor                           | NUMERIC   | Cumulative Qty for SchedAgr - Vendors Point of View          |
| in_plant_lips                       | STRING    | Inbound Delivery item has Status In Plant                    |
| ext_ident                           | STRING    | External item identifier                                     |
| except_code_wh                      | STRING    | Exception Code Warehouse for Quantity Difference             |
| retention_qty                       | NUMERIC   | Retention Quantity for Scrap. Process in EWM                 |
| alt_prodnr                          | STRING    | Alternate Product Number                                     |
| reasn                               | STRING    | Reason for material substitution                             |
| structure                           | STRING    | Structure of Items That Are Delivered Together               |
| numerator_1                         | NUMERIC   | Numerator of Quotient for Unit of Measure Conversion         |
| denominator                         | NUMERIC   | Denominator of Quotient for Unit of Measure Conversion       |
| ctry_of_origin                      | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| begin_valid_period                  | NUMERIC   | Begin date of validity period of returns delivery            |
| deliveryvsn                         | STRING    | Delivery Version at Confirmation                             |
| gm_completion                       | STRING    | Completion of Goods Movements after Difference Postings      |
| cofins_law                          | STRING    | COFINS Tax Law                                               |
| pis_law                             | STRING    | PIS Tax Law                                                  |
| iss_law                             | STRING    | ISS Tax Law                                                  |
| budget_period                       | STRING    | Budget Period                                                |
| kanban_indicat_lips                 | STRING    | Kanban Indicator                                             |
| type                                | STRING    | Revenue Accounting Type                                      |
| spec_iss_val_sit_lips               | STRING    | Specification for Issuing Valuated Stock in Transit          |
| reqmnt_segment                      | STRING    | Requirement Segment                                          |
| stock_segment                       | STRING    | Stock Segment                                                |
| confirmed_lips                      | STRING    | Confirmation Status (Item)                                   |
| financial_doc_lips                  | STRING    | Status of Credit Check Against Financial Document            |
| exptcreditinsur_lips                | STRING    | Status of Credit Check Against Export Credit Insurance       |
| interco_billst                      | STRING    | Intercompany Billing Status (Item)                           |
| billing_status_lips                 | STRING    | Delivery-Related Billing Status (Item)                       |
| overall_status_lips                 | STRING    | Overall Processing Status (Item)                             |
| dlyitemnotcomp                      | STRING    | Inbound Delivery Item Not Yet Complete (on Hold)             |
| confirmation_1                      | STRING    | Confirmation status of picking/putaway                       |
| picking_status                      | STRING    | Picking Status/Putaway Status (Item)                         |
| wm_activ_status                     | STRING    | Status of Warehouse Management Activities (Item)             |
| pod_status_lips                     | STRING    | POD status on item level                                     |
| packing_status_lips                 | STRING    | Packing Status (Item)                                        |
| item_3                              | STRING    | Incompletion Status (Item)                                   |
| item_bill_data_lips                 | STRING    | Billing Incompletion Status (Item)                           |
| it_data_pckgng                      | STRING    | Incomplete status of item for packaging                      |
| item_data_pck_putawy                | STRING    | Incomplete status of item for picking/putaway                |
| item_deliv_data_lips                | STRING    | Delivery Incompletion Status (Item)                          |
| item_data_gm_lips                   | STRING    | Incomplete status of item regarding goods issue              |
| decentr_whse                        | STRING    | Decentralized whse processing                                |
| goodsmovementst                     | STRING    | Goods Movement Status                                        |
| item_reserves_1                     | STRING    | Customer reserves 1: Item status                             |
| item_reserves_2                     | STRING    | Customer reserves 2: Item status                             |
| item_reserves_3                     | STRING    | Item reserves 3: Item status                                 |
| item_reserves_4                     | STRING    | Item reserves 4: Item status                                 |
| item_reserves_5                     | STRING    | Customer reserves 5: Item status                             |
| embargo_status                      | STRING    | Embargo Check Status (Item)                                  |
| wls_status                          | STRING    | Watch List Screening Check Status                            |
| ovr_status                          | STRING    | Legal Control Check Status                                   |
| prod_marktablty_sts_lips            | STRING    | Product Marketability Check Status                           |
| prod_marktablty_sts_1               | STRING    | Dangerous Goods Check Status                                 |
| sfty_data_sheet_sts_lips            | STRING    | Safety Data Sheet Check Status                               |
| dtucsta_lips                        | STRING    | DTUC Status                                                  |
| data_filter_value_for_data_agi_lips | DATE      | Data Filter Value for Data Aging                             |
| deliv_qty_puom                      | NUMERIC   | Actual Delivered Quantity in Parallel Unit of Measure        |
| cwm_duom                            | STRING    | CWM Delivery Unit of Measure                                 |
| picked_qty_puom                     | NUMERIC   | Quantity Picked/Placed in Storage in Parallel UoM            |
| puom_qty_picked                     | STRING    | Picked/Stored Parallel Unit of Measure                       |
| pq_entered                          | STRING    | Indicator Stating Whether Quantity Clearly Entered in PUoM   |
| to_entry                            | STRING    | Indicator Stating Whether Qty to Be Entered in PUoM in TO    |
| cum_cw_batch_qty                    | NUMERIC   | Cumulatd CWM Batch Quantity of all Split Items (in StckUnit) |
| qty_to_post_in_puom                 | NUMERIC   | Quantity to Be Posted in PUoM                                |
| dummy_function_in_length_1_lips     | STRING    | Dummy function in length 1                                   |
| inverted                            | STRING    | Inverted Flag                                                |
| dtuc                                | STRING    | DTUC Complete                                                |
| prov_conv_fact                      | STRING    | Mill: Indicator Provisional Conversion Factors               |
| door_for_whse_lips                  | STRING    | Door for Warehouse Number                                    |
| season_year                         | STRING    | Season Year                                                  |
| season                              | STRING    | Season                                                       |
| collection                          | STRING    | Fashion Collection                                           |
| theme                               | STRING    | Fashion Theme                                                |
| customer_grp_6                      | STRING    | Customer Group 6                                             |
| customer_grp_7                      | STRING    | Customer Group 7                                             |
| customer_grp_8                      | STRING    | Customer Group 8                                             |
| customer_grp_5_1                    | STRING    | Customer Group 9                                             |
| customer_grp_10                     | STRING    | Customer Group 10                                            |
| vas_relevant                        | STRING    | VAS Relevant                                                 |
| item_4                              | STRING    | Delivery Item                                                |
| transaction_number_lips             | STRING    | Transaction Number                                           |
| item_group                          | STRING    | Item Group                                                   |
| item_number                         | STRING    | Item Number                                                  |
| reservation_1                       | STRING    | Number of reservation/dependent requirements                 |
| item_no_1                           | STRING    | Item Number of Reservation / Dependent Requirements          |
| ob_purity                           | STRING    | Batch Determination for Original Batches                     |
| consignment                         | STRING    | Purchase Order for Consignment                               |
| characteristic_1                    | STRING    | Characteristic Value 1                                       |
| characteristic_2                    | STRING    | Characteristic Value 2                                       |
| characteristic_3                    | STRING    | Characteristic Value 3                                       |
| finalmd5key                         | STRING    | MD5 key combining all columns                                |
| input_last_update_date              | DATETIME  | Last Input read time                                         |
| dw_active_indicator                 | STRING    | Valid Indicator                                              |
| dw_start_date                       | DATETIME  | Record start date                                            |
| dw_end_date                         | DATETIME  | Record end date                                              |
| dw_last_update_date                 | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms