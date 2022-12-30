
## Table Name : warehouse_dimension


| sap_table | sap_column             | column_name                    | data_type  | description                                                  |
|-----------|------------------------|--------------------------------|------------|--------------------------------------------------------------|
|           |                        | material_movement_uuid         | STRING     | Universal unique id                                          |
|           |                        | material_movement_key          | STRING     | Material Movement Key                                        |
| MATDOC    | MANDT                  | client                         | STRING     | Client                                                       |
| MATDOC    | KEY1                   | split_guid_part_1              | BYTES      | Split GUID, Part 1                                           |
| MATDOC    | KEY2                   | split_guid_part_2              | BYTES      | Split GUID, Part 2                                           |
| MATDOC    | KEY3                   | split_guid_part_3              | BYTES      | Split GUID, Part 3                                           |
| MATDOC    | KEY4                   | split_guid_part_4              | BYTES      | Split GUID, Part 4                                           |
| MATDOC    | KEY5                   | split_guid_part_5              | BYTES      | Split GUID, Part 5                                           |
| MATDOC    | KEY6                   | split_guid_part_6              | BYTES      | Split GUID, Part 6                                           |
|           |                        | material_uuid                  | STRING     | Material Dimension Unique Generated Id                       |
|           |                        | material_key                   | STRING     | Material key from Material Dimension                         |
|           |                        | plant_uuid                     | STRING     | Plant Dimension Unique Generated Id                          |
|           |                        | plant_key                      | STRING     | Plant key from Plant Dimension                               |
|           |                        | company_code_uuid              | STRING     | Unique Generated Id                                          |
|           |                        | company_code_key               | STRING     | Unique Generated Id                                          |
|           |                        | storage_location_uuid          | STRING     | Storage Location Dimension Unique Generated Id               |
|           |                        | storage_location_key           | STRING     | Storage Location key from Storage Location Dimension         |
|           |                        | supplier_uuid                  | STRING     | Supplier Dimension Unique Generated Id                       |
|           |                        | supplier_key                   | STRING     | Supplier Key from Supplier Dimension                         |
| MATDOC    | RECORD_TYPE            | record_type                    | STRING     | Record Type                                                  |
| MATDOC    | HEADER_COUNTER         | matl_doc_counter               | INT64      | Material Document Counter                                    |
| MATDOC    | MATBF                  | stock_mat                      | STRING     | Material in Respect of Which Stock is Managed                |
| MATDOC    | WERKS                  | plant                          | STRING     | Plant                                                        |
| MATDOC    | LGORT_SID              | stor_location_sid              | STRING     | Storage Location (Stock Identifier)                          |
| MATDOC    | CHARG_SID              | batch_sid                      | STRING     | Batch Number (Stock Identifier)                              |
| MATDOC    | LIFNR_SID              | supplier_sid                   | STRING     | Supplier for Special Stock                                   |
| MATDOC    | MAT_KDAUF              | sales_order                    | STRING     | Sales order number of valuated sales order stock             |
| MATDOC    | MAT_KDPOS              | sales_ord_item                 | STRING     | Sales Order Item of Valuated Sales Order Stock               |
| MATDOC    | MAT_PSPNR              | wbs_element                    | STRING     | Valuated Sales Order Stock WBS Element                       |
| MATDOC    | KUNNR_SID              | customer_sid                   | STRING     | Customer for Special Stock                                   |
| MATDOC    | SOBKZ                  | special_stock                  | STRING     | Special Stock Indicator                                      |
| MATDOC    | LBBSA_SID              | stock_type                     | STRING     | Stock Type of Goods Movement (Stock Identifier)              |
| MATDOC    | DISUB_OWNER_SID        | addl_supplier_sid              | STRING     | Additional Supplier for Special Stock                        |
| MATDOC    | BUKRS                  | company_code                   | STRING     | Company Code                                                 |
| MATDOC    | CHARG_WHS_SG           | batch_sid_1                    | STRING     | Batch Number of Warehouse Stock (Stock Identifier)           |
| MATDOC    | MENGU                  | qty_updating                   | STRING     | Quantity Updating in Material Master Record                  |
| MATDOC    | WERTU                  | value_updating                 | STRING     | Value Updating in Material Master Record                     |
| MATDOC    | VBOBJ_SG               | document_object                | STRING     | SD Document Object                                           |
| MATDOC    | KZBWS                  | valuation                      | STRING     | Valuation of Special Stock                                   |
| MATDOC    | BSTAUS_SG              | stock_char                     | STRING     | Stock Characteristics                                        |
| MATDOC    | BSTTYP_SG              | stock_cat                      | STRING     | Stock Category                                               |
| MATDOC    | KALNR                  | prodcostest_no                 | STRING     | Cost Estimate Number - Product Costing                       |
| MATDOC    | BERID                  | mrp_area                       | STRING     | MRP Area                                                     |
| MATDOC    | WAERS                  | currency                       | STRING     | Currency Key                                                 |
| MATDOC    | DMBTR                  | amount_in_lc                   | NUMERIC    | Amount in Local Currency                                     |
| MATDOC    | BNBTR                  | delivery_costs                 | NUMERIC    | Delivery costs in local currency                             |
| MATDOC    | BUALT                  | amount                         | NUMERIC    | Amount Posted in Alternative Price Control                   |
| MATDOC    | DMBUM                  | revaluation                    | NUMERIC    | Revaluation amount on back-posting to a previous period      |
| MATDOC    | EXBWR                  | ext_amount_lc                  | NUMERIC    | Externally Entered Posting Amount in Local Currency          |
| MATDOC    | VKWRT                  | salval_inc_vat                 | NUMERIC    | Value at Sales Prices Including Value-Added Tax              |
| MATDOC    | EXVKW                  | sales_value                    | NUMERIC    | Externally Entered Sales Value in Local Currency             |
| MATDOC    | SALK3                  | total_value                    | NUMERIC    | Value of total valuated stock before the posting             |
| MATDOC    | VKWRA                  | salval_w_o_vat                 | NUMERIC    | Value at Sales Prices Excluding Value Added Tax              |
| MATDOC    | J_1BEXBASE             | alt_base_amnt                  | NUMERIC    | Alternate base amount in document currency                   |
| MATDOC    | STOCK_VKWRT            | salval_incl_vat                | NUMERIC    | Value at Sales Prices Including Value-Added Tax              |
| MATDOC    | DMBTR_STOCK            | amt_lc_w_stk_qty               | NUMERIC    | Amount in Local Currency with Sign of Stock Quantity         |
| MATDOC    | DMBTR_CONS             | amt_lc_w_cons_qty              | NUMERIC    | Amount in Local Currency with Sign of Consumption Quantity   |
| MATDOC    | MEINS                  | base_unit                      | STRING     | Base Unit of Measure                                         |
| MATDOC    | MENGE                  | quantity                       | NUMERIC    | Quantity                                                     |
| MATDOC    | LBKUM                  | valuated_stock                 | NUMERIC    | Total valuated stock before the posting                      |
| MATDOC    | STOCK_QTY              | stock_quantity                 | BIGNUMERIC | Stock Quantity                                               |
| MATDOC    | CONSUMPTION_QTY        | consumption_quantity           | BIGNUMERIC | Consumption Quantity                                         |
| MATDOC    | ERFME                  | unit_of_entry                  | STRING     | Unit of entry                                                |
| MATDOC    | ERFMG                  | quantity_in_une                | NUMERIC    | Quantity in unit of entry                                    |
| MATDOC    | BPRME                  | po_price_unit                  | STRING     | Order Price Unit (Purchasing)                                |
| MATDOC    | BPMNG                  | qty_in_opun                    | NUMERIC    | Quantity in Purchase Order Price Unit                        |
| MATDOC    | BSTME                  | order_unit                     | STRING     | Purchase Order Unit of Measure                               |
| MATDOC    | BSTMG                  | qty_in_oun                     | NUMERIC    | Goods receipt quantity in order unit                         |
| MATDOC    | LSMEH                  | del_note_unit                  | STRING     | Unit of Measure From Delivery Note                           |
| MATDOC    | LSMNG                  | del_note_qty                   | NUMERIC    | Quantity in Unit of Measure from Delivery Note               |
| MATDOC    | PBAMG                  | quantity_1                     | NUMERIC    | Quantity                                                     |
| MATDOC    | CURRENCY_A1            | analytical_currency            | STRING     | Analytical Currency of Warehouse Stock - not used            |
| MATDOC    | PRICE_A1               | analytical_price               | BIGNUMERIC | Analytical Price of one Base Unit of Measure - not used      |
| MATDOC    | PRICE_SOURCE_A1        | analytical_pr_ind              | STRING     | Indicator for Analytical Value of Price Source - not used    |
| MATDOC    | STOCK_VALUE_A1         | analytical_value               | BIGNUMERIC | Analytical Value of Warehouse Stock - not used               |
| MATDOC    | CONS_VALUE_A1          | analytic_val_cons              | BIGNUMERIC | Analytical Value of Consumption Quantity - not used          |
| MATDOC    | __CWM__MENGE           | qty_in_puom                    | NUMERIC    | Quantity in Parallel Unit of Measure                         |
| MATDOC    | __CWM__MEINS           | parallel_uom                   | STRING     | Parallel Unit of Measure                                     |
| MATDOC    | __CWM__ERFMG           | puom_euom_qty                  | NUMERIC    | Quantity in Parallel Unit of Entry                           |
| MATDOC    | __CWM__ERFME           | puom_entry_uom                 | STRING     | PUoM Entry Unit of Measure                                   |
| MATDOC    | __CWM__STOCK_QTY       | pq_stock_quantity              | BIGNUMERIC | Stock Quantity in PUoM                                       |
| MATDOC    | __CWM__CONSUMPTION_QTY | pq_consumption_qty             | BIGNUMERIC | Consumption Quantity in PUoM                                 |
| MATDOC    | __CWM__MEINS_SID       | parallel_uom_sid               | STRING     | Parallel Unit of Measure (Stock Identifier)                  |
| MATDOC    | UMMAB_CID              | receiving_mat                  | STRING     | Receiving/Issuing Material                                   |
| MATDOC    | UMWRK_CID              | plant_1                        | STRING     | Plant                                                        |
| MATDOC    | LGORT_CID              | stor_location_sid_1            | STRING     | Storage Location (Stock Identifier)                          |
| MATDOC    | CHARG_CID              | batch_sid_2                    | STRING     | Batch Number (Stock Identifier)                              |
| MATDOC    | LIFNR_CID              | supplier_sid_1                 | STRING     | Supplier for Special Stock                                   |
| MATDOC    | MAT_KDAUF_CID          | sales_document_sid             | STRING     | Sales and Distribution Document Number (Stock Identifier)    |
| MATDOC    | MAT_KDPOS_CID          | item_sid                       | STRING     | Item Number of the SD Document (Stock Identifier)            |
| MATDOC    | MAT_PSPNR_CID          | wbs_element_sid                | STRING     | Work Breakdown Structure Element (Stock Identifier)          |
| MATDOC    | KUNNR_CID              | customer_sid_1                 | STRING     | Customer for Special Stock                                   |
| MATDOC    | UMSOK_CID              | special_stock_1                | STRING     | Special Stock Indicator                                      |
| MATDOC    | LBBSA_CID              | stock_type_1                   | STRING     | Stock Type of Goods Movement (Stock Identifier)              |
| MATDOC    | DISUB_OWNER_CID        | vendor                         | STRING     | Account Number of Vendor or Creditor                         |
| MATDOC    | UMBUK_CG               | company_code_1                 | STRING     | Company Code                                                 |
| MATDOC    | CHARG_WHS_CG           | batch_sid_3                    | STRING     | Batch Number of Warehouse Stock (Stock Identifier)           |
| MATDOC    | UMMEN_CG               | qty_updating_1                 | STRING     | Quantity Updating in Material Master Record                  |
| MATDOC    | UMWER_CG               | value_updating_1               | STRING     | Value Updating in Material Master Record                     |
| MATDOC    | VBOBJ_CG               | document_object_1              | STRING     | SD Document Object                                           |
| MATDOC    | UMKZBWS_CG             | valuation_1                    | STRING     | Valuation of Special Stock                                   |
| MATDOC    | BSTAUS_CG              | stock_char_1                   | STRING     | Stock Characteristics                                        |
| MATDOC    | BSTTYP_CG              | stock_cat_1                    | STRING     | Stock Category                                               |
| MATDOC    | KALNR_CG               | prodcostest_no_1               | STRING     | Complement Cost Estimate Number - Product Costing            |
| MATDOC    | BUDAT                  | posting_date                   | DATE       | Posting Date in the Document                                 |
| MATDOC    | CPUDT                  | entered_on                     | DATE       | Day On Which Accounting Document Was Entered                 |
| MATDOC    | CPUTM                  | entered_at                     | TIME       | Time of Entry                                                |
| MATDOC    | YEARDAY_BUDAT          | year_day                       | STRING     | Year-Day-Combination                                         |
| MATDOC    | YEARWEEK_BUDAT         | year_week                      | STRING     | Year-Week-Combination                                        |
| MATDOC    | YEARMONTH_BUDAT        | year_month                     | STRING     | Year-Month-Combination                                       |
| MATDOC    | YEARQUARTER_BUDAT      | year_quarter                   | STRING     | Year-Quarter-Combination                                     |
| MATDOC    | YEAR_BUDAT             | year                           | STRING     | Year                                                         |
| MATDOC    | QUARTER_BUDAT          | quarter_1_4                    | STRING     | Quarter (1 - 4)                                              |
| MATDOC    | MONTH_BUDAT            | month_1_12                     | STRING     | Month (1 - 12)                                               |
| MATDOC    | WEEK_BUDAT             | calendar_week                  | STRING     | Calendar Week (1 - 53)                                       |
| MATDOC    | DAY_BUDAT              | day_of_year_1_366              | STRING     | Day of Year (1 - 366)                                        |
| MATDOC    | WEEKDAY_BUDAT          | week_day                       | STRING     | Week Day                                                     |
| MATDOC    | BLDAT                  | document_date                  | DATE       | Document Date in Document                                    |
| MATDOC    | AEDAT                  | changed_on                     | DATE       | Date of Last Change                                          |
| MATDOC    | SPE_BUDAT_UHR          | gi_time                        | TIME       | Time of Goods Issue (Local, Relating to a Plant)             |
| MATDOC    | SPE_BUDAT_ZONE         | time_zone                      | STRING     | Time Zone                                                    |
| MATDOC    | PERIV                  | fi_year_variant                | STRING     | Fiscal Year Variant                                          |
| MATDOC    | GJAHR                  | fiscal_year                    | STRING     | Fiscal Year                                                  |
| MATDOC    | GJPER                  | period_year                    | STRING     | Period/Year                                                  |
| MATDOC    | GJPER_CURR_PER         | period_year_1                  | STRING     | Period/Year                                                  |
| MATDOC    | VFDAT                  | sled_bbd                       | DATE       | Shelf Life Expiration or Best-Before Date                    |
| MATDOC    | DABRBZ                 | reference_date                 | DATE       | Reference date for settlement                                |
| MATDOC    | DABRZ                  | reference_date_1               | DATE       | Reference date for settlement                                |
| MATDOC    | HSDAT                  | date_of_manuf                  | DATE       | Date of Manufacture                                          |
| MATDOC    | MBLNR                  | material_doc                   | STRING     | Number of Material Document                                  |
| MATDOC    | MJAHR                  | mat_doc_year                   | STRING     | Material Document Year                                       |
| MATDOC    | ZEILE                  | mat_doc_item                   | STRING     | Item in Material Document                                    |
| MATDOC    | LINE_ID                | line_id                        | STRING     | Unique identification of document line                       |
| MATDOC    | PARENT_ID              | parent_id                      | STRING     | Identifier of immediately superior line                      |
| MATDOC    | LINE_DEPTH             | level                          | STRING     | Hierarchy level of line in document                          |
| MATDOC    | MAA_URZEI              | orig_line_itm                  | STRING     | Original Line for Account Assignment Item in Material Doc.   |
| MATDOC    | KDAUF                  | sales_order_1                  | STRING     | Sales Order Number                                           |
| MATDOC    | KDPOS                  | sales_ord_item_1               | STRING     | Item number in Sales Order                                   |
| MATDOC    | KDEIN                  | sorder_schedule                | STRING     | Delivery schedule for sales order                            |
| MATDOC    | EBELN                  | purchase_order                 | STRING     | Purchase order number                                        |
| MATDOC    | EBELP                  | item                           | STRING     | Item Number of Purchasing Document                           |
| MATDOC    | LFBJA                  | fisc_yr_ref_doc                | STRING     | Fiscal Year of a Reference Document                          |
| MATDOC    | LFBNR                  | reference_doc                  | STRING     | Document No. of a Reference Document                         |
| MATDOC    | LFPOS                  | ref_doc_item                   | STRING     | Item of a Reference Document                                 |
| MATDOC    | SJAHR                  | mat_doc_year_1                 | STRING     | Material Document Year                                       |
| MATDOC    | SMBLN                  | material_doc_1                 | STRING     | Number of Material Document                                  |
| MATDOC    | SMBLP                  | mat_doc_item_1                 | STRING     | Item in Material Document                                    |
| MATDOC    | AUFNR                  | order_number                   | STRING     | Order Number                                                 |
| MATDOC    | ANLN1                  | asset                          | STRING     | Main Asset Number                                            |
| MATDOC    | ANLN2                  | sub_number                     | STRING     | Asset Subnumber                                              |
| MATDOC    | BELNR                  | document_number                | STRING     | Accounting Document Number                                   |
| MATDOC    | BUZEI                  | line_item                      | STRING     | Number of Line Item Within Accounting Document               |
| MATDOC    | BELUM                  | document_number_1              | STRING     | Accounting Document Number                                   |
| MATDOC    | BUZUM                  | line_item_1                    | STRING     | Number of Line Item Within Accounting Document               |
| MATDOC    | RSNUM                  | reservation_number             | STRING     | Number of reservation/dependent requirements                 |
| MATDOC    | RSPOS                  | item_no                        | STRING     | Item Number of Reservation / Dependent Requirements          |
| MATDOC    | TBNUM                  | tr_number                      | STRING     | Transfer Requirement Number                                  |
| MATDOC    | TBPOS                  | tr_item                        | STRING     | Transfer Requirement Item                                    |
| MATDOC    | UBNUM                  | posting_chge_no                | STRING     | Posting Change Number                                        |
| MATDOC    | TANUM                  | to_number                      | STRING     | Transfer Order Number                                        |
| MATDOC    | URZEI                  | orig_line_itm_1                | STRING     | Original line in material document                           |
| MATDOC    | XBLNR                  | reference                      | STRING     | Reference Document Number                                    |
| MATDOC    | VBELN_IM               | delivery                       | STRING     | Delivery                                                     |
| MATDOC    | VBELP_IM               | item_1                         | STRING     | Delivery Item                                                |
| MATDOC    | LE_VBELN               | delivery_1                     | STRING     | Delivery                                                     |
| MATDOC    | SPE_LOGSYS             | logical_system                 | STRING     | Logical System of EWM Material Document                      |
| MATDOC    | SPE_MDNUM_EWM          | material_doc_ewm               | STRING     | Number of Material Document in EWM                           |
| MATDOC    | CANCELLED              | is_item_cancelled              | STRING     | Item has been Cancelled                                      |
| MATDOC    | CANCELLATION_TYPE      | rel_for_analytics              | STRING     | Relevance for Analytics                                      |
| MATDOC    | REVERSAL_MOVEMENT      | revmvmttypeind                 | STRING     | Reversal movement type                                       |
| MATDOC    | SERVICE_DOC_TYPE       | service_doc_type               | STRING     | Service Document Type                                        |
| MATDOC    | SERVICE_DOC_ID         | service_document               | STRING     | Service Document ID                                          |
| MATDOC    | SERVICE_DOC_ITEM_ID    | service_doc_item               | STRING     | Service Document Item ID                                     |
| MATDOC    | EWM_LGNUM              | warehouse_no                   | STRING     | Warehouse Number/Warehouse Complex                           |
| MATDOC    | EWM_GMDOC              | gm_document                    | STRING     | Goods Movement Document                                      |
| MATDOC    | BWART                  | movement_type                  | STRING     | Movement type (inventory management)                         |
| MATDOC    | XAUTO                  | auto_created                   | STRING     | Item automatically created                                   |
| MATDOC    | MATNR                  | material                       | STRING     | Material Number                                              |
| MATDOC    | LGORT                  | stor_loc                       | STRING     | Storage location                                             |
| MATDOC    | CHARG                  | batch                          | STRING     | Batch Number                                                 |
| MATDOC    | BWTAR                  | valuation_type                 | STRING     | Valuation Type                                               |
| MATDOC    | INSMK                  | stock_type_2                   | STRING     | Stock Type                                                   |
| MATDOC    | ZUSCH                  | status_key                     | STRING     | Batch status key                                             |
| MATDOC    | ZUSTD                  | batch_restr                    | STRING     | Batch in Restricted-Use Stock                                |
| MATDOC    | LIFNR                  | vendor_1                       | STRING     | Vendors account number                                       |
| MATDOC    | KUNNR                  | customer                       | STRING     | Account number of customer                                   |
| MATDOC    | PLPLA                  | distribution                   | STRING     | Distribution of Differences                                  |
| MATDOC    | SHKZG                  | debit_credit                   | STRING     | Debit/Credit Indicator                                       |
| MATDOC    | SHKUM                  | d_c_ind_reval                  | STRING     | Debit/credit indicator in revaluation                        |
| MATDOC    | ELIKZ                  | deliv_compl                    | STRING     | Delivery Completed Indicator                                 |
| MATDOC    | SGTXT                  | text                           | STRING     | Item Text                                                    |
| MATDOC    | EQUNR                  | equipment                      | STRING     | Equipment Number                                             |
| MATDOC    | WEMPF                  | recipient                      | STRING     | Goods recipient                                              |
| MATDOC    | ABLAD                  | unloading_point                | STRING     | Unloading Point                                              |
| MATDOC    | GSBER                  | business_area                  | STRING     | Business Area                                                |
| MATDOC    | KOKRS                  | co_area                        | STRING     | Controlling Area                                             |
| MATDOC    | PARGB                  | trdg_part_ba                   | STRING     | Trading partners business area                               |
| MATDOC    | PARBU                  | clearing_cocode                | STRING     | Clearing company code                                        |
| MATDOC    | KOSTL                  | cost_center                    | STRING     | Cost Center                                                  |
| MATDOC    | PROJN                  | not_in_use                     | STRING     | Old: Project number : No longer used --> PS_POSNR            |
| MATDOC    | XSKST                  | cctposting_stat                | STRING     | Indicator: Statistical Posting to Cost Center                |
| MATDOC    | XSAUF                  | ord_post_stat                  | STRING     | Indicator: Posting to Order Is Statistical                   |
| MATDOC    | XSPRO                  | projpost_stat                  | STRING     | Indicator: Posting to Project Is Statistical                 |
| MATDOC    | XSERG                  | pa_post_stat                   | STRING     | Indicator: Posting to Profitability Analysis Is Statistical  |
| MATDOC    | XRUEM                  | post_prev_per                  | STRING     | Allow Posting to Previous Period (Backposting)               |
| MATDOC    | XRUEJ                  | pst_to_pr_year                 | STRING     | Indicator: post to previous year                             |
| MATDOC    | KZEAR                  | final_issue                    | STRING     | Final issue for this reservation                             |
| MATDOC    | KZSTR                  | stat_relevant                  | STRING     | Transaction/event is relevant to statistics                  |
| MATDOC    | UMMAT                  | receiving_mat_1                | STRING     | Receiving/Issuing Material                                   |
| MATDOC    | UMCHA                  | receiving_batch                | STRING     | Receiving/Issuing Batch                                      |
| MATDOC    | UMLGO                  | receiving_sloc                 | STRING     | Receiving/issuing storage location                           |
| MATDOC    | UMZST                  | restricted_use                 | STRING     | Status of Transfer Batch                                     |
| MATDOC    | UMZUS                  | stkeytferbatch                 | STRING     | Status key of transfer batch                                 |
| MATDOC    | KZBEW                  | movement_ind                   | STRING     | Movement Indicator                                           |
| MATDOC    | KZVBR                  | consumption                    | STRING     | Consumption posting                                          |
| MATDOC    | KZZUG                  | receipt_ind                    | STRING     | Receipt Indicator                                            |
| MATDOC    | WEUNB                  | gr_non_valuated                | STRING     | Goods Receipt, Non-Valuated                                  |
| MATDOC    | PALAN                  | no_of_pallets                  | NUMERIC    | WMS Number of pallets                                        |
| MATDOC    | LGNUM                  | warehouse_no_1                 | STRING     | Warehouse Number / Warehouse Complex                         |
| MATDOC    | LGTYP                  | storage_type                   | STRING     | Storage Type                                                 |
| MATDOC    | LGPLA                  | storage_bin                    | STRING     | Storage Bin                                                  |
| MATDOC    | BESTQ                  | stock_category                 | STRING     | Stock Category in the Warehouse Management System            |
| MATDOC    | BWLVS                  | movement_type_1                | STRING     | Movement Type for Warehouse Management                       |
| MATDOC    | XBLVS                  | posting_in_wm                  | STRING     | Indicator: posting in warehouse management system            |
| MATDOC    | VSCHN                  | int_st_pst_src                 | STRING     | Ind: interim storage posting for source stor.type and bin    |
| MATDOC    | NSCHN                  | inter_post_dest                | STRING     | Ind.: interim storage posting for dest.stor.type and bin     |
| MATDOC    | DYPLA                  | dynamic_bin                    | STRING     | Indicator: dynamic storage bin                               |
| MATDOC    | TBPRI                  | trnsfr_priority                | STRING     | Transfer Priority                                            |
| MATDOC    | WEANZ                  | no_of_gr_slips                 | STRING     | Number of GR/GI Slips to Be Printed                          |
| MATDOC    | GRUND                  | reason_for_mvmt                | STRING     | Reason for Movement                                          |
| MATDOC    | EVERS                  | shipping_instr                 | STRING     | Shipping Instructions                                        |
| MATDOC    | EVERE                  | compliance                     | STRING     | Compliance with Shipping Instructions                        |
| MATDOC    | IMKEY                  | real_estate_key                | STRING     | Internal Key for Real Estate Object                          |
| MATDOC    | KSTRG                  | cost_object                    | STRING     | Cost Object                                                  |
| MATDOC    | PAOBJNR                | profit_segment                 | STRING     | Profitability Segment Number (CO-PA)                         |
| MATDOC    | PRCTR                  | profit_center                  | STRING     | Profit Center                                                |
| MATDOC    | PS_PSP_PNR             | wbs_element_1                  | STRING     | Work Breakdown Structure Element (WBS Element)               |
| MATDOC    | NPLNR                  | network                        | STRING     | Network Number for Account Assignment                        |
| MATDOC    | AUFPL                  | plan_no_f_oper                 | STRING     | Routing number of operations in the order                    |
| MATDOC    | APLZL                  | counter                        | STRING     | Internal counter                                             |
| MATDOC    | AUFPS                  | order_item_no                  | STRING     | Order item number                                            |
| MATDOC    | VPTNR                  | partner                        | STRING     | Partner account number                                       |
| MATDOC    | FIPOS                  | commitment_item                | STRING     | Commitment Item                                              |
| MATDOC    | SAKTO                  | g_l_account                    | STRING     | G/L Account Number                                           |
| MATDOC    | XWSBR                  | revgr_desp_ir                  | STRING     | Reversal of GR allowed for GR-based IV despite invoice       |
| MATDOC    | EMLIF                  | supplier                       | STRING     | Supplier to be Supplied/Who is to Receive Delivery           |
| MATDOC    | AKTNR                  | promotion                      | STRING     | Promotion                                                    |
| MATDOC    | ZEKKN                  | account_assgmt_no              | STRING     | Sequential Number of Account Assignment                      |
| MATDOC    | CUOBJ_CH               | int_object_no                  | STRING     | Internal object number of the batch classification           |
| MATDOC    | PPRCTR                 | partner_pc                     | STRING     | Partner Profit Center                                        |
| MATDOC    | RSART                  | record_type_1                  | STRING     | Record type                                                  |
| MATDOC    | GEBER                  | fund                           | STRING     | Fund                                                         |
| MATDOC    | FISTL                  | funds_center                   | STRING     | Funds Center                                                 |
| MATDOC    | BUSTM                  | quantity_string                | STRING     | Posting string for quantities                                |
| MATDOC    | BUSTW                  | value_string                   | STRING     | Posting String for Values                                    |
| MATDOC    | VPRSV                  | price_control                  | STRING     | Price control indicator                                      |
| MATDOC    | FKBER                  | functional_area                | STRING     | Functional Area                                              |
| MATDOC    | XBEAU                  | automatic_po                   | STRING     | Purchase order created at time of goods receipt              |
| MATDOC    | QINSPST                | status_gr_doc                  | STRING     | Status of Goods Receipt Inspection                           |
| MATDOC    | MWSKZ                  | tax_code                       | STRING     | Tax on sales/purchases code                                  |
| MATDOC    | TXJCD                  | tax_jur                        | STRING     | Tax Jurisdiction                                             |
| MATDOC    | EMATN                  | mpn_material                   | STRING     | Material number corresponding to manufacturer part number    |
| MATDOC    | J_1AGIRUPD             | gi_reval_o_k                   | STRING     | Goods issue revaluation performed                            |
| MATDOC    | VKMWS                  | tax_code_1                     | STRING     | Tax on sales/purchases code                                  |
| MATDOC    | BERKZ                  | staging_ind                    | STRING     | Material Staging Indicator for Production Supply             |
| MATDOC    | XWOFF                  | calcn_of_val_open              | STRING     | Calculation of val. open                                     |
| MATDOC    | BEMOT                  | acctindicator                  | STRING     | Accounting Indicator                                         |
| MATDOC    | PRZNR                  | business_proc                  | STRING     | Business Process                                             |
| MATDOC    | LLIEF                  | goods_supplier                 | STRING     | Goods Supplier                                               |
| MATDOC    | LSTAR                  | activity_type                  | STRING     | Activity Type                                                |
| MATDOC    | XOBEW                  | vendor_stk_val                 | STRING     | Vendor Stock Valuation Indicator                             |
| MATDOC    | GRANT_NBR              | grants                         | STRING     | Grant                                                        |
| MATDOC    | ZUSTD_T156M            | stock_type_mod                 | STRING     | Stock Type Modification (Read from Table T156M)              |
| MATDOC    | SPE_GTS_STOCK_TY       | gts_stock_type                 | STRING     | GTS Stock Type                                               |
| MATDOC    | KBLNR                  | earmarked_funds                | STRING     | Document number for earmarked funds                          |
| MATDOC    | KBLPOS                 | document_item                  | STRING     | Earmarked Funds: Document Item                               |
| MATDOC    | XMACC                  | multi_acct_assgt               | STRING     | Multiple Account Assignment                                  |
| MATDOC    | UMMAB                  | receiving_mat_2                | STRING     | Receiving/Issuing Material                                   |
| MATDOC    | UMBAR                  | val_type_tfr                   | STRING     | Valuation Type of Transfer Batch                             |
| MATDOC    | UMWRK                  | plant_2                        | STRING     | Plant                                                        |
| MATDOC    | UMSOK                  | special_stock_2                | STRING     | Special Stock Indicator                                      |
| MATDOC    | SGT_SCAT               | stock_segment                  | STRING     | Stock Segment                                                |
| MATDOC    | SGT_UMSCAT             | rec_stock_seg                  | STRING     | Receiving/Issuing Stock Segment                              |
| MATDOC    | SGT_RCAT               | reqmnt_segment                 | STRING     | Requirement Segment                                          |
| MATDOC    | DISUB_OWNER            | vendor_2                       | STRING     | Account Number of Vendor or Creditor                         |
| MATDOC    | COMPL_MARK             | compl_ind                      | STRING     | Completed indicator                                          |
| MATDOC    | FZGLS_MARK             | do_not_adj_crq                 | STRING     | Do Not Adjust Cumulative Received Quantity                   |
| MATDOC    | ETANP_MARK             | adjust_item                    | STRING     | Adjust Open Quantity in Scheduling Agreement Item            |
| MATDOC    | POPUP_MARK             | dialog_box                     | STRING     | Display Dialog Box                                           |
| MATDOC    | SERVICEPERFORMER       | service_performer              | STRING     | Service Performer                                            |
| MATDOC    | PERNR                  | personnel_no                   | STRING     | Personnel Number                                             |
| MATDOC    | KNTTP_GR               | acct_assgmt_cat                | STRING     | Account Assignment Category                                  |
| MATDOC    | WORK_ITEM_ID           | work_item_id                   | STRING     | Work Item ID                                                 |
| MATDOC    | FBUDA                  | serv_rendered                  | DATE       | Date on which services are rendered                          |
| MATDOC    | DUMMY_INCL_EEW_COBL    | dummy                          | STRING     | Custom Fields: Dummy for Use in Extension Includes           |
| MATDOC    | FSH_SEASON_YEAR        | season_year                    | STRING     | Season Year                                                  |
| MATDOC    | FSH_SEASON             | season                         | STRING     | Season                                                       |
| MATDOC    | FSH_COLLECTION         | collection                     | STRING     | Fashion Collection                                           |
| MATDOC    | FSH_THEME              | theme                          | STRING     | Fashion Theme                                                |
| MATDOC    | WRF_CHARSTC1           | characteristic_1               | STRING     | Characteristic Value 1                                       |
| MATDOC    | WRF_CHARSTC2           | characteristic_2               | STRING     | Characteristic Value 2                                       |
| MATDOC    | WRF_CHARSTC3           | characteristic_3               | STRING     | Characteristic Value 3                                       |
| MATDOC    | OINAVNW                | non_deductible                 | NUMERIC    | Non-deductible input tax                                     |
| MATDOC    | OICONDCOD              | condkey                        | STRING     | Joint Venture Indicator (Condition Key)                      |
| MATDOC    | CONDI                  | condkey_1                      | STRING     | Joint Venture Indicator (Condition Key)                      |
| MATDOC    | BLART                  | document_type                  | STRING     | Document type                                                |
| MATDOC    | BLAUM                  | doc_type_rev                   | STRING     | Document type of revaluation document                        |
| MATDOC    | TCODE                  | undefined_range_can_be_used_f  | STRING     | Undefined range (can be used for patch levels)               |
| MATDOC    | BKTXT                  | doc_header_text                | STRING     | Document Header Text                                         |
| MATDOC    | FRATH                  | unpl_del_costs                 | NUMERIC    | Unplanned delivery costs                                     |
| MATDOC    | FRBNR                  | bill_of_lading                 | STRING     | Number of Bill of Lading at Time of Goods Receipt            |
| MATDOC    | WEVER                  | print_version                  | STRING     | Version for Printing GR/GI Slip                              |
| MATDOC    | XABLN                  | gr_gi_slip_no                  | STRING     | Goods Receipt/Issue Slip Number                              |
| MATDOC    | AWSYS                  | logical_system_1               | STRING     | Logical System                                               |
| MATDOC    | BLA2D                  | doc_type_ad                    | STRING     | Doc. type for additional doc. in purchase account management |
| MATDOC    | BFWMS                  | ext_wms_control                | STRING     | Control posting for external WMS                             |
| MATDOC    | VGART                  | trans_ev_type                  | STRING     | Transaction/Event Type                                       |
| MATDOC    | USNAM                  | user_name                      | STRING     | User Name                                                    |
| MATDOC    | TCODE2                 | transaction_code               | STRING     | Transaction Code                                             |
| MATDOC    | EXNUM                  | foreign_trade_datanr           | STRING     | Number of foreign trade data in MM and SD documents          |
| MATDOC    | GTS_CUSREF_NO          | customs_ref_no                 | STRING     | Customs Reference Number for Scrapping                       |
| MATDOC    | FLS_RSTO               | enh_store_ret                  | STRING     | Store Return with Inbound and Outbound Delivery              |
| MATDOC    | MSR_ACTIVE             | adv_returns                    | STRING     | Advanced Returns Management Active                           |
| MATDOC    | XCOMPL                 | single_character_flag          | STRING     | Single-Character Flag                                        |
| MATDOC    | KNUMV                  | doc_condition                  | STRING     | Number of the Document Condition                             |
| MATDOC    | _DATAAGING             | data_filter_value_for_data_agi | DATE       | Data Filter Value for Data Aging                             |
| MATDOC    | XPRINT                 | print_active                   | STRING     | Print via Output Control                                     |
| MATDOC    | LMBMV                  | under_overdel                  | STRING     | Under/Overdelivery                                           |
| MATDOC    | PABPM                  | percentage_var                 | NUMERIC    | Percentage variance in order price unit                      |
| MATDOC    | XFMAT                  | missing_part                   | STRING     | Material is a missing part                                   |
| MATDOC    | KNBDR                  | print_kanban                   | STRING     | Print kanban card                                            |
|           |                        | finalmd5key                    | STRING     | MD5 key combining all columns                                |
|           |                        | input_last_update_date         | DATETIME   | Input squenece number                                        |
|           |                        | dw_active_indicator            | STRING     | Valid Indicator                                              |
|           |                        | dw_start_date                  | DATETIME   | Record start date                                            |
|           |                        | dw_end_date                    | DATETIME   | Record end date                                              |
|           |                        | dw_last_update_date            | DATETIME   | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms