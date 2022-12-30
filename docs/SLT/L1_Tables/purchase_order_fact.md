
## Table Name : purchase_order_fact

| column_name                         | data_type | description                                                  |
|-------------------------------------|-----------|--------------------------------------------------------------|
| purchase_order_uuid                 | STRING    | Unique Generated Id                                          |
| purchase_order_key                  | STRING    | Purchase order Key                                           |
| client                              | STRING    | Client                                                       |
| purchasing_doc                      | STRING    | Purchasing Document Number                                   |
| item                                | STRING    | Item Number of Purchasing Document                           |
| schedule_line                       | STRING    | Delivery Schedule Line Counter                               |
| account_assgmt_no                   | STRING    | Sequential Number of Account Assignment                      |
| trans_ev_type                       | STRING    | Transaction/event type, purchase order history               |
| mat_doc_year                        | STRING    | Material Document Year                                       |
| material_doc                        | STRING    | Number of Material Document                                  |
| mat_doc_item                        | STRING    | Item in Material Document                                    |
| material_uuid                       | STRING    | Material Dimension Unique Generated Id                       |
| material_key                        | STRING    | Material key from Material Dimension                         |
| supplier_uuid                       | STRING    | Supplier Dimension Unique Generated Id                       |
| supplier_key                        | STRING    | Supplier key from Supplier Dimension                         |
| plant_uuid                          | STRING    | Plant Dimension Unique Generated Id                          |
| plant_key                           | STRING    | Plant key from Plant Dimension                               |
| customer_uuid                       | STRING    | Customer Dimension Unique Generated Id                       |
| customer_key                        | STRING    | Customer Key from Customer Dimension                         |
| supplier_company_code_uuid          | STRING    | Supplier Code Dimension Unique Generated Id                  |
| supplier_company_code_key           | STRING    | Supplier Company Code Key from Supplier Code Dimension       |
| company_code_uuid                   | STRING    | Company code Dimension Unique Generated Id                   |
| company_code_key                    | STRING    | Company code key from Company code Dimension                 |
| storage_location_uuid               | STRING    | Storage location Dimension Unique Generated Id               |
| storage_location_key                | STRING    | Storage location key from Storage location Dimension         |
| company_code                        | STRING    | Company Code                                                 |
| doc_category                        | STRING    | Purchasing Document Category                                 |
| document_type                       | STRING    | Purchasing Document Type                                     |
| control                             | STRING    | Control indicator for purchasing document type               |
| deletion_ind                        | STRING    | Deletion indicator in purchasing document                    |
| status                              | STRING    | Status of Purchasing Document                                |
| created_on                          | DATE      | Date on which the record was created                         |
| created_by                          | STRING    | Name of Person who Created the Object                        |
| last_changed                        | NUMERIC   | Change Time Stamp                                            |
| item_interval                       | STRING    | Item Number Interval                                         |
| last_item                           | STRING    | Last Item Number                                             |
| vendor                              | STRING    | Vendors account number                                       |
| language_key                        | STRING    | Language Key                                                 |
| payt_terms                          | STRING    | Terms of payment key                                         |
| payment_in                          | NUMERIC   | Cash (Prompt Payment) Discount Days                          |
| payment_in_1                        | NUMERIC   | Cash (Prompt Payment) Discount Days                          |
| payment_in_2                        | NUMERIC   | Cash (Prompt Payment) Discount Days                          |
| disc_percent_1                      | NUMERIC   | Cash discount percentage 1                                   |
| disc_percent_2                      | NUMERIC   | Cash Discount Percentage 2                                   |
| purchasing_org                      | STRING    | Purchasing organization                                      |
| purch_group                         | STRING    | Purchasing Group                                             |
| currency                            | STRING    | Currency Key                                                 |
| exchange_rate                       | NUMERIC   | Exchange Rate                                                |
| fixed_exch_rate                     | STRING    | Indicator for Fixed Exchange Rate                            |
| document_date                       | DATE      | Purchasing Document Date                                     |
| validity_start                      | DATE      | Start of Validity Period                                     |
| validity_end                        | DATE      | End of Validity Period                                       |
| application_by                      | DATE      | Closing Date for Applications                                |
| quot_deadline                       | DATE      | Deadline for Submission of Bid/Quotation                     |
| binding_period                      | DATE      | Binding Period for Quotation                                 |
| warranty                            | DATE      | Warranty Date                                                |
| bid_invitation                      | STRING    | Bid invitation number                                        |
| quotation                           | STRING    | Quotation Number                                             |
| quotation_date                      | DATE      | Quotation Submission Date                                    |
| your_reference                      | STRING    | Your Reference                                               |
| salesperson                         | STRING    | Responsible Salesperson at Suppliers Office                  |
| telephone                           | STRING    | Suppliers Telephone Number                                   |
| goods_supplier                      | STRING    | Goods Supplier                                               |
| customer                            | STRING    | Customer Number                                              |
| agreement                           | STRING    | Number of principal purchase agreement                       |
| field_not_used                      | STRING    | Field Not Used                                               |
| complete_deliv                      | STRING    | Complete Delivery Stipulated for Each Purchase Order         |
| gr_message                          | STRING    | Indicator: Goods Receipt Message                             |
| supplying_plant                     | STRING    | Supplying (issuing) plant in case of stock transport order   |
| rec_supplier                        | STRING    | Field not used                                               |
| incoterms                           | STRING    | Incoterms (Part 1)                                           |
| incoterms_2                         | STRING    | Incoterms (Part 2)                                           |
| target_value                        | NUMERIC   | Target Value for Header Area per Distribution                |
| distribution_type                   | STRING    | Distribution Type for Purchasing Document                    |
| collective_no                       | STRING    | Collective Number                                            |
| doc_condition                       | STRING    | Number of the Document Condition                             |
| procedure_pricing                   | STRING    | Procedure (Pricing, Output Control, Acct. Det., Costing,...) |
| update_group                        | STRING    | Update Group for statistics update                           |
| invoicing_party                     | STRING    | Different Invoicing Party                                    |
| foreign_trade_datanr                | STRING    | Number of foreign trade data in MM and SD documents          |
| our_reference                       | STRING    | Our Reference                                                |
| logical_system                      | STRING    | Logical System                                               |
| subitem_interv                      | STRING    | Item Number Interval for Subitems                            |
| tm_dep_conds                        | STRING    | Document with time-dependent conditions                      |
| release_group                       | STRING    | Release group                                                |
| rel_strategy                        | STRING    | Release Strategy                                             |
| release_ind                         | STRING    | Release Indicator: Purchasing Document                       |
| release_state                       | STRING    | Release State                                                |
| subj_to_release                     | STRING    | Release Not Yet Completely Effected                          |
| reporting_cntry                     | STRING    | Country for Tax Return                                       |
| release_docu                        | STRING    | Indicator for scheduling agreement release documentation     |
| address_number                      | STRING    | Address Number                                               |
| ctryslstxno                         | STRING    | Country of Sales Tax ID Number                               |
| vat_reg_no                          | STRING    | VAT Registration Number                                      |
| reas_for_canc                       | STRING    | Reason for Cancellation                                      |
| document_number                     | STRING    | Document number for additional                               |
| corr_misc_pr                        | STRING    | Correction of miscellaneous provisions                       |
| incomplete                          | STRING    | Purchase order not yet complete                              |
| proc_state                          | STRING    | Purchasing document processing state                         |
| tot_val_rel                         | NUMERIC   | Total value at time of release                               |
| version                             | STRING    | Version number in Purchasing                                 |
| scmproc                             | STRING    | SCM Process That Created the Purchase Order                  |
| reason_code                         | STRING    | Goods Receipt Reason Code                                    |
| incompl_cat                         | STRING    | Category of Incompleteness                                   |
| retention                           | STRING    | Retention Indicator                                          |
| retention_1                         | NUMERIC   | Retention in Percent                                         |
| down_payment                        | STRING    | Down Payment Indicator                                       |
| down_payment_1                      | NUMERIC   | Down Payment Percentage                                      |
| down_payment_amt                    | NUMERIC   | Down Payment Amount in Document Currency                     |
| due_date_for_dp                     | DATE      | Due Date for Down Payment                                    |
| process_id_no                       | STRING    | Process Identification Number                                |
| contract_hierarchy                  | STRING    | Part of a Contract Hierarchy                                 |
| thresh_val_exists                   | STRING    | Threshold Value for Exchange Rates Exists                    |
| legal_contract_no                   | STRING    | Legal Contract Number                                        |
| contract_name                       | STRING    | Contract Name                                                |
| released_on                         | DATE      | Release Date of Contract                                     |
| shipping_type                       | STRING    | Shipping Type                                                |
| handover_location                   | STRING    | Location for a physical handover of goods                    |
| shp_cond                            | STRING    | Shipping Conditions                                          |
| inco_version                        | STRING    | Incoterms Version                                            |
| inco_location1                      | STRING    | Incoterms Location 1                                         |
| inco_location2                      | STRING    | Incoterms Location 2                                         |
| currency_1                          | STRING    | Currency of statistical values for foreign trade             |
| intrastat_rel                       | STRING    | Relevant for Intrastat Reporting                             |
| exclude_intra                       | STRING    | Exclude from Intrastat Reporting                             |
| start_date                          | DATE      | The date as of which Quotations can be submitted             |
| follow_on_doc_cat                   | STRING    | Follow-On Purchasing Document Category                       |
| follow_on_doc_type                  | STRING    | Follow-On Purchasing Document Type                           |
| ext_include                         | STRING    | Data Element for Extensibility of Purchasing Document Header |
| ext_ref_system                      | STRING    | ID of External Reference System                              |
| ext_reference_id                    | STRING    | External Reference ID                                        |
| external_revision                   | NUMERIC   | Timestamp for Revision of External Calls                     |
| business_purp_compl                 | STRING    | Business Purpose Completed                                   |
| document_aged                       | STRING    | Document is aged                                             |
| guid_32                             | STRING    | Internal Key for Force Element                               |
| counter                             | STRING    | Internal (Version) Counter                                   |
| relocation_id                       | STRING    | Relocation ID                                                |
| relocation_step                     | STRING    | Relocation Step ID                                           |
| logical_system_1                    | STRING    | Logical system                                               |
| transaction_number                  | STRING    | Transaction Number                                           |
| item_group                          | STRING    | Item Group                                                   |
| last_vas_item_number                | STRING    | Last VAS Item Number                                         |
| changed_manually                    | STRING    | Order Scheduling Strategy Fields Changed Manually            |
| guid_of_sap_tm                      | STRING    | Reference UUID of Transportation Management                  |
| annexing_package                    | STRING    | Annexing package key                                         |
| ann_package_extend                  | STRING    | Extended key for annexing package                            |
| base_date                           | DATE      | Base Date                                                    |
| annexing_date_type                  | STRING    | Annexing Date Type                                           |
| annexing_start_date                 | DATE      | Annexing start date                                          |
| deviation_percen                    | NUMERIC   | deviation percentage                                         |
| annexed_ind                         | STRING    | indicator for annexed order type                             |
| limit_date                          | DATE      | Annexing limit date (purchasing)                             |
| char20                              | STRING    | Char 20                                                      |
| new_base_date                       | DATE      | The general acountant method New base date.                  |
| accountant_gen_mth                  | STRING    | Accountant general method                                    |
| no_negative_annexing                | STRING    | Do not allow negative annexing                               |
| purchasing_org_1                    | STRING    | Purchasing organization                                      |
| known_index_indic                   | STRING    | Known Index indicator in /ILE/T_ANNEXING_CALCULATION Func    |
| s1postat_check                      | STRING    | Flag for the S1POSTAT message                                |
| interest_indic                      | STRING    | Interest calculation indicator                               |
| snap_status                         | STRING    | Snapshot Status                                              |
| procedure_number                    | STRING    | Procedure number                                             |
| adjust_contest                      | STRING    | Adjustment/contest                                           |
| contract_type                       | STRING    | Contract                                                     |
| legal_competence                    | STRING    | Legal competence                                             |
| miscellaneous                       | STRING    | Miscellaneous                                                |
| despatch                            | STRING    | Despatch                                                     |
| input_date                          | DATE      | Date                                                         |
| job                                 | STRING    | Job                                                          |
| assessment                          | STRING    | Assessment                                                   |
| date_1                              | DATE      | Date                                                         |
| job_1                               | STRING    | Job                                                          |
| contract                            | STRING    | PTFM: Contract in Purchasing process                         |
| document_category                   | STRING    | Document for Seasonal Purchase Order Processing              |
| same_delivery_date                  | DATE      | Delivery Date Header: All Items Have Same Delivery Date      |
| same_plant                          | STRING    | Plant Header: All Items Have Same Receiving Plant            |
| firm_deal_id                        | STRING    | Firm Deal Indicator                                          |
| take_acc_of_prchgrp                 | STRING    | Take Account of Purch. Group                                 |
| take_acc_of_plant                   | STRING    | Take Account of Plants                                       |
| take_acc_of_contract                | STRING    | Take Account of Contracts                                    |
| take_acc_of_itmcat                  | STRING    | Take Account of Item Categories                              |
| fixed_date_purchases                | STRING    | Take Account of Fixed-Date Purchases Indicator               |
| consider_budget                     | STRING    | Consider Budget                                              |
| alloc_table_rel                     | STRING    | Take Account of Alloc. Table Relevance                       |
| take_acc_of_delper                  | STRING    | Take Account of Dlvy Period                                  |
| take_acc_of_dlvydt                  | STRING    | Take Account of Delivery Date                                |
| include_vendor_subr                 | STRING    | Include Vendor Subrange                                      |
| check_level                         | STRING    | OTB Check Level                                              |
| condition_type                      | STRING    | OTB Condition Type                                           |
| budget_number                       | STRING    | Unique Number of Budget                                      |
| required_budget                     | NUMERIC   | Required Budget                                              |
| otb_currency                        | STRING    | OTB Currency                                                 |
| reserved_budget                     | NUMERIC   | Reserved Budget for OTB-Relevant Purchasing Document         |
| special_release                     | NUMERIC   | Special Release Budget                                       |
| otb_reason_profile                  | STRING    | Reason Profile for OTB Special Release                       |
| budget_type                         | STRING    | Budget Type                                                  |
| otb_status                          | STRING    | OTB Check Status                                             |
| reason                              | STRING    | Reason Indicator for OTB Check Status                        |
| type_of_otb_check                   | STRING    | Type of OTB Check                                            |
| otb_rel_contract                    | STRING    | OTB-Relevant Contract                                        |
| contr_indicator_lvl                 | STRING    | OTB Indicator Level for Contracts                            |
| distrib_targ_val_itm                | STRING    | Distribution Using Target Value or Item Data                 |
| purchasing_doc_ekpo                 | STRING    | Purchasing Document Number                                   |
| document_item                       | STRING    | Concatenation of EBELN and EBELP                             |
| deletion_ind_ekpo                   | STRING    | Deletion indicator in purchasing document                    |
| rfq_status                          | STRING    | RFQ status                                                   |
| changed_on                          | DATE      | Purchasing Document Item Change Date                         |
| short_text                          | STRING    | Short Text                                                   |
| material                            | STRING    | Material Number                                              |
| material_1                          | STRING    | Material number                                              |
| company_code_ekpo                   | STRING    | Company Code                                                 |
| plant                               | STRING    | Plant                                                        |
| stor_loc                            | STRING    | Storage location                                             |
| tracking_number                     | STRING    | Requirement Tracking Number                                  |
| material_group                      | STRING    | Material Group                                               |
| info_record                         | STRING    | Number of purchasing info record                             |
| supp_mat_no                         | STRING    | Material Number Used by Supplier                             |
| target_quantity                     | NUMERIC   | Target Quantity                                              |
| po_quantity                         | NUMERIC   | Purchase Order Quantity                                      |
| order_unit                          | STRING    | Purchase Order Unit of Measure                               |
| order_price_un                      | STRING    | Order Price Unit (Purchasing)                                |
| qty_conversion                      | NUMERIC   | Numerator for Conversion of Order Price Unit into Order Unit |
| qty_conversion_1                    | NUMERIC   | Denominator for Conv. of Order Price Unit into Order Unit    |
| equal_to                            | NUMERIC   | Numerator for Conversion of Order Unit to Base Unit          |
| denominator                         | NUMERIC   | Denominator for Conversion of Order Unit to Base Unit        |
| net_price                           | NUMERIC   | Net Price in Purchasing Document (in Document Currency)      |
| price_unit                          | NUMERIC   | Price unit                                                   |
| net_value                           | NUMERIC   | Net Order Value in PO Currency                               |
| gross_value                         | NUMERIC   | Gross order value in PO currency                             |
| quot_deadline_ekpo                  | DATE      | Deadline for Submission of Bid/Quotation                     |
| gr_proc_time                        | NUMERIC   | Goods receipt processing time in days                        |
| tax_code                            | STRING    | Tax on sales/purchases code                                  |
| tax_rate_valid_from                 | DATE      | Valid-From Date of the Tax Rate                              |
| tax_date                            | DATE      | Date for defining tax rates                                  |
| sett_group_1                        | STRING    | Settlement Group 1 (Purchasing)                              |
| stock_type                          | STRING    | Stock Type                                                   |
| infoupdate                          | STRING    | Indicator: Update Info Record                                |
| print_price                         | STRING    | Price Printout                                               |
| estimated_price                     | STRING    | Indicator: Estimated Price                                   |
| no_rem_exp                          | NUMERIC   | Number of Reminders/Expediters                               |
| st_rem_exped                        | NUMERIC   | Number of Days for First Reminder/Expediter                  |
| nd_rem_exped                        | NUMERIC   | Number of Days for Second Reminder/Expediter                 |
| rd_rem_exped                        | NUMERIC   | Number of Days for Third Reminder/Expediter                  |
| overdeliv_tol                       | NUMERIC   | Overdelivery Tolerance                                       |
| unlimited                           | STRING    | Indicator: Unlimited Overdelivery Allowed                    |
| underdel_tol                        | NUMERIC   | Underdelivery Tolerance                                      |
| valuation_type                      | STRING    | Valuation Type                                               |
| valuation_cat                       | STRING    | Valuation Category                                           |
| rejection_ind                       | STRING    | Rejection Indicator                                          |
| quot_comment                        | STRING    | Internal Comment on Quotation                                |
| deliv_compl                         | STRING    | Delivery Completed Indicator                                 |
| final_invoice                       | STRING    | Final Invoice Indicator                                      |
| item_category                       | STRING    | Item category in purchasing document                         |
| acct_assgmt_cat                     | STRING    | Account Assignment Category                                  |
| consumption                         | STRING    | Consumption posting                                          |
| distribution                        | STRING    | Distribution Indicator for Multiple Account Assignment       |
| partial_invoice                     | STRING    | Partial invoice indicator                                    |
| goods_receipt                       | STRING    | Goods Receipt Indicator                                      |
| gr_non_valuated                     | STRING    | Goods Receipt, Non-Valuated                                  |
| invoice_receipt                     | STRING    | Invoice receipt indicator                                    |
| gr_based_iv                         | STRING    | Indicator: GR-Based Invoice Verification                     |
| acknowl_reqd                        | STRING    | Order Acknowledgment Requirement                             |
| order_acknowl                       | STRING    | Order Acknowledgment Number                                  |
| agreement_ekpo                      | STRING    | Number of principal purchase agreement                       |
| agreement_item                      | STRING    | Item number of principal purchase agreement                  |
| reconcil_date                       | DATE      | Reconciliation date for agreed cumulative quantity           |
| agr_cum_qty                         | NUMERIC   | Agreed Cumulative Quantity                                   |
| firm_zone                           | NUMERIC   | Firm Zone (Go-Ahead for Production)                          |
| trade_off_zone                      | NUMERIC   | Trade-Off Zone (Go-Ahead for Materials Procurement)          |
| binding_on_mrp                      | STRING    | Firm/Trade-Off Zones Binding with Regard to Mat. Planning    |
| exclusion                           | STRING    | Exclusion in Outline Agreement Item with Material Class      |
| base_unit                           | STRING    | Base Unit of Measure                                         |
| shipping_instr                      | STRING    | Shipping Instructions                                        |
| target_value_ekpo                   | NUMERIC   | Target Value for Outline Agreement in Document Currency      |
| non_deductible                      | NUMERIC   | Non-deductible input tax                                     |
| rel_order_qty                       | NUMERIC   | Standard release order quantity                              |
| price_date                          | DATE      | Date of Price Determination                                  |
| doc_category_ekpo                   | STRING    | Purchasing Document Category                                 |
| effective_value                     | NUMERIC   | Effective value of item                                      |
| commitments                         | STRING    | Item affects commitments                                     |
| customer_ekpo                       | STRING    | Customer                                                     |
| address                             | STRING    | Manual address number in purchasing document item            |
| condition_group                     | STRING    | Condition Group with Supplier                                |
| no_cash_disc                        | STRING    | Item Does Not Qualify for Cash Discount                      |
| update_group_ekpo                   | STRING    | Update Group for statistics update                           |
| pl_deliv_time                       | NUMERIC   | Planned Delivery Time in Days                                |
| net_weight                          | NUMERIC   | Net Weight                                                   |
| unit_of_weight                      | STRING    | Unit of Weight                                               |
| tax_jur                             | STRING    | Tax Jurisdiction                                             |
| print_relevant                      | STRING    | Indicator: Print-relevant schedule lines exist               |
| special_stock                       | STRING    | Special Stock Indicator                                      |
| settle_reser_no                     | STRING    | Settlement reservation number                                |
| settle_item_no                      | STRING    | Item number of the settlement reservation                    |
| not_changeable                      | STRING    | Quality inspection indicator cannot be changed               |
| qm_control_key                      | STRING    | Control Key for Quality Management in Procurement            |
| certificatetype                     | STRING    | Certificate Type                                             |
| ean_upc                             | STRING    | International Article Number (EAN/UPC)                       |
| conf_control                        | STRING    | Confirmation Control Key                                     |
| revision_level                      | STRING    | Revision level                                               |
| fund                                | STRING    | Fund                                                         |
| funds_center                        | STRING    | Funds Center                                                 |
| commitment_item                     | STRING    | Commitment Item                                              |
| bus_area_prtner                     | STRING    | Business area reported to the partner                        |
| ptr_s_assum_ba                      | STRING    | assumed business area of the business partner                |
| profit_center                       | STRING    | Profit Center                                                |
| partner_pc                          | STRING    | Partner Profit Center                                        |
| pr_date_cat                         | STRING    | Price Determination (Pricing) Date Control                   |
| gross_weight                        | NUMERIC   | Gross weight                                                 |
| volume                              | NUMERIC   | Volume                                                       |
| volume_unit                         | STRING    | Volume unit                                                  |
| incoterms_ekpo                      | STRING    | Incoterms (Part 1)                                           |
| incoterms_2_ekpo                    | STRING    | Incoterms (Part 2)                                           |
| advance_proc                        | STRING    | Advance procurement: project stock                           |
| prior_supplier                      | STRING    | Prior Supplier                                               |
| suppl_subrange                      | STRING    | Supplier Subrange                                            |
| package_number                      | STRING    | Package number                                               |
| invoicing_plan                      | STRING    | Invoicing plan number                                        |
| net_value_1                         | NUMERIC   | Currently not used                                           |
| statistical                         | STRING    | Item is statistical                                          |
| h_lev_item                          | STRING    | Higher-Level Item in Purchasing Documents                    |
| latest_gr_date                      | DATE      | Latest Possible Goods Receipt                                |
| supplier                            | STRING    | Supplier to be Supplied/Who is to Receive Delivery           |
| sc_supplier                         | STRING    | Subcontracting Supplier                                      |
| cross_plant_cm                      | STRING    | Cross-Plant Configurable Material                            |
| matl_category                       | STRING    | Material Category                                            |
| shipping_type_ekpo                  | STRING    | Shipping Type                                                |
| handover_location_ekpo              | STRING    | Location for a physical handover of goods                    |
| kanban_indicat                      | STRING    | Kanban Indicator                                             |
| address_1                           | STRING    | Number of delivery address                                   |
| int_object_no                       | STRING    | Configuration (internal object number)                       |
| ers                                 | STRING    | Evaluated Receipt Settlement (ERS)                           |
| gr_b_sett_from                      | DATE      | Start Date for GR-Based Settlement                           |
| last_transm                         | DATE      | Last Transmission                                            |
| time_of_transmission                | TIME      | Time                                                         |
| sequential_number                   | STRING    | Sequential Number                                            |
| promotion                           | STRING    | Promotion                                                    |
| alloc_table                         | STRING    | Allocation Table                                             |
| item_1                              | STRING    | Allocation Table Item                                        |
| points                              | NUMERIC   | Number of Points                                             |
| points_unit                         | STRING    | Points Unit                                                  |
| season                              | STRING    | Season Category                                              |
| season_year                         | STRING    | Season Year                                                  |
| sett_group_2                        | STRING    | Settlement Group 2 (Rebate Settlement, Purchasing)           |
| sett_group_3                        | STRING    | Settlement Group 3 (Rebate Settlement, Purchasing)           |
| settlement                          | STRING    | Item Relevant to Subsequent (Period-End Rebate) Settlement   |
| ml_act                              | STRING    | Material Ledger Activated at Material Level                  |
| rem_shelf_life                      | NUMERIC   | Minimum Remaining Shelf Life                                 |
| rfq                                 | STRING    | RFQ Number                                                   |
| item_2                              | STRING    | Item Number of RFQ                                           |
| origin_of_config                    | STRING    | Origin of Configuration                                      |
| quota_arr_usage                     | STRING    | Quota arrangement usage                                      |
| sp_ind_st_tfr                       | STRING    | Special stock indicator for physical stock transfer          |
| purchase_req                        | STRING    | Purchase Requisition Number                                  |
| requisn_item                        | STRING    | Item number of purchase requisition                          |
| material_type                       | STRING    | Material type                                                |
| subitem_cat                         | STRING    | Subitem Category, Purchasing Document                        |
| sub_items                           | STRING    | Subitems Exist                                               |
| subtotal_1                          | NUMERIC   | Subtotal 1 from pricing procedure for condition              |
| subtotal_2                          | NUMERIC   | Subtotal 2 from pricing procedure for condition              |
| subtotal_3                          | NUMERIC   | Subtotal 3 from pricing procedure for condition              |
| subtotal_4                          | NUMERIC   | Subtotal 4 from pricing procedure for condition              |
| subtotal_5                          | NUMERIC   | Subtotal 5 from pricing procedure for condition              |
| subtotal_6                          | NUMERIC   | Subtotal 6 from pricing procedure for condition              |
| key                                 | STRING    | Processing key for sub-items                                 |
| max_cmg_qty                         | NUMERIC   | Maximum Cumulative Material Go-Ahead Quantity                |
| maximum_cpgq                        | NUMERIC   | Maximum Cumulative Production Go-Ahead Quantity              |
| returns_item                        | STRING    | Returns Item                                                 |
| at_relevant                         | STRING    | Relevant to Allocation Table                                 |
| reason_for_ord                      | STRING    | Reason for Ordering                                          |
| del_type_rtns                       | STRING    | Delivery Type for Returns to Supplier                        |
| mat_freight_grp                     | STRING    | Material freight group                                       |
| disc_in_kind                        | STRING    | Material qualifies for discount in kind                      |
| ncm_code                            | STRING    | Brazilian NCM Code                                           |
| material_usage                      | STRING    | Usage of the material                                        |
| material_origin                     | STRING    | Origin of the material                                       |
| prod_in_house                       | STRING    | Produced in-house                                            |
| mat_category                        | STRING    | Material CFOP category                                       |
| creation_profile                    | STRING    | Release Creation Profile                                     |
| next_frc_sched                      | DATE      | Next Forecast Delivery Schedule Transmission                 |
| next_jit_sched                      | DATE      | Next JIT Delivery Schedule Transmission                      |
| valuation                           | STRING    | Valuation of Special Stock                                   |
| rebate_basis                        | NUMERIC   | Rebate basis 1                                               |
| jit_indicator                       | STRING    | Indicator: Item Relevant to JIT Delivery Schedules           |
| inflation_index                     | STRING    | Inflation Index                                              |
| index_date                          | DATE      | Inflation Index Date                                         |
| mfr_part_profile                    | STRING    | Mfr part profile                                             |
| final_delivery                      | STRING    | Outward Delivery Completed Indicator                         |
| part_del_item                       | STRING    | Partial Delivery at Item Level (Stock Transfer)              |
| units_meas_use                      | STRING    | Units of measure usage                                       |
| rnding_profile                      | STRING    | Rounding Profile                                             |
| standardvariant                     | STRING    | Parameter Variant/Standard Variant                           |
| configuration_changed               | STRING    | Configuration changed                                        |
| no_invoice_for_this_item_altho      | STRING    | No invoice for this item although not free of charge         |
| mfr_part_number                     | STRING    | Manufacturer Part Number                                     |
| manufacturer                        | STRING    | Manufacturer number                                          |
| external_manuf                      | STRING    | External manufacturer code name or number                    |
| shipping_block                      | STRING    | Item blocked for SD delivery                                 |
| requisitioner                       | STRING    | Name of requisitioner/requester                              |
| rec_time_zone                       | STRING    | Time zone of recipient location                              |
| period_ind                          | STRING    | Period Indicator for Shelf Life Expiration Date              |
| srv_based_inv_ver                   | STRING    | Indicator for Service-Based Invoice Verification             |
| mrp_area                            | STRING    | MRP Area                                                     |
| conditions_for_item_although_n      | STRING    | Conditions for item although no invoice                      |
| ext_planning                        | STRING    | APO as Planning System                                       |
| stock_transf_cat                    | STRING    | Posting Logic in the Case of Stock Transfers                 |
| grants                              | STRING    | Grant                                                        |
| functional_area                     | STRING    | Functional Area                                              |
| item_status                         | STRING    | Status of Purchasing Document Item                           |
| iss_stor_loc                        | STRING    | Issuing Storage Location for Stock Transport Order           |
| earmarked_funds                     | STRING    | Document Number for Earmarked Funds                          |
| document_item_1                     | STRING    | Earmarked Funds: Document Item                               |
| wbs_element                         | STRING    | Work Breakdown Structure Element (WBS Element)               |
| cost_center                         | STRING    | Cost Center                                                  |
| g_l_account                         | STRING    | G/L Account Number                                           |
| origin_accept                       | STRING    | Acceptance At Origin                                         |
| service_based_comm                  | STRING    | Service-Based Commitment                                     |
| reqmt_urgency                       | STRING    | Requirement Urgency                                          |
| reqmt_priority                      | STRING    | Requirement Priority                                         |
| recv_point                          | STRING    | Receiving Point                                              |
| diff_invoicing                      | STRING    | Differential Invoicing                                       |
| risk_relevancy                      | STRING    | Risk Relevancy in Purchasing                                 |
| creation_date                       | DATE      | Purchasing Document Creation Date                            |
| creation_time                       | TIME      | Purchasing Document Creation Time                            |
| rejectionreason                     | STRING    | Reason for rejection of quotations and sales orders          |
| crm_sales_order                     | STRING    | CRM Sales Order Number for TPOP Process                      |
| crm_item_no                         | STRING    | CRM Sales Order Item Number in TPOP Process                  |
| crm_ref_order                       | STRING    | CRM Reference Order Number for TPOP Process                  |
| crm_rf_item_no                      | STRING    | CRM Reference Sales Order Item Number in TPOP Process        |
| bill_relevance                      | STRING    | Billing Relevance CRM                                        |
| changer_s_sys_type                  | STRING    | Last Changers System Type                                    |
| source_stock_type                   | STRING    | Stock Type of Source Storage Location in STO                 |
| control_type                        | STRING    | CQ Control Type                                              |
| no_cq_transmission                  | STRING    | No Transmission of Cumulative Quantities in SA Release       |
| reason_code_ekpo                    | STRING    | Goods Receipt Reason Code                                    |
| cumulative_grs                      | NUMERIC   | Cumulative Goods Receipts from Redirected Purchase Orders    |
| no_serial_no                        | INT64     | Number of serial numbers                                     |
| ewm_del_tol_chk                     | STRING    | EWM Delivery Based Tolerance Check                           |
| configurable_itemno                 | STRING    | Item Number Length                                           |
| external_sort_no                    | STRING    | External Sorting                                             |
| ext_hierarchy_cat                   | STRING    | External Hierarchy Category                                  |
| retention_ekpo                      | NUMERIC   | Retention in Percent                                         |
| down_payment_ekpo                   | STRING    | Down Payment Indicator                                       |
| down_payment_1_ekpo                 | NUMERIC   | Down Payment Percentage                                      |
| down_payment_amt_ekpo               | NUMERIC   | Down Payment Amount in Document Currency                     |
| due_date_for_dp_ekpo                | DATE      | Due Date for Down Payment                                    |
| enh_store_ret                       | STRING    | Store Return with Inbound and Outbound Delivery              |
| external_document                   | STRING    | Document Number of External Document                         |
| external_item                       | STRING    | Item Number of External Document                             |
| logical_system_ekpo                 | STRING    | Logical System                                               |
| central_contract                    | STRING    | Central Contract                                             |
| cent_contract_item                  | STRING    | Central Contract Item Number                                 |
| block_reason_id                     | STRING    | Blocking Reason - ID                                         |
| block_reas_text                     | STRING    | Blocking Reason - Text                                       |
| rt_consumption                      | STRING    | Real-Time Consumption Posting of Subcontracting Components   |
| fixed_date                          | STRING    | Delivery Date and Quantity Fixed                             |
| gi_based_gr                         | STRING    | Indicator for GI-based goods receipt                         |
| complete_deliv_ekpo                 | STRING    | Complete Delivery Requested for Purchase Order Item          |
| inco_location1_ekpo                 | STRING    | Incoterms Location 1                                         |
| inco_location2_ekpo                 | STRING    | Incoterms Location 2                                         |
| commodity_code                      | STRING    | Commodity Code                                               |
| intrastat_srvc_code                 | STRING    | Intrastat Service Code                                       |
| statist_value                       | NUMERIC   | Statistical value for foreign trade                          |
| service_performer                   | STRING    | Service Performer                                            |
| product_type_group                  | STRING    | Product Type Group                                           |
| rfq_1                               | STRING    | Identifier for Request for Quotation                         |
| item_number_for_rfq                 | STRING    | Item Number for Request for Quotation                        |
| material_2                          | STRING    | Material of External System                                  |
| item_target_value                   | NUMERIC   | Target Value at Item Level in Procurement Hub                |
| ext_reference_id_ekpo               | STRING    | External Reference ID                                        |
| tc_auto_det                         | STRING    | Tax Code Automatically Determined                            |
| man_tc_reason                       | STRING    | Manual Tax Code Reason                                       |
| tax_incent_type                     | STRING    | Tax Incentive Type                                           |
| tax_subj_to_st                      | STRING    | Tax Subject to Substituição Tributária                       |
| incentive_id                        | STRING    | Incentive ID                                                 |
| origjurcod                          | STRING    | Jurisdiction Code of the Point of Origin                     |
| ext_include_ekpo                    | STRING    | Data Element for Extensibility of Purchasing Document Item   |
| expected_value                      | NUMERIC   | Expected Value of Overall Limit                              |
| overall_limit                       | NUMERIC   | Overall Limit                                                |
| wka_start_date                      | DATE      | Start date of WKA working period                             |
| wka_end_date                        | DATE      | End date of WKA working period                               |
| percentage                          | NUMERIC   | WKA: Percentage of wages                                     |
| wrk_time_hours                      | STRING    | Working time in hours                                        |
| data_filter_value_for_data_agi      | DATE      | Data Filter Value for Data Aging                             |
| item_generated                      | STRING    | Indicator: Item Is Generated                                 |
| dependent_free                      | STRING    | Indicator: Dependent Items Are Free of Charge                |
| struct_category                     | STRING    | Structure Category for Material Relationship                 |
| advice_code                         | STRING    | Advice Code                                                  |
| budget_period                       | STRING    | Budget Period                                                |
| acceptance_period                   | STRING    | Acceptance Period                                            |
| us_govt                             | STRING    | United States Federal Government Fields                      |
| iuid_relevant                       | STRING    | IUID-Relevant                                                |
| mrpind                              | STRING    | Max. Retail Price Relevant                                   |
| stock_segment                       | STRING    | Stock Segment                                                |
| reqmnt_segment                      | STRING    | Requirement Segment                                          |
| guid_of_sap_tm_ekpo                 | STRING    | Reference UUID of Transportation Management                  |
| location                            | BYTES     | Location GUID (004) with Conversion Exit                     |
| location_1                          | BYTES     | Location GUID (004) with Conversion Exit                     |
| characteristic_1                    | STRING    | Characteristic Value 1                                       |
| characteristic_2                    | STRING    | Characteristic Value 2                                       |
| characteristic_3                    | STRING    | Characteristic Value 3                                       |
| purchasing_ref_site                 | STRING    | Reference Site For Purchasing                                |
| annexing_package_ekpo               | STRING    | Annexing package key                                         |
| ann_package_extend_ekpo             | STRING    | Extended key for annexing package                            |
| base_date_ekpo                      | DATE      | Base Date                                                    |
| annexing_date_type_ekpo             | STRING    | Annexing Date Type                                           |
| annexing_start_date_ekpo            | DATE      | Annexing start date                                          |
| deviation_percen_ekpo               | NUMERIC   | deviation percentage                                         |
| annexed_ind_ekpo                    | STRING    | indicator for annexed order type                             |
| limit_date_ekpo                     | DATE      | Annexing limit date (purchasing)                             |
| char20_ekpo                         | STRING    | Char 20                                                      |
| new_base_date_ekpo                  | DATE      | The general acountant method New base date.                  |
| accountant_gen_mth_ekpo             | STRING    | Accountant general method                                    |
| no_negative_annexing_ekpo           | STRING    | Do not allow negative annexing                               |
| purchasing_org_ekpo                 | STRING    | Purchasing organization                                      |
| known_index_indic_ekpo              | STRING    | Known Index indicator in /ILE/T_ANNEXING_CALCULATION Func    |
| global_item_no                      | STRING    | Global Item Number in Purchasing Document                    |
| quotation_item                      | STRING    | Quotation Item Number (SD)                                   |
| model_id_code                       | STRING    | Model ID Code                                                |
| order_priority                      | STRING    | Order Priority                                               |
| delivery_prior                      | STRING    | Delivery Priority                                            |
| aircraftreg_no                      | STRING    | Aircraft registration number                                 |
| item_3                              | STRING    | Sales Document Item                                          |
| conf_type                           | STRING    | Vendor confirmation type                                     |
| document_date_ekpo                  | DATE      | Document Date (Date Received/Sent)                           |
| quotation_ekpo                      | STRING    | Quotation number                                             |
| s1pnstat_message                    | STRING    | Flag for  the S1PNSTAT message                               |
| donotsub                            | STRING    | Do Not Substitute                                            |
| subcon_type                         | STRING    | Type of subcontracting                                       |
| serialnoprofile                     | STRING    | Serial Number Profile                                        |
| sp_stock                            | STRING    | Special stock indicator Subcontracting                       |
| wbs_element_1                       | STRING    | Work Breakdown Structure Element (WBS Element)               |
| customer_1                          | STRING    | Customer Number                                              |
| sales_document                      | STRING    | Sales and Distribution Document Number                       |
| item_4                              | STRING    | Item number of the SD document                               |
| owner_of_stock                      | STRING    | Owner of stock                                               |
| season_year_1                       | STRING    | Season Year                                                  |
| season_1                            | STRING    | Season                                                       |
| collection                          | STRING    | Fashion Collection                                           |
| theme                               | STRING    | Fashion Theme                                                |
| start_date_atp                      | DATE      | Starting Date with ATP                                       |
| vas_relevant                        | STRING    | VAS Relevant                                                 |
| item_5                              | STRING    | Item Number of Purchasing Document                           |
| transaction_number_ekpo             | STRING    | Transaction Number                                           |
| item_group_ekpo                     | STRING    | Item Group                                                   |
| item_number                         | STRING    | Item Number                                                  |
| sched_strat                         | STRING    | Order Scheduling Strategy                                    |
| record_num                          | STRING    | Grid Condition Record Number                                 |
| split_id                            | STRING    | PSM and PFM Split ID                                         |
| committed_qty                       | NUMERIC   | Committed Quantity                                           |
| higher_lev_item_pqr                 | STRING    | Higher-level item in Partial Quantity Rejection              |
| diversion_status                    | STRING    | Status of Diversion process                                  |
| season_comp_ind                     | STRING    | Season Completeness Indicator                                |
| activate_stop                       | STRING    | Activate Static Stopping of Releases                         |
| auto_unloadpt                       | STRING    | (Automotive) Unloading Point                                 |
| auto_unloadpt_1                     | STRING    | (Automotive) Unloading Point                                 |
| address_number_ekpo                 | STRING    | Address Number                                               |
| sequence_number                     | STRING    | Sequence Number                                              |
| info_at_reg                         | STRING    | Indicator: Action at Registration                            |
| department                          | STRING    | Department                                                   |
| earmarked_funds_1                   | STRING    | Document Number for Earmarked Funds                          |
| document_item_2                     | STRING    | Earmarked Funds: Document Item                               |
| commitment_doc                      | STRING    | Commitment document                                          |
| commitment_item_1                   | STRING    | Commitment item                                              |
| wbs_element_2                       | STRING    | Work Breakdown Structure Element (WBS Element)               |
| psst_grouping_rule                  | STRING    | PSST Grouping Rule                                           |
| psst_group                          | STRING    | PSST Group                                                   |
| reference_document                  | STRING    | Reference Document number for PO Traceability                |
| reference_item                      | STRING    | Reference Item number for PO Traceability                    |
| reference_action                    | STRING    | Action for Traceability in  PO                               |
| reference_schedule_line_item_n      | STRING    | Reference Schedule Line Item number for PO Traceability      |
| reference_item_1                    | STRING    | Reference Item for Remaining Qty Cancellation                |
| origin_profile                      | STRING    | Origin Profile                                               |
| source_system_key                   | STRING    | Key in Source System                                         |
| put_back_id                         | STRING    | Indicator for Putting Back from Grouped PO Document          |
| order_list_item_no                  | STRING    | Order List Item Number                                       |
| consignment                         | STRING    | Purchase Order for Consignment                               |
| purchasing_doc_eket                 | STRING    | Purchasing Document Number                                   |
| item_eket                           | STRING    | Item Number of Purchasing Document                           |
| schedule_line_1                     | STRING    | Schedule line id(Concatenation of EBELN, EBELP, EETEN)       |
| delivery_date                       | DATE      | Item delivery date                                           |
| stat_del_date                       | DATE      | Statistics-Relevant Delivery Date                            |
| delivery_date_1                     | STRING    | Category of delivery date                                    |
| scheduled_qty                       | NUMERIC   | Scheduled Quantity                                           |
| previous_qty                        | NUMERIC   | Previous Quantity (Delivery Schedule Lines)                  |
| delivered                           | NUMERIC   | Quantity of goods received                                   |
| issued                              | NUMERIC   | Issued Quantity                                              |
| delivery_date_time                  | TIME      | Delivery Date Time-Spot                                      |
| purchase_req_eket                   | STRING    | Purchase Requisition Number                                  |
| requisn_item_eket                   | STRING    | Item number of purchase requisition                          |
| creation_ind                        | STRING    | Creation indicator (purchase requisition/schedule lines)     |
| quota_arr                           | STRING    | Number of quota arrangement                                  |
| quota_arr_item                      | STRING    | Quota arrangement item                                       |
| no_rem_exp_eket                     | NUMERIC   | No. of Reminders/Expediters for Schedule Line                |
| purchorderdate                      | DATE      | Order date of schedule line                                  |
| reservation_number                  | STRING    | Number of reservation/dependent requirements                 |
| bom_expl_number                     | STRING    | BOM explosion number                                         |
| fixing_ind                          | STRING    | Schedule Line is Fixed                                       |
| qty_delivered                       | NUMERIC   | Quantity Delivered (Stock Transfer)                          |
| qty_reduced                         | NUMERIC   | Quantity Reduced (MRP)                                       |
| batch                               | STRING    | Batch Number                                                 |
| supplier_batch                      | STRING    | Supplier Batch Number                                        |
| components_chg                      | STRING    | Components                                                   |
| prod_version                        | STRING    | Production Version                                           |
| release_type                        | STRING    | Scheduling agreement release type                            |
| committed_qty_eket                  | NUMERIC   | Committed Quantity                                           |
| committed_date                      | DATE      | Committed date                                               |
| prev_deliv_date                     | DATE      | Previous delivery date                                       |
| route_schedule                      | STRING    | Route Schedule                                               |
| mat_avail_date                      | DATE      | Material Staging/Availability Date                           |
| matl_staging_tme                    | TIME      | Material Staging Time (Local, Relating to a Plant)           |
| loading_date                        | DATE      | Loading Date                                                 |
| loading_time                        | TIME      | Loading Time (Local Time Relating to a Shipping Point)       |
| transpplngdate                      | DATE      | Transportation Planning Date                                 |
| tr_plan_time                        | TIME      | Transp. Planning Time (Local, Relating to a Shipping Point)  |
| goods_issue                         | DATE      | Goods Issue Date                                             |
| gi_time                             | TIME      | Time of Goods Issue (Local, Relating to a Plant)             |
| gr_end_date                         | DATE      | Goods Receipt End Date                                       |
| gr_end_time                         | TIME      | Goods Receipt End Time (Local, Relating to a Plant)          |
| no_serial_no_eket                   | INT64     | Number of serial numbers                                     |
| res_purc_req                        | STRING    | Ind: Reserv. not applicable to MRP;Purc. req. not created    |
| georoute                            | STRING    | Description of a Geographical Route                          |
| gtsroutecode                        | STRING    | Route Code for SAP Global Trade Services                     |
| gds_traffic_ty                      | STRING    | Goods Traffic Type                                           |
| fwd_agent                           | STRING    | Forwarding Agent                                             |
| apo_location                        | STRING    | Location number in APO                                       |
| apo_locatn_type                     | STRING    | APO location type                                            |
| handover_date                       | DATE      | Handover Date at the Handover Location                       |
| handover_time                       | TIME      | Handover time at the handover location                       |
| start_date_eket                     | DATE      | Start Date for Period of Performance                         |
| end_date                            | DATE      | End Date for Period of Performance                           |
| data_filter_value_for_data_agi_eket | DATE      | Data Filter Value for Data Aging                             |
| cw_sched_line_qty                   | NUMERIC   | Schedule Line Quantity in Base/Parallel Unit of Measure      |
| cw_mrp_reduced_qty                  | NUMERIC   | MRP Reduced Quantity in Base/Parallel UoM                    |
| par_gr_qty                          | NUMERIC   | Goods Receipt Quantity in Base or Parallel Unit of Measure   |
| guid_of_sap_tm_eket                 | STRING    | Reference UUID of Transportation Management                  |
| input_date_eket                     | DATE      | Date                                                         |
| alloc_qty                           | NUMERIC   | ARun Requirement Allocated Quantity                          |
| allocated_stock                     | NUMERIC   | Allocated Stock Quantity                                     |
| order_sch_gr_id                     | STRING    | Order Scheduling Group ID                                    |
| budget_number_eket                  | STRING    | Unique Number of Budget                                      |
| required_budget_eket                | NUMERIC   | Required Budget                                              |
| otb_currency_eket                   | STRING    | OTB Currency                                                 |
| reserved_budget_eket                | NUMERIC   | Reserved Budget for OTB-Relevant Purchasing Document         |
| special_release_eket                | NUMERIC   | Special Release Budget                                       |
| otb_reason_profile_eket             | STRING    | Reason Profile for OTB Special Release                       |
| budget_type_eket                    | STRING    | Budget Type                                                  |
| otb_status_eket                     | STRING    | OTB Check Status                                             |
| reason_eket                         | STRING    | Reason Indicator for OTB Check Status                        |
| type_of_otb_check_eket              | STRING    | Type of OTB Check                                            |
| dateline_id                         | STRING    | Date Line ID (GUID)                                          |
| transfer_date                       | DATE      | Transfer Date                                                |
| no_scem_contr                       | STRING    | Purchase Order Not Transferred to SCEM                       |
| rem_date                            | DATE      | Creation Date of Reminder Message Record                     |
| reminder_time                       | TIME      | Creation Time of Reminder Message Record                     |
| cancel_threat_made                  | STRING    | Cancellation Threat Made                                     |
| no_date_shifts                      | NUMERIC   | Number of Current Date Shifts                                |
| purchasing_doc_ekbe                 | STRING    | Purchasing Document Number                                   |
| item_ekbe                           | STRING    | Item Number of Purchasing Document                           |
| po_history_cat                      | STRING    | Purchase Order History Category                              |
| movement_type                       | STRING    | Movement type (inventory management)                         |
| posting_date                        | DATE      | Posting Date in the Document                                 |
| quantity                            | NUMERIC   | Quantity                                                     |
| qty_in_opun                         | NUMERIC   | Quantity in purchase order price unit                        |
| amount_in_lc                        | NUMERIC   | Amount in Local Currency                                     |
| amount                              | NUMERIC   | Amount in Document Currency                                  |
| currency_ekbe                       | STRING    | Currency Key                                                 |
| gr_ir_clr_value                     | NUMERIC   | GR/IR account clearing value in local currency               |
| gr_bl_st_oun                        | NUMERIC   | Goods Receipt Blocked Stock in Order Unit                    |
| gr_blocked_stck                     | NUMERIC   | Quantity in GR blocked stock in order price unit             |
| debit_credit                        | STRING    | Debit/Credit Indicator                                       |
| valuation_type_ekbe                 | STRING    | Valuation Type                                               |
| deliv_compl_ekbe                    | STRING    | Delivery Completed Indicator                                 |
| reference                           | STRING    | Reference Document Number                                    |
| fisc_yr_ref_doc                     | STRING    | Fiscal Year of a Reference Document                          |
| reference_doc                       | STRING    | Document No. of a Reference Document                         |
| ref_doc_item                        | STRING    | Item of a Reference Document                                 |
| reason_for_mvmt                     | STRING    | Reason for Movement                                          |
| entered_on                          | DATE      | Day On Which Accounting Document Was Entered                 |
| entered_at                          | TIME      | Time of Entry                                                |
| invoice_value                       | NUMERIC   | Invoice Value Entered (in Local Currency)                    |
| compliance                          | STRING    | Compliance with Shipping Instructions                        |
| inv_value_in_fc                     | NUMERIC   | Invoice Value in Foreign Currency                            |
| material_ekbe                       | STRING    | Material Number                                              |
| plant_ekbe                          | STRING    | Plant                                                        |
| revgr_desp_ir                       | STRING    | Reversal of GR allowed for GR-based IV despite invoice       |
| sequential_no                       | STRING    | Sequential Number of Supplier Confirmation                   |
| doc_condition_ekbe                  | STRING    | Number of the Document Condition                             |
| tax_code_ekbe                       | STRING    | Tax on sales/purchases code                                  |
| del_note_qty                        | NUMERIC   | Quantity in Unit of Measure from Delivery Note               |
| del_note_unit                       | STRING    | Unit of Measure From Delivery Note                           |
| material_1_ekbe                     | STRING    | Material number                                              |
| gr_ir_clr_value_1                   | NUMERIC   | Clearing value on GR/IR clearing account (transac. currency) |
| local_currency                      | STRING    | Local currency key                                           |
| quantity_1                          | NUMERIC   | Quantity                                                     |
| batch_ekbe                          | STRING    | Batch Number                                                 |
| document_date_ekbe                  | DATE      | Document Date in Document                                    |
| calcn_of_val_open                   | STRING    | Calculation of val. open                                     |
| uacctassignment                     | STRING    | Unplanned Account Assignment from Invoice Verification       |
| created_by_ekbe                     | STRING    | Name of Person who Created the Object                        |
| service                             | STRING    | Service number                                               |
| package_number_ekbe                 | STRING    | Package Number of Service                                    |
| service_line                        | STRING    | Line Number of Service                                       |
| seqno_po_accass                     | STRING    | Number of PO Account Assignment                              |
| srv_returns_ind                     | STRING    | Returns Indicator                                            |
| gr_ir_clr_value_2                   | NUMERIC   | Clearing Value on GR/IR Account in PO Currency               |
| fc_invoice_amnt                     | NUMERIC   | Invoice Amount in PO Currency                                |
| sap_release                         | STRING    | SAP Release                                                  |
| quantity_2                          | NUMERIC   | Quantity                                                     |
| qty_in_opun_1                       | NUMERIC   | Quantity in purchase order price unit                        |
| amount_in_lc_1                      | NUMERIC   | Amount in Local Currency                                     |
| amount_1                            | NUMERIC   | Amount in Document Currency                                  |
| val_gr_blstock_oun                  | NUMERIC   | Valuated Goods Receipt Blocked Stock in Order Unit           |
| val_gr_bs_opun                      | NUMERIC   | Quantity in Valuated GR Blocked Stock in Order Price Unit    |
| origin_accept_ekbe                  | STRING    | Acceptance At Origin                                         |
| gr_ir_clr_value_3                   | NUMERIC   | GR/IR account clearing value in local currency               |
| exch_rate_diff                      | NUMERIC   | Exchange Rate Difference Amount                              |
| retent_in_doc_crcy                  | NUMERIC   | Retention Amount in Document Currency                        |
| retention_in_cc_crcy                | NUMERIC   | Retention Amount in Company Code Currency                    |
| retent_in_doc_crcy_1                | NUMERIC   | Posted Retention Amount in Document Currency                 |
| retention_in_cc_crcy_1              | NUMERIC   | Posted Security Retention Amount in Company Code Currency    |
| multi_acct_assgt                    | STRING    | Multiple Account Assignment                                  |
| exchange_rate_ekbe                  | NUMERIC   | Exchange Rate                                                |
| item_origin                         | STRING    | Origin of an Invoice Item                                    |
| delivery                            | STRING    | Delivery                                                     |
| item_1_ekbe                         | STRING    | Delivery Item                                                |
| stock_segment_ekbe                  | STRING    | Stock Segment                                                |
| data_filter_value_for_data_agi_ekbe | DATE      | Data Filter Value for Data Aging                             |
| ses_uom                             | STRING    | Unit of Measure from Service Entry Sheet                     |
| logical_system_ekbe                 | STRING    | Logical System                                               |
| slpu                                | STRING    | Procedure for Updating the Schedule Line Quantity            |
| cw_qty                              | NUMERIC   | Quantity in Parallel Unit of Measure                         |
| cwm_gr_blkd_stk_qty                 | NUMERIC   | Goods Receipt Blocked Stock in Base/Parallel Unit of Measure |
| puom_type                           | STRING    | Type of Parallel Unit of Measure                             |
| cwm_gr_blkd_stk_qty_1               | NUMERIC   | Val. Goods Receipt Blocked Stock in Basis or Parallel UoM    |
| die_complete_flag                   | STRING    | Depreciation completion flag                                 |
| season_year_ekbe                    | STRING    | Season Year                                                  |
| season_ekbe                         | STRING    | Season                                                       |
| collection_ekbe                     | STRING    | Fashion Collection                                           |
| theme_ekbe                          | STRING    | Fashion Theme                                                |
| quantity_3                          | NUMERIC   | Quantity                                                     |
| characteristic_1_ekbe               | STRING    | Characteristic Value 1                                       |
| characteristic_2_ekbe               | STRING    | Characteristic Value 2                                       |
| characteristic_3_ekbe               | STRING    | Characteristic Value 3                                       |
| finalmd5key                         | STRING    | MD5 key combining all columns                                |
| input_last_update_date              | DATETIME  | Last Input read time                                         |
| dw_active_indicator                 | STRING    | Valid Indicator                                              |
| dw_start_date                       | DATETIME  | Record start date                                            |
| dw_end_date                         | DATETIME  | Record end date                                              |
| dw_last_update_date                 | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms