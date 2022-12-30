
## Table Name : production_order_fact


| sap_table | sap_column          | column_name                | data_type | description                                                 |
|-----------|---------------------|----------------------------|-----------|-------------------------------------------------------------|
|           |                     | production_order_uuid      | STRING    | Unique Generated Id                                         |
|           |                     | production_order_key       | STRING    | Production order Key                                        |
| AFKO      | MANDT               | client                     | STRING    | Client                                                      |
| AFKO      | AUFNR               | order_number               | STRING    | Order Number                                                |
| AFPO      | POSNR               | order_item_no              | STRING    | Order item number                                           |
|           |                     | material_uuid              | STRING    | Material Dimension Unique Generated Id                      |
|           |                     | material_key               | STRING    | Material key from Material Dimension                        |
|           |                     | plant_uuid                 | STRING    | Plant Dimension Unique Generated Id                         |
|           |                     | plant_key                  | STRING    | Plant key from Plant Dimension                              |
|           |                     | customer_uuid              | STRING    | Customer Dimension Unique Generated Id                      |
|           |                     | customer_key               | STRING    | Customer Key from Customer Dimension                        |
|           |                     | company_code_uuid          | STRING    | Unique Generated Id                                         |
|           |                     | company_code_key           | STRING    | Unique Generated Id                                         |
|           |                     | storage_location_uuid      | STRING    | Storage location Dimension Unique Generated Id              |
|           |                     | storage_location_key       | STRING    | Storage location key from Storage location Dimension        |
| AFKO      | GLTRP               | basic_fin_date             | DATE      | Basic finish date                                           |
| AFKO      | GSTRP               | bas_start_date             | DATE      | Basic Start Date                                            |
| AFKO      | FTRMS               | release                    | DATE      | Scheduled release date                                      |
| AFKO      | GLTRS               | sched_finish               | DATE      | Scheduled finish                                            |
| AFKO      | GSTRS               | sched_start                | DATE      | Scheduled start                                             |
| AFKO      | GSTRI               | actual_start               | DATE      | Actual start date                                           |
| AFKO      | GETRI               | actual_finish              | DATE      | Confirmed Order Finish Date                                 |
| AFKO      | GLTRI               | actual_finish_1            | DATE      | Actual finish date                                          |
| AFKO      | FTRMI               | actual_release             | DATE      | Actual release date                                         |
| AFKO      | FTRMP               | planned_release            | DATE      | Planned Release Date                                        |
| AFKO      | RSNUM               | reservation_number         | STRING    | Number of reservation/dependent requirements                |
| AFKO      | GASMG               | total_scrap                | NUMERIC   | Total Scrap Quantity in the Order                           |
| AFKO      | GAMNG               | target_quantity            | NUMERIC   | Total Order Quantity                                        |
| AFKO      | GMEIN               | base_unit                  | STRING    | Base Unit of Measure                                        |
| AFKO      | PLNBEZ              | material                   | STRING    | Material Number                                             |
| AFKO      | PLNTY               | task_list_type             | STRING    | Task List Type                                              |
| AFKO      | PLNNR               | group_list                 | STRING    | Key for Task List Group                                     |
| AFKO      | PLNAW               | application                | STRING    | Application of the task list                                |
| AFKO      | PLNAL               | group_counter              | STRING    | Group Counter                                               |
| AFKO      | PVERW               | usage                      | STRING    | Task list usage                                             |
| AFKO      | PLAUF               | explosion_date             | DATE      | Date for Routing Explosion                                  |
| AFKO      | PLSVB               | lot_size_to                | NUMERIC   | Maximum Lot Size                                            |
| AFKO      | PLNME               | task_list_unit             | STRING    | Task List Unit of Measure                                   |
| AFKO      | PLSVN               | lot_size_from              | NUMERIC   | Minimum Lot Size                                            |
| AFKO      | PDATV               | valid_from                 | DATE      | Valid-From Date                                             |
| AFKO      | PAENR               | change_number              | STRING    | Change Number                                               |
| AFKO      | PLGRP               | planner_group              | STRING    | Responsible Planner Group or Department                     |
| AFKO      | LODIV               | lot_size_div               | NUMERIC   | Lot size divisor                                            |
| AFKO      | STLTY               | bom_category               | STRING    | BOM category                                                |
| AFKO      | STLBEZ              | material_1                 | STRING    | Material Number                                             |
| AFKO      | STLST               | bom_status                 | STRING    | Bill of Material Status                                     |
| AFKO      | STLNR               | bom                        | STRING    | Bill of Material                                            |
| AFKO      | SDATV               | valid_from_1               | DATE      | Valid-From Date                                             |
| AFKO      | SBMNG               | base_quantity              | NUMERIC   | Base quantity                                               |
| AFKO      | SBMEH               | base_unit_1                | STRING    | Base Unit of Measure                                        |
| AFKO      | SAENR               | change_number_1            | STRING    | Change Number                                               |
| AFKO      | STLAL               | alternative                | STRING    | Alternative BOM                                             |
| AFKO      | STLAN               | usage_1                    | STRING    | BOM Usage                                                   |
| AFKO      | SLSVN               | from_lot_size              | NUMERIC   | From Lot Size                                               |
| AFKO      | SLSBS               | to_lot_size                | NUMERIC   | To Lot Size                                                 |
| AFKO      | AUFLD               | bom_expl_date              | DATE      | Date of BOM Explosion/Routing Transfer                      |
| AFKO      | DISPO               | mrp_controller             | STRING    | MRP controller for the order                                |
| AFKO      | AUFPL               | plan_no_f_oper             | STRING    | Routing number of operations in the order                   |
| AFKO      | FEVOR               | prodn_supervisor           | STRING    | Production Supervisor                                       |
| AFKO      | FHORI               | schedmargin_key            | STRING    | Scheduling Margin Key for Floats                            |
| AFKO      | TERKZ               | scheduling_type            | STRING    | Scheduling type                                             |
| AFKO      | REDKZ               | reduction_ind              | STRING    | Reduction indicator for scheduling                          |
| AFKO      | APRIO               | priority                   | STRING    | Order priority                                              |
| AFKO      | NTZUE               | network                    | STRING    | Superior network number                                     |
| AFKO      | VORUE               | superior_act               | STRING    | Superior activity                                           |
| AFKO      | PROFID              | network_profile            | STRING    | Network Profile                                             |
| AFKO      | VORGZ               | float_bef_prod             | STRING    | Float before production (in days)                           |
| AFKO      | SICHZ               | float_aft_prod             | STRING    | Float after production (in days)                            |
| AFKO      | FREIZ               | release_period             | STRING    | Release period (in days)                                    |
| AFKO      | UPTER               | dates_changed              | STRING    | Indicator: Change to Scheduled Dates                        |
| AFKO      | BEDID               | capacity_requirement       | STRING    | ID of the Capacity Requirements Record                      |
| AFKO      | PRONR               | project_def                | STRING    | Project definition                                          |
| AFKO      | ZAEHL               | counter                    | STRING    | Internal counter                                            |
| AFKO      | MZAEHL              | counter_1                  | STRING    | Internal counter                                            |
| AFKO      | ZKRIZ               | add_crit_countr            | STRING    | Counter for additional criteria                             |
| AFKO      | PRUEFLOS            | inspection_lot             | STRING    | Inspection Lot Number                                       |
| AFKO      | KLVARP              | plnd_costing_variant       | STRING    | Costing Variant for Planned Costs                           |
| AFKO      | KLVARI              | act_costing_variant        | STRING    | Costing Variant For Actual Costs                            |
| AFKO      | RGEKZ               | backflushing               | STRING    | Indicator: Backflushing for order                           |
| AFKO      | PLART               | sched_basis                | STRING    | Basis for scheduling                                        |
| AFKO      | FLG_AOB             | ind_relshp_data            | STRING    | Indicator: relationships                                    |
| AFKO      | FLG_ARBEI           | ind_work                   | STRING    | Indicator: Default value work is relevant                   |
| AFKO      | GLTPP               | finish_date                | DATE      | Finish date (forecast)                                      |
| AFKO      | GSTPP               | start_date                 | DATE      | Forecast start date                                         |
| AFKO      | GLTPS               | finish_date_1              | DATE      | Scheduled forecast finish                                   |
| AFKO      | GSTPS               | start_date_1               | DATE      | Scheduled forecast start                                    |
| AFKO      | FTRPS               | release_1                  | DATE      | Scheduled release date (forecast)                           |
| AFKO      | RDKZP               | reduction_ind_1            | STRING    | Reduction indicator for scheduling (forecast)               |
| AFKO      | TRKZP               | sched_type_for             | STRING    | Scheduling type (forecast)                                  |
| AFKO      | RUECK               | confirmation               | STRING    | Completion confirmation number for the operation            |
| AFKO      | RMZHL               | counter_2                  | STRING    | Internal counter                                            |
| AFKO      | IGMNG               | confirmed_yield            | NUMERIC   | Confirmed Yield Quantity From Order Confirmation            |
| AFKO      | RATID               | rate_id                    | STRING    | -INVALID FOR S/4- Index for the rslts of schedg prod. rates |
| AFKO      | GROID               | rough_sched_id             | STRING    | -INVALID FOR S/4- Index for rough scheduling results        |
| AFKO      | CUOBJ               | int_object_no              | STRING    | Configuration (internal object number)                      |
| AFKO      | GLUZS               | finish_time                | TIME      | Scheduled finish time                                       |
| AFKO      | GSUZS               | schedstarttime             | TIME      | Scheduled Start (Time)                                      |
| AFKO      | REVLV               | revision_level             | STRING    | Revision level                                              |
| AFKO      | RSHTY               | object_type                | STRING    | Object types of the CIM resource                            |
| AFKO      | RSHID               | object_id                  | STRING    | Object ID of the resource                                   |
| AFKO      | RSNTY               | object_type_1              | STRING    | Object types of the CIM resource                            |
| AFKO      | RSNID               | object_id_1                | STRING    | Object ID of the resource                                   |
| AFKO      | NAUTERM             | no_auto_cost               | STRING    | Indicator: Do not schedule automatically                    |
| AFKO      | NAUCOST             | noautomatcost              | STRING    | Indicator: Do not cost automatically                        |
| AFKO      | STUFE               | level                      | NUMERIC   | Level (in multi-level BOM explosions)                       |
| AFKO      | WEGXX               | path                       | NUMERIC   | Path (for multi-level BOM explosions)                       |
| AFKO      | VWEGX               | path_1                     | NUMERIC   | Path (for multi-level BOM explosions)                       |
| AFKO      | ARSNR               | reservation_1              | STRING    | Number of reservation/dependent requirements                |
| AFKO      | ARSPS               | order_item_no_poh          | STRING    | Order item number                                           |
| AFKO      | MAUFNR              | superior_order             | STRING    | Number of Superior Order                                    |
| AFKO      | LKNOT               | left_node                  | STRING    | Left node in collective order                               |
| AFKO      | RKNOT               | right_node                 | STRING    | Right node of a collective order                            |
| AFKO      | PRODNET             | collective_order           | STRING    | Order is Part of Collective Order                           |
| AFKO      | IASMG               | confirmed_scrap            | NUMERIC   | Confirmed Scrap Quantity From Order Confirmation            |
| AFKO      | ABARB               | processing                 | STRING    | Confirmation: Degree of processing                          |
| AFKO      | AUFNT               | subnetwork_of              | STRING    | Number of superior network                                  |
| AFKO      | AUFPT               | plan_no_f_oper_1           | STRING    | Routing number of operations in the order                   |
| AFKO      | APLZT               | counter_3                  | STRING    | General counter for order                                   |
| AFKO      | NO_DISP             | eff_mat_plng               | STRING    | Effective for Materials Planning                            |
| AFKO      | CSPLIT              | apportionment              | STRING    | Apportionment Structure                                     |
| AFKO      | AENNR               | change_number_2            | STRING    | Change Number                                               |
| AFKO      | CY_SEQNR            | sequence_number            | STRING    | Sequence Number Order                                       |
| AFKO      | BREAKS              | exact_breaks               | STRING    | Indicator:  Scheduling allowing for breaks                  |
| AFKO      | VORGZ_TRM           | float_bef_prod_1           | NUMERIC   | Scheduled float before production in days                   |
| AFKO      | SICHZ_TRM           | flt_after_prod             | NUMERIC   | Scheduled float after production in days                    |
| AFKO      | TRMDT               | scheduled_on               | DATE      | Date of the Last Scheduling                                 |
| AFKO      | GLUZP               | basic_fin_time             | TIME      | Basic Finish (Time)                                         |
| AFKO      | GSUZP               | start_time                 | TIME      | Basic Start (Time)                                          |
| AFKO      | GSUZI               | actualstart                | TIME      | Actual start time                                           |
| AFKO      | GEUZI               | actual_finish_2            | TIME      | Confirmed Order Finish (Time)                               |
| AFKO      | GLUPP               | finish_time_1              | TIME      | Forecast finish (time)                                      |
| AFKO      | GSUPP               | start_time_1               | TIME      | Forecast start (time)                                       |
| AFKO      | GLUPS               | finish_time_2              | TIME      | Scheduled forecast finish time                              |
| AFKO      | GSUPS               | sched_start_1              | TIME      | Scheduled start time (Forecast)                             |
| AFKO      | CHSCH               | search_proced              | STRING    | Search procedure for batch determination                    |
| AFKO      | KAPT_VORGZ          | rempreprodfloat            | STRING    | Float (bef. production) remaining after finite scheduling   |
| AFKO      | KAPT_SICHZ          | remaining_float            | STRING    | Remaining float after finite scheduling                     |
| AFKO      | LEAD_AUFNR          | leading_order              | STRING    | Leading Order in Current Processing                         |
| AFKO      | PNETSTARTD          | start                      | DATE      | Outline start of collective network (date)                  |
| AFKO      | PNETSTARTT          | start_1                    | TIME      | Start time of a collective order                            |
| AFKO      | PNETENDD            | finish                     | DATE      | Outline finish of collective order (date)                   |
| AFKO      | PNETENDT            | finish_1                   | TIME      | Outline finish time                                         |
| AFKO      | KBED                | no_cap_reqmts              | STRING    | Indicator: Do not Create Capacity Requirements              |
| AFKO      | KKALKR              | costcompind                | STRING    | Indicator: Components will not be costed                    |
| AFKO      | SFCPF               | prod_sched_profile         | STRING    | Production Scheduling Profile                               |
| AFKO      | RMNGA               | confirmed_rework           | NUMERIC   | Total Confirmed Rework Quantity                             |
| AFKO      | GSBTR               | commitment_date            | DATE      | Total Commitment Date                                       |
| AFKO      | VFMNG               | committed                  | NUMERIC   | Committed quantity for order acc. to ATP check components   |
| AFKO      | NOPCOST             | no_planned_costs           | STRING    | Do not calculate planned costs for order                    |
| AFKO      | NETZKONT            | account_assgnt             | STRING    | Indicator for the account assignment of a network(hdr/act.) |
| AFKO      | ATRKZ               | request_id                 | STRING    | Request ID                                                  |
| AFKO      | OBJTYPE             | changeind                  | STRING    | Change indicator                                            |
| AFKO      | CH_PROC             | changeproctype             | STRING    | Process that has lead to the change of an object            |
| AFKO      | KAPVERSA            | version                    | STRING    | Version of Available Capacity                               |
| AFKO      | COLORDPROC          | co_processing              | STRING    | Collective order with/without automatic goods movement      |
| AFKO      | KZERB               | proj_summ_mastda           | STRING    | Indicator: Project summarization via master data charact.   |
| AFKO      | CONF_KEY            | identical_obj              | STRING    | Identical object                                            |
| AFKO      | ST_ARBID            | object_id_2                | STRING    | Object ID                                                   |
| AFKO      | VSNMR_V             | version_1                  | STRING    | Sales document version number                               |
| AFKO      | TERHW               | sched_note                 | STRING    | Scheduling note from order scheduling                       |
| AFKO      | SPLSTAT             | split_status               | STRING    | Status of an order in a split hierarchy                     |
| AFKO      | COSTUPD             | update_costs               | STRING    | Costs are updated                                           |
| AFKO      | MAX_GAMNG           | maximum_qty                | NUMERIC   | Maximum Value of Total Order Quantity After Distribution    |
| AFKO      | MES_ROUTINGID       | mes_routing                | STRING    | Key of a Routing from an ME System                          |
| AFKO      | TL_VERSN            | routing_version            | STRING    | Routing Version                                             |
| AFKO      | BOM_VERSN           | bom_version                | STRING    | BOM Version                                                 |
| AFKO      | FLEXIBLE_PROCESSING | flexible                   | STRING    | Flexible Processing                                         |
| AFKO      | ADPSP               | pm_ps_ref_element          | STRING    | PM/PS Reference Element                                     |
| AFKO      | RMANR               | sales_document             | STRING    | Sales and Distribution Document Number                      |
| AFKO      | POSNR_RMA           | item                       | STRING    | Item number of the SD document                              |
| AFKO      | POSNV_RMA           | item_1                     | STRING    | Item number of the SD document                              |
| AFKO      | CFB_MAXLZ           | max_storage                | NUMERIC   | Maximum Storage Period                                      |
| AFKO      | CFB_LZEIH           | time_unit                  | STRING    | Unit for maximum storage period                             |
| AFKO      | CFB_ADTDAYS         | additional_days            | NUMERIC   | Additional Days                                             |
| AFKO      | CFB_DATOFM          | date_of_manuf              | DATE      | Date of Manufacture                                         |
| AFKO      | CFB_BBDPI           | bbd_sled                   | DATE      | Best-Before Date (BBD)/ Shelf Life Expiration Date (SLED)   |
| AFKO      | OIHANTYP            | handling_type              | STRING    | Excise Duty Handling Type                                   |
| AFKO      | FSH_MPROD_ORD       | master_prod_ord            | STRING    | Master Production Order Number                              |
| AFKO      | FLG_BUNDLE          | bundle                     | STRING    | Indicates bundle information maintained                     |
| AFKO      | MILL_RATIO          | adjustmt_factor            | INT64     | Factor for Quantity-Based Settlement                        |
| AFKO      | BMEINS              | base_unit_2                | STRING    | Base Unit of Measure                                        |
| AFKO      | BMENGE              | base_quantity_1            | NUMERIC   | Base quantity                                               |
| AFKO      | MILL_OC_ZUSKZ       | combination_ind            | STRING    | Combination Indicator                                       |
| AUFK      | AUFNR               | order_number_aufk          | STRING    | Order Number                                                |
| AUFK      | AUART               | order_type                 | STRING    | Order Type                                                  |
| AUFK      | AUTYP               | order_category             | STRING    | Order category                                              |
| AUFK      | REFNR               | order_1                    | STRING    | Reference Order Number                                      |
| AUFK      | ERNAM               | entered_by                 | STRING    | Entered By                                                  |
| AUFK      | ERDAT               | created_on                 | DATE      | Created On                                                  |
| AUFK      | AENAM               | changed_by                 | STRING    | Last Changed By                                             |
| AUFK      | AEDAT               | changed_on                 | DATE      | Change Date for Order Master                                |
| AUFK      | KTEXT               | description                | STRING    | Description                                                 |
| AUFK      | LTEXT               | long_txt_exists            | STRING    | Long Text Exists                                            |
| AUFK      | BUKRS               | company_code               | STRING    | Company Code                                                |
| AUFK      | WERKS               | plant                      | STRING    | Plant                                                       |
| AUFK      | GSBER               | business_area              | STRING    | Business Area                                               |
| AUFK      | KOKRS               | co_area                    | STRING    | Controlling Area                                            |
| AUFK      | CCKEY               | cost_collector             | STRING    | Cost Collector Key                                          |
| AUFK      | KOSTV               | resp_cost_cntr             | STRING    | Responsible cost center                                     |
| AUFK      | STORT               | location                   | STRING    | Location                                                    |
| AUFK      | SOWRK               | location_plant             | STRING    | Location Plant                                              |
| AUFK      | ASTKZ               | statistical                | STRING    | Identifier for Statistical Order                            |
| AUFK      | WAERS               | currency                   | STRING    | Order Currency                                              |
| AUFK      | ASTNR               | status                     | STRING    | Order Status                                                |
| AUFK      | STDAT               | status_change              | DATE      | Date of Last Status Change                                  |
| AUFK      | ESTNR               | reached_status             | STRING    | Status Reached so Far                                       |
| AUFK      | PHAS0               | created                    | STRING    | Phase Order Created                                         |
| AUFK      | PHAS1               | released                   | STRING    | Phase Order Released                                        |
| AUFK      | PHAS2               | completed                  | STRING    | Phase Order Completed                                       |
| AUFK      | PHAS3               | closed                     | STRING    | Phase Order Closed                                          |
| AUFK      | PDAT1               | planned_release_aufk       | DATE      | Planned release date                                        |
| AUFK      | PDAT2               | plannedcompltn             | DATE      | Planned completion date                                     |
| AUFK      | PDAT3               | planned_clo_dat            | DATE      | Planned closing date                                        |
| AUFK      | IDAT1               | release_aufk               | DATE      | Release Date                                                |
| AUFK      | IDAT2               | tech_completion            | DATE      | Technical Completion Date                                   |
| AUFK      | IDAT3               | close                      | DATE      | Close Date                                                  |
| AUFK      | OBJID               | object_id_aufk             | STRING    | Object ID                                                   |
| AUFK      | VOGRP               | distrangroup               | STRING    | Group of Disallowed Transactions                            |
| AUFK      | LOEKZ               | deletion_flag              | STRING    | Deletion Flag                                               |
| AUFK      | PLGKZ               | plan_line_items            | STRING    | Identifier for Planning with Line Items                     |
| AUFK      | KVEWE               | usage_aufk                 | STRING    | Usage of the condition table                                |
| AUFK      | KAPPL               | application_aufk           | STRING    | Application                                                 |
| AUFK      | KALSM               | costing_sheet              | STRING    | Costing Sheet                                               |
| AUFK      | ZSCHL               | overhead_key               | STRING    | Overhead key                                                |
| AUFK      | ABKRS               | process_group              | STRING    | Processing group                                            |
| AUFK      | KSTAR               | settlement_ce              | STRING    | Settlement Cost Element                                     |
| AUFK      | KOSTL               | cost_center                | STRING    | Cost Center for Basic Settlement                            |
| AUFK      | SAKNR               | g_l_account                | STRING    | G/L Account for Basic Settlement                            |
| AUFK      | SETNM               | allocation_set             | STRING    | Allocation Set                                              |
| AUFK      | CYCLE               | cctr_true_post             | STRING    | Cost center to which costs are actually posted              |
| AUFK      | SDATE               | valid_from_aufk            | DATE      | Start Date                                                  |
| AUFK      | SEQNR               | sequence_number_aufk       | STRING    | Sequence Number                                             |
| AUFK      | USER0               | applicant                  | STRING    | Applicant                                                   |
| AUFK      | USER1               | telephone                  | STRING    | Applicants telephone number                                 |
| AUFK      | USER2               | person_resp                | STRING    | Person Responsible                                          |
| AUFK      | USER3               | telephone_1                | STRING    | Telephone number of person in charge                        |
| AUFK      | USER4               | estimated_costs            | NUMERIC   | Estimated total costs of order                              |
| AUFK      | USER5               | applicdate                 | DATE      | Application date                                            |
| AUFK      | USER6               | department                 | STRING    | Department                                                  |
| AUFK      | USER7               | work_start                 | DATE      | Work Start                                                  |
| AUFK      | USER8               | end_of_work                | DATE      | End of Work                                                 |
| AUFK      | USER9               | work_permit                | STRING    | Identifier for work permit issued                           |
| AUFK      | OBJNR               | object_number              | STRING    | Object number                                               |
| AUFK      | PRCTR               | profit_center              | STRING    | Profit Center                                               |
| AUFK      | PSPEL               | wbs_element                | STRING    | Work breakdown structure element (WBS element)              |
| AUFK      | AWSLS               | variance_key               | STRING    | Variance Key                                                |
| AUFK      | ABGSL               | ra_key                     | STRING    | Results Analysis Key                                        |
| AUFK      | EB_POST             | event_based_posting        | STRING    | Event-Based Posting                                         |
| AUFK      | TXJCD               | tax_jur                    | STRING    | Tax Jurisdiction                                            |
| AUFK      | FUNC_AREA           | functional_area            | STRING    | Functional Area                                             |
| AUFK      | SCOPE               | object_class               | STRING    | Object Class                                                |
| AUFK      | PLINT               | integ_planning             | STRING    | Indicator for Integrated Planning                           |
| AUFK      | KDAUF               | sales_order                | STRING    | Sales Order Number                                          |
| AUFK      | KDPOS               | sales_ord_item             | STRING    | Item number in Sales Order                                  |
| AUFK      | AUFEX               | ext_order_no               | STRING    | External order number                                       |
| AUFK      | IVPRO               | invest_profile             | STRING    | Investment Measure Profile                                  |
| AUFK      | LOGSYSTEM           | logical_system             | STRING    | Logical System                                              |
| AUFK      | FLG_MLTPS           | multiple_items             | STRING    | Order Has Multiple Items                                    |
| AUFK      | ABUKR               | req_co_code                | STRING    | Requesting company code                                     |
| AUFK      | AKSTL               | req_cost_center            | STRING    | Requesting cost center                                      |
| AUFK      | SIZECL              | scale                      | STRING    | Scale of investment objects                                 |
| AUFK      | IZWEK               | invest_reason              | STRING    | Reason for Investment                                       |
| AUFK      | UMWKZ               | envir_invest               | STRING    | Reason for Environmental Investment                         |
| AUFK      | KSTEMPF             | cost_collector_1           | STRING    | Indicator: Direct cost collector                            |
| AUFK      | ZSCHM               | interest_prof              | STRING    | Interest Profile for Project/Order Interest Calculation     |
| AUFK      | PKOSA               | cost_collector_2           | STRING    | Cost Collector for Production Process                       |
| AUFK      | ANFAUFNR            | req_order                  | STRING    | Requesting order                                            |
| AUFK      | PROCNR              | prod_proc_no               | STRING    | Production Process                                          |
| AUFK      | PROTY               | process_cat                | STRING    | Process Category (Procurement/Consumption)                  |
| AUFK      | RSORD               | refurbishment              | STRING    | Refurbishment order indicator (PM)                          |
| AUFK      | BEMOT               | acctindicator              | STRING    | Accounting Indicator                                        |
| AUFK      | ADRNRA              | address_number             | STRING    | Address Number                                              |
| AUFK      | ERFZEIT             | time_created               | TIME      | Time created                                                |
| AUFK      | AEZEIT              | changed_at                 | TIME      | Changed At                                                  |
| AUFK      | CSTG_VRNT           | costing_variant            | STRING    | Costing Variant                                             |
| AUFK      | COSTESTNR           | cost_estimateno            | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure        |
| AUFK      | VERAA_USER          | personresponsible          | STRING    | Person Responsible for CO Internal Order                    |
| AUFK      | EEW_AUFK_PS_DUMMY   | dummy_function_in_length_1 | STRING    | Dummy function in length 1                                  |
| AUFK      | VNAME               | joint_venture              | STRING    | Joint venture                                               |
| AUFK      | RECID               | recovery_indic             | STRING    | Recovery Indicator                                          |
| AUFK      | ETYPE               | equity_type                | STRING    | Equity type                                                 |
| AUFK      | OTYPE               | jv_object_type             | STRING    | Joint Venture Object Type                                   |
| AUFK      | JV_JIBCL            | jib_jibe_class             | STRING    | JIB/JIBE Class                                              |
| AUFK      | JV_JIBSA            | jib_jibe_sbclsa            | STRING    | JIB/JIBE Subclass A                                         |
| AUFK      | JV_OCO              | or_cost_obj                | STRING    | JV original cost object                                     |
| AUFK      | CPD_UPDAT           | time_stamp                 | NUMERIC   | Time Stamp                                                  |
| AUFK      | __CUM__INDCU        | cu_order                   | STRING    | CU: Order is Used for Compatible Units                      |
| AUFK      | __CUM__CMNUM        | cm_number                  | STRING    | CU: Construction Measure Number                             |
| AUFK      | __CUM__AUEST        | auto_est_costs             | STRING    | CU: Automatic Copy of Estimated Costs                       |
| AUFK      | __CUM__DESNUM       | cu_design_no               | STRING    | CU: Design Number                                           |
| AUFK      | AD01PROFNR          | dip_profile                | STRING    | Dynamic Item Processor Profile                              |
| AUFK      | VAPLZ               | main_workctr               | STRING    | Main work center for maintenance tasks                      |
| AUFK      | WAWRK               | plnt_workcenter            | STRING    | Plant associated with main work center                      |
| AUFK      | FERC_IND            | reg_indicator              | STRING    | Regulatory indicator                                        |
| AUFK      | CLAIM_CONTROL       | clm_creation_cntrl         | STRING    | Claim creation control indicator                            |
| AUFK      | UPDATE_NEEDED       | claim_inconsistent         | STRING    | Claim inconsistency with order indicator                    |
| AUFK      | UPDATE_CONTROL      | claim_upd_trigger          | STRING    | Claim update trigger point from service order               |
| AFPO      | AUFNR               | order_number_afpo          | STRING    | Order Number                                                |
| AFPO      | PSOBS               | spec_procuremt             | STRING    | Special procurement type                                    |
| AFPO      | QUNUM               | quota_arr                  | STRING    | Number of quota arrangement                                 |
| AFPO      | QUPOS               | quota_arr_item             | STRING    | Quota arrangement item                                      |
| AFPO      | PROJN               | wbs_element_afpo           | STRING    | Work breakdown structure element (WBS element)              |
| AFPO      | PLNUM               | planned_order              | STRING    | Planned Order                                               |
| AFPO      | STRMP               | plnd_start_date            | DATE      | Planned Order Planned Start Date                            |
| AFPO      | ETRMP               | plnd_open_date             | DATE      | Opening Date of the Planned Order                           |
| AFPO      | KDAUF               | sales_order_afpo           | STRING    | Sales Order                                                 |
| AFPO      | KDPOS               | sales_ord_item_afpo        | STRING    | Sales Order Item                                            |
| AFPO      | KDEIN               | sorder_schedule            | STRING    | Delivery schedule for sales order                           |
| AFPO      | BESKZ               | procurement                | STRING    | Procurement Type                                            |
| AFPO      | PSAMG               | planned_scrap              | NUMERIC   | Order Item Planned Scrap Quantity                           |
| AFPO      | PSMNG               | total_quantity             | NUMERIC   | Order Item Planned Total Quantity                           |
| AFPO      | WEMNG               | gr_quantity                | NUMERIC   | Quantity of Goods Received for the Order Item               |
| AFPO      | IAMNG               | expectvarrecipt            | NUMERIC   | Expected Surplus/Deficit For Goods Receipt                  |
| AFPO      | AMEIN               | order_un                   | STRING    | Unit of measure for in-house production                     |
| AFPO      | MEINS               | base_unit_afpo             | STRING    | Base Unit of Measure                                        |
| AFPO      | MATNR               | material_afpo              | STRING    | Material Number for Order                                   |
| AFPO      | PAMNG               | scrap_quantity             | NUMERIC   | Planned Scrap Quantity                                      |
| AFPO      | PGMNG               | order_quantity             | NUMERIC   | Planned Total Order Quantity                                |
| AFPO      | KNTTP               | acct_assgmt_cat            | STRING    | Account Assignment Category                                 |
| AFPO      | TPAUF               | partial_convrs             | STRING    | Indicator: Partial Conversion                               |
| AFPO      | LTRMI               | delivery_date              | DATE      | Actual Delivery/Finish Date                                 |
| AFPO      | LTRMP               | planned_delivery           | DATE      | Delivery Date From Planned Order                            |
| AFPO      | KALNR               | cost_estimateno_afpo       | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure        |
| AFPO      | UEBTO               | overdeliv_tol              | NUMERIC   | Overdelivery Tolerance                                      |
| AFPO      | UEBTK               | unlimited                  | STRING    | Indicator: Unlimited Overdelivery Allowed                   |
| AFPO      | UNTTO               | underdel_tol               | NUMERIC   | Underdelivery Tolerance                                     |
| AFPO      | INSMK               | stock_type                 | STRING    | Stock Type                                                  |
| AFPO      | WEPOS               | goods_receipt              | STRING    | Goods Receipt Indicator                                     |
| AFPO      | BWTAR               | valuation_type             | STRING    | Valuation Type                                              |
| AFPO      | BWTTY               | valuation_cat              | STRING    | Valuation Category                                          |
| AFPO      | PWERK               | planning_plant             | STRING    | Planning Plant for an Order                                 |
| AFPO      | LGORT               | stor_loc                   | STRING    | Storage location                                            |
| AFPO      | UMREZ               | counter_afpo               | NUMERIC   | Numerator for Conversion to Base Units of Measure           |
| AFPO      | UMREN               | denominator                | NUMERIC   | Denominator for conversion to base units of measure         |
| AFPO      | WEBAZ               | gr_proc_time               | NUMERIC   | Goods Receipt Processing Duration in Days                   |
| AFPO      | ELIKZ               | deliv_compl                | STRING    | Delivery Completed Indicator                                |
| AFPO      | SAFNR               | rs_header                  | STRING    | Run schedule header number                                  |
| AFPO      | VERID               | prod_version               | STRING    | Production Version                                          |
| AFPO      | SERNR               | bom_expl_number            | STRING    | BOM explosion number                                        |
| AFPO      | TECHS               | standardvariant            | STRING    | Parameter Variant/Standard Variant                          |
| AFPO      | DWERK               | plant_afpo                 | STRING    | Plant                                                       |
| AFPO      | DAUTY               | order_category_afpo        | STRING    | Order category                                              |
| AFPO      | DAUAT               | order_type_afpo            | STRING    | Order Type                                                  |
| AFPO      | DGLTP               | basic_fin_date_afpo        | DATE      | Basic finish date                                           |
| AFPO      | DGLTS               | sched_finish_afpo          | DATE      | Scheduled finish                                            |
| AFPO      | DFREI               | release_ind                | STRING    | Indicator: Order released/partially released (for MRP)      |
| AFPO      | DNREL               | not_relevant               | STRING    | Indicator: Order Item is not Relevant for MRP               |
| AFPO      | VERTO               | distribution               | STRING    | MRP Distribution Key                                        |
| AFPO      | SOBKZ               | special_stock              | STRING    | Special Stock Indicator                                     |
| AFPO      | KZVBR               | consumption                | STRING    | Consumption posting                                         |
| AFPO      | WEWRT               | gr_value                   | NUMERIC   | Value of goods received in local currency                   |
| AFPO      | WEUNB               | gr_non_valuated            | STRING    | Goods Receipt, Non-Valuated                                 |
| AFPO      | ABLAD               | unloading_point            | STRING    | Unloading Point                                             |
| AFPO      | WEMPF               | recipient                  | STRING    | Goods recipient                                             |
| AFPO      | CHARG               | batch                      | STRING    | Batch Number                                                |
| AFPO      | GSBER               | business_area_afpo         | STRING    | Business Area                                               |
| AFPO      | WEAED               | gr_can_change              | STRING    | Indicator: Goods receipt indicator can be changed           |
| AFPO      | CUOBJ               | int_object_no_afpo         | STRING    | Configuration (internal object number)                      |
| AFPO      | KBNKZ               | kanban_indicat             | STRING    | Kanban Indicator                                            |
| AFPO      | ARSNR               | settle_reser_no            | STRING    | Settlement reservation number                               |
| AFPO      | ARSPS               | settle_item_no             | STRING    | Item number of the settlement reservation                   |
| AFPO      | KRSNR               | reservation_number_afpo    | STRING    | Number of reservation/dependent requirements                |
| AFPO      | KRSPS               | item_no                    | STRING    | Item Number of Reservation / Dependent Requirements         |
| AFPO      | KCKEY               | cost_collector_afpo        | STRING    | Cost Collector Key                                          |
| AFPO      | RTP01               | repetitive_mfg             | STRING    | Cost collector for repetitive manufacturing                 |
| AFPO      | RTP02               | kanban                     | STRING    | Cost collector for KANBAN                                   |
| AFPO      | RTP03               | sales_ord_stock            | STRING    | Cost collector for valuated sales order stock               |
| AFPO      | RTP04               | external_ppc               | STRING    | Cost collector for external PPC                             |
| AFPO      | KSVON               | valid_from_afpo            | DATE      | Cost collector valid from                                   |
| AFPO      | KSBIS               | valid_to                   | DATE      | Cost collector valid to                                     |
| AFPO      | OBJNP               | object_number_afpo         | STRING    | Object number                                               |
| AFPO      | NDISR               | not_relevant_1             | STRING    | Ind.: Material in order item is not relevant for MRP        |
| AFPO      | VFMNG               | committed_afpo             | NUMERIC   | Committed quantity for order acc. to ATP check components   |
| AFPO      | GSBTR               | commitment_date_afpo       | DATE      | Total Commitment Date                                       |
| AFPO      | KZAVC               | type_avail_chck            | STRING    | Indicator for type of availability check                    |
| AFPO      | KZBWS               | valuation                  | STRING    | Valuation of Special Stock                                  |
| AFPO      | XLOEK               | deletion_flag_afpo         | STRING    | Deletion Flag                                               |
| AFPO      | SERNP               | serialnoprofile            | STRING    | Serial Number Profile                                       |
| AFPO      | ANZSN               | no_serial_no               | INT64     | Number of serial numbers                                    |
| AFPO      | OBJTYPE             | changeind_afpo             | STRING    | Change indicator                                            |
| AFPO      | CH_PROC             | changeproctype_afpo        | STRING    | Process that has lead to the change of an object            |
| AFPO      | FXPRU               | fixed_price_co_prod        | STRING    | Fixed-Price Co-Product                                      |
| AFPO      | CUOBJ_ROOT          | int_object_no_1            | STRING    | Configuration (internal object number)                      |
| AFPO      | BERID               | mrp_area                   | STRING    | MRP Area                                                    |
| AFPO      | TECHS_COPY          | standardvariant_1          | STRING    | Parameter Variant/Standard Variant                          |
| AFPO      | SGT_SCAT            | stock_segment              | STRING    | Stock Segment                                               |
| AFPO      | KUNNR2              | customer                   | STRING    | Customer Number                                             |
| AFPO      | FSH_SEASON_YEAR     | season_year                | STRING    | Season Year                                                 |
| AFPO      | FSH_SEASON          | season                     | STRING    | Season                                                      |
| AFPO      | FSH_COLLECTION      | collection                 | STRING    | Fashion Collection                                          |
| AFPO      | FSH_THEME           | theme                      | STRING    | Fashion Theme                                               |
| AFPO      | FSH_SALLOC_QTY      | allocated_stock            | NUMERIC   | Allocated Stock Quantity                                    |
| AFPO      | MILL_OC_AUFNR_U     | original_order             | STRING    | Number of original order                                    |
| AFPO      | MILL_OC_RUMNG       | confirmed_qty              | NUMERIC   | Confirmed Quantity for Item                                 |
| AFPO      | MILL_OC_SORT        | sequence                   | STRING    | Item Sequence                                               |
|           |                     | finalmd5key                | STRING    | MD5 key combining all columns                               |
|           |                     | input_last_update_date     | DATETIME  | Last Input read time                                        |
|           |                     | dw_active_indicator        | STRING    | Valid Indicator                                             |
|           |                     | dw_start_date              | DATETIME  | Record start date                                           |
|           |                     | dw_end_date                | DATETIME  | Record end date                                             |
|           |                     | dw_last_update_date        | DATETIME  | Record Inserted/Updated date                                |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms