
## Table Name : production_order_fact

|COLUMN NAME|DATA TYPE|description|Key Columns|production_orders|material_plant_data|material_production_planning|material_dimension|plant_dimension|customer_dimension|
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
|production_order_uuid|STRING|Unique Generated Id|MD5 value on production_order_key column| | | | | | |
|production_order_key|STRING|Production Order Key|order_number || ‘-’ || order_item_number| | | | | | |
|order_number|STRING|Order Number| |order_number| | | | | |
|order_type|STRING|Order Type| |order_type| | | | | |
|material_number|STRING|Material Number| | |material_number| | | | |
|plant|STRING|Plant| | |plant| | | | |
|customer_number|STRING|Customer Number| |customer_number| | | | | |
|material_uuid|STRING|Material Dimension unique id| | | | |material_uuid| | |
|plant_uuid|STRING|Plant Dimension unique id| | | | | |plant_uuid| |
|customer_uuid|STRING|Customer Dimension unique id| | | | | | |customer_uuid|
|material_key|STRING|Material key from Material Dimension| | |material_number || '-' || plant| |material_key| | |
|plant_key|STRING|Plant Key from Plant Dimension| | |plant| | |plant_key| |
|customer_key|STRING|Customer Key from Customer Dimension| | |customer_number| | | |customer_key|
|company_code|STRING|Company Code| |company_code| | | | | |
|created_on|DATE|Created On| |created_on| | | | | |
|change_date_for_order_master|DATE|Change Date for Order Master| |change_date_for_order_master| | | | | |
|maintenance_status|STRING|Maintenance status| | |maintenance_status| | | | |
|plant_level_deletion_flag|STRING|Flag Material for Deletion at Plant Level| | |plant_level_deletion_flag| | | | |
|valuation_category|STRING|Valuation Category| | |valuation_category| | | | |
|batch_management_indicator|STRING|Batch management indicator (internal)| | |batch_management_indicator| | | | |
|plant_specific_material_status|STRING|Plant-Specific Material Status| | |plant_specific_material_status| | | | |
|valid_from|DATE|Date from Which the Plant-Specific Material Status Is Valid| | |valid_from| | | | |
|abc_indicator|STRING|ABC Indicator| | |abc_indicator| | | | |
|critical_part|STRING|Indicator: Critical part| | |critical_part| | | | |
|purchasing_group|STRING|Purchasing Group| | |purchasing_group| | | | |
|unit_of_issue|STRING|Unit of issue| | |unit_of_issue| | | | |
|mrp_profile|STRING|Material: MRP profile| | |mrp_profile| | | | |
|mrp_type|STRING|MRP Type| | |mrp_type| | | | |
|mrp_controller_buyer|STRING|Indicator: MRP controller is buyer (deactivated)| | |mrp_controller_buyer| | | | |
|planned_deliv_time|NUMERIC|Planned Delivery Time in Days| | |planned_deliv_time| | | | |
|goods_receipt_processing_time|NUMERIC|Goods receipt processing time in days| | |goods_receipt_processing_time| | | | |
|period_indicator|STRING|Period Indicator| | |period_indicator| | | | |
|assembly_scrap|NUMERIC|Assembly scrap in percent| | |assembly_scrap| | | | |
|lot_sizing_procedure|STRING|Lot Sizing Procedure within Materials Planning| | |lot_sizing_procedure| | | | |
|procurement_type|STRING|Procurement Type| | |procurement_type| | | | |
|special_procurement_type|STRING|Special procurement type| | |special_procurement_type| | | | |
|dependent_requirements_indicator|STRING|Dependent requirements ind. for individual and coll. reqmts| | |dependent_requirements_indicator| | | | |
|storage_costs_code|STRING|Storage Costs Percentage Code| | |storage_costs_code| | | | |
|selection_method|STRING|Method for Selecting Alternative Bills of Material| | |selection_method| | | | |
|discontinuation_indicator|STRING|Discontinuation indicator| | |discontinuation_indicator| | | | |
|effective_out_date|DATE|Effective-Out Date| | |effective_out_date| | | | |
|follow_up_material|STRING|Follow-Up Material| | |follow_up_material| | | | |
|requirements_group|STRING|Indicator for Requirements Grouping| | |requirements_group| | | | |
|mixed_mrp_indicator|STRING|Mixed MRP indicator| | |mixed_mrp_indicator| | | | |
|scheduling_margin_key|STRING|Scheduling Margin Key for Floats| | |scheduling_margin_key| | | | |
|automatic_fixing_planned_orders|STRING|Indicator: automatic fixing of planned orders| | |automatic_fixing_planned_orders| | | | |
|automatic_release|STRING|Release indicator for production orders| | |automatic_release| | | | |
|backflush|STRING|Indicator: Backflush| | |backflush| | | | |
|processing_time|NUMERIC|Processing time| | |processing_time| | | | |
|setup_time|NUMERIC|Setup and teardown time| | |setup_time| | | | |
|interoperation_time|NUMERIC|Interoperation time| | |interoperation_time| | | | |
|in_house_production|NUMERIC|In-house production time| | |in_house_production| | | | |
|maximum_storage_period|NUMERIC|Maximum Storage Period| | |maximum_storage_period| | | | |
|time_unit|STRING|Unit for maximum storage period| | |time_unit| | | | |
|withdrawal_production_bin|STRING|Indicator: withdrawal of stock from production bin| | |withdrawal_production_bin| | | | |
|rough_cut_planning|STRING|Indicator: Material Included in Rough-Cut Planning| | |rough_cut_planning| | | | |
|overdelivery_tolerance_limit|NUMERIC|Overdelivery tolerance limit| | |overdelivery_tolerance_limit| | | | |
|unlimited_overdelivery_allowed|STRING|Indicator: Unlimited Overdelivery Allowed| | |unlimited_overdelivery_allowed| | | | |
|underdely_tolerance|NUMERIC|Underdelivery tolerance limit| | |underdely_tolerance| | | | |
|total_replenishment_lead_time|NUMERIC|Total replenishment lead time (in workdays)| | |total_replenishment_lead_time| | | | |
|replacement_part|STRING|Replacement part| | |replacement_part| | | | |
|surcharge_factor_percent|NUMERIC|Surcharge factor for cost in percent| | |surcharge_factor_percent| | | | |
|state_of_manufacture|STRING|State of manufacture| | |state_of_manufacture| | | | |
|stock_type|STRING|Stock Type| | |stock_type| | | | |
|sample_percentage|NUMERIC|Sample for quality inspection (in %) (deactivated)| | |sample_percentage| | | | |
|quarantine_period|NUMERIC|Quarantine period (deactivated)| | |quarantine_period| | | | |
|qm_control_key|STRING|Control Key for Quality Management in Procurement| | |qm_control_key| | | | |
|mean_inspection_duration|NUMERIC|Mean inspection duration (deactivated)| | |mean_inspection_duration| | | | |
|inspection_plan_indicator|STRING|Indicator for inspection plan (deactivated)| | |inspection_plan_indicator| | | | |
|documentation_required|STRING|Documentation required indicator| | |documentation_required| | | | |
|active_substance|NUMERIC|Active substance content (deactivated)| | |active_substance| | | | |
|inspection_interval|NUMERIC|Interval Until Next Recurring Inspection| | |inspection_interval| | | | |
|next_inspection|DATE|Date according to check sampling inspection (deactivated)| | |next_inspection| | | | |
|loading_group|STRING|Loading Group| | |loading_group| | | | |
|batch_management_requirement|STRING|Batch management requirement indicator| | |batch_management_requirement| | | | |
|quota_arrangement_usage|STRING|Quota arrangement usage| | |quota_arrangement_usage| | | | |
|service_level|NUMERIC|Service level| | |service_level| | | | |
|splitting_indicator|STRING|Splitting Indicator| | |splitting_indicator| | | | |
|plan_version|STRING|Plan Version| | |plan_version| | | | |
|object_type|STRING|Object Type| | |object_type| | | | |
|object_id|STRING|Object ID| | |object_id| | | | |
|availability_check|STRING|Checking Group for Availability Check| | |availability_check| | | | |
|fiscal_year_variant|STRING|Fiscal Year Variant| | |fiscal_year_variant| | | | |
|correction_factors|STRING|Indicator: take correction factors into account| | |correction_factors| | | | |
|shipping_setup_time|NUMERIC|Shipping setup time| | |shipping_setup_time| | | | |
|shipping_processing_time|NUMERIC|Shipping processing time| | |shipping_processing_time| | | | |
|delivery_cycle|STRING|Delivery cycle| | |delivery_cycle| | | | |
|source_of_supply|STRING|Source of Supply| | |source_of_supply| | | | |
|automatic_purchase_order|STRING|Indicator: “automatic purchase order allowed”| | |automatic_purchase_order| | | | |
|source_list|STRING|Indicator: Source list requirement| | |source_list| | | | |
|commodity_code|STRING|Commodity Code| | |commodity_code| | | | |
|country_of_origin|STRING|Country of Origin of Material (Non-Preferential Origin)| | |country_of_origin| | | | |
|region_of_origin|STRING|Region of Origin of Material (Non-Preferential Origin)| | |region_of_origin| | | | |
|commodity_code_unit|STRING|Unit of measure for commodity code (foreign trade)| | |commodity_code_unit| | | | |
|intrastat_material_group|STRING|Material Group for Intrastat| | |intrastat_material_group| | | | |
|planning_calendar|STRING|PPC Planning Calendar| | |planning_calendar| | | | |
|repetitive_manufacturing|STRING|Indicator: Repetitive Manufacturing Allowed| | |repetitive_manufacturing| | | | |
|planning_time_fence|STRING|Planning time fence| | |planning_time_fence| | | | |
|consumption_mode|STRING|Consumption mode| | |consumption_mode| | | | |
|backward_consumption_period|STRING|Consumption period: backward| | |backward_consumption_period| | | | |
|forward_consumption_period|STRING|Consumption period: forward| | |forward_consumption_period| | | | |
|version_indicator|STRING|Version Indicator| | |version_indicator| | | | |
|alternative_bom|STRING|Alternative BOM| | |alternative_bom| | | | |
|bom_usage|STRING|BOM Usage| | |bom_usage| | | | |
|task_list_group|STRING|Key for Task List Group| | |task_list_group| | | | |
|group_counter|STRING|Group Counter| | |group_counter| | | | |
|special_procurement_costing|STRING|Special Procurement Type for Costing| | |special_procurement_costing| | | | |
|production_unit|STRING|Production unit| | |production_unit| | | | |
|production_storage_location|STRING|Issue Storage Location| | |production_storage_location| | | | |
|mrp_group|STRING|MRP Group| | |mrp_group| | | | |
|component_scrap|NUMERIC|Component Scrap in Percent| | |component_scrap| | | | |
|certificate_type|STRING|Certificate Type| | |certificate_type| | | | |
|inspection_setup|STRING|Inspection Setup Exists for Material/Plant| | |inspection_setup| | | | |
|takt_time|NUMERIC|Takt time| | |takt_time| | | | |
|coverage_profile|STRING|Range of coverage profile| | |coverage_profile| | | | |
|local_field_name|STRING|Local field name for CO/PA link to SOP| | |local_field_name| | | | |
|physical_inventory_indicator|STRING|Physical Inventory Indicator for Cycle Counting| | |physical_inventory_indicator| | | | |
|variance_key|STRING|Variance Key| | |variance_key| | | | |
|serial_number_profile|STRING|Serial Number Profile| | |serial_number_profile| | | | |
|internal_object_number|STRING|Internal object number| | |internal_object_number| | | | |
|configurable_material|STRING|Configurable material| | |configurable_material| | | | |
|repetitive_manufacturing_profile|STRING|Repetitive Manufacturing Profile| | |repetitive_manufacturing_profile| | | | |
|negative_stocks|STRING|Negative stocks allowed in plant| | |negative_stocks| | | | |
|target_qm_system|STRING|Required QM System for Supplier| | |target_qm_system| | | | |
|planning_cycle|STRING|Planning cycle| | |planning_cycle| | | | |
|rounding_profile|STRING|Rounding Profile| | |rounding_profile| | | | |
|reference_material_for_consumption|STRING|Reference material for consumption| | |reference_material_for_consumption| | | | |
|reference_plant_for_consumption|STRING|Reference plant for consumption| | |reference_plant_for_consumption| | | | |
|date_of_material|DATE|To date of the material to be copied for consumption| | |date_of_material| | | | |
|multiplier_for_reference_material|NUMERIC|Multiplier for reference material for consumption| | |multiplier_for_reference_material| | | | |
|reset_automatically|STRING|Reset Forecast Model Automatically| | |reset_automatically| | | | |
|customs_preference|STRING|Customs Preference| | |customs_preference| | | | |
|exemption_certificate|STRING|Exemption certificate: Indicator for legal control| | |exemption_certificate| | | | |
|exemption_certificate_number|STRING|Exemption certificate number for legal control| | |exemption_certificate_number| | | | |
|issue_date_certificate|DATE|Exemption certificate: Issue date of exemption certificate| | |issue_date_certificate| | | | |
|vendor_declaration_code|STRING|Indicator: Vendor declaration exists| | |vendor_declaration_code| | | | |
|vendor_declaration_date|DATE|Validity date of vendor declaration| | |vendor_declaration_date| | | | |
|military_goods|STRING|Indicator: Military goods| | |military_goods| | | | |
|isr_service_level|STRING|IS-R service level| | |isr_service_level| | | | |
|material_co_product|STRING|Indicator: Material can be co-product| | |material_co_product| | | | |
|planning_strategy_group|STRING|Planning Strategy Group| | |planning_strategy_group| | | | |
|material_internal_object_number|STRING|Internal object number of configurable material for planning| | |material_internal_object_number| | | | |
|storage_location_external_procurement|STRING|Default storage location for external procurement| | |storage_location_external_procurement| | | | |
|bulk_material|STRING|Indicator: bulk material| | |bulk_material| | | | |
|cc_indicator_fixed|STRING|CC indicator is fixed| | |cc_indicator_fixed| | | | |
|withdrawal_sequence_group|STRING|Withdrawal Sequence Group for Stocks| | |withdrawal_sequence_group| | | | |
|qm_material_authorization|STRING|Material Authorization Group for Activities in QM| | |qm_material_authorization| | | | |
|adjustment_period|NUMERIC|Period of adjustment for planned independent requirements| | |adjustment_period| | | | |
|task_list_type|STRING|Task List Type| | |task_list_type| | | | |
|uom_group|STRING|Unit of Mearsure Group (Oil, Natural Gas,…)| | |uom_group| | | | |
|conversion_group|STRING|Conversion Group (Oil, Natural Gas,…)| | |conversion_group| | | | |
|air_bouyancy_factor|NUMERIC|Air Bouyancy Factor| | |air_bouyancy_factor| | | | |
|production_scheduling_profile|STRING|Production Scheduling Profile| | |production_scheduling_profile| | | | |
|safety_time_indicator|STRING|Safety time indicator (with or without safety time)| | |safety_time_indicator| | | | |
|safety_time|STRING|Safety time (in workdays)| | |safety_time| | | | |
|action_control|STRING|Action control: planned order processing| | |action_control| | | | |
|batch_entry|STRING|Determination of batch entry in the production/process order| | |batch_entry| | | | |
|business_area|STRING|Business Area| |business_area| | | | | |
|controlling_area|STRING|Controlling Area| |controlling_area| | | | | |
|responsible_cost_center|STRING|Responsible cost center| |responsible_cost_center| | | | | |
|order_currency|STRING|Order Currency| |order_currency| | | | | |
|profit_center|STRING|Profit Center| |profit_center| | | | | |
|sales_order_number|STRING|Sales Order Number| |sales_order_number| | | | | |
|sales_order_item|STRING|Item number in Sales Order| |sales_order_item| | | | | |
|project_definition|STRING|Project definition| |project_definition| | | | | |
|planner_group|STRING|Responsible Planner Group or Department| |planner_group| | | | | |
|wbs_element|STRING|Work Breakdown Structure Element (WBS Element)| |wbs_element| | | | | |
|mrp_controller|STRING|MRP controller for the order| |mrp_controller| | | | | |
|order_priority|STRING|Order priority| |order_priority| | | | | |
|created_by|STRING|Entered By| |created_by| | | | | |
|order_category|STRING|Order category| |order_category| | | | | |
|location|STRING|Location| |location| | | | | |
|production_supervisor|STRING|Production Supervisor| |production_supervisor| | | | | |
|requesting_cost_center|STRING|Requesting cost center| |requesting_cost_center| | | | | |
|last_changed_by|STRING|Last Changed By| |last_changed_by| | | | | |
|scheduling_type|STRING|Scheduling type| |scheduling_type| | | | | |
|batch_number|STRING|Batch Number| |batch_number| | | | | |
|planning_plant|STRING|Planning Plant for an Order| |planning_plant| | | | | |
|production_version|STRING|Production Version| |production_version| | | | | |
|system_status|STRING|System Status| |system_status| | | | | |
|status_object_confirmation|STRING|Status Object Confirmation| |status_object_confirmation| | | | | |
|status_object_delivered|STRING|Status Object Delivered| |status_object_delivered| | | | | |
|delivered|STRING|Order has status DELIVERED| | | |delivered| | | |
|actual_release_date|DATE|Actual release date| | | |actual_release_date| | | |
|planned_release_date|DATE|Planned Release Date| | | |planned_release_date| | | |
|scheduled_release_date|DATE|Scheduled release date| | | |scheduled_release_date| | | |
|actual_finish_date|DATE|Confirmed Order Finish Date| | | |actual_finish_date| | | |
|basic_finish_date|DATE|Basic finish date| | | |basic_finish_date| | | |
|scheduled_finish|DATE|Scheduled finish| | | |scheduled_finish| | | |
|actual_start_date|DATE|Actual start date| | | |actual_start_date| | | |
|basic_start_date|DATE|Basic start date| | | |basic_start_date| | | |
|scheduled_start|DATE|Scheduled start| | | |scheduled_start| | | |
|leading_order|STRING|Leading Order in Current Processing| | | |leading_order| | | |
|superior_order|STRING|Number of Superior Order| | | |superior_order| | | |
|posting_date|DATE|Posting date delivery/finish date, actual| | | |posting_date| | | |
|unit_execution_time|STRING|Unit of measure for execution time| | | |unit_execution_time| | | |
|unit_execution_time_exact|STRING|Unit for execution time (exact)| | | |unit_execution_time_exact| | | |
|planned_opening_date|DATE|Opening Date of the Planned Order| | | |planned_opening_date| | | |
|actual_scrap_quantity|NUMERIC|Actual scrap quantity from an order item| | | |actual_scrap_quantity| | | |
|actual_execution_time|NUMERIC|Actual execution time| | | |actual_execution_time| | | |
|actual_execution_time_exact|NUMERIC|Actual execution time (exact)| | | |actual_execution_time_exact| | | |
|actual_lead_time|NUMERIC|Actual lead time| | | |actual_lead_time| | | |
|actual_lead_time_exact|NUMERIC|Actual lead time (exact)| | | |actual_lead_time_exact| | | |
|capacity_unit|STRING|Unit of Measure for Capacity Requirements| | | |capacity_unit| | | |
|capacity_requirement|NUMERIC|Total target capacity requirements| | | |capacity_requirement| | | |
|actual_delivery_date|DATE|Actual Delivery/Finish Date| | | |actual_delivery_date| | | |
|planned_order_delivery_date|DATE|Delivery Date From Planned Order| | | |planned_order_delivery_date| | | |
|base_unit_of_measure|STRING|Base Unit of Measure| | | |base_unit_of_measure| | | |
|scrap_quantity|NUMERIC|Fixed quantity of scrap from production| | | |scrap_quantity| | | |
|planned_order_quantity|NUMERIC|Total planned order quantity| | | |planned_order_quantity| | | |
|planned_actual_scheduled_release_date|NUMERIC|Planned/actual deviation in scheduled release date| | | |planned_actual_scheduled_release_date| | | |
|planned_actual_scheduled_delivery_date|NUMERIC|Planned/actual deviation in scheduled delivery date| | | |planned_actual_scheduled_delivery_date| | | |
|scheduled_start_date|NUMERIC|Planned/actual deviation in scheduled start date| | | |scheduled_start_date| | | |
|planned_order|STRING|Planned Order| | | |planned_order| | | |
|order_item_number|STRING|Order item number| | | |order_item_number| | | |
|scrap_quantity_item|NUMERIC|Scrap quantity in item| | | |scrap_quantity_item| | | |
|order_item_quantity|NUMERIC|Order Item Quantity| | | |order_item_quantity| | | |
|planned_target_release_deviation|NUMERIC|Planned/target deviation in scheduled release date| | | |planned_target_release_deviation| | | |
|planned_target_delivery_deviation|NUMERIC|Planned/target deviation in scheduled delivery date| | | |planned_target_delivery_deviation| | | |
|planned_target_start_deviation|NUMERIC|Planned/target deviation in start date| | | |planned_target_start_deviation| | | |
|planned_lead_time|NUMERIC|Planned lead time| | | |planned_lead_time| | | |
|target_actual_release_deviation|NUMERIC|Target/actual deviation in scheduled release date| | | |target_actual_release_deviation| | | |
|target_actual_delivery_deviation|NUMERIC|Target/actual deviation in scheduled delivery date| | | |target_actual_delivery_deviation| | | |
|target_actual_start_deviation|NUMERIC|Target/actual schedule deviation in start date| | | |target_actual_start_deviation| | | |
|planned_order_planned_start_date|DATE|Planned Order Planned Start Date| | | |planned_order_planned_start_date| | | |
|target_execution_time|NUMERIC|Target execution time| | | |target_execution_time| | | |
|target_execution_time_exact|NUMERIC|Target execution time (exact)| | | |target_execution_time_exact| | | |
|target_lead_time|NUMERIC|Target lead time| | | |target_lead_time| | | |
|target_lead_time_exact|NUMERIC|Target lead time (exact)| | | |target_lead_time_exact| | | |
|quantity_of_goods_received|NUMERIC|Quantity of goods received| | | |quantity_of_goods_received| | | |
|event|STRING|Event for which updating should take place| | | |event| | | |
|leading_material|STRING|Material Number of Leading Order| | | |leading_material| | | |
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|dw_last_update_date| | | |
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | | | | | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | | | | | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | | | | | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | | | | | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | | | | | |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms
