
## Table Name : production_order_fact


| column_name                | data_type | description                                                 |
|----------------------------|-----------|-------------------------------------------------------------|
| production_order_uuid      | STRING    | Unique Generated Id                                         |
| production_order_key       | STRING    | Production order Key                                        |
| client                     | STRING    | Client                                                      |
| order_number               | STRING    | Order Number                                                |
| order_item_no              | STRING    | Order item number                                           |
| material_uuid              | STRING    | Material Dimension Unique Generated Id                      |
| material_key               | STRING    | Material key from Material Dimension                        |
| plant_uuid                 | STRING    | Plant Dimension Unique Generated Id                         |
| plant_key                  | STRING    | Plant key from Plant Dimension                              |
| customer_uuid              | STRING    | Customer Dimension Unique Generated Id                      |
| customer_key               | STRING    | Customer Key from Customer Dimension                        |
| company_code_uuid          | STRING    | Unique Generated Id                                         |
| company_code_key           | STRING    | Unique Generated Id                                         |
| storage_location_uuid      | STRING    | Storage location Dimension Unique Generated Id              |
| storage_location_key       | STRING    | Storage location key from Storage location Dimension        |
| basic_fin_date             | DATE      | Basic finish date                                           |
| bas_start_date             | DATE      | Basic Start Date                                            |
| release                    | DATE      | Scheduled release date                                      |
| sched_finish               | DATE      | Scheduled finish                                            |
| sched_start                | DATE      | Scheduled start                                             |
| actual_start               | DATE      | Actual start date                                           |
| actual_finish              | DATE      | Confirmed Order Finish Date                                 |
| actual_finish_1            | DATE      | Actual finish date                                          |
| actual_release             | DATE      | Actual release date                                         |
| planned_release            | DATE      | Planned Release Date                                        |
| reservation_number         | STRING    | Number of reservation/dependent requirements                |
| total_scrap                | NUMERIC   | Total Scrap Quantity in the Order                           |
| target_quantity            | NUMERIC   | Total Order Quantity                                        |
| base_unit                  | STRING    | Base Unit of Measure                                        |
| material                   | STRING    | Material Number                                             |
| task_list_type             | STRING    | Task List Type                                              |
| group_list                 | STRING    | Key for Task List Group                                     |
| application                | STRING    | Application of the task list                                |
| group_counter              | STRING    | Group Counter                                               |
| usage                      | STRING    | Task list usage                                             |
| explosion_date             | DATE      | Date for Routing Explosion                                  |
| lot_size_to                | NUMERIC   | Maximum Lot Size                                            |
| task_list_unit             | STRING    | Task List Unit of Measure                                   |
| lot_size_from              | NUMERIC   | Minimum Lot Size                                            |
| valid_from                 | DATE      | Valid-From Date                                             |
| change_number              | STRING    | Change Number                                               |
| planner_group              | STRING    | Responsible Planner Group or Department                     |
| lot_size_div               | NUMERIC   | Lot size divisor                                            |
| bom_category               | STRING    | BOM category                                                |
| material_1                 | STRING    | Material Number                                             |
| bom_status                 | STRING    | Bill of Material Status                                     |
| bom                        | STRING    | Bill of Material                                            |
| valid_from_1               | DATE      | Valid-From Date                                             |
| base_quantity              | NUMERIC   | Base quantity                                               |
| base_unit_1                | STRING    | Base Unit of Measure                                        |
| change_number_1            | STRING    | Change Number                                               |
| alternative                | STRING    | Alternative BOM                                             |
| usage_1                    | STRING    | BOM Usage                                                   |
| from_lot_size              | NUMERIC   | From Lot Size                                               |
| to_lot_size                | NUMERIC   | To Lot Size                                                 |
| bom_expl_date              | DATE      | Date of BOM Explosion/Routing Transfer                      |
| mrp_controller             | STRING    | MRP controller for the order                                |
| plan_no_f_oper             | STRING    | Routing number of operations in the order                   |
| prodn_supervisor           | STRING    | Production Supervisor                                       |
| schedmargin_key            | STRING    | Scheduling Margin Key for Floats                            |
| scheduling_type            | STRING    | Scheduling type                                             |
| reduction_ind              | STRING    | Reduction indicator for scheduling                          |
| priority                   | STRING    | Order priority                                              |
| network                    | STRING    | Superior network number                                     |
| superior_act               | STRING    | Superior activity                                           |
| network_profile            | STRING    | Network Profile                                             |
| float_bef_prod             | STRING    | Float before production (in days)                           |
| float_aft_prod             | STRING    | Float after production (in days)                            |
| release_period             | STRING    | Release period (in days)                                    |
| dates_changed              | STRING    | Indicator: Change to Scheduled Dates                        |
| capacity_requirement       | STRING    | ID of the Capacity Requirements Record                      |
| project_def                | STRING    | Project definition                                          |
| counter                    | STRING    | Internal counter                                            |
| counter_1                  | STRING    | Internal counter                                            |
| add_crit_countr            | STRING    | Counter for additional criteria                             |
| inspection_lot             | STRING    | Inspection Lot Number                                       |
| plnd_costing_variant       | STRING    | Costing Variant for Planned Costs                           |
| act_costing_variant        | STRING    | Costing Variant For Actual Costs                            |
| backflushing               | STRING    | Indicator: Backflushing for order                           |
| sched_basis                | STRING    | Basis for scheduling                                        |
| ind_relshp_data            | STRING    | Indicator: relationships                                    |
| ind_work                   | STRING    | Indicator: Default value work is relevant                   |
| finish_date                | DATE      | Finish date (forecast)                                      |
| start_date                 | DATE      | Forecast start date                                         |
| finish_date_1              | DATE      | Scheduled forecast finish                                   |
| start_date_1               | DATE      | Scheduled forecast start                                    |
| release_1                  | DATE      | Scheduled release date (forecast)                           |
| reduction_ind_1            | STRING    | Reduction indicator for scheduling (forecast)               |
| sched_type_for             | STRING    | Scheduling type (forecast)                                  |
| confirmation               | STRING    | Completion confirmation number for the operation            |
| counter_2                  | STRING    | Internal counter                                            |
| confirmed_yield            | NUMERIC   | Confirmed Yield Quantity From Order Confirmation            |
| rate_id                    | STRING    | -INVALID FOR S/4- Index for the rslts of schedg prod. rates |
| rough_sched_id             | STRING    | -INVALID FOR S/4- Index for rough scheduling results        |
| int_object_no              | STRING    | Configuration (internal object number)                      |
| finish_time                | TIME      | Scheduled finish time                                       |
| schedstarttime             | TIME      | Scheduled Start (Time)                                      |
| revision_level             | STRING    | Revision level                                              |
| object_type                | STRING    | Object types of the CIM resource                            |
| object_id                  | STRING    | Object ID of the resource                                   |
| object_type_1              | STRING    | Object types of the CIM resource                            |
| object_id_1                | STRING    | Object ID of the resource                                   |
| no_auto_cost               | STRING    | Indicator: Do not schedule automatically                    |
| noautomatcost              | STRING    | Indicator: Do not cost automatically                        |
| level                      | NUMERIC   | Level (in multi-level BOM explosions)                       |
| path                       | NUMERIC   | Path (for multi-level BOM explosions)                       |
| path_1                     | NUMERIC   | Path (for multi-level BOM explosions)                       |
| reservation_1              | STRING    | Number of reservation/dependent requirements                |
| order_item_no_poh          | STRING    | Order item number                                           |
| superior_order             | STRING    | Number of Superior Order                                    |
| left_node                  | STRING    | Left node in collective order                               |
| right_node                 | STRING    | Right node of a collective order                            |
| collective_order           | STRING    | Order is Part of Collective Order                           |
| confirmed_scrap            | NUMERIC   | Confirmed Scrap Quantity From Order Confirmation            |
| processing                 | STRING    | Confirmation: Degree of processing                          |
| subnetwork_of              | STRING    | Number of superior network                                  |
| plan_no_f_oper_1           | STRING    | Routing number of operations in the order                   |
| counter_3                  | STRING    | General counter for order                                   |
| eff_mat_plng               | STRING    | Effective for Materials Planning                            |
| apportionment              | STRING    | Apportionment Structure                                     |
| change_number_2            | STRING    | Change Number                                               |
| sequence_number            | STRING    | Sequence Number Order                                       |
| exact_breaks               | STRING    | Indicator:  Scheduling allowing for breaks                  |
| float_bef_prod_1           | NUMERIC   | Scheduled float before production in days                   |
| flt_after_prod             | NUMERIC   | Scheduled float after production in days                    |
| scheduled_on               | DATE      | Date of the Last Scheduling                                 |
| basic_fin_time             | TIME      | Basic Finish (Time)                                         |
| start_time                 | TIME      | Basic Start (Time)                                          |
| actualstart                | TIME      | Actual start time                                           |
| actual_finish_2            | TIME      | Confirmed Order Finish (Time)                               |
| finish_time_1              | TIME      | Forecast finish (time)                                      |
| start_time_1               | TIME      | Forecast start (time)                                       |
| finish_time_2              | TIME      | Scheduled forecast finish time                              |
| sched_start_1              | TIME      | Scheduled start time (Forecast)                             |
| search_proced              | STRING    | Search procedure for batch determination                    |
| rempreprodfloat            | STRING    | Float (bef. production) remaining after finite scheduling   |
| remaining_float            | STRING    | Remaining float after finite scheduling                     |
| leading_order              | STRING    | Leading Order in Current Processing                         |
| start                      | DATE      | Outline start of collective network (date)                  |
| start_1                    | TIME      | Start time of a collective order                            |
| finish                     | DATE      | Outline finish of collective order (date)                   |
| finish_1                   | TIME      | Outline finish time                                         |
| no_cap_reqmts              | STRING    | Indicator: Do not Create Capacity Requirements              |
| costcompind                | STRING    | Indicator: Components will not be costed                    |
| prod_sched_profile         | STRING    | Production Scheduling Profile                               |
| confirmed_rework           | NUMERIC   | Total Confirmed Rework Quantity                             |
| commitment_date            | DATE      | Total Commitment Date                                       |
| committed                  | NUMERIC   | Committed quantity for order acc. to ATP check components   |
| no_planned_costs           | STRING    | Do not calculate planned costs for order                    |
| account_assgnt             | STRING    | Indicator for the account assignment of a network(hdr/act.) |
| request_id                 | STRING    | Request ID                                                  |
| changeind                  | STRING    | Change indicator                                            |
| changeproctype             | STRING    | Process that has lead to the change of an object            |
| version                    | STRING    | Version of Available Capacity                               |
| co_processing              | STRING    | Collective order with/without automatic goods movement      |
| proj_summ_mastda           | STRING    | Indicator: Project summarization via master data charact.   |
| identical_obj              | STRING    | Identical object                                            |
| object_id_2                | STRING    | Object ID                                                   |
| version_1                  | STRING    | Sales document version number                               |
| sched_note                 | STRING    | Scheduling note from order scheduling                       |
| split_status               | STRING    | Status of an order in a split hierarchy                     |
| update_costs               | STRING    | Costs are updated                                           |
| maximum_qty                | NUMERIC   | Maximum Value of Total Order Quantity After Distribution    |
| mes_routing                | STRING    | Key of a Routing from an ME System                          |
| routing_version            | STRING    | Routing Version                                             |
| bom_version                | STRING    | BOM Version                                                 |
| flexible                   | STRING    | Flexible Processing                                         |
| pm_ps_ref_element          | STRING    | PM/PS Reference Element                                     |
| sales_document             | STRING    | Sales and Distribution Document Number                      |
| item                       | STRING    | Item number of the SD document                              |
| item_1                     | STRING    | Item number of the SD document                              |
| max_storage                | NUMERIC   | Maximum Storage Period                                      |
| time_unit                  | STRING    | Unit for maximum storage period                             |
| additional_days            | NUMERIC   | Additional Days                                             |
| date_of_manuf              | DATE      | Date of Manufacture                                         |
| bbd_sled                   | DATE      | Best-Before Date (BBD)/ Shelf Life Expiration Date (SLED)   |
| handling_type              | STRING    | Excise Duty Handling Type                                   |
| master_prod_ord            | STRING    | Master Production Order Number                              |
| bundle                     | STRING    | Indicates bundle information maintained                     |
| adjustmt_factor            | INT64     | Factor for Quantity-Based Settlement                        |
| base_unit_2                | STRING    | Base Unit of Measure                                        |
| base_quantity_1            | NUMERIC   | Base quantity                                               |
| combination_ind            | STRING    | Combination Indicator                                       |
| order_number_aufk          | STRING    | Order Number                                                |
| order_type                 | STRING    | Order Type                                                  |
| order_category             | STRING    | Order category                                              |
| order_1                    | STRING    | Reference Order Number                                      |
| entered_by                 | STRING    | Entered By                                                  |
| created_on                 | DATE      | Created On                                                  |
| changed_by                 | STRING    | Last Changed By                                             |
| changed_on                 | DATE      | Change Date for Order Master                                |
| description                | STRING    | Description                                                 |
| long_txt_exists            | STRING    | Long Text Exists                                            |
| company_code               | STRING    | Company Code                                                |
| plant                      | STRING    | Plant                                                       |
| business_area              | STRING    | Business Area                                               |
| co_area                    | STRING    | Controlling Area                                            |
| cost_collector             | STRING    | Cost Collector Key                                          |
| resp_cost_cntr             | STRING    | Responsible cost center                                     |
| location                   | STRING    | Location                                                    |
| location_plant             | STRING    | Location Plant                                              |
| statistical                | STRING    | Identifier for Statistical Order                            |
| currency                   | STRING    | Order Currency                                              |
| status                     | STRING    | Order Status                                                |
| status_change              | DATE      | Date of Last Status Change                                  |
| reached_status             | STRING    | Status Reached so Far                                       |
| created                    | STRING    | Phase Order Created                                         |
| released                   | STRING    | Phase Order Released                                        |
| completed                  | STRING    | Phase Order Completed                                       |
| closed                     | STRING    | Phase Order Closed                                          |
| planned_release_aufk       | DATE      | Planned release date                                        |
| plannedcompltn             | DATE      | Planned completion date                                     |
| planned_clo_dat            | DATE      | Planned closing date                                        |
| release_aufk               | DATE      | Release Date                                                |
| tech_completion            | DATE      | Technical Completion Date                                   |
| close                      | DATE      | Close Date                                                  |
| object_id_aufk             | STRING    | Object ID                                                   |
| distrangroup               | STRING    | Group of Disallowed Transactions                            |
| deletion_flag              | STRING    | Deletion Flag                                               |
| plan_line_items            | STRING    | Identifier for Planning with Line Items                     |
| usage_aufk                 | STRING    | Usage of the condition table                                |
| application_aufk           | STRING    | Application                                                 |
| costing_sheet              | STRING    | Costing Sheet                                               |
| overhead_key               | STRING    | Overhead key                                                |
| process_group              | STRING    | Processing group                                            |
| settlement_ce              | STRING    | Settlement Cost Element                                     |
| cost_center                | STRING    | Cost Center for Basic Settlement                            |
| g_l_account                | STRING    | G/L Account for Basic Settlement                            |
| allocation_set             | STRING    | Allocation Set                                              |
| cctr_true_post             | STRING    | Cost center to which costs are actually posted              |
| valid_from_aufk            | DATE      | Start Date                                                  |
| sequence_number_aufk       | STRING    | Sequence Number                                             |
| applicant                  | STRING    | Applicant                                                   |
| telephone                  | STRING    | Applicants telephone number                                 |
| person_resp                | STRING    | Person Responsible                                          |
| telephone_1                | STRING    | Telephone number of person in charge                        |
| estimated_costs            | NUMERIC   | Estimated total costs of order                              |
| applicdate                 | DATE      | Application date                                            |
| department                 | STRING    | Department                                                  |
| work_start                 | DATE      | Work Start                                                  |
| end_of_work                | DATE      | End of Work                                                 |
| work_permit                | STRING    | Identifier for work permit issued                           |
| object_number              | STRING    | Object number                                               |
| profit_center              | STRING    | Profit Center                                               |
| wbs_element                | STRING    | Work breakdown structure element (WBS element)              |
| variance_key               | STRING    | Variance Key                                                |
| ra_key                     | STRING    | Results Analysis Key                                        |
| event_based_posting        | STRING    | Event-Based Posting                                         |
| tax_jur                    | STRING    | Tax Jurisdiction                                            |
| functional_area            | STRING    | Functional Area                                             |
| object_class               | STRING    | Object Class                                                |
| integ_planning             | STRING    | Indicator for Integrated Planning                           |
| sales_order                | STRING    | Sales Order Number                                          |
| sales_ord_item             | STRING    | Item number in Sales Order                                  |
| ext_order_no               | STRING    | External order number                                       |
| invest_profile             | STRING    | Investment Measure Profile                                  |
| logical_system             | STRING    | Logical System                                              |
| multiple_items             | STRING    | Order Has Multiple Items                                    |
| req_co_code                | STRING    | Requesting company code                                     |
| req_cost_center            | STRING    | Requesting cost center                                      |
| scale                      | STRING    | Scale of investment objects                                 |
| invest_reason              | STRING    | Reason for Investment                                       |
| envir_invest               | STRING    | Reason for Environmental Investment                         |
| cost_collector_1           | STRING    | Indicator: Direct cost collector                            |
| interest_prof              | STRING    | Interest Profile for Project/Order Interest Calculation     |
| cost_collector_2           | STRING    | Cost Collector for Production Process                       |
| req_order                  | STRING    | Requesting order                                            |
| prod_proc_no               | STRING    | Production Process                                          |
| process_cat                | STRING    | Process Category (Procurement/Consumption)                  |
| refurbishment              | STRING    | Refurbishment order indicator (PM)                          |
| acctindicator              | STRING    | Accounting Indicator                                        |
| address_number             | STRING    | Address Number                                              |
| time_created               | TIME      | Time created                                                |
| changed_at                 | TIME      | Changed At                                                  |
| costing_variant            | STRING    | Costing Variant                                             |
| cost_estimateno            | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure        |
| personresponsible          | STRING    | Person Responsible for CO Internal Order                    |
| dummy_function_in_length_1 | STRING    | Dummy function in length 1                                  |
| joint_venture              | STRING    | Joint venture                                               |
| recovery_indic             | STRING    | Recovery Indicator                                          |
| equity_type                | STRING    | Equity type                                                 |
| jv_object_type             | STRING    | Joint Venture Object Type                                   |
| jib_jibe_class             | STRING    | JIB/JIBE Class                                              |
| jib_jibe_sbclsa            | STRING    | JIB/JIBE Subclass A                                         |
| or_cost_obj                | STRING    | JV original cost object                                     |
| time_stamp                 | NUMERIC   | Time Stamp                                                  |
| cu_order                   | STRING    | CU: Order is Used for Compatible Units                      |
| cm_number                  | STRING    | CU: Construction Measure Number                             |
| auto_est_costs             | STRING    | CU: Automatic Copy of Estimated Costs                       |
| cu_design_no               | STRING    | CU: Design Number                                           |
| dip_profile                | STRING    | Dynamic Item Processor Profile                              |
| main_workctr               | STRING    | Main work center for maintenance tasks                      |
| plnt_workcenter            | STRING    | Plant associated with main work center                      |
| reg_indicator              | STRING    | Regulatory indicator                                        |
| clm_creation_cntrl         | STRING    | Claim creation control indicator                            |
| claim_inconsistent         | STRING    | Claim inconsistency with order indicator                    |
| claim_upd_trigger          | STRING    | Claim update trigger point from service order               |
| order_number_afpo          | STRING    | Order Number                                                |
| spec_procuremt             | STRING    | Special procurement type                                    |
| quota_arr                  | STRING    | Number of quota arrangement                                 |
| quota_arr_item             | STRING    | Quota arrangement item                                      |
| wbs_element_afpo           | STRING    | Work breakdown structure element (WBS element)              |
| planned_order              | STRING    | Planned Order                                               |
| plnd_start_date            | DATE      | Planned Order Planned Start Date                            |
| plnd_open_date             | DATE      | Opening Date of the Planned Order                           |
| sales_order_afpo           | STRING    | Sales Order                                                 |
| sales_ord_item_afpo        | STRING    | Sales Order Item                                            |
| sorder_schedule            | STRING    | Delivery schedule for sales order                           |
| procurement                | STRING    | Procurement Type                                            |
| planned_scrap              | NUMERIC   | Order Item Planned Scrap Quantity                           |
| total_quantity             | NUMERIC   | Order Item Planned Total Quantity                           |
| gr_quantity                | NUMERIC   | Quantity of Goods Received for the Order Item               |
| expectvarrecipt            | NUMERIC   | Expected Surplus/Deficit For Goods Receipt                  |
| order_un                   | STRING    | Unit of measure for in-house production                     |
| base_unit_afpo             | STRING    | Base Unit of Measure                                        |
| material_afpo              | STRING    | Material Number for Order                                   |
| scrap_quantity             | NUMERIC   | Planned Scrap Quantity                                      |
| order_quantity             | NUMERIC   | Planned Total Order Quantity                                |
| acct_assgmt_cat            | STRING    | Account Assignment Category                                 |
| partial_convrs             | STRING    | Indicator: Partial Conversion                               |
| delivery_date              | DATE      | Actual Delivery/Finish Date                                 |
| planned_delivery           | DATE      | Delivery Date From Planned Order                            |
| cost_estimateno_afpo       | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure        |
| overdeliv_tol              | NUMERIC   | Overdelivery Tolerance                                      |
| unlimited                  | STRING    | Indicator: Unlimited Overdelivery Allowed                   |
| underdel_tol               | NUMERIC   | Underdelivery Tolerance                                     |
| stock_type                 | STRING    | Stock Type                                                  |
| goods_receipt              | STRING    | Goods Receipt Indicator                                     |
| valuation_type             | STRING    | Valuation Type                                              |
| valuation_cat              | STRING    | Valuation Category                                          |
| planning_plant             | STRING    | Planning Plant for an Order                                 |
| stor_loc                   | STRING    | Storage location                                            |
| counter_afpo               | NUMERIC   | Numerator for Conversion to Base Units of Measure           |
| denominator                | NUMERIC   | Denominator for conversion to base units of measure         |
| gr_proc_time               | NUMERIC   | Goods Receipt Processing Duration in Days                   |
| deliv_compl                | STRING    | Delivery Completed Indicator                                |
| rs_header                  | STRING    | Run schedule header number                                  |
| prod_version               | STRING    | Production Version                                          |
| bom_expl_number            | STRING    | BOM explosion number                                        |
| standardvariant            | STRING    | Parameter Variant/Standard Variant                          |
| plant_afpo                 | STRING    | Plant                                                       |
| order_category_afpo        | STRING    | Order category                                              |
| order_type_afpo            | STRING    | Order Type                                                  |
| basic_fin_date_afpo        | DATE      | Basic finish date                                           |
| sched_finish_afpo          | DATE      | Scheduled finish                                            |
| release_ind                | STRING    | Indicator: Order released/partially released (for MRP)      |
| not_relevant               | STRING    | Indicator: Order Item is not Relevant for MRP               |
| distribution               | STRING    | MRP Distribution Key                                        |
| special_stock              | STRING    | Special Stock Indicator                                     |
| consumption                | STRING    | Consumption posting                                         |
| gr_value                   | NUMERIC   | Value of goods received in local currency                   |
| gr_non_valuated            | STRING    | Goods Receipt, Non-Valuated                                 |
| unloading_point            | STRING    | Unloading Point                                             |
| recipient                  | STRING    | Goods recipient                                             |
| batch                      | STRING    | Batch Number                                                |
| business_area_afpo         | STRING    | Business Area                                               |
| gr_can_change              | STRING    | Indicator: Goods receipt indicator can be changed           |
| int_object_no_afpo         | STRING    | Configuration (internal object number)                      |
| kanban_indicat             | STRING    | Kanban Indicator                                            |
| settle_reser_no            | STRING    | Settlement reservation number                               |
| settle_item_no             | STRING    | Item number of the settlement reservation                   |
| reservation_number_afpo    | STRING    | Number of reservation/dependent requirements                |
| item_no                    | STRING    | Item Number of Reservation / Dependent Requirements         |
| cost_collector_afpo        | STRING    | Cost Collector Key                                          |
| repetitive_mfg             | STRING    | Cost collector for repetitive manufacturing                 |
| kanban                     | STRING    | Cost collector for KANBAN                                   |
| sales_ord_stock            | STRING    | Cost collector for valuated sales order stock               |
| external_ppc               | STRING    | Cost collector for external PPC                             |
| valid_from_afpo            | DATE      | Cost collector valid from                                   |
| valid_to                   | DATE      | Cost collector valid to                                     |
| object_number_afpo         | STRING    | Object number                                               |
| not_relevant_1             | STRING    | Ind.: Material in order item is not relevant for MRP        |
| committed_afpo             | NUMERIC   | Committed quantity for order acc. to ATP check components   |
| commitment_date_afpo       | DATE      | Total Commitment Date                                       |
| type_avail_chck            | STRING    | Indicator for type of availability check                    |
| valuation                  | STRING    | Valuation of Special Stock                                  |
| deletion_flag_afpo         | STRING    | Deletion Flag                                               |
| serialnoprofile            | STRING    | Serial Number Profile                                       |
| no_serial_no               | INT64     | Number of serial numbers                                    |
| changeind_afpo             | STRING    | Change indicator                                            |
| changeproctype_afpo        | STRING    | Process that has lead to the change of an object            |
| fixed_price_co_prod        | STRING    | Fixed-Price Co-Product                                      |
| int_object_no_1            | STRING    | Configuration (internal object number)                      |
| mrp_area                   | STRING    | MRP Area                                                    |
| standardvariant_1          | STRING    | Parameter Variant/Standard Variant                          |
| stock_segment              | STRING    | Stock Segment                                               |
| customer                   | STRING    | Customer Number                                             |
| season_year                | STRING    | Season Year                                                 |
| season                     | STRING    | Season                                                      |
| collection                 | STRING    | Fashion Collection                                          |
| theme                      | STRING    | Fashion Theme                                               |
| allocated_stock            | NUMERIC   | Allocated Stock Quantity                                    |
| original_order             | STRING    | Number of original order                                    |
| confirmed_qty              | NUMERIC   | Confirmed Quantity for Item                                 |
| sequence                   | STRING    | Item Sequence                                               |
| finalmd5key                | STRING    | MD5 key combining all columns                               |
| input_last_update_date     | DATETIME  | Last Input read time                                        |
| dw_active_indicator        | STRING    | Valid Indicator                                             |
| dw_start_date              | DATETIME  | Record start date                                           |
| dw_end_date                | DATETIME  | Record end date                                             |
| dw_last_update_date        | DATETIME  | Record Inserted/Updated date                                |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms