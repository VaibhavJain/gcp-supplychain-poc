
## Table Name : material_movement_fact

| column_name                    | data_type  | description                                                  |
|--------------------------------|------------|--------------------------------------------------------------|
| material_movement_uuid         | STRING     | Universal unique id                                          |
| material_movement_key          | STRING     | Material Movement Key                                        |
| client                         | STRING     | Client                                                       |
| split_guid_part_1              | BYTES      | Split GUID, Part 1                                           |
| split_guid_part_2              | BYTES      | Split GUID, Part 2                                           |
| split_guid_part_3              | BYTES      | Split GUID, Part 3                                           |
| split_guid_part_4              | BYTES      | Split GUID, Part 4                                           |
| split_guid_part_5              | BYTES      | Split GUID, Part 5                                           |
| split_guid_part_6              | BYTES      | Split GUID, Part 6                                           |
| material_uuid                  | STRING     | Material Dimension Unique Generated Id                       |
| material_key                   | STRING     | Material key from Material Dimension                         |
| plant_uuid                     | STRING     | Plant Dimension Unique Generated Id                          |
| plant_key                      | STRING     | Plant key from Plant Dimension                               |
| company_code_uuid              | STRING     | Unique Generated Id                                          |
| company_code_key               | STRING     | Unique Generated Id                                          |
| storage_location_uuid          | STRING     | Storage Location Dimension Unique Generated Id               |
| storage_location_key           | STRING     | Storage Location key from Storage Location Dimension         |
| supplier_uuid                  | STRING     | Supplier Dimension Unique Generated Id                       |
| supplier_key                   | STRING     | Supplier Key from Supplier Dimension                         |
| record_type                    | STRING     | Record Type                                                  |
| matl_doc_counter               | INT64      | Material Document Counter                                    |
| stock_mat                      | STRING     | Material in Respect of Which Stock is Managed                |
| plant                          | STRING     | Plant                                                        |
| stor_location_sid              | STRING     | Storage Location (Stock Identifier)                          |
| batch_sid                      | STRING     | Batch Number (Stock Identifier)                              |
| supplier_sid                   | STRING     | Supplier for Special Stock                                   |
| sales_order                    | STRING     | Sales order number of valuated sales order stock             |
| sales_ord_item                 | STRING     | Sales Order Item of Valuated Sales Order Stock               |
| wbs_element                    | STRING     | Valuated Sales Order Stock WBS Element                       |
| customer_sid                   | STRING     | Customer for Special Stock                                   |
| special_stock                  | STRING     | Special Stock Indicator                                      |
| stock_type                     | STRING     | Stock Type of Goods Movement (Stock Identifier)              |
| addl_supplier_sid              | STRING     | Additional Supplier for Special Stock                        |
| company_code                   | STRING     | Company Code                                                 |
| batch_sid_1                    | STRING     | Batch Number of Warehouse Stock (Stock Identifier)           |
| qty_updating                   | STRING     | Quantity Updating in Material Master Record                  |
| value_updating                 | STRING     | Value Updating in Material Master Record                     |
| document_object                | STRING     | SD Document Object                                           |
| valuation                      | STRING     | Valuation of Special Stock                                   |
| stock_char                     | STRING     | Stock Characteristics                                        |
| stock_cat                      | STRING     | Stock Category                                               |
| prodcostest_no                 | STRING     | Cost Estimate Number - Product Costing                       |
| mrp_area                       | STRING     | MRP Area                                                     |
| currency                       | STRING     | Currency Key                                                 |
| amount_in_lc                   | NUMERIC    | Amount in Local Currency                                     |
| delivery_costs                 | NUMERIC    | Delivery costs in local currency                             |
| amount                         | NUMERIC    | Amount Posted in Alternative Price Control                   |
| revaluation                    | NUMERIC    | Revaluation amount on back-posting to a previous period      |
| ext_amount_lc                  | NUMERIC    | Externally Entered Posting Amount in Local Currency          |
| salval_inc_vat                 | NUMERIC    | Value at Sales Prices Including Value-Added Tax              |
| sales_value                    | NUMERIC    | Externally Entered Sales Value in Local Currency             |
| total_value                    | NUMERIC    | Value of total valuated stock before the posting             |
| salval_w_o_vat                 | NUMERIC    | Value at Sales Prices Excluding Value Added Tax              |
| alt_base_amnt                  | NUMERIC    | Alternate base amount in document currency                   |
| salval_incl_vat                | NUMERIC    | Value at Sales Prices Including Value-Added Tax              |
| amt_lc_w_stk_qty               | NUMERIC    | Amount in Local Currency with Sign of Stock Quantity         |
| amt_lc_w_cons_qty              | NUMERIC    | Amount in Local Currency with Sign of Consumption Quantity   |
| base_unit                      | STRING     | Base Unit of Measure                                         |
| quantity                       | NUMERIC    | Quantity                                                     |
| valuated_stock                 | NUMERIC    | Total valuated stock before the posting                      |
| stock_quantity                 | BIGNUMERIC | Stock Quantity                                               |
| consumption_quantity           | BIGNUMERIC | Consumption Quantity                                         |
| unit_of_entry                  | STRING     | Unit of entry                                                |
| quantity_in_une                | NUMERIC    | Quantity in unit of entry                                    |
| po_price_unit                  | STRING     | Order Price Unit (Purchasing)                                |
| qty_in_opun                    | NUMERIC    | Quantity in Purchase Order Price Unit                        |
| order_unit                     | STRING     | Purchase Order Unit of Measure                               |
| qty_in_oun                     | NUMERIC    | Goods receipt quantity in order unit                         |
| del_note_unit                  | STRING     | Unit of Measure From Delivery Note                           |
| del_note_qty                   | NUMERIC    | Quantity in Unit of Measure from Delivery Note               |
| quantity_1                     | NUMERIC    | Quantity                                                     |
| analytical_currency            | STRING     | Analytical Currency of Warehouse Stock - not used            |
| analytical_price               | BIGNUMERIC | Analytical Price of one Base Unit of Measure - not used      |
| analytical_pr_ind              | STRING     | Indicator for Analytical Value of Price Source - not used    |
| analytical_value               | BIGNUMERIC | Analytical Value of Warehouse Stock - not used               |
| analytic_val_cons              | BIGNUMERIC | Analytical Value of Consumption Quantity - not used          |
| qty_in_puom                    | NUMERIC    | Quantity in Parallel Unit of Measure                         |
| parallel_uom                   | STRING     | Parallel Unit of Measure                                     |
| puom_euom_qty                  | NUMERIC    | Quantity in Parallel Unit of Entry                           |
| puom_entry_uom                 | STRING     | PUoM Entry Unit of Measure                                   |
| pq_stock_quantity              | BIGNUMERIC | Stock Quantity in PUoM                                       |
| pq_consumption_qty             | BIGNUMERIC | Consumption Quantity in PUoM                                 |
| parallel_uom_sid               | STRING     | Parallel Unit of Measure (Stock Identifier)                  |
| receiving_mat                  | STRING     | Receiving/Issuing Material                                   |
| plant_1                        | STRING     | Plant                                                        |
| stor_location_sid_1            | STRING     | Storage Location (Stock Identifier)                          |
| batch_sid_2                    | STRING     | Batch Number (Stock Identifier)                              |
| supplier_sid_1                 | STRING     | Supplier for Special Stock                                   |
| sales_document_sid             | STRING     | Sales and Distribution Document Number (Stock Identifier)    |
| item_sid                       | STRING     | Item Number of the SD Document (Stock Identifier)            |
| wbs_element_sid                | STRING     | Work Breakdown Structure Element (Stock Identifier)          |
| customer_sid_1                 | STRING     | Customer for Special Stock                                   |
| special_stock_1                | STRING     | Special Stock Indicator                                      |
| stock_type_1                   | STRING     | Stock Type of Goods Movement (Stock Identifier)              |
| vendor                         | STRING     | Account Number of Vendor or Creditor                         |
| company_code_1                 | STRING     | Company Code                                                 |
| batch_sid_3                    | STRING     | Batch Number of Warehouse Stock (Stock Identifier)           |
| qty_updating_1                 | STRING     | Quantity Updating in Material Master Record                  |
| value_updating_1               | STRING     | Value Updating in Material Master Record                     |
| document_object_1              | STRING     | SD Document Object                                           |
| valuation_1                    | STRING     | Valuation of Special Stock                                   |
| stock_char_1                   | STRING     | Stock Characteristics                                        |
| stock_cat_1                    | STRING     | Stock Category                                               |
| prodcostest_no_1               | STRING     | Complement Cost Estimate Number - Product Costing            |
| posting_date                   | DATE       | Posting Date in the Document                                 |
| entered_on                     | DATE       | Day On Which Accounting Document Was Entered                 |
| entered_at                     | TIME       | Time of Entry                                                |
| year_day                       | STRING     | Year-Day-Combination                                         |
| year_week                      | STRING     | Year-Week-Combination                                        |
| year_month                     | STRING     | Year-Month-Combination                                       |
| year_quarter                   | STRING     | Year-Quarter-Combination                                     |
| year                           | STRING     | Year                                                         |
| quarter_1_4                    | STRING     | Quarter (1 - 4)                                              |
| month_1_12                     | STRING     | Month (1 - 12)                                               |
| calendar_week                  | STRING     | Calendar Week (1 - 53)                                       |
| day_of_year_1_366              | STRING     | Day of Year (1 - 366)                                        |
| week_day                       | STRING     | Week Day                                                     |
| document_date                  | DATE       | Document Date in Document                                    |
| changed_on                     | DATE       | Date of Last Change                                          |
| gi_time                        | TIME       | Time of Goods Issue (Local, Relating to a Plant)             |
| time_zone                      | STRING     | Time Zone                                                    |
| fi_year_variant                | STRING     | Fiscal Year Variant                                          |
| fiscal_year                    | STRING     | Fiscal Year                                                  |
| period_year                    | STRING     | Period/Year                                                  |
| period_year_1                  | STRING     | Period/Year                                                  |
| sled_bbd                       | DATE       | Shelf Life Expiration or Best-Before Date                    |
| reference_date                 | DATE       | Reference date for settlement                                |
| reference_date_1               | DATE       | Reference date for settlement                                |
| date_of_manuf                  | DATE       | Date of Manufacture                                          |
| material_doc                   | STRING     | Number of Material Document                                  |
| mat_doc_year                   | STRING     | Material Document Year                                       |
| mat_doc_item                   | STRING     | Item in Material Document                                    |
| line_id                        | STRING     | Unique identification of document line                       |
| parent_id                      | STRING     | Identifier of immediately superior line                      |
| level                          | STRING     | Hierarchy level of line in document                          |
| orig_line_itm                  | STRING     | Original Line for Account Assignment Item in Material Doc.   |
| sales_order_1                  | STRING     | Sales Order Number                                           |
| sales_ord_item_1               | STRING     | Item number in Sales Order                                   |
| sorder_schedule                | STRING     | Delivery schedule for sales order                            |
| purchase_order                 | STRING     | Purchase order number                                        |
| item                           | STRING     | Item Number of Purchasing Document                           |
| fisc_yr_ref_doc                | STRING     | Fiscal Year of a Reference Document                          |
| reference_doc                  | STRING     | Document No. of a Reference Document                         |
| ref_doc_item                   | STRING     | Item of a Reference Document                                 |
| mat_doc_year_1                 | STRING     | Material Document Year                                       |
| material_doc_1                 | STRING     | Number of Material Document                                  |
| mat_doc_item_1                 | STRING     | Item in Material Document                                    |
| order_number                   | STRING     | Order Number                                                 |
| asset                          | STRING     | Main Asset Number                                            |
| sub_number                     | STRING     | Asset Subnumber                                              |
| document_number                | STRING     | Accounting Document Number                                   |
| line_item                      | STRING     | Number of Line Item Within Accounting Document               |
| document_number_1              | STRING     | Accounting Document Number                                   |
| line_item_1                    | STRING     | Number of Line Item Within Accounting Document               |
| reservation_number             | STRING     | Number of reservation/dependent requirements                 |
| item_no                        | STRING     | Item Number of Reservation / Dependent Requirements          |
| tr_number                      | STRING     | Transfer Requirement Number                                  |
| tr_item                        | STRING     | Transfer Requirement Item                                    |
| posting_chge_no                | STRING     | Posting Change Number                                        |
| to_number                      | STRING     | Transfer Order Number                                        |
| orig_line_itm_1                | STRING     | Original line in material document                           |
| reference                      | STRING     | Reference Document Number                                    |
| delivery                       | STRING     | Delivery                                                     |
| item_1                         | STRING     | Delivery Item                                                |
| delivery_1                     | STRING     | Delivery                                                     |
| logical_system                 | STRING     | Logical System of EWM Material Document                      |
| material_doc_ewm               | STRING     | Number of Material Document in EWM                           |
| is_item_cancelled              | STRING     | Item has been Cancelled                                      |
| rel_for_analytics              | STRING     | Relevance for Analytics                                      |
| revmvmttypeind                 | STRING     | Reversal movement type                                       |
| service_doc_type               | STRING     | Service Document Type                                        |
| service_document               | STRING     | Service Document ID                                          |
| service_doc_item               | STRING     | Service Document Item ID                                     |
| warehouse_no                   | STRING     | Warehouse Number/Warehouse Complex                           |
| gm_document                    | STRING     | Goods Movement Document                                      |
| movement_type                  | STRING     | Movement type (inventory management)                         |
| auto_created                   | STRING     | Item automatically created                                   |
| material                       | STRING     | Material Number                                              |
| stor_loc                       | STRING     | Storage location                                             |
| batch                          | STRING     | Batch Number                                                 |
| valuation_type                 | STRING     | Valuation Type                                               |
| stock_type_2                   | STRING     | Stock Type                                                   |
| status_key                     | STRING     | Batch status key                                             |
| batch_restr                    | STRING     | Batch in Restricted-Use Stock                                |
| vendor_1                       | STRING     | Vendors account number                                       |
| customer                       | STRING     | Account number of customer                                   |
| distribution                   | STRING     | Distribution of Differences                                  |
| debit_credit                   | STRING     | Debit/Credit Indicator                                       |
| d_c_ind_reval                  | STRING     | Debit/credit indicator in revaluation                        |
| deliv_compl                    | STRING     | Delivery Completed Indicator                                 |
| text                           | STRING     | Item Text                                                    |
| equipment                      | STRING     | Equipment Number                                             |
| recipient                      | STRING     | Goods recipient                                              |
| unloading_point                | STRING     | Unloading Point                                              |
| business_area                  | STRING     | Business Area                                                |
| co_area                        | STRING     | Controlling Area                                             |
| trdg_part_ba                   | STRING     | Trading partners business area                               |
| clearing_cocode                | STRING     | Clearing company code                                        |
| cost_center                    | STRING     | Cost Center                                                  |
| not_in_use                     | STRING     | Old: Project number : No longer used --> PS_POSNR            |
| cctposting_stat                | STRING     | Indicator: Statistical Posting to Cost Center                |
| ord_post_stat                  | STRING     | Indicator: Posting to Order Is Statistical                   |
| projpost_stat                  | STRING     | Indicator: Posting to Project Is Statistical                 |
| pa_post_stat                   | STRING     | Indicator: Posting to Profitability Analysis Is Statistical  |
| post_prev_per                  | STRING     | Allow Posting to Previous Period (Backposting)               |
| pst_to_pr_year                 | STRING     | Indicator: post to previous year                             |
| final_issue                    | STRING     | Final issue for this reservation                             |
| stat_relevant                  | STRING     | Transaction/event is relevant to statistics                  |
| receiving_mat_1                | STRING     | Receiving/Issuing Material                                   |
| receiving_batch                | STRING     | Receiving/Issuing Batch                                      |
| receiving_sloc                 | STRING     | Receiving/issuing storage location                           |
| restricted_use                 | STRING     | Status of Transfer Batch                                     |
| stkeytferbatch                 | STRING     | Status key of transfer batch                                 |
| movement_ind                   | STRING     | Movement Indicator                                           |
| consumption                    | STRING     | Consumption posting                                          |
| receipt_ind                    | STRING     | Receipt Indicator                                            |
| gr_non_valuated                | STRING     | Goods Receipt, Non-Valuated                                  |
| no_of_pallets                  | NUMERIC    | WMS Number of pallets                                        |
| warehouse_no_1                 | STRING     | Warehouse Number / Warehouse Complex                         |
| storage_type                   | STRING     | Storage Type                                                 |
| storage_bin                    | STRING     | Storage Bin                                                  |
| stock_category                 | STRING     | Stock Category in the Warehouse Management System            |
| movement_type_1                | STRING     | Movement Type for Warehouse Management                       |
| posting_in_wm                  | STRING     | Indicator: posting in warehouse management system            |
| int_st_pst_src                 | STRING     | Ind: interim storage posting for source stor.type and bin    |
| inter_post_dest                | STRING     | Ind.: interim storage posting for dest.stor.type and bin     |
| dynamic_bin                    | STRING     | Indicator: dynamic storage bin                               |
| trnsfr_priority                | STRING     | Transfer Priority                                            |
| no_of_gr_slips                 | STRING     | Number of GR/GI Slips to Be Printed                          |
| reason_for_mvmt                | STRING     | Reason for Movement                                          |
| shipping_instr                 | STRING     | Shipping Instructions                                        |
| compliance                     | STRING     | Compliance with Shipping Instructions                        |
| real_estate_key                | STRING     | Internal Key for Real Estate Object                          |
| cost_object                    | STRING     | Cost Object                                                  |
| profit_segment                 | STRING     | Profitability Segment Number (CO-PA)                         |
| profit_center                  | STRING     | Profit Center                                                |
| wbs_element_1                  | STRING     | Work Breakdown Structure Element (WBS Element)               |
| network                        | STRING     | Network Number for Account Assignment                        |
| plan_no_f_oper                 | STRING     | Routing number of operations in the order                    |
| counter                        | STRING     | Internal counter                                             |
| order_item_no                  | STRING     | Order item number                                            |
| partner                        | STRING     | Partner account number                                       |
| commitment_item                | STRING     | Commitment Item                                              |
| g_l_account                    | STRING     | G/L Account Number                                           |
| revgr_desp_ir                  | STRING     | Reversal of GR allowed for GR-based IV despite invoice       |
| supplier                       | STRING     | Supplier to be Supplied/Who is to Receive Delivery           |
| promotion                      | STRING     | Promotion                                                    |
| account_assgmt_no              | STRING     | Sequential Number of Account Assignment                      |
| int_object_no                  | STRING     | Internal object number of the batch classification           |
| partner_pc                     | STRING     | Partner Profit Center                                        |
| record_type_1                  | STRING     | Record type                                                  |
| fund                           | STRING     | Fund                                                         |
| funds_center                   | STRING     | Funds Center                                                 |
| quantity_string                | STRING     | Posting string for quantities                                |
| value_string                   | STRING     | Posting String for Values                                    |
| price_control                  | STRING     | Price control indicator                                      |
| functional_area                | STRING     | Functional Area                                              |
| automatic_po                   | STRING     | Purchase order created at time of goods receipt              |
| status_gr_doc                  | STRING     | Status of Goods Receipt Inspection                           |
| tax_code                       | STRING     | Tax on sales/purchases code                                  |
| tax_jur                        | STRING     | Tax Jurisdiction                                             |
| mpn_material                   | STRING     | Material number corresponding to manufacturer part number    |
| gi_reval_o_k                   | STRING     | Goods issue revaluation performed                            |
| tax_code_1                     | STRING     | Tax on sales/purchases code                                  |
| staging_ind                    | STRING     | Material Staging Indicator for Production Supply             |
| calcn_of_val_open              | STRING     | Calculation of val. open                                     |
| acctindicator                  | STRING     | Accounting Indicator                                         |
| business_proc                  | STRING     | Business Process                                             |
| goods_supplier                 | STRING     | Goods Supplier                                               |
| activity_type                  | STRING     | Activity Type                                                |
| vendor_stk_val                 | STRING     | Vendor Stock Valuation Indicator                             |
| grants                         | STRING     | Grant                                                        |
| stock_type_mod                 | STRING     | Stock Type Modification (Read from Table T156M)              |
| gts_stock_type                 | STRING     | GTS Stock Type                                               |
| earmarked_funds                | STRING     | Document number for earmarked funds                          |
| document_item                  | STRING     | Earmarked Funds: Document Item                               |
| multi_acct_assgt               | STRING     | Multiple Account Assignment                                  |
| receiving_mat_2                | STRING     | Receiving/Issuing Material                                   |
| val_type_tfr                   | STRING     | Valuation Type of Transfer Batch                             |
| plant_2                        | STRING     | Plant                                                        |
| special_stock_2                | STRING     | Special Stock Indicator                                      |
| stock_segment                  | STRING     | Stock Segment                                                |
| rec_stock_seg                  | STRING     | Receiving/Issuing Stock Segment                              |
| reqmnt_segment                 | STRING     | Requirement Segment                                          |
| vendor_2                       | STRING     | Account Number of Vendor or Creditor                         |
| compl_ind                      | STRING     | Completed indicator                                          |
| do_not_adj_crq                 | STRING     | Do Not Adjust Cumulative Received Quantity                   |
| adjust_item                    | STRING     | Adjust Open Quantity in Scheduling Agreement Item            |
| dialog_box                     | STRING     | Display Dialog Box                                           |
| service_performer              | STRING     | Service Performer                                            |
| personnel_no                   | STRING     | Personnel Number                                             |
| acct_assgmt_cat                | STRING     | Account Assignment Category                                  |
| work_item_id                   | STRING     | Work Item ID                                                 |
| serv_rendered                  | DATE       | Date on which services are rendered                          |
| dummy                          | STRING     | Custom Fields: Dummy for Use in Extension Includes           |
| season_year                    | STRING     | Season Year                                                  |
| season                         | STRING     | Season                                                       |
| collection                     | STRING     | Fashion Collection                                           |
| theme                          | STRING     | Fashion Theme                                                |
| characteristic_1               | STRING     | Characteristic Value 1                                       |
| characteristic_2               | STRING     | Characteristic Value 2                                       |
| characteristic_3               | STRING     | Characteristic Value 3                                       |
| non_deductible                 | NUMERIC    | Non-deductible input tax                                     |
| condkey                        | STRING     | Joint Venture Indicator (Condition Key)                      |
| condkey_1                      | STRING     | Joint Venture Indicator (Condition Key)                      |
| document_type                  | STRING     | Document type                                                |
| doc_type_rev                   | STRING     | Document type of revaluation document                        |
| undefined_range_can_be_used_f  | STRING     | Undefined range (can be used for patch levels)               |
| doc_header_text                | STRING     | Document Header Text                                         |
| unpl_del_costs                 | NUMERIC    | Unplanned delivery costs                                     |
| bill_of_lading                 | STRING     | Number of Bill of Lading at Time of Goods Receipt            |
| print_version                  | STRING     | Version for Printing GR/GI Slip                              |
| gr_gi_slip_no                  | STRING     | Goods Receipt/Issue Slip Number                              |
| logical_system_1               | STRING     | Logical System                                               |
| doc_type_ad                    | STRING     | Doc. type for additional doc. in purchase account management |
| ext_wms_control                | STRING     | Control posting for external WMS                             |
| trans_ev_type                  | STRING     | Transaction/Event Type                                       |
| user_name                      | STRING     | User Name                                                    |
| transaction_code               | STRING     | Transaction Code                                             |
| foreign_trade_datanr           | STRING     | Number of foreign trade data in MM and SD documents          |
| customs_ref_no                 | STRING     | Customs Reference Number for Scrapping                       |
| enh_store_ret                  | STRING     | Store Return with Inbound and Outbound Delivery              |
| adv_returns                    | STRING     | Advanced Returns Management Active                           |
| single_character_flag          | STRING     | Single-Character Flag                                        |
| doc_condition                  | STRING     | Number of the Document Condition                             |
| data_filter_value_for_data_agi | DATE       | Data Filter Value for Data Aging                             |
| print_active                   | STRING     | Print via Output Control                                     |
| under_overdel                  | STRING     | Under/Overdelivery                                           |
| percentage_var                 | NUMERIC    | Percentage variance in order price unit                      |
| missing_part                   | STRING     | Material is a missing part                                   |
| print_kanban                   | STRING     | Print kanban card                                            |
| finalmd5key                    | STRING     | MD5 key combining all columns                                |
| input_last_update_date         | DATETIME   | Input squenece number                                        |
| dw_active_indicator            | STRING     | Valid Indicator                                              |
| dw_start_date                  | DATETIME   | Record start date                                            |
| dw_end_date                    | DATETIME   | Record end date                                              |
| dw_last_update_date            | DATETIME   | Record Inserted/Updated date                                 |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms