

## Table Name : material_dimension


|COLUMN NAME|DATA TYPE|description|Key Columns|material_master|material_plant_data|material_description|material_valuation|
|:----|:----|:----|:----|:----|:----|:----|:----|
|material_uuid|STRING|Unique Generated Id|MD5 value on material_key column| | | | |
|material_key|STRING|Material key|material_number || ‘-’ || plant|material_number|plant| | |
|material_number|STRING|Material Number| |material_number| | | |
|plant|STRING|Plant Number| | |plant| | |
|material_group|STRING|Material Group| |material_group| | | |
|industry_sector|STRING|Industry Sector| |industry_sector| | | |
|material_type|STRING|Material type| |material_type| | | |
|created_on|DATE|Created On| |created_on| | | |
|created_by|STRING|Name of Person who Created the Object| |created_by| | | |
|last_change|DATE|Date of Last Change| |last_change| | | |
|changed_by|STRING|Name of person who changed object| |changed_by| | | |
|complete_material_status|STRING|Maintenance status of complete material| |complete_material_status| | | |
|maintenance_status|STRING|Maintenance status| |maintenance_status| | | |
|client_level_deletion_flag|STRING|Flag Material for Deletion at Client Level| |client_level_deletion_flag| | | |
|old_material_number|STRING|Old material number| |old_material_number| | | |
|base_unit_of_measure|STRING|Base Unit of Measure| |base_unit_of_measure| | | |
|purchase_order_unit|STRING|Purchase Order Unit of Measure| |purchase_order_unit| | | |
|document_number|STRING|Document number (without document management system)| |document_number| | | |
|document_type|STRING|Document type (without Document Management system)| |document_type| | | |
|document_version|STRING|Document version (without Document Management system)| |document_version| | | |
|page_format_2|STRING|Page format of document (without Document Management system)| |page_format_2| | | |
|document_change_number|STRING|Document change number (without document management system)| |document_change_number| | | |
|page_number|STRING|Page number of document (without Document Management system)| |page_number| | | |
|number_of_sheets|STRING|Number of sheets (without Document Management system)| |number_of_sheets| | | |
|production_memo|STRING|Production/inspection memo| |production_memo| | | |
|page_format_1|STRING|Page Format of Production Memo| |page_format_1| | | |
|size_dimensions|STRING|Size/dimensions| |size_dimensions| | | |
|basic_material|STRING|Basic Material| |basic_material| | | |
|industry_standard_description|STRING|Industry Standard Description (such as ANSI or ISO)| |industry_standard_description| | | |
|laboratory_design_office|STRING|Laboratory/design office| |laboratory_design_office| | | |
|purchasing_value_key|STRING|Purchasing Value Key| |purchasing_value_key| | | |
|gross_weight|NUMERIC|Gross weight| |gross_weight| | | |
|net_weight|NUMERIC|Net weight| |net_weight| | | |
|weight_unit|STRING|Weight Unit| |weight_unit| | | |
|volume|NUMERIC|Volume| |volume| | | |
|volume_unit_2|STRING|Volume unit| |volume_unit_2| | | |
|container_requirements|STRING|Container requirements| |container_requirements| | | |
|storage_conditions|STRING|Storage conditions| |storage_conditions| | | |
|temperature_conditions_indicator|STRING|Temperature conditions indicator| |temperature_conditions_indicator| | | |
|low_level_code|STRING|Low-Level Code| |low_level_code| | | |
|transportation_group|STRING|Transportation Group| |transportation_group| | | |
|hazardous_material_number|STRING|Hazardous material number| |hazardous_material_number| | | |
|division|STRING|Division| |division| | | |
|customer_number|STRING|Competitor| |customer_number| | | |
|european_article_number|STRING|European Article Number (EAN) - obsolete!!!!!| |european_article_number| | | |
|goods_receipt_slips_quantity|NUMERIC|Quantity: Number of GR/GI slips to be printed| |goods_receipt_slips_quantity| | | |
|procurement_rule|STRING|Procurement rule| |procurement_rule| | | |
|season_category|STRING|Season Category| |season_category| | | |
|label_type|STRING|Label type| |label_type| | | |
|label_form|STRING|Label form| |label_form| | | |
|disposal_type|STRING|Disposal type| |disposal_type| | | |
|international_article_number|STRING|International Article Number (EAN/UPC)| |international_article_number| | | |
|ean_category|STRING|Category of International Article Number (EAN)| |ean_category| | | |
|material_length|NUMERIC|Length| |length| | | |
|material_width|NUMERIC|Width| |width| | | |
|material_height|NUMERIC|Height| |height| | | |
|unit_of_dimension|STRING|Unit of Dimension for Length/Width/Height| |unit_of_dimension| | | |
|product_hierarchy|STRING|Product hierarchy| |product_hierarchy| | | |
|net_change_costing|STRING|Stock Transfer Net Change Costing| |net_change_costing| | | |
|cad_indicator|STRING|CAD Indicator| |cad_indicator| | | |
|qm_procurement|STRING|QM in Procurement Is Active| |qm_procurement| | | |
|allowed_packaging_weight|NUMERIC|Allowed packaging weight| |allowed_packaging_weight| | | |
|unit_of_weight|STRING|Unit of weight (allowed packaging weight)| |unit_of_weight| | | |
|allowed_packaging_volume|NUMERIC|Allowed packaging volume| |allowed_packaging_volume| | | |
|volume_unit_1|STRING|Volume unit (allowed packaging volume)| |volume_unit_1| | | |
|excess_weight_tolerance|NUMERIC|Excess Weight Tolerance for Handling unit| |excess_weight_tolerance| | | |
|excess_volume_tolerance|NUMERIC|Excess Volume Tolerance of the Handling Unit| |excess_volume_tolerance| | | |
|variable_purchase_order_unit_active|STRING|Variable Purchase Order Unit Active| |variable_purchase_order_unit_active| | | |
|revision_level_assigned|STRING|Revision Level Has Been Assigned to the Material| |revision_level_assigned| | | |
|packaging_material_type|STRING|Packaging Material Type| |packaging_material_type| | | |
|maximum_level|NUMERIC|Maximum level (by volume)| |maximum_level| | | |
|stacking_factor|INT64|Stacking factor| |stacking_factor| | | |
|material_group_packaging_materials|STRING|Material Group: Packaging Materials| |material_group_packaging_materials| | | |
|authorization_group|STRING|Authorization Group| |authorization_group| | | |
|deletion_date|DATE|Deletion date| |deletion_date| | | |
|season_year|STRING|Season Year| |season_year| | | |
|price_band_category|STRING|Price Band Category| |price_band_category| | | |
|empties_bill_of_material|STRING|Empties Bill of Material| |empties_bill_of_material| | | |
|external_material_group|STRING|External Material Group| |external_material_group| | | |
|cross_plant_configurable_material|STRING|Cross-Plant Configurable Material| |cross_plant_configurable_material| | | |
|material_category|STRING|Material Category| |material_category| | | |
|pricing_reference_material|STRING|Pricing Reference Material| |pricing_reference_material| | | |
|cross_plant_material_status|STRING|Cross-Plant Material Status| |cross_plant_material_status| | | |
|cross_distribution_chain_status|STRING|Cross-distribution-chain material status| |cross_distribution_chain_status| | | |
|cross_plant_valid_from|DATE|Date from which the cross-plant material status is valid| |cross_plant_valid_from| | | |
|cross_distribution_valid_from|DATE|Date from which the X-distr.-chain material status is valid| |cross_distribution_valid_from| | | |
|tax_classification|STRING|Tax classification of the material| |tax_classification| | | |
|catalog_profile|STRING|Catalog Profile| |catalog_profile| | | |
|minimum_remaining_shelf_life|NUMERIC|Minimum Remaining Shelf Life| |minimum_remaining_shelf_life| | | |
|total_shelf_life|NUMERIC|Total shelf life| |total_shelf_life| | | |
|storage_percentage|NUMERIC|Storage percentage| |storage_percentage| | | |
|content_unit|STRING|Content unit| |content_unit| | | |
|net_contents|NUMERIC|Net contents| |net_contents| | | |
|comparison_price_unit|NUMERIC|Comparison price unit| |comparison_price_unit| | | |
|labeling_material_grouping|STRING|IS-R Labeling: material grouping (deactivated in 4.0)| |labeling_material_grouping| | | |
|gross_contents|NUMERIC|Gross contents| |gross_contents| | | |
|quantity_conversion_method|STRING|Quantity Conversion Method| |quantity_conversion_method| | | |
|environmentally_relevant|STRING|Environmentally Relevant| |environmentally_relevant| | | |
|product_allocation|STRING|Product allocation determination procedure| |product_allocation| | | |
|pricing_profile|STRING|Pricing profile for variants| |pricing_profile| | | |
|discount_in_kind|STRING|Material qualifies for discount in kind| |discount_in_kind| | | |
|manufacturer_part_number|STRING|Manufacturer Part Number| |manufacturer_part_number| | | |
|manufacturer_number|STRING|Manufacturer number| |manufacturer_number| | | |
|inventory_material_number|STRING|Number of firm's own (internal) inventory-managed material| |inventory_material_number| | | |
|manufacturer_part_profile|STRING|Mfr part profile| |manufacturer_part_profile| | | |
|units_of_measure_usage|STRING|Units of measure usage| |units_of_measure_usage| | | |
|rollout_season|STRING|Rollout in a Season| |rollout_season| | | |
|dangerous_goods_indicator_profile|STRING|Dangerous Goods Indicator Profile| |dangerous_goods_indicator_profile| | | |
|highly_viscous|STRING|Indicator: Highly Viscous| |highly_viscous| | | |
|in_bulk_liquid|STRING|Indicator: In Bulk/Liquid| |in_bulk_liquid| | | |
|serialization_level|STRING|Level of Explicitness for Serial Number| |serialization_level| | | |
|closed|STRING|Packaging Material is Closed Packaging| |closed| | | |
|approved_batch_record_required|STRING|Approved Batch Record Required| |approved_batch_record_required| | | |
|assign_effectivity_values|STRING|Assign effectivity parameter values/ override change numbers| |assign_effectivity_values| | | |
|material_completion_level|STRING|Material completion level| |material_completion_level| | | |
|shelf_life_expiration_date|STRING|Period Indicator for Shelf Life Expiration Date| |shelf_life_expiration_date| | | |
|rounding_rule_sled|STRING|Rounding rule for calculation of SLED| |rounding_rule_sled| | | |
|product_composition|STRING|Indicator: Product composition printed on packaging| |product_composition| | | |
|general_category_group|STRING|General item category group| |general_category_group| | | |
|logistical_variants|STRING|Generic Material with Logistical Variants| |logistical_variants| | | |
|cw_material|STRING|Material Is Activated for CW| |cw_material| | | |
|valuation_unit_of_measure|STRING|Valuation Unit of Measure| |valuation_unit_of_measure| | | |
|cw_tolerance_group|STRING|Tolerance Group for CWM| |cw_tolerance_group| | | |
|checkbox|STRING|Checkbox| |checkbox| | | |
|base_unit_of_measure_1|STRING|Base Unit of Measure| |base_unit_of_measure_1| | | |
|nato_stock_number|STRING|NATO Stock Number| |nato_stock_number| | | |
|internal_charactieristic_number|STRING|Internal Charactieristic Number for Color Characteristics| |internal_charactieristic_number| | | |
|internal_char_number_main|STRING|Internal Char. Number for Characteristics for Main Sizes| |internal_char_number_main| | | |
|internal_char_number_second|STRING|Internal Char. Number for Characteristics for Second Sizes| |internal_char_number_second| | | |
|colors_of_variants|STRING|Characteristic Value for Colors of Variants| |colors_of_variants| | | |
|main_size|STRING|Characteristic Value for Main Sizes of Variants| |main_size| | | |
|second_size|STRING|Characteristic Value for Second Size for Variants| |second_size| | | |
|free_characteristic_value|STRING|Characteristic Value for Evaluation Purposes| |free_characteristic_value| | | |
|care_code|STRING|Care Codes (such as Washing Code, Ironing Code, etc.)| |care_code| | | |
|brand|STRING|Brand| |brand| | | |
|fiber_code_component_1|STRING|Fiber Code for Textiles (Component 1)| |fiber_code_component_1| | | |
|percentage_share_1|STRING|Percentage Share of Fiber (Component 1)| |percentage_share_1| | | |
|fiber_code_component_2|STRING|Fiber Code for Textiles (Component 2)| |fiber_code_component_2| | | |
|percentage_share_2|STRING|Percentage Share of Fiber (Component 2)| |percentage_share_2| | | |
|fiber_code_component_3|STRING|Fiber Code for Textiles (Component 3)| |fiber_code_component_3| | | |
|percentage_share_3|STRING|Percentage Share of Fiber (Component 3)| |percentage_share_3| | | |
|fiber_code_component_4|STRING|Fiber Code for Textiles (Component 4)| |fiber_code_component_4| | | |
|percentage_share_4|STRING|Percentage Share of Fiber (Component 4)| |percentage_share_4| | | |
|material_group_hierarchy_level_1|STRING|Material group hierarchy level| |material_group_hierarchy_level_1| | | |
|material_group_hierarchy_level_2|STRING|Material group hierarchy level| |material_group_hierarchy_level_2| | | |
|material_group_hierarchy_level_3|STRING|Material group hierarchy level| |material_group_hierarchy_level_3| | | |
|material_group_hierarchy_level_4|STRING|Material group hierarchy level| |material_group_hierarchy_level_4| | | |
|fashion_grade|STRING|Fashion Grade| |fashion_grade| | | |
|language_key|STRING|Language key| | | |language_key| |
|material_description|STRING|Material description| | | |material_description| |
|product_cost|NUMERIC|Product cost| | | | |product_cost|
|currency_key|STRING|Currency key| | | | |currency_key|
|plant_level_deletion_flag|STRING|Flag Material for Deletion at Plant Level| | |plant_level_deletion_flag| | |
|valuation_category|STRING|Valuation Category| | |valuation_category| | |
|batch_management_indicator|STRING|Batch management indicator (internal)| | |batch_management_indicator| | |
|plant_specific_material_status|STRING|Plant-Specific Material Status| | |plant_specific_material_status| | |
|valid_from|DATE|Date from Which the Plant-Specific Material Status Is Valid| | |valid_from| | |
|abc_indicator|STRING|ABC Indicator| | |abc_indicator| | |
|critical_part|STRING|Indicator: Critical part| | |critical_part| | |
|purchasing_group|STRING|Purchasing Group| | |purchasing_group| | |
|unit_of_issue|STRING|Unit of issue| | |unit_of_issue| | |
|mrp_profile|STRING|Material: MRP profile| | |mrp_profile| | |
|mrp_type|STRING|MRP Type| | |mrp_type| | |
|mrp_controller|STRING|MRP Controller| | |mrp_controller| | |
|mrp_controller_buyer|STRING|Indicator: MRP controller is buyer (deactivated)| | |mrp_controller_buyer| | |
|planned_deliv_time|NUMERIC|Planned Delivery Time in Days| | |planned_deliv_time| | |
|goods_receipt_processing_time|NUMERIC|Goods receipt processing time in days| | |goods_receipt_processing_time| | |
|period_indicator|STRING|Period Indicator| | |period_indicator| | |
|assembly_scrap|NUMERIC|Assembly scrap in percent| | |assembly_scrap| | |
|lot_sizing_procedure|STRING|Lot Sizing Procedure within Materials Planning| | |lot_sizing_procedure| | |
|procurement_type|STRING|Procurement Type| | |procurement_type| | |
|special_procurement_type|STRING|Special procurement type| | |special_procurement_type| | |
|dependent_requirements_indicator|STRING|Dependent requirements ind. for individual and coll. reqmts| | |dependent_requirements_indicator| | |
|storage_costs_code|STRING|Storage Costs Percentage Code| | |storage_costs_code| | |
|selection_method|STRING|Method for Selecting Alternative Bills of Material| | |selection_method| | |
|discontinuation_indicator|STRING|Discontinuation indicator| | |discontinuation_indicator| | |
|effective_out_date|DATE|Effective-Out Date| | |effective_out_date| | |
|follow_up_material|STRING|Follow-Up Material| | |follow_up_material| | |
|requirements_group|STRING|Indicator for Requirements Grouping| | |requirements_group| | |
|mixed_mrp_indicator|STRING|Mixed MRP indicator| | |mixed_mrp_indicator| | |
|scheduling_margin_key|STRING|Scheduling Margin Key for Floats| | |scheduling_margin_key| | |
|automatic_fixing_planned_orders|STRING|Indicator: automatic fixing of planned orders| | |automatic_fixing_planned_orders| | |
|automatic_release|STRING|Release indicator for production orders| | |automatic_release| | |
|backflush|STRING|Indicator: Backflush| | |backflush| | |
|production_supervisor|STRING|Production Supervisor| | |production_supervisor| | |
|processing_time|NUMERIC|Processing time| | |processing_time| | |
|setup_time|NUMERIC|Setup and teardown time| | |setup_time| | |
|interoperation_time|NUMERIC|Interoperation time| | |interoperation_time| | |
|in_house_production|NUMERIC|In-house production time| | |in_house_production| | |
|maximum_storage_period|NUMERIC|Maximum Storage Period| | |maximum_storage_period| | |
|time_unit|STRING|Unit for maximum storage period| | |time_unit| | |
|withdrawal_production_bin|STRING|Indicator: withdrawal of stock from production bin| | |withdrawal_production_bin| | |
|rough_cut_planning|STRING|Indicator: Material Included in Rough-Cut Planning| | |rough_cut_planning| | |
|overdelivery_tolerance_limit|NUMERIC|Overdelivery tolerance limit| | |overdelivery_tolerance_limit| | |
|unlimited_overdelivery_allowed|STRING|Indicator: Unlimited Overdelivery Allowed| | |unlimited_overdelivery_allowed| | |
|underdely_tolerance|NUMERIC|Underdelivery tolerance limit| | |underdely_tolerance| | |
|total_replenishment_lead_time|NUMERIC|Total replenishment lead time (in workdays)| | |total_replenishment_lead_time| | |
|replacement_part|STRING|Replacement part| | |replacement_part| | |
|surcharge_factor_percent|NUMERIC|Surcharge factor for cost in percent| | |surcharge_factor_percent| | |
|state_of_manufacture|STRING|State of manufacture| | |state_of_manufacture| | |
|stock_type|STRING|Stock Type| | |stock_type| | |
|sample_percentage|NUMERIC|Sample for quality inspection (in %) (deactivated)| | |sample_percentage| | |
|quarantine_period|NUMERIC|Quarantine period (deactivated)| | |quarantine_period| | |
|qm_control_key|STRING|Control Key for Quality Management in Procurement| | |qm_control_key| | |
|mean_inspection_duration|NUMERIC|Mean inspection duration (deactivated)| | |mean_inspection_duration| | |
|inspection_plan_indicator|STRING|Indicator for inspection plan (deactivated)| | |inspection_plan_indicator| | |
|documentation_required|STRING|Documentation required indicator| | |documentation_required| | |
|active_substance|NUMERIC|Active substance content (deactivated)| | |active_substance| | |
|inspection_interval|NUMERIC|Interval Until Next Recurring Inspection| | |inspection_interval| | |
|next_inspection|DATE|Date according to check sampling inspection (deactivated)| | |next_inspection| | |
|loading_group|STRING|Loading Group| | |loading_group| | |
|batch_management_requirement|STRING|Batch management requirement indicator| | |batch_management_requirement| | |
|quota_arrangement_usage|STRING|Quota arrangement usage| | |quota_arrangement_usage| | |
|service_level|NUMERIC|Service level| | |service_level| | |
|splitting_indicator|STRING|Splitting Indicator| | |splitting_indicator| | |
|plan_version|STRING|Plan Version| | |plan_version| | |
|object_type|STRING|Object Type| | |object_type| | |
|object_id|STRING|Object ID| | |object_id| | |
|availability_check|STRING|Checking Group for Availability Check| | |availability_check| | |
|fiscal_year_variant|STRING|Fiscal Year Variant| | |fiscal_year_variant| | |
|correction_factors|STRING|Indicator: take correction factors into account| | |correction_factors| | |
|shipping_setup_time|NUMERIC|Shipping setup time| | |shipping_setup_time| | |
|shipping_processing_time|NUMERIC|Shipping processing time| | |shipping_processing_time| | |
|delivery_cycle|STRING|Delivery cycle| | |delivery_cycle| | |
|source_of_supply|STRING|Source of Supply| | |source_of_supply| | |
|automatic_purchase_order|STRING|Indicator: "automatic purchase order allowed"| | |automatic_purchase_order| | |
|source_list|STRING|Indicator: Source list requirement| | |source_list| | |
|commodity_code|STRING|Commodity Code| | |commodity_code| | |
|country_of_origin|STRING|Country of Origin of Material (Non-Preferential Origin)| | |country_of_origin| | |
|region_of_origin|STRING|Region of Origin of Material (Non-Preferential Origin)| | |region_of_origin| | |
|commodity_code_unit|STRING|Unit of measure for commodity code (foreign trade)| | |commodity_code_unit| | |
|intrastat_material_group|STRING|Material Group for Intrastat| | |intrastat_material_group| | |
|profit_center|STRING|Profit Center| | |profit_center| | |
|planning_calendar|STRING|PPC Planning Calendar| | |planning_calendar| | |
|repetitive_manufacturing|STRING|Indicator: Repetitive Manufacturing Allowed| | |repetitive_manufacturing| | |
|planning_time_fence|STRING|Planning time fence| | |planning_time_fence| | |
|consumption_mode|STRING|Consumption mode| | |consumption_mode| | |
|backward_consumption_period|STRING|Consumption period: backward| | |backward_consumption_period| | |
|forward_consumption_period|STRING|Consumption period: forward| | |forward_consumption_period| | |
|version_indicator|STRING|Version Indicator| | |version_indicator| | |
|alternative_bom|STRING|Alternative BOM| | |alternative_bom| | |
|bom_usage|STRING|BOM Usage| | |bom_usage| | |
|task_list_group|STRING|Key for Task List Group| | |task_list_group| | |
|group_counter|STRING|Group Counter| | |group_counter| | |
|special_procurement_costing|STRING|Special Procurement Type for Costing| | |special_procurement_costing| | |
|production_unit|STRING|Production unit| | |production_unit| | |
|production_storage_location|STRING|Issue Storage Location| | |production_storage_location| | |
|mrp_group|STRING|MRP Group| | |mrp_group| | |
|component_scrap|NUMERIC|Component Scrap in Percent| | |component_scrap| | |
|certificate_type|STRING|Certificate Type| | |certificate_type| | |
|inspection_setup|STRING|Inspection Setup Exists for Material/Plant| | |inspection_setup| | |
|takt_time|NUMERIC|Takt time| | |takt_time| | |
|coverage_profile|STRING|Range of coverage profile| | |coverage_profile| | |
|local_field_name|STRING|Local field name for CO/PA link to SOP| | |local_field_name| | |
|physical_inventory_indicator|STRING|Physical Inventory Indicator for Cycle Counting| | |physical_inventory_indicator| | |
|variance_key|STRING|Variance Key| | |variance_key| | |
|serial_number_profile|STRING|Serial Number Profile| | |serial_number_profile| | |
|internal_object_number|STRING|Internal object number| | |internal_object_number| | |
|configurable_material|STRING|Configurable material| | |configurable_material| | |
|repetitive_manufacturing_profile|STRING|Repetitive Manufacturing Profile| | |repetitive_manufacturing_profile| | |
|negative_stocks|STRING|Negative stocks allowed in plant| | |negative_stocks| | |
|target_qm_system|STRING|Required QM System for Supplier| | |target_qm_system| | |
|planning_cycle|STRING|Planning cycle| | |planning_cycle| | |
|rounding_profile|STRING|Rounding Profile| | |rounding_profile| | |
|reference_material_for_consumption|STRING|Reference material for consumption| | |reference_material_for_consumption| | |
|reference_plant_for_consumption|STRING|Reference plant for consumption| | |reference_plant_for_consumption| | |
|date_of_material|DATE|To date of the material to be copied for consumption| | |date_of_material| | |
|multiplier_for_reference_material|NUMERIC|Multiplier for reference material for consumption| | |multiplier_for_reference_material| | |
|reset_automatically|STRING|Reset Forecast Model Automatically| | |reset_automatically| | |
|customs_preference|STRING|Customs Preference| | |customs_preference| | |
|exemption_certificate|STRING|Exemption certificate: Indicator for legal control| | |exemption_certificate| | |
|exemption_certificate_number|STRING|Exemption certificate number for legal control| | |exemption_certificate_number| | |
|issue_date_certificate|DATE|Exemption certificate: Issue date of exemption certificate| | |issue_date_certificate| | |
|vendor_declaration_code|STRING|Indicator: Vendor declaration exists| | |vendor_declaration_code| | |
|vendor_declaration_date|DATE|Validity date of vendor declaration| | |vendor_declaration_date| | |
|military_goods|STRING|Indicator: Military goods| | |military_goods| | |
|isr_service_level|STRING|IS-R service level| | |isr_service_level| | |
|material_co_product|STRING|Indicator: Material can be co-product| | |material_co_product| | |
|planning_strategy_group|STRING|Planning Strategy Group| | |planning_strategy_group| | |
|material_internal_object_number|STRING|Internal object number of configurable material for planning| | |material_internal_object_number| | |
|storage_location_external_procurement|STRING|Default storage location for external procurement| | |storage_location_external_procurement| | |
|bulk_material|STRING|Indicator: bulk material| | |bulk_material| | |
|cc_indicator_fixed|STRING|CC indicator is fixed| | |cc_indicator_fixed| | |
|withdrawal_sequence_group|STRING|Withdrawal Sequence Group for Stocks| | |withdrawal_sequence_group| | |
|qm_material_authorization|STRING|Material Authorization Group for Activities in QM| | |qm_material_authorization| | |
|adjustment_period|NUMERIC|Period of adjustment for planned independent requirements| | |adjustment_period| | |
|task_list_type|STRING|Task List Type| | |task_list_type| | |
|uom_group|STRING|Unit of Mearsure Group (Oil, Natural Gas,...)| | |uom_group| | |
|conversion_group|STRING|Conversion Group (Oil, Natural Gas,..)| | |conversion_group| | |
|air_bouyancy_factor|NUMERIC|Air Bouyancy Factor| | |air_bouyancy_factor| | |
|production_scheduling_profile|STRING|Production Scheduling Profile| | |production_scheduling_profile| | |
|safety_time_indicator|STRING|Safety time indicator (with or without safety time)| | |safety_time_indicator| | |
|safety_time|STRING|Safety time (in workdays)| | |safety_time| | |
|action_control|STRING|Action control: planned order processing| | |action_control| | |
|batch_entry|STRING|Determination of batch entry in the production/process order| | |batch_entry| | |
|controlling_area|STRING|Controlling Area| | |controlling_area| | |
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|dw_last_update_date|dw_last_update_date|
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | | | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | | | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | | | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | | | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | | | |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms
