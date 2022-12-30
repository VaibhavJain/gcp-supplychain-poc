
## Table Name : sales_order_fact

| column_name                         | data_type | description                                                      |
|-------------------------------------|-----------|------------------------------------------------------------------|
| sales_order_uuid                    | STRING    | Unique Generated Id                                              |
| sales_order_key                     | STRING    | Sales order Key                                                  |
| client                              | STRING    | Client                                                           |
| sales_document                      | STRING    | Sales Document                                                   |
| item                                | STRING    | Sales Document Item                                              |
| schedule_line                       | STRING    | Schedule Line Number                                             |
| material_uuid                       | STRING    | Material Dimension Unique Generated Id                           |
| material_key                        | STRING    | Material key from Material Dimension                             |
| supplier_uuid                       | STRING    | Supplier Dimension Unique Generated Id                           |
| supplier_key                        | STRING    | Supplier key from Supplier Dimension                             |
| plant_uuid                          | STRING    | Plant Dimension Unique Generated Id                              |
| plant_key                           | STRING    | Plant key from Plant Dimension                                   |
| storage_location_uuid               | STRING    | Storage location Dimension Unique Generated Id                   |
| storage_location_key                | STRING    | Storage location key from Storage location Dimension             |
| customer_sales_org_uuid             | STRING    | Customer Sales Org Dimension Unique Generated Id                 |
| customer_sales_org_key              | STRING    | Customer Sale Organization Key from Customer Sales Org Dimension |
| shipping_point_uuid                 | STRING    | Shipping Point Dimension Unique Generated Id                     |
| shipping_point_key                  | STRING    | Shipping Point key from Shipping Point Dimension                 |
| customer_uuid                       | STRING    | Customer Dimension Unique Generated Id                           |
| customer_key                        | STRING    | Customer Key from Customer Dimension                             |
| created_on                          | DATE      | Date on which the record was created                             |
| entry_time                          | TIME      | Entry time                                                       |
| created_by                          | STRING    | Name of Person who Created the Object                            |
| valid_from                          | DATE      | Quotation/Inquiry is Valid From                                  |
| valid_to                            | DATE      | Date Until Which Bid/Quotation is Binding (Valid-To Date)        |
| document_date                       | DATE      | Document Date (Date Received/Sent)                               |
| document_cat                        | STRING    | SD Document Category                                             |
| transact_group                      | STRING    | Transaction Group                                                |
| sales_doc_type                      | STRING    | Sales Document Type                                              |
| order_reason                        | STRING    | Order Reason (Reason for the Business Transaction)               |
| begin_guarantee                     | DATE      | Guarantee date                                                   |
| collective_no                       | STRING    | Collective Number (SD)                                           |
| delivery_block                      | STRING    | Delivery Block (Document Header)                                 |
| billing_block                       | STRING    | Billing Block in SD Document                                     |
| net_value                           | NUMERIC   | Net Value of the Sales Order in Document Currency                |
| doc_currency                        | STRING    | SD document currency                                             |
| sales_org                           | STRING    | Sales Organization                                               |
| distr_channel                       | STRING    | Distribution Channel                                             |
| division                            | STRING    | Division                                                         |
| sales_group                         | STRING    | Sales group                                                      |
| sales_office                        | STRING    | Sales office                                                     |
| business_area                       | STRING    | Business Area                                                    |
| business_area_1                     | STRING    | Business Area from Cost Center                                   |
| valid_from_1                        | DATE      | Valid-From Date (Outline Agreements, Product Proposals)          |
| valid_to_1                          | DATE      | Valid-To Date (Outline Agreements, Product Proposals)            |
| doc_condition                       | STRING    | Number of the Document Condition                                 |
| reqd_deliv_date                     | DATE      | Requested Delivery Date                                          |
| prop_date_type                      | STRING    | Proposed date type                                               |
| complete_dlv                        | STRING    | Complete Delivery Defined for Each Sales Order?                  |
| original_system                     | STRING    | Original system with release and transaction control             |
| indicator                           | STRING    | SD document indicator                                            |
| pric_procedure                      | STRING    | Pricing Procedure in Pricing                                     |
| shp_cond                            | STRING    | Shipping Conditions                                              |
| ord_rel_bill_ty                     | STRING    | Proposed billing type for an order-related billing document      |
| probability                         | STRING    | Sales probability                                                |
| description                         | STRING    | Search term for product proposal                                 |
| cust_reference                      | STRING    | Customer Reference                                               |
| pur_ord_type                        | STRING    | Customer Purchase Order Type                                     |
| cust_ref_date                       | DATE      | Customer Reference Date                                          |
| supplement                          | STRING    | Purchase order number supplement                                 |
| your_reference                      | STRING    | Your Reference                                                   |
| name                                | STRING    | Name of orderer                                                  |
| telephone                           | STRING    | Telephone Number                                                 |
| no_of_contacts                      | NUMERIC   | Number of Contacts from the Customer                             |
| last_contact_dt                     | DATE      | Last Customer Contact Date                                       |
| sold_to_party                       | STRING    | Sold-To Party                                                    |
| cost_center                         | STRING    | Cost Center                                                      |
| update_group                        | STRING    | Update Group for statistics update                               |
| stats_currency                      | STRING    | Statistics Currency                                              |
| changed_on                          | DATE      | Date of Last Change                                              |
| customer_grp_1                      | STRING    | Customer group 1                                                 |
| customer_grp_2                      | STRING    | Customer group 2                                                 |
| customer_grp_3                      | STRING    | Customer group 3                                                 |
| customer_grp_4                      | STRING    | Customer group 4                                                 |
| customer_grp_5                      | STRING    | Customer group 5                                                 |
| agreement                           | STRING    | Agreement (various conditions grouped together)                  |
| co_area                             | STRING    | Controlling Area                                                 |
| wbs_element                         | STRING    | Work Breakdown Structure Element (WBS Element)                   |
| exch_rate_type                      | STRING    | Exchange Rate Type                                               |
| cred_contr_area                     | STRING    | Credit control area                                              |
| credit_account                      | STRING    | Customers Account Number with Credit Limit Reference             |
| cust_cred_group                     | STRING    | Customer Credit Group                                            |
| cred_rep_grp                        | STRING    | Credit Representative Group for Credit Management                |
| risk_category                       | STRING    | Credit Management: Risk Category                                 |
| currency                            | STRING    | Currency key of credit control area                              |
| release_date                        | DATE      | Release date of the document determined by credit management     |
| next_check                          | DATE      | Date of Next Credit Check of Document                            |
| next_date                           | DATE      | Next date                                                        |
| credit_value                        | NUMERIC   | Released credit value of the document                            |
| hiertypepricing                     | STRING    | Hierarchy type for pricing                                       |
| usage                               | STRING    | Usage Indicator                                                  |
| mrp_for_ds_type                     | STRING    | MRP for delivery schedule types                                  |
| reference_doc                       | STRING    | Document number of the reference document                        |
| object_no_hdr                       | STRING    | Object Number at Header Level                                    |
| ccodetobebilled                     | STRING    | Company Code to Be Billed                                        |
| alt_tax_class                       | STRING    | Alternative Tax Classification                                   |
| taxclass2_cust                      | STRING    | Tax Classification 2 for Customer                                |
| taxclass3_cust                      | STRING    | Tax classification 3 for customer                                |
| taxclass4_cust                      | STRING    | Tax Classification 4 Customer                                    |
| taxclass5_cust                      | STRING    | Tax Classification 5 for Customer                                |
| taxclass6_cust                      | STRING    | Tax Classification 6 for Customer                                |
| taxclass7_cust                      | STRING    | Tax Classification 7 for Customer                                |
| taxclass8_cust                      | STRING    | Tax Classification 8 for Customer                                |
| taxclass9_cust                      | STRING    | Tax Classification 9 for Customer                                |
| reference                           | STRING    | Reference Document Number                                        |
| assignment_number                   | STRING    | Assignment number                                                |
| prec_doc_categ                      | STRING    | Document Category of Preceding SD Document                       |
| search_proced                       | STRING    | Search procedure for batch determination                         |
| accrual_period                      | STRING    | Accrual period for order-related billing docs.to be accrued      |
| order_number                        | STRING    | Order Number                                                     |
| notification                        | STRING    | Notification Number                                              |
| master_contract                     | STRING    | Master Contract Number                                           |
| ref_procedure                       | STRING    | Referencing requirement: Procedure                               |
| check_partner                       | STRING    | Check partner authorizations                                     |
| pick_up_date                        | DATE      | Pick-Up Date                                                     |
| pick_up_time                        | TIME      | Pick-Up Time                                                     |
| pick_up_time_1                      | TIME      | Pick-Up Time                                                     |
| paym_ca_pl_no                       | STRING    | Number of payment card plan type                                 |
| req_dely_time                       | TIME      | Proposed schedule line time (local with ref. to sales org.)      |
| tax_dest_cntry                      | STRING    | Tax Destination Country                                          |
| tax_depart_cty                      | STRING    | Tax Departure Country                                            |
| eu_triang_deal                      | STRING    | Indicator: Triangular Deal Within the EU?                        |
| block_master_contr_until_all        | STRING    | Block master contr. until all lower level contracts updated      |
| cmlqtydate                          | DATE      | Cml delivery order qty date                                      |
| mat_avail_date                      | DATE      | Material Staging/Availability Date                               |
| version                             | STRING    | Sales document version number                                    |
| int_id                              | STRING    | International unique key for VBAK-VBELN                          |
| dg_mgmt_profile                     | STRING    | Dangerous Goods Management Profile in SD Documents               |
| contains_dg                         | STRING    | Indicator: Document contains dangerous goods                     |
| char_70                             | STRING    | Character field, length 70                                       |
| time_stamp                          | NUMERIC   | UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)              |
| process_id_no                       | STRING    | Process Identification Number                                    |
| control_key                         | STRING    | Control Key for Document Transfer to TM                          |
| location_id                         | STRING    | Business location identifier (IS-Oil MRN)                        |
| last_changed_by                     | STRING    | User Who Last Changed the Business Document                      |
| handover_location                   | STRING    | Location for a physical handover of goods                        |
| ext_bus_syst_id                     | STRING    | External Business System ID                                      |
| external_document_id                | STRING    | External Document ID                                             |
| external_revision                   | NUMERIC   | Timestamp for Revision of External Calls                         |
| approval_status                     | STRING    | Sales Document Approval Status                                   |
| apprvl_req_rsn_id                   | STRING    | Approval Request Reason ID                                       |
| apprvl_req_rjcn_rsn                 | STRING    | ID of Reason for Rejection of Approval Request                   |
| data_filter_value_for_data_agi      | DATE      | Data Filter Value for Data Aging                                 |
| rejection_sts                       | STRING    | Rejection Status (All Items)                                     |
| confirmed                           | STRING    | Confirmation Status (All Items)                                  |
| value                               | STRING    | Status of Credit Check Against Maximum Document Value            |
| termsofpayment                      | STRING    | Status of Credit Check Against Terms of Payment                  |
| financial_doc                       | STRING    | Status of Credit Check Against Financial Document                |
| exptcreditinsur                     | STRING    | Status of Credit Check Against Export Credit Insurance           |
| payment_card                        | STRING    | Status of Credit Check Against Payment Card Authorization        |
| sap_cred_mgmt                       | STRING    | Status of Credit Check SAP Credit Management                     |
| crma_te_status                      | STRING    | Status of Technical Error SAP Credit Management                  |
| overallcredstat                     | STRING    | Overall Status of Credit Checks                                  |
| confirm_status                      | STRING    | Confirmation Status for ALE                                      |
| delay_status                        | STRING    | Delay Status (All Items)                                         |
| bill_stat_order                     | STRING    | Billing Status (Order-Related Billing Document)                  |
| status_funds_mgmt                   | STRING    | Status Funds Management                                          |
| ov_b_blk_stat                       | STRING    | Billing Block Status (All Items)                                 |
| overall_status                      | STRING    | Overall Processing Status (Header/All Items)                     |
| ovrl_delvry_sts                     | STRING    | Overall Delivery Status (All Items)                              |
| delivery_status                     | STRING    | Delivery Status (All Items)                                      |
| dlv_blk_status                      | STRING    | Overall Delivery Block Status (All Items)                        |
| manual_completion                   | STRING    | Manual Completion of Contract                                    |
| total_refstatus                     | STRING    | Overall Reference Status (All Items)                             |
| ref_status                          | STRING    | Reference Status (All Items)                                     |
| overall_blk_st                      | STRING    | Overall Block Status (Header)                                    |
| trns_plan_stat                      | STRING    | Transportation Planning Status (Header)                          |
| header_data                         | STRING    | Incompletion Status (Header)                                     |
| item_data                           | STRING    | Incompletion Status (All Items)                                  |
| header_bill_dat                     | STRING    | Billing Incompletion Status (Header)                             |
| item_bill_data                      | STRING    | Billing Incompletion Status (All Items)                          |
| pricing                             | STRING    | Pricing Incompletion Status (All Items)                          |
| header_dlv_data                     | STRING    | Delivery Incompletion Status (Header)                            |
| item_deliv_data                     | STRING    | Delivery Incompletion Status (All Items)                         |
| hdr_reserves_1                      | STRING    | Customer reserves 1: Header status                               |
| hdr_reserves_2                      | STRING    | Customer reserves 2: Header status                               |
| hdr_reserves_3                      | STRING    | Customer reserves 3: Header status                               |
| hdr_reserves_4                      | STRING    | Custmer reserves 4: Header status                                |
| hdr_reserves_5                      | STRING    | Customer reserves 5: Header status                               |
| total_reserves1                     | STRING    | Customer reserves 1: Sum of all items                            |
| totalreserves2                      | STRING    | Customer reserves 2: Sum of all items                            |
| total_reserves3                     | STRING    | Customer reserves 3: Sum of all items                            |
| total_reserves4                     | STRING    | Customer reserves 4: Sum of all items                            |
| total_reserves5                     | STRING    | Customer reserves 5: Sum of all items                            |
| ovrlgdsmvtstat                      | STRING    | Goods Movement Status (All Items)                                |
| embargo_status                      | STRING    | Embargo Check Status (All Items)                                 |
| wls_sts                             | STRING    | Total Watch List Screening Check Status                          |
| total_legal_status                  | STRING    | Legal Control Status                                             |
| prod_marktablty_sts                 | STRING    | Product Marketability Check Status (All Items)                   |
| dangerous_goods_sts                 | STRING    | Dangerous Goods Check Status (All Items)                         |
| sfty_data_sheet_sts                 | STRING    | Safety Data Sheet Check Status (All Items)                       |
| down_payment_status                 | STRING    | Down Payment Status                                              |
| dummy_function_in_length_1          | STRING    | Dummy function in length 1                                       |
| annexing_package                    | STRING    | Annexing package key                                             |
| ann_package_extend                  | STRING    | Extended key for annexing package                                |
| annexing_base_date                  | DATE      | Annexing base date                                               |
| a_d_bill_rule                       | STRING    | Rule for Billing                                                 |
| initial_doc                         | STRING    | Initial document                                                 |
| last_voucher                        | STRING    | Last voucher number                                              |
| posting_date                        | DATE      | Posting Date in the Document                                     |
| customer_grp_6                      | STRING    | Customer Group 6                                                 |
| customer_grp_7                      | STRING    | Customer Group 7                                                 |
| customer_grp_8                      | STRING    | Customer Group 8                                                 |
| customer_grp_5_1                    | STRING    | Customer Group 9                                                 |
| customer_grp_10                     | STRING    | Customer Group 10                                                |
| release_rule                        | STRING    | Release Rule                                                     |
| rqmt_relevant                       | STRING    | Requirement Relevance for Contract                               |
| snap_status                         | STRING    | Snapshot Status                                                  |
| transaction_number                  | STRING    | Transaction Number                                               |
| vas_cust_group                      | STRING    | Value-Added Services Customer Group                              |
| cancel_date                         | DATE      | Cancellation Date                                                |
| sched_strat                         | STRING    | Order Scheduling Strategy                                        |
| changed_manually                    | STRING    | Order Scheduling Strategy Fields Changed Manually                |
| etm_rel_ind                         | STRING    | ETM-Relevant Indicator                                           |
| application_id                      | STRING    | Application ID Category for Configuration                        |
| treasury_account_sym                | STRING    | Treasury Account Symbol                                          |
| business_evt_typ_cd                 | STRING    | Business Event Type Code                                         |
| modification_allowed                | STRING    | Modification Allowed                                             |
| cancellation_allowed                | STRING    | Cancellation Allowed                                             |
| payment_methods                     | STRING    | List of Respected Payment Methods                                |
| business_partner_no                 | STRING    | Business Partner Number                                          |
| reporting_frequency                 | STRING    | Reporting Frequency                                              |
| logical_system                      | STRING    | Logical system with which document was created                   |
| proc_camp_det                       | STRING    | Procedure for Campaign Determination                             |
| multiple_promotions                 | STRING    | Multiple Campaigns/Trade Promotions Active Indicator             |
| paymmethod                          | STRING    | Payment Form for Special Payment Method                          |
| claim_header                        | STRING    | Claim header                                                     |
| sales_document_vbap                 | STRING    | Sales Document                                                   |
| material                            | STRING    | Material Number                                                  |
| materialentered                     | STRING    | Material entered                                                 |
| pr_ref_matl                         | STRING    | Pricing Reference Material                                       |
| batch                               | STRING    | Batch Number                                                     |
| material_group                      | STRING    | Material Group                                                   |
| item_descr                          | STRING    | Short text for sales order item                                  |
| item_category                       | STRING    | Sales document item category                                     |
| item_type                           | STRING    | Item Type                                                        |
| item_del_f_dlv                      | STRING    | Item Is Relevant for Delivery                                    |
| relev_for_bill                      | STRING    | Relevant for Billing                                             |
| higher_lev_item                     | STRING    | Higher-Level item in bill of material structures                 |
| altern_to_item                      | STRING    | Item for Which this Item is an Alternative                       |
| rejectionreason                     | STRING    | Reason for Rejection of Sales Documents                          |
| prod_hierarchy                      | STRING    | Product hierarchy                                                |
| node_id                             | STRING    | Node ID                                                          |
| origin_of_prodhier                  | STRING    | Origin of Product Hierarchy                                      |
| node_id_1                           | STRING    | Node ID                                                          |
| origin_of_prodhier_1                | STRING    | Origin of Product Hierarchy                                      |
| target_value                        | NUMERIC   | Target Value for Outline Agreement in Document Currency          |
| target_quantity                     | NUMERIC   | Target Quantity in Sales Units                                   |
| target_qty_uom                      | STRING    | Target Quantity UoM                                              |
| convers_factor                      | NUMERIC   | Factor for Converting Sales Units to Base Units (Target Qty)     |
| convers_factor_1                    | NUMERIC   | Factor for Converting Sales Units to Base Units (Target Qty)     |
| base_unit                           | STRING    | Base Unit of Measure                                             |
| scale_quantity                      | NUMERIC   | Scale Quantity in base unit of measure                           |
| rounding_qty                        | NUMERIC   | Rounding quantity for delivery                                   |
| reconcil_date                       | DATE      | Reconciliation date for agreed cumulative quantity               |
| absolute_deviation                  | NUMERIC   | Allowed deviation in quantity (absolute)                         |
| po_item                             | STRING    | Item Number of the Underlying Purchase Order                     |
| cust_material                       | STRING    | Material Number Used by Customer                                 |
| deviation                           | NUMERIC   | Allowed deviation in quantity (in percent)                       |
| dev_days                            | NUMERIC   | Days by which the quantity can be shifted                        |
| class_of_items                      | STRING    | Repair Processing: Classification of Items                       |
| usage_vbap                          | STRING    | Usage Indicator                                                  |
| delivery_group                      | STRING    | Delivery Group (Items are delivered together)                    |
| qty_is_fixed                        | STRING    | Quantity is fixed                                                |
| unlimited_tol                       | STRING    | Unlimited Overdelivery Allowed                                   |
| overdeliv_tol                       | NUMERIC   | Overdelivery Tolerance                                           |
| underdel_tol                        | NUMERIC   | Underdelivery Tolerance                                          |
| billing_block_vbap                  | STRING    | Billing Block for Item                                           |
| replacemt_part                      | STRING    | Replacement part                                                 |
| bill_meth_co_ppc                    | STRING    | Method of billing for CO/PPC orders                              |
| division_vbap                       | STRING    | Division                                                         |
| business_area_vbap                  | STRING    | Business Area                                                    |
| net_value_vbap                      | NUMERIC   | Net Value of the Order Item in Document Currency                 |
| doc_currency_vbap                   | STRING    | SD document currency                                             |
| max_part_deliv                      | NUMERIC   | Maximum Number of Partial Deliveries Allowed Per Item            |
| part_dlv_item                       | STRING    | Partial delivery at item level                                   |
| batch_split                         | STRING    | Batch split allowed                                              |
| order_quantity                      | NUMERIC   | Cumulative order quantity in sales units                         |
| required_dlvqty                     | NUMERIC   | Cumulative Required Delivery Qty (All Dlv-Relev.Sched.Lines)     |
| cumltvconfdqty                      | NUMERIC   | Cumulative Confirmed Quantity in Sales Unit                      |
| cumltvconfdqty_1                    | NUMERIC   | Cumulative Confirmed Quantity in Base Unit                       |
| sales_unit                          | STRING    | Sales unit                                                       |
| numerator                           | NUMERIC   | Numerator (factor) for conversion of sales quantity into SKU     |
| denominat                           | NUMERIC   | Denominator (Divisor) for Conversion of Sales Qty into SKU       |
| gross_weight                        | NUMERIC   | Gross Weight of the Item                                         |
| net_weight                          | NUMERIC   | Net Weight of the Item                                           |
| weight_unit                         | STRING    | Weight Unit                                                      |
| volume                              | NUMERIC   | Volume of the item                                               |
| volume_unit                         | STRING    | Volume unit                                                      |
| originating_doc                     | STRING    | Originating Document                                             |
| item_1                              | STRING    | Originating item                                                 |
| reference_doc_vbap                  | STRING    | Document number of the reference document                        |
| reference_item                      | STRING    | Item number of the reference item                                |
| complete_refer                      | STRING    | Complete Reference Indicator                                     |
| update_doc_flow                     | STRING    | Update Indicator for Document Flow of Sales Document             |
| completion_rule                     | STRING    | Completion Rule for Quotation / Contract                         |
| delivery_prior                      | STRING    | Delivery Priority                                                |
| plant                               | STRING    | Plant (Own or External)                                          |
| stor_loc                            | STRING    | Storage location                                                 |
| shipping_point                      | STRING    | Shipping Point / Receiving Point                                 |
| route                               | STRING    | Route                                                            |
| bom_origin                          | STRING    | Origin of the bill of material                                   |
| bom_key_date                        | DATE      | Key date of the bill of material                                 |
| bom                                 | STRING    | Bill of Material                                                 |
| bom_item_number                     | NUMERIC   | Bill of material item number VBAP not used                       |
| order_probab                        | STRING    | Order Probability of the Item                                    |
| created_on_vbap                     | DATE      | Date on which the record was created                             |
| created_by_vbap                     | STRING    | Name of Person who Created the Object                            |
| entry_time_vbap                     | TIME      | Entry time                                                       |
| tax_classific                       | STRING    | Tax classification material                                      |
| tax_classific_1                     | STRING    | Tax classification material                                      |
| tax_classific_2                     | STRING    | Tax classification material                                      |
| tax_classific_3                     | STRING    | Tax classification material                                      |
| tax_classific_4                     | STRING    | Tax classification material                                      |
| tax_classific_5                     | STRING    | Tax classification material                                      |
| tax_classific_6                     | STRING    | Tax classification material                                      |
| tax_classific_7                     | STRING    | Tax classification material                                      |
| tax_classific_8                     | STRING    | Tax classification material                                      |
| fixed_proc_time                     | NUMERIC   | Fixed shipping processing time in days (= setup time)            |
| var_proc_time                       | NUMERIC   | Variable shipping processing time in days                        |
| preced_with_ref                     | STRING    | Preceding document has resulted from reference                   |
| net_price                           | NUMERIC   | Net Price                                                        |
| pricing_unit                        | NUMERIC   | Condition Pricing Unit                                           |
| unit_of_measure                     | STRING    | Condition Unit                                                   |
| returns_item                        | STRING    | Returns Item                                                     |
| cash_discount                       | STRING    | Cash discount indicator                                          |
| avail_check                         | STRING    | Checking Group for Availability Check                            |
| req_mt_totals                       | STRING    | Summing up of requirements                                       |
| mat_price_grp                       | STRING    | Material Price Group                                             |
| acctassmtgrpmat                     | STRING    | Account Assignment Group for Material                            |
| vol_rebate_grp                      | STRING    | Volume rebate group                                              |
| commission_grp                      | STRING    | Commission group                                                 |
| ean_number                          | STRING    | European Article Number (EAN) - obsolete!!!!!                    |
| pricing_vbap                        | STRING    | Pricing is OK                                                    |
| valuation_type                      | STRING    | Valuation Type                                                   |
| separate_val                        | STRING    | Indicator: Separate valuation                                    |
| batch_mgmt_rqt                      | STRING    | Batch management requirement indicator                           |
| batches                             | STRING    | Batch management indicator (internal)                            |
| min_dely_qty                        | NUMERIC   | Minimum Delivery Quantity in Delivery Note Processing            |
| update_group_vbap                   | STRING    | Update Group for statistics update                               |
| cost                                | NUMERIC   | Cost in document currency                                        |
| subtotal_1                          | NUMERIC   | Subtotal 1 from pricing procedure for condition                  |
| subtotal_2                          | NUMERIC   | Subtotal 2 from pricing procedure for condition                  |
| subtotal_3                          | NUMERIC   | Subtotal 3 from pricing procedure for condition                  |
| subtotal_4                          | NUMERIC   | Subtotal 4 from pricing procedure for condition                  |
| subtotal_5                          | NUMERIC   | Subtotal 5 from pricing procedure for condition                  |
| subtotal_6                          | NUMERIC   | Subtotal 6 from pricing procedure for condition                  |
| exch_rate_stats                     | NUMERIC   | Exchange rate for statistics (Exch.rate at time of creation)     |
| changed_on_vbap                     | DATE      | Date of Last Change                                              |
| ean_upc                             | STRING    | International Article Number (EAN/UPC)                           |
| fix_qty_date                        | STRING    | Delivery Date and Quantity Fixed                                 |
| profit_center                       | STRING    | Profit Center                                                    |
| materialgroup_1                     | STRING    | Material group 1                                                 |
| materialgroup_2                     | STRING    | Material group 2                                                 |
| materialgroup_3                     | STRING    | Material group 3                                                 |
| materialgroup_4                     | STRING    | Material group 4                                                 |
| materialgroup_5                     | STRING    | Material group 5                                                 |
| quantity                            | NUMERIC   | Component Quantity                                               |
| reasn                               | STRING    | Reason for material substitution                                 |
| special_stock                       | STRING    | Special Stock Indicator                                          |
| allocation_ind                      | STRING    | Allocation Indicator                                             |
| profit_segment                      | STRING    | Profitability Segment Number (CO-PA)                             |
| wbs_element_vbap                    | STRING    | Work Breakdown Structure Element (WBS Element)                   |
| order_number_vbap                   | STRING    | Order Number                                                     |
| plng_material                       | STRING    | Planning material                                                |
| planning_plant                      | STRING    | Planning plant                                                   |
| prod_grp_unit                       | STRING    | Base unit of measure for product group                           |
| conversion                          | FLOAT64   | Conversion factor: quantities                                    |
| acct_assgmt_cat                     | STRING    | Account Assignment Category                                      |
| consumption                         | STRING    | Consumption posting                                              |
| bom_expl_number                     | STRING    | BOM explosion number                                             |
| objno_item                          | STRING    | Object Number at Item Level                                      |
| ra_key                              | STRING    | Results Analysis Key                                             |
| reqmts_type                         | STRING    | Requirements type                                                |
| credit_price                        | NUMERIC   | Item credit price                                                |
| partial_release                     | STRING    | ID for partial release of order item, credit block               |
| credit_active                       | STRING    | ID: Item with active credit function / relevant for credit       |
| exchange_rate                       | NUMERIC   | Credit data exchange rate for requested delivery date            |
| configuration                       | STRING    | Configuration                                                    |
| int_object_no                       | STRING    | Internal object number of the batch classification               |
| expected_price                      | STRING    | Status expected price                                            |
| condit_update                       | STRING    | Condition Update                                                 |
| serialnoprofile                     | STRING    | Serial Number Profile                                            |
| no_serial_no                        | INT64     | Number of serial numbers                                         |
| no_gr_posted                        | STRING    | Customer has not posted goods receipt                            |
| matl_grp_pckmat                     | STRING    | Material Group: Packaging Materials                              |
| manual_price                        | STRING    | Status manual price change                                       |
| prec_doc_categ_vbap                 | STRING    | Document Category of Preceding SD Document                       |
| matdetermactive                     | STRING    | ID for material determination                                    |
| usage_hl_item                       | STRING    | ID for higher-level item usage                                   |
| cost_estimateno                     | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure             |
| costing_variant                     | STRING    | Costing Variant                                                  |
| item_2                              | STRING    | BOM Item Number                                                  |
| stat_value                          | STRING    | Statistical Values                                               |
| statistics_date                     | DATE      | Statistics date                                                  |
| bus_trans_type                      | STRING    | Business Transaction Type                                        |
| cus_preference                      | STRING    | Customs Preference                                               |
| nocondrec_batch                     | STRING    | Number of condition record from batch determination              |
| int_class_no                        | STRING    | Internal Class Number                                            |
| qty_proposal                        | STRING    | Batches: Exit to quantity proposal                               |
| bom_category                        | STRING    | BOM category                                                     |
| item_node                           | STRING    | BOM item node number                                             |
| counter                             | STRING    | Internal counter                                                 |
| inconsist_conf                      | STRING    | Inconsistent configuration                                       |
| overhead_key                        | STRING    | Overhead key                                                     |
| costing_sheet                       | STRING    | Costing Sheet                                                    |
| costing_variant_1                   | STRING    | Costing Variant                                                  |
| prod_allocation                     | STRING    | Product allocation determination procedure                       |
| mnitm_prrefmatl                     | STRING    | Pricing reference material of main item                          |
| mnitem_matprcgr                     | STRING    | Material pricing group of main item                              |
| mat_freight_grp                     | STRING    | Material freight group                                           |
| plandelschedins                     | STRING    | Instruction for Planning Delivery Schedule                       |
| sequence_number                     | STRING    | KANBAN/Sequence Number                                           |
| credit_price_1                      | FLOAT64   | Item Credit Price                                                |
| paytguarantform                     | STRING    | Form of payment guarantee                                        |
| guaranteed                          | FLOAT64   | Guaranteed (factor between 0 and 1)                              |
| cfop                                | STRING    | CFOP Code and Extension                                          |
| icms_law                            | STRING    | Tax law: ICMS                                                    |
| ipi_law                             | STRING    | Tax law: IPI                                                     |
| tax_code                            | STRING    | SD tax code                                                      |
| value_contract_no                   | STRING    | Value Contract No.                                               |
| val_cont_item                       | STRING    | Value Contract Item                                              |
| module                              | STRING    | Assortment module                                                |
| valuation                           | STRING    | Valuation of Special Stock                                       |
| matgroup_1                          | STRING    | Material group hierarchy 1                                       |
| matgroup_2                          | STRING    | Material group hierarchy 2                                       |
| promotion                           | STRING    | Promotion                                                        |
| sales_deal                          | STRING    | Sales deal                                                       |
| leading_uom                         | STRING    | ID: Leading unit of measure for completing a transaction         |
| freegoods_delycontrl                | STRING    | Free goods delivery control                                      |
| standardvariant                     | STRING    | Parameter Variant/Standard Variant                               |
| tax_amount                          | NUMERIC   | Tax amount in document currency                                  |
| mrp_area                            | STRING    | MRP Area                                                         |
| profit_ctr_bill                     | STRING    | Profit Center for Billing                                        |
| logical_system_vbap                 | STRING    | Logical system                                                   |
| iss_law                             | STRING    | ISS Tax Law                                                      |
| cofins_law                          | STRING    | COFINS Tax Law                                                   |
| pis_law                             | STRING    | PIS Tax Law                                                      |
| location                            | STRING    | First Inventory-Managing Location                                |
| location_type                       | STRING    | Type of First Inventory-Managing Location                        |
| return_reason                       | STRING    | Return Reason                                                    |
| refund_code                         | STRING    | Returns Refund Code                                              |
| approval                            | STRING    | Approval Block                                                   |
| cond_record_no                      | STRING    | Number of the Condition Record                                   |
| risk_relevancy                      | STRING    | Risk Relevancy in Sales                                          |
| reqmnt_segment                      | STRING    | Requirement Segment                                              |
| item_3                              | STRING    | Sales Document Item                                              |
| item_4                              | STRING    | Sales Document Item                                              |
| handover_location_vbap              | STRING    | Location for a physical handover of goods                        |
| external_item_id                    | STRING    | External Item ID                                                 |
| handover_date                       | DATE      | Handover Date at the Handover Location                           |
| handover_time                       | TIME      | Handover time at the handover location                           |
| tc_auto_det                         | STRING    | Tax Code Automatically Determined                                |
| man_tc_reason                       | STRING    | Manual Tax Code Reason                                           |
| tax_incent_type                     | STRING    | Tax Incentive Type                                               |
| tax_subj_to_st                      | STRING    | Tax Subject to Substituição Tributária                           |
| incentive_id                        | STRING    | Incentive ID                                                     |
| nf_special_case                     | STRING    | Nota Fiscal Special Case for CFOP Determination                  |
| rev_acc_ref_id                      | STRING    | Revenue Accounting: Reference ID                                 |
| rev_acc_ref_type                    | STRING    | Revenue Accounting: Reference Type                               |
| data_filter_value_for_data_agi_vbap | DATE      | Data Filter Value for Data Aging                                 |
| rejection_sts_vbap                  | STRING    | Rejection Status (Item)                                          |
| confirmed_vbap                      | STRING    | Confirmation Status (Item)                                       |
| financial_doc_vbap                  | STRING    | Status of Credit Check Against Financial Document                |
| exptcreditinsur_vbap                | STRING    | Status of Credit Check Against Export Credit Insurance           |
| confirm_status_vbap                 | STRING    | Confirmation Status for ALE                                      |
| delay_status_vbap                   | STRING    | Delay Status (Item)                                              |
| billing_status                      | STRING    | Order-Related Billing Status (Item)                              |
| billg_block_sts                     | STRING    | Billing Block Status (Item)                                      |
| overall_status_vbap                 | STRING    | Overall Processing Status (Item)                                 |
| ovrl_delvry_sts_vbap                | STRING    | Overall Delivery Status (Item)                                   |
| delivery_status_vbap                | STRING    | Delivery Status (Item)                                           |
| dlv_blk_status_vbap                 | STRING    | Overall Delivery Block Status (Item)                             |
| manual_completion_vbap              | STRING    | Manual Completion of Contract                                    |
| reference_stat                      | STRING    | Overall Reference Status (Item)                                  |
| reference_sts                       | STRING    | Reference Status (Item)                                          |
| item_5                              | STRING    | Incompletion Status (Item)                                       |
| item_bill_data_vbap                 | STRING    | Billing Incompletion Status (Item)                               |
| pricing_1                           | STRING    | Pricing Incompletion Status (Item)                               |
| item_deliv_data_vbap                | STRING    | Delivery Incompletion Status (Item)                              |
| item_reserves_1                     | STRING    | Customer reserves 1: Item status                                 |
| item_reserves_2                     | STRING    | Customer reserves 2: Item status                                 |
| item_reserves_3                     | STRING    | Item reserves 3: Item status                                     |
| item_reserves_4                     | STRING    | Item reserves 4: Item status                                     |
| item_reserves_5                     | STRING    | Customer reserves 5: Item status                                 |
| goodsmovementst                     | STRING    | Goods Movement Status                                            |
| embargo_status_vbap                 | STRING    | Embargo Check Status (Item)                                      |
| wls_status                          | STRING    | Watch List Screening Check Status                                |
| total_legal_status_vbap             | STRING    | Legal Control Status                                             |
| prod_marktablty_sts_vbap            | STRING    | Product Marketability Check Status (Item)                        |
| dangerous_goods_sts_vbap            | STRING    | Dangerous Goods Check Status (Item)                              |
| sfty_data_sheet_sts_vbap            | STRING    | Safety Data Sheet Check Status (Item)                            |
| down_payment_status_vbap            | STRING    | Down Payment Status                                              |
| committed_deliv_date                | DATE      | Delivery Date that the Supplier Has Committed To                 |
| cmtd_deliv_crtn_date                | DATE      | Deliv. Creation Date in Order to Meet Committed Deliv. Date      |
| cmtd_delivery_qty                   | NUMERIC   | Committed Delivery Quantity in Sales Unit                        |
| requ_salesorder_qty                 | NUMERIC   | Requested Order Quantity in Base Unit                            |
| guid_16                             | STRING    | GUID in CHAR Format in Uppercase                                 |
| pbs_state                           | STRING    | State of Project-Based Service                                   |
| ifrs_15_relevant                    | STRING    | Item is relevant for IFRS 15                                     |
| ssp                                 | NUMERIC   | IFRS 15: Standalone Selling Price                                |
| availcheck_rule                     | STRING    | Rule for transferring the results of the availability check      |
| net_amount_cap                      | NUMERIC   | Net Amount Cap                                                   |
| cap_notif_threshold                 | STRING    | Notification Threshold (in Pct) for Exceeded Net Amount Cap      |
| overtime_category                   | STRING    | Overtime Category                                                |
| session_created_on                  | DATE      | Date of the Session During Which the Record Was Created          |
| session_created_at                  | TIME      | Time of the Session During Which the Record Was Created          |
| original_plant                      | STRING    | Original Plant in Plant Substitution                             |
| sub_status                          | STRING    | Substitution Status for Alternative-Based Confirmation (ABC)     |
| dummy_function_in_length_1_vbap     | STRING    | Dummy function in length 1                                       |
| po_quantity                         | NUMERIC   | Purchase Order Quantity                                          |
| order_unit                          | STRING    | Purchase Order Unit of Measure                                   |
| global_item                         | STRING    | Global Item                                                      |
| mill_bselind                        | STRING    | Control of Batch Selection                                       |
| time_stamp_vbap                     | NUMERIC   | Time Stamp                                                       |
| annexing_package_vbap               | STRING    | Annexing package key                                             |
| ann_package_extend_vbap             | STRING    | Extended key for annexing package                                |
| annexing_base_date_vbap             | DATE      | Annexing base date                                               |
| plan_no_f_oper                      | STRING    | Routing number of operations in the order                        |
| counter_1                           | STRING    | Internal counter                                                 |
| dip_profile                         | STRING    | Dynamic Item Processor Profile                                   |
| model_id_code                       | STRING    | Model ID Code                                                    |
| interchang_code                     | STRING    | Interchangeability Code                                          |
| order_priority                      | STRING    | Order Priority                                                   |
| donotsub                            | STRING    | Do Not Substitute                                                |
| aircraftreg_no                      | STRING    | Aircraft registration number                                     |
| fcstdelsched_edi_ind                | STRING    | Indicator for Inbound Forecast and JIT Delivery Schedules        |
| jitdschdedi_ind                     | STRING    | Indicator for Inbound Forecast Delivery Schedule Headers         |
| comp_fctds_fctds                    | STRING    | Profile for Comparison of Frcst.DelSched with Frcst.DelSched     |
| comp_jitds_jitds                    | STRING    | Profile for Comparison of JIT Del.Sched. with JIT Del.Sched.     |
| comp_jitds_fcstds                   | STRING    | Profile for Comp. of JIT Del.Sched. with Forecast Del.Sched.     |
| reg_indicator                       | STRING    | Regulatory indicator                                             |
| season_year                         | STRING    | Season Year                                                      |
| season                              | STRING    | Season                                                           |
| collection                          | STRING    | Fashion Collection                                               |
| theme                               | STRING    | Fashion Theme                                                    |
| cond_record_no_1                    | STRING    | Condition Record Number for Seasons                              |
| copied_season                       | STRING    | Season Determined from Reference Document                        |
| cancel_date_vbap                    | DATE      | Cancellation Date                                                |
| split_id                            | STRING    | PSM and PFM Split ID                                             |
| vas_relevant                        | STRING    | VAS Relevant                                                     |
| item_6                              | STRING    | Item number of the SD document                                   |
| transaction_number_vbap             | STRING    | Transaction Number                                               |
| item_group                          | STRING    | Item Group                                                       |
| item_number                         | STRING    | Item Number                                                      |
| copied_vas_data                     | STRING    | VAS Determined from Reference Document                           |
| record_num                          | STRING    | Grid Condition Record Number                                     |
| higher_lev_item_pqr                 | STRING    | Higher-level item in Partial Quantity Rejection                  |
| season_comp_ind                     | STRING    | Season Completeness Indicator                                    |
| cost_center_vbap                    | STRING    | Cost Center                                                      |
| fund                                | STRING    | Fund                                                             |
| funds_center                        | STRING    | Funds Center                                                     |
| functional_area                     | STRING    | Functional Area                                                  |
| grant_vbap                          | STRING    | Grant                                                            |
| budget_period                       | STRING    | Budget Period                                                    |
| iuid_cust_rel                       | STRING    | IUID Relevant for Customer                                       |
| equipment                           | STRING    | Equipment Number                                                 |
| object_type                         | STRING    | Type of Technical Object                                         |
| activity_type                       | STRING    | Activity Type                                                    |
| from_date                           | DATE      | From Date                                                        |
| to_date                             | DATE      | To Date                                                          |
| document_number                     | STRING    | Document Number                                                  |
| item_number_1                       | STRING    | Document Item                                                    |
| eng_mgmt_object_nr                  | STRING    | Engagement mgmt: Object number                                   |
| std_wbs_element                     | STRING    | Standard WBS Element for Project Inception via SD                |
| work_period                         | STRING    | Work Period (Internal Representation)                            |
| treasury_account_sym_vbap           | STRING    | Treasury Account Symbol                                          |
| business_evt_typ_cd_vbap            | STRING    | Business Event Type Code                                         |
| modification_allowed_vbap           | STRING    | Modification Allowed                                             |
| cancellation_allowed_vbap           | STRING    | Cancellation Allowed                                             |
| payment_methods_vbap                | STRING    | List of Respected Payment Methods                                |
| business_partner_no_vbap            | STRING    | Business Partner Number                                          |
| reporting_frequency_vbap            | STRING    | Reporting Frequency                                              |
| us_govt                             | STRING    | United States Federal Government Fields                          |
| psst_grouping_rule                  | STRING    | PSST Grouping Rule                                               |
| psst_group                          | STRING    | PSST Group                                                       |
| trdg_part_ba                        | STRING    | Trading partners business area                                   |
| plan_no_f_oper_1                    | STRING    | Routing number of operations in the order                        |
| counter_2                           | STRING    | Internal counter                                                 |
| end_customer                        | STRING    | End Customer (Central Business Partner)                          |
| characteristic_1                    | STRING    | Characteristic Value 1                                           |
| characteristic_2                    | STRING    | Characteristic Value 2                                           |
| characteristic_3                    | STRING    | Characteristic Value 3                                           |
| reservation_number                  | STRING    | Number of reservation/dependent requirements                     |
| item_no                             | STRING    | Item number of reservation/dependent requirements                |
| claim_item_no                       | STRING    | Claim item number                                                |
| sales_document_vbep                 | STRING    | Sales Document                                                   |
| item_vbep                           | STRING    | Sales Document Item                                              |
| sched_line_cat                      | STRING    | Schedule line category                                           |
| item_rel_f_dlv                      | STRING    | Item is relevant for delivery                                    |
| delivery_date                       | DATE      | Schedule line date                                               |
| arrival_time                        | TIME      | Arrival time                                                     |
| order_quantity_vbep                 | NUMERIC   | Order Quantity in Sales Units                                    |
| confirmed_qty                       | NUMERIC   | Confirmed Quantity                                               |
| sales_unit_vbep                     | STRING    | Sales unit                                                       |
| required_qty                        | NUMERIC   | Required quantity for mat.management in stockkeeping units       |
| base_unit_vbep                      | STRING    | Base Unit of Measure                                             |
| requirement_dte                     | DATE      | Requirement date (deadline for procurement)                      |
| requirementtype                     | STRING    | Requirement type                                                 |
| planning_type                       | STRING    | Planning type                                                    |
| business_docum                      | STRING    | Business document number                                         |
| items                               | STRING    | Business item number                                             |
| schedule_line_1                     | STRING    | Schedule line                                                    |
| reservation_number_vbep             | DATE      | Earliest possible reservation date                               |
| maintenance_req                     | STRING    | Maintenance request                                              |
| purchase_req                        | STRING    | Purchase Requisition Number                                      |
| order_type                          | STRING    | Order Type (Purchasing)                                          |
| doc_category                        | STRING    | Purchasing Document Category                                     |
| confirm_status_vbep                 | STRING    | Confirmation status of schedule line (incl.ALE)                  |
| invoice_receipt                     | STRING    | Invoice receipt indicator                                        |
| returnpackaging                     | DATE      | Return date for returnable packaging                             |
| date_type                           | STRING    | Date type (day, week, month, interval)                           |
| transpplngdate                      | DATE      | Transportation Planning Date                                     |
| mat_avail_date_vbep                 | DATE      | Material Staging/Availability Date                               |
| loading_date                        | DATE      | Loading Date                                                     |
| goods_issue                         | DATE      | Goods Issue Date                                                 |
| corr_qty                            | NUMERIC   | Corrected quantity in sales unit                                 |
| delivery_block_vbep                 | STRING    | Schedule Line Blocked for Delivery                               |
| group_definition_of_structure       | STRING    | Group definition of structure data                               |
| release_type                        | STRING    | Release type                                                     |
| f_dlv_sched                         | STRING    | Forecast Delivery schedule number                                |
| committed_qty                       | NUMERIC   | Committed quantity                                               |
| size_2                              | NUMERIC   | Size 2                                                           |
| size_3                              | NUMERIC   | Size 3                                                           |
| size_unit                           | STRING    | Unit of measure for sizes 1 to 3                                 |
| formula_key                         | STRING    | Formula Key for Variable-Size Items                              |
| numerator_vbep                      | NUMERIC   | Numerator (factor) for conversion of sales quantity into SKU     |
| denominat_vbep                      | NUMERIC   | Denominator (Divisor) for Conversion of Sales Qty into SKU       |
| avail_confirm                       | STRING    | Availability confirmed automatically                             |
| movement_type                       | STRING    | Movement type (inventory management)                             |
| requisn_item                        | STRING    | Item number of purchase requisition                              |
| sched_line_type                     | STRING    | Schedule line type EDI                                           |
| order_number_vbep                   | STRING    | Order Number                                                     |
| planned_order                       | STRING    | Planned Order                                                    |
| bom_expl_number_vbep                | STRING    | BOM explosion number                                             |
| engin_change                        | STRING    | Customer Engineering Change Status                               |
| guaranteed_vbep                     | FLOAT64   | Guaranteed (factor between 0 and 1)                              |
| matl_staging_tme                    | TIME      | Material Staging Time (Local, Relating to a Plant)               |
| tr_plan_time                        | TIME      | Transp. Planning Time (Local, Relating to a Shipping Point)      |
| loading_time                        | TIME      | Loading Time (Local Time Relating to a Shipping Point)           |
| gi_time                             | TIME      | Time of Goods Issue (Local, Relating to a Plant)                 |
| route_schedule                      | STRING    | Route Schedule                                                   |
| handover_date_vbep                  | DATE      | Handover Date at the Handover Location                           |
| handover_time_vbep                  | TIME      | Handover time at the handover location                           |
| delivered_qty                       | NUMERIC   | Delivered Quantity                                               |
| delivered_qty_1                     | NUMERIC   | Delivered Quantity                                               |
| open_quantity                       | NUMERIC   | Open Confirmed Delivery Quantity                                 |
| open_quantity_1                     | NUMERIC   | Open Confirmed Delivery Quantity                                 |
| open_quantity_2                     | NUMERIC   | Open requested Delivery Quantity                                 |
| open_quantity_3                     | NUMERIC   | Open requested Delivery Quantity                                 |
| delivery_date_1                     | DATE      | Delivery Creation Date                                           |
| delivery_date_2                     | DATE      | Schedule line date                                               |
| reqmts_class                        | STRING    | Requirements class                                               |
| data_filter_value_for_data_agi_vbep | DATE      | Data Filter Value for Data Aging                                 |
| doc_currency_vbep                   | STRING    | SD document currency                                             |
| open_delivery_amount                | NUMERIC   | Open Delivery Net Amount (in Sales Document Currency)            |
| guid_16_vbep                        | BYTES     | GUID in RAW format                                               |
| legal_status                        | STRING    | Legal Control Check Status                                       |
| reqd_rqmt_qty                       | NUMERIC   | Requested Requirement Quantity in Base Unit                      |
| confd_rqmt_qty                      | NUMERIC   | Confirmed Requirement Quantity in Base Unit                      |
| dummy_function_in_length_1_vbep     | STRING    | Dummy function in length 1                                       |
| alloc_qty                           | NUMERIC   | ARun Requirement Allocated Quantity                              |
| order_sch_gr_id                     | STRING    | Order Scheduling Group ID                                        |
| rejection_code                      | STRING    | Rejection Code for Partial Quantity Rejection                    |
| mat_av_date_tpp                     | DATE      | Material Availability Date Third-Party Order Planning            |
| finalmd5key                         | STRING    | MD5 key combining all columns                                    |
| input_last_update_date              | DATETIME  | Last Input read time                                             |
| dw_active_indicator                 | STRING    | Valid Indicator                                                  |
| dw_start_date                       | DATETIME  | Record start date                                                |
| dw_end_date                         | DATETIME  | Record end date                                                  |
| dw_last_update_date                 | DATETIME  | Record Inserted/Updated date)                                    |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms


