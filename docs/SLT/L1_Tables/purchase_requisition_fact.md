
## Table Name : purchase_requisition_fact

| column_name                | data_type | description                                                 |
|----------------------------|-----------|-------------------------------------------------------------|
| purchase_requisition_uuid  | STRING    | Unique Generated Id                                         |
| purchase_requisition_key   | STRING    | Purchase Requisition Key                                    |
| client                     | STRING    | Client                                                      |
| purchase_req               | STRING    | Purchase Requisition Number                                 |
| requisn_item               | STRING    | Item number of purchase requisition                         |
| material_uuid              | STRING    | Material Dimension Unique Generated Id                      |
| material_key               | STRING    | Material key from Material Dimension                        |
| supplier_uuid              | STRING    | Supplier Dimension Unique Generated Id                      |
| supplier_key               | STRING    | Supplier key from Supplier Dimension                        |
| plant_uuid                 | STRING    | Plant Dimension Unique Generated Id                         |
| plant_key                  | STRING    | Plant key from Plant Dimension                              |
| customer_uuid              | STRING    | Customer Dimension Unique Generated Id                      |
| customer_key               | STRING    | Customer Key from Customer Dimension                        |
| supplier_company_code_uuid | STRING    | Supplier Code Dimension Unique Generated Id                 |
| supplier_company_code_key  | STRING    | Supplier Company Code Key from Supplier Code Dimension      |
| company_code_uuid          | STRING    | Company code Dimension Unique Generated Id                  |
| company_code_key           | STRING    | Company code key from Company code Dimension                |
| storage_location_uuid      | STRING    | Storage location Dimension Unique Generated Id              |
| storage_location_key       | STRING    | Storage location key from Storage location Dimension        |
| document_type              | STRING    | Purchase Requisition Document Type                          |
| doc_category               | STRING    | Purchasing Document Category                                |
| control                    | STRING    | Control indicator for purchasing document type              |
| deletion_ind               | STRING    | Deletion indicator in purchasing document                   |
| processing_stat            | STRING    | Processing status of purchase requisition                   |
| creation_ind               | STRING    | Creation indicator (purchase requisition/schedule lines)    |
| release_ind                | STRING    | Release Indicator                                           |
| release_state              | STRING    | Release State                                               |
| rel_strategy               | STRING    | Release strategy in the purchase requisition                |
| purch_group                | STRING    | Purchasing Group                                            |
| created_by                 | STRING    | Name of Person who Created the Object                       |
| changed_on                 | DATE      | Date of Last Change                                         |
| requisitioner              | STRING    | Name of requisitioner/requester                             |
| short_text                 | STRING    | Short Text                                                  |
| material                   | STRING    | Material Number                                             |
| mpn_material               | STRING    | Material number corresponding to manufacturer part number   |
| plant                      | STRING    | Plant                                                       |
| stor_loc                   | STRING    | Storage location                                            |
| tracking_number            | STRING    | Requirement Tracking Number                                 |
| material_group             | STRING    | Material Group                                              |
| supplying_plant            | STRING    | Supplying (issuing) plant in case of stock transport order  |
| quantity                   | NUMERIC   | Purchase requisition quantity                               |
| unit_of_measure            | STRING    | Purchase requisition unit of measure                        |
| shortage                   | NUMERIC   | Shortage (stock undercoverage) quantity                     |
| requisn_date               | DATE      | Requisition (request) date                                  |
| delivery_date              | STRING    | Category of delivery date                                   |
| delivery_date_1            | DATE      | Item delivery date                                          |
| release_date               | DATE      | Purchase Requisition Release Date                           |
| gr_proc_time               | NUMERIC   | Goods receipt processing time in days                       |
| valuation_price            | NUMERIC   | Price in Purchase Requisition                               |
| price_unit                 | NUMERIC   | Price unit                                                  |
| item_category              | STRING    | Item category in purchasing document                        |
| acct_assgmt_cat            | STRING    | Account Assignment Category                                 |
| consumption                | STRING    | Consumption posting                                         |
| modifiable                 | STRING    | Acct.asst.modifiable                                        |
| distribution               | STRING    | Distribution Indicator for Multiple Account Assignment      |
| partial_invoice            | STRING    | Partial invoice indicator                                   |
| goods_receipt              | STRING    | Goods Receipt Indicator                                     |
| gr_non_valuated            | STRING    | Goods Receipt, Non-Valuated                                 |
| invoice_receipt            | STRING    | Invoice receipt indicator                                   |
| desired_vendor             | STRING    | Desired Vendor                                              |
| fixed_vendor               | STRING    | Fixed vendor                                                |
| purchasing_org             | STRING    | Purchasing organization                                     |
| doc_category_1             | STRING    | Purchasing Document Category                                |
| agreement                  | STRING    | Number of principal purchase agreement                      |
| agreement_item             | STRING    | Item number of principal purchase agreement                 |
| info_record                | STRING    | Number of purchasing info record                            |
| assigned                   | STRING    | Assigned Source of Supply                                   |
| quota_arr                  | STRING    | Number of quota arrangement                                 |
| quota_arr_item             | STRING    | Quota arrangement item                                      |
| mrp_controller             | STRING    | MRP Controller                                              |
| bom_expl_number            | STRING    | BOM explosion number                                        |
| last_resubmiss             | DATE      | Date of last resubmission                                   |
| resubmission               | NUMERIC   | Resubmission interval of purchase requisition               |
| no_resubmiss               | NUMERIC   | Number of resubmissions                                     |
| purchase_order             | STRING    | Purchase order number                                       |
| item                       | STRING    | Purchase order item number                                  |
| po_date                    | DATE      | Purchase Order Date                                         |
| order_quantity             | NUMERIC   | Quantity ordered against this purchase requisition          |
| entry_sheet                | STRING    | Entry Sheet Number                                          |
| valuation_type             | STRING    | Valuation Type                                              |
| commitments                | STRING    | Item affects commitments                                    |
| closed                     | STRING    | Purchase requisition closed                                 |
| reservation_number         | STRING    | Number of reservation/dependent requirements                |
| special_stock              | STRING    | Special Stock Indicator                                     |
| settle_reser_no            | STRING    | Settlement reservation number                               |
| settle_item_no             | STRING    | Item number of the settlement reservation                   |
| fixed_ind                  | STRING    | Purchase requisition is fixed                               |
| order_unit                 | STRING    | Purchase Order Unit of Measure                              |
| revision_level             | STRING    | Revision level                                              |
| advance_proc               | STRING    | Advance procurement: project stock                          |
| package_number             | STRING    | Package number                                              |
| kanban_indicat             | STRING    | Kanban Indicator                                            |
| po_price                   | STRING    | Use Requisition Price in Purchase Order                     |
| int_object_no              | STRING    | Configuration (internal object number)                      |
| release_group              | STRING    | Release group                                               |
| subj_to_release            | STRING    | Release Not Yet Completely Effected                         |
| promotion                  | STRING    | Promotion                                                   |
| batch                      | STRING    | Batch Number                                                |
| sp_ind_st_tfr              | STRING    | Special stock indicator for physical stock transfer         |
| prod_version               | STRING    | Production Version                                          |
| commitment_item            | STRING    | Commitment Item                                             |
| funds_center               | STRING    | Funds Center                                                |
| fund                       | STRING    | Fund                                                        |
| origin_of_config           | STRING    | Origin of Configuration                                     |
| cross_plant_cm             | STRING    | Cross-Plant Configurable Material                           |
| committed_qty              | NUMERIC   | Committed Quantity                                          |
| committed_date             | DATE      | Committed date                                              |
| matl_category              | STRING    | Material Category                                           |
| address                    | STRING    | Manual address number in purchasing document item           |
| address_1                  | STRING    | Number of delivery address                                  |
| customer                   | STRING    | Customer                                                    |
| supplier                   | STRING    | Supplier to be Supplied/Who is to Receive Delivery          |
| sc_supplier                | STRING    | Subcontracting Supplier                                     |
| valuation                  | STRING    | Valuation of Special Stock                                  |
| currency                   | STRING    | Currency Key                                                |
| supp_mat_no                | STRING    | Material Number Used by Supplier                            |
| overall_req_rel            | STRING    | Overall release of purchase requisitions                    |
| mfr_part_profile           | STRING    | Mfr part profile                                            |
| units_meas_use             | STRING    | Units of measure usage                                      |
| language_key               | STRING    | Language Key                                                |
| standardvariant            | STRING    | Parameter Variant/Standard Variant                          |
| mfr_part_number            | STRING    | Manufacturer Part Number                                    |
| manufacturer               | STRING    | Manufacturer number                                         |
| external_manuf             | STRING    | External manufacturer code name or number                   |
| framework_order            | STRING    | Framework Order                                             |
| frwrk_ord_item             | STRING    | Item of framework order                                     |
| pl_deliv_time              | NUMERIC   | Planned Delivery Time in Days                               |
| mrp_area                   | STRING    | MRP Area                                                    |
| deliver_date_time          | TIME      | Delivery Date Time-Spot                                     |
| functional_area            | STRING    | Functional Area                                             |
| grants                     | STRING    | Grant                                                       |
| incomplete                 | STRING    | Purchase Requisition not yet Complete                       |
| proc_state                 | STRING    | Requisition Processing State                                |
| tot_val_rel                | NUMERIC   | Total value at time of release                              |
| blocking_ind               | STRING    | Purchase Requisition Blocked                                |
| version                    | STRING    | Version number in Purchasing                                |
| blocking_text              | STRING    | Reason for Item Block                                       |
| procuring_plant            | STRING    | Procuring Plant                                             |
| procurement_prof           | STRING    | External Procurement Profile                                |
| external_doc               | STRING    | External Procurement Reference Document                     |
| external_item              | STRING    | External Procurement Reference Item                         |
| po_qty_on_hold             | NUMERIC   | PO Quantity of Purchase Requisition in POs on Hold          |
| reduce_com_value           | STRING    | Value-Based Commitment Reduction for Service Purchase Reqs  |
| iss_stor_loc               | STRING    | Issuing Storage Location for Stock Transport Order          |
| earmarked_funds            | STRING    | Document Number for Earmarked Funds                         |
| document_item              | STRING    | Earmarked Funds: Document Item                              |
| reqmt_urgency              | STRING    | Requirement Urgency                                         |
| reqmt_priority             | STRING    | Requirement Priority                                        |
| incompl_cat                | STRING    | Category of Incompleteness                                  |
| no_serial_no               | INT64     | Number of serial numbers                                    |
| rem_shelf_life             | NUMERIC   | Minimum Remaining Shelf Life                                |
| period_ind                 | STRING    | Period Indicator for Shelf Life Expiration Date             |
| res_purc_req               | STRING    | Ind: Reserv. not applicable to MRP;Purc. req. not created   |
| central_contract           | STRING    | Central Contract                                            |
| cent_contract_item         | STRING    | Central Contract Item Number                                |
| budget_period              | STRING    | Budget Period                                               |
| planned_dates              | DATE      | Receipt/Requirements date                                   |
| pr_in_expert_mode          | STRING    | PR Created in Expert Mode                                   |
| is_central_pr_procg        | STRING    | Is PR relevant for Central PR Processing                    |
| crm_ref_order              | STRING    | CRM Reference Order Number for TPOP Process                 |
| crm_rf_item_no             | STRING    | CRM Reference Sales Order Item Number in TPOP Process       |
| pr_ext_include             | STRING    | Data element for purchase requisition extensibility         |
| character                  | STRING    | 128 character                                               |
| character_field_length_64  | STRING    | Character field, length 64                                  |
| creation_date              | DATE      | Purchasing Document Creation Date                           |
| creation_time              | TIME      | Purchasing Document Creation Time                           |
| product_type_group         | STRING    | Product Type Group                                          |
| service_performer          | STRING    | Service Performer                                           |
| business_purp_compl        | STRING    | Business Purpose Completed                                  |
| external_revision          | NUMERIC   | Timestamp for Revision of External Calls                    |
| us_govt                    | STRING    | United States Federal Government Fields                     |
| start_date                 | DATE      | Start Date for Period of Performance                        |
| end_date                   | DATE      | End Date for Period of Performance                          |
| material_1                 | STRING    | Material of External System                                 |
| fixed_supplier             | STRING    | Fixed Supplier of External System                           |
| desired_supplier           | STRING    | Desired Supplier of External System                         |
| contract                   | STRING    | Contract of External System                                 |
| contract_item              | STRING    | Contract Item of External System                            |
| info_record_1              | STRING    | Info Record of External System                              |
| plant_1                    | STRING    | Plant of External System                                    |
| company_code               | STRING    | Company Code of External System                             |
| purch_organization         | STRING    | Purchasing Organization                                     |
| comm_system                | STRING    | Communication System ID                                     |
| connected_system_id        | STRING    | Connected System ID                                         |
| pr_change_indicator        | STRING    | Change Indicator for PR in Central Procurement              |
| pr_doctyp_of_connsys       | STRING    | PR Document Type of Connected System                        |
| ext_prcsng_status          | STRING    | External Processing Status                                  |
| pr_item                    | STRING    | Key to identify purchase requisition item                   |
| time_stamp                 | NUMERIC   | UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)         |
| shop_on_behalf_ind         | STRING    | Shop on behalf indicator                                    |
| sdm_version                | STRING    | Version of Silent Data Migration                            |
| g_l_account                | STRING    | G/L Account Number                                          |
| cost_center                | STRING    | Cost Center                                                 |
| expected_value             | NUMERIC   | Expected Value of Overall Limit                             |
| overall_limit              | NUMERIC   | Overall Limit                                               |
| advice_code                | STRING    | Advice Code                                                 |
| statuscode                 | STRING    | Status Code                                                 |
| cs_preq                    | STRING    | Cross-System PReq Number                                    |
| cs_preqitm                 | STRING    | Cross-System PReq Item                                      |
| cs_item_cat                | STRING    | Cross-System Item Category                                  |
| po_qty_sender              | NUMERIC   | PO Quantity Sender                                          |
| no_sloc_data               | STRING    | No Storage Location Data Exists for Material                |
| model_id_code              | STRING    | Model ID Code                                               |
| order_priority             | STRING    | Order Priority                                              |
| delivery_prior             | STRING    | Delivery Priority                                           |
| aircraftreg_no             | STRING    | Aircraft registration number                                |
| donotsub                   | STRING    | Do Not Substitute                                           |
| subcon_type                | STRING    | Type of subcontracting                                      |
| sp_stock                   | STRING    | Special stock indicator Subcontracting                      |
| wbs_element                | STRING    | Work Breakdown Structure Element (WBS Element)              |
| customer_1                 | STRING    | Customer Number                                             |
| sales_document             | STRING    | Sales and Distribution Document Number                      |
| item_1                     | STRING    | Item number of the SD document                              |
| owner_of_stock             | STRING    | Owner of stock                                              |
| supply_process             | STRING    | Field Logistics: Supply Process                             |
| hold_on_shore              | STRING    | Field Logistics: Hold on-shore (Indicator)                  |
| season_year                | STRING    | Season Year                                                 |
| season                     | STRING    | Season                                                      |
| collection                 | STRING    | Fashion Collection                                          |
| theme                      | STRING    | Fashion Theme                                               |
| vas_relevant               | STRING    | VAS Relevant                                                |
| item_2                     | STRING    | Item Number of Purchasing Document                          |
| transaction_number         | STRING    | Transaction Number                                          |
| item_group                 | STRING    | Item Group                                                  |
| item_number                | STRING    | Item Number                                                 |
| iuid_relevant              | STRING    | IUID-Relevant                                               |
| catalog_item_key           | INT64     | Catalog Item Key                                            |
| web_service_id             | STRING    | Technical Key of a Web Service (for Example - a Catalog)    |
| catalog_item               | STRING    | Catalog Item Id                                             |
| requestor                  | STRING    | Requestor                                                   |
| author                     | STRING    | Author of Requisition                                       |
| stock_segment              | STRING    | Stock Segment                                               |
| reqmnt_segment             | STRING    | Requirement Segment                                         |
| characteristic_1           | STRING    | Characteristic Value 1                                      |
| characteristic_2           | STRING    | Characteristic Value 2                                      |
| characteristic_3           | STRING    | Characteristic Value 3                                      |
| purchase_req_ebkn          | STRING    | Purchase Requisition Number                                 |
| requisn_item_ebkn          | STRING    | Item number of purchase requisition                         |
| ser_no_acc_ass             | STRING    | Serial number for PReq account assignment segment           |
| deletion_ind_ebkn          | STRING    | Deletion indicator in purchasing document                   |
| created_on                 | DATE      | Date on which the record was created                        |
| created_by_ebkn            | STRING    | Name of Person who Created the Object                       |
| quantity_ebkn              | NUMERIC   | Purchase requisition quantity                               |
| distribution_ebkn          | NUMERIC   | Distribution percentage in the case of multiple acct assgt  |
| g_l_account_ebkn           | STRING    | G/L Account Number                                          |
| business_area              | STRING    | Business Area                                               |
| cost_center_ebkn           | STRING    | Cost Center                                                 |
| not_in_use                 | STRING    | Old: Project number : No longer used --> PS_POSNR           |
| sales_document_ebkn        | STRING    | Sales and Distribution Document Number                      |
| item_ebkn                  | STRING    | Sales Document Item                                         |
| schedule_line_ebkn         | STRING    | Schedule Line Number                                        |
| asset                      | STRING    | Main Asset Number                                           |
| sub_number                 | STRING    | Asset Subnumber                                             |
| order_number               | STRING    | Order Number                                                |
| recipient                  | STRING    | Goods recipient                                             |
| unloading_point            | STRING    | Unloading Point                                             |
| co_area                    | STRING    | Controlling Area                                            |
| posting_to_cost_cent       | STRING    | Posting to cost center?                                     |
| to_order                   | STRING    | Post To Order                                               |
| to_project                 | STRING    | Post to project                                             |
| cost_object                | STRING    | Cost Object                                                 |
| profit_segment             | STRING    | Profitability Segment Number (CO-PA)                        |
| profit_center              | STRING    | Profit Center                                               |
| wbs_element_ebkn           | STRING    | Work Breakdown Structure Element (WBS Element)              |
| network                    | STRING    | Network Number for Account Assignment                       |
| plan_no_f_oper             | STRING    | Routing number of operations in the order                   |
| real_estate_key            | STRING    | Internal Key for Real Estate Object                         |
| counter                    | STRING    | Internal counter                                            |
| partner                    | STRING    | Partner account number                                      |
| commitment_item_ebkn       | STRING    | Commitment Item                                             |
| recovery_indic             | STRING    | Recovery Indicator                                          |
| funds_center_ebkn          | STRING    | Funds Center                                                |
| fund_ebkn                  | STRING    | Fund                                                        |
| functional_area_ebkn       | STRING    | Functional Area                                             |
| reference_date             | DATE      | Reference date for settlement                               |
| net_value                  | NUMERIC   | Net Order Value in PO Currency                              |
| plan_no_f_oper_1           | STRING    | Routing number of operations in the order                   |
| counter_1                  | STRING    | General counter for order                                   |
| wbs_element_1              | STRING    | Work Breakdown Structure Element (WBS Element)              |
| network_activity           | STRING    | Network Activity                                            |
| service_doc_type           | STRING    | Service Document Type                                       |
| service_document           | STRING    | Service Document ID                                         |
| service_doc_item           | STRING    | Service Document Item ID                                    |
| earmarked_funds_ebkn       | STRING    | Document Number for Earmarked Funds                         |
| document_item_ebkn         | STRING    | Earmarked Funds: Document Item                              |
| activity_type              | STRING    | Activity Type                                               |
| business_proc              | STRING    | Business Process                                            |
| grants_ebkn                | STRING    | Grant                                                       |
| dist_batch_no              | STRING    | Batch to group results from an PSM assignment distribution  |
| auth_group                 | STRING    | Authorization group for PSM account assignment distribution |
| budget_period_ebkn         | STRING    | Budget Period                                               |
| dummy                      | STRING    | Custom Fields: Dummy for Use in Extension Includes          |
| us_govt_ebkn               | STRING    | United States Federal Government Fields                     |
| equity_group               | STRING    | Equity group                                                |
| joint_venture              | STRING    | Joint venture                                               |
| object_number              | STRING    | Object number                                               |
| date_of_service            | DATE      | Date of Service                                             |
| do_not_correct             | STRING    | Do Not Consider Item in Input Tax Correction                |
| option_rate                | NUMERIC   | Real Estate Option Rate                                     |
| diff_opt_rate              | STRING    | Use Different Option Rate                                   |
| finalmd5key                | STRING    | MD5 key combining all columns                               |
| input_last_update_date     | DATETIME  | Last Input read time                                        |
| dw_active_indicator        | STRING    | Valid Indicator                                             |
| dw_start_date              | DATETIME  | Record start date                                           |
| dw_end_date                | DATETIME  | Record end date                                             |
| dw_last_update_date        | DATETIME  | Record Inserted/Updated date                                |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms