MERGE INTO `${ProjectID}.${TargetDatasetNames1}.material_dimension` tgt
USING 
(WITH tmp_scr AS (SELECT

-- Combining columns which are required to make a key for the material_dimension

            (mm.material_number || '-' || mpd.plant) as material_key,
            mm.material_number,
            mpd.plant,
            mm.material_group,
            mm.industry_sector,
            mm.material_type,
            mm.created_on,
            mm.created_by,
            mm.last_change,
            mm.changed_by,
            mm.complete_material_status,
            mm.client_level_deletion_flag,
            mm.old_material_number,
            mm.base_unit_of_measure,
            mm.purchase_order_unit,
            mm.document_number,
            mm.document_type,
            mm.document_version,
            mm.page_format_2,
            mm.document_change_number,
            mm.page_number,
            mm.number_of_sheets,
            mm.production_memo,
            mm.page_format_1,
            mm.size_dimensions,
            mm.basic_material,
            mm.industry_standard_description,
            mm.laboratory_design_office,
            mm.purchasing_value_key,
            mm.gross_weight,
            mm.net_weight,
            mm.weight_unit,
            mm.volume,
            mm.volume_unit_2,
            mm.container_requirements,
            mm.storage_conditions,
            mm.temperature_conditions_indicator,
            mm.low_level_code,
            mm.transportation_group,
            mm.hazardous_material_number,
            mm.division,
            mm.customer_number,
            mm.european_article_number,
            mm.goods_receipt_slips_quantity,
            mm.procurement_rule,
            mm.season_category,
            mm.label_type,
            mm.label_form,
            mm.disposal_type,
            mm.international_article_number,
            mm.ean_category,
            mm.length,
            mm.width,
            mm.height,
            mm.unit_of_dimension,
            mm.product_hierarchy,
            mm.net_change_costing,
            mm.cad_indicator,
            mm.qm_procurement,
            mm.allowed_packaging_weight,
            mm.unit_of_weight,
            mm.allowed_packaging_volume,
            mm.volume_unit_1,
            mm.excess_weight_tolerance,
            mm.excess_volume_tolerance,
            mm.variable_purchase_order_unit_active,
            mm.revision_level_assigned,
            mm.packaging_material_type,
            mm.maximum_level,
            mm.stacking_factor,
            mm.material_group_packaging_materials,
            mm.authorization_group,
            mm.deletion_date,
            mm.season_year,
            mm.price_band_category,
            mm.empties_bill_of_material,
            mm.external_material_group,
            mm.cross_plant_configurable_material,
            mm.material_category,
            mm.pricing_reference_material,
            mm.cross_plant_material_status,
            mm.cross_distribution_chain_status,
            mm.cross_plant_valid_from,
            mm.cross_distribution_valid_from,
            mm.tax_classification,
            mm.catalog_profile,
            mm.minimum_remaining_shelf_life,
            mm.total_shelf_life,
            mm.storage_percentage,
            mm.content_unit,
            mm.net_contents,
            mm.comparison_price_unit,
            mm.labeling_material_grouping,
            mm.gross_contents,
            mm.quantity_conversion_method,
            mm.environmentally_relevant,
            mm.product_allocation,
            mm.pricing_profile,
            mm.discount_in_kind,
            mm.manufacturer_part_number,
            mm.manufacturer_number,
            mm.inventory_material_number,
            mm.manufacturer_part_profile,
            mm.units_of_measure_usage,
            mm.rollout_season,
            mm.dangerous_goods_indicator_profile,
            mm.highly_viscous,
            mm.in_bulk_liquid,
            mm.serialization_level,
            mm.closed,
            mm.approved_batch_record_required,
            mm.assign_effectivity_values,
            mm.material_completion_level,
            mm.shelf_life_expiration_date,
            mm.rounding_rule_sled,
            mm.product_composition,
            mm.general_category_group,
            mm.logistical_variants,
            mm.cw_material,
            mm.valuation_unit_of_measure,
            mm.cw_tolerance_group,
            mm.checkbox,
            mm.base_unit_of_measure_1,
            mm.nato_stock_number,
            mm.internal_charactieristic_number,
            mm.internal_char_number_main,
            mm.internal_char_number_second,
            mm.colors_of_variants,
            mm.main_size,
            mm.second_size,
            mm.free_characteristic_value,
            mm.care_code,
            mm.brand,
            mm.fiber_code_component_1,
            mm.percentage_share_1,
            mm.fiber_code_component_2,
            mm.percentage_share_2,
            mm.fiber_code_component_3,
            mm.percentage_share_3,
            mm.fiber_code_component_4,
            mm.percentage_share_4,
            mm.material_group_hierarchy_level_1,
            mm.material_group_hierarchy_level_2,
            mm.material_group_hierarchy_level_3,
            mm.material_group_hierarchy_level_4,
            mm.fashion_grade,
            md.language_key,
            md.material_description,
            mc.product_cost,
            mc.currency_key,
            mpd.maintenance_status,
            mpd.plant_level_deletion_flag,
            mpd.valuation_category,
            mpd.batch_management_indicator,
            mpd.plant_specific_material_status,
            mpd.valid_from,
            mpd.abc_indicator,
            mpd.critical_part,
            mpd.purchasing_group,
            mpd.unit_of_issue,
            mpd.mrp_profile,
            mpd.mrp_type,
            mpd.mrp_controller,
            mpd.mrp_controller_buyer,
            mpd.planned_deliv_time,
            mpd.goods_receipt_processing_time,
            mpd.period_indicator,
            mpd.assembly_scrap,
            mpd.lot_sizing_procedure,
            mpd.procurement_type,
            mpd.special_procurement_type,
            mpd.dependent_requirements_indicator,
            mpd.storage_costs_code,
            mpd.selection_method,
            mpd.discontinuation_indicator,
            mpd.effective_out_date,
            mpd.follow_up_material,
            mpd.requirements_group,
            mpd.mixed_mrp_indicator,
            mpd.scheduling_margin_key,
            mpd.automatic_fixing_planned_orders,
            mpd.automatic_release,
            mpd.backflush,
            mpd.production_supervisor,
            mpd.processing_time,
            mpd.setup_time,
            mpd.interoperation_time,
            mpd.in_house_production,
            mpd.maximum_storage_period,
            mpd.time_unit,
            mpd.withdrawal_production_bin,
            mpd.rough_cut_planning,
            mpd.overdelivery_tolerance_limit,
            mpd.unlimited_overdelivery_allowed,
            mpd.underdely_tolerance,
            mpd.total_replenishment_lead_time,
            mpd.replacement_part,
            mpd.surcharge_factor_percent,
            mpd.state_of_manufacture,
            mpd.stock_type,
            mpd.sample_percentage,
            mpd.quarantine_period,
            mpd.qm_control_key,
            mpd.mean_inspection_duration,
            mpd.inspection_plan_indicator,
            mpd.documentation_required,
            mpd.active_substance,
            mpd.inspection_interval,
            mpd.next_inspection,
            mpd.loading_group,
            mpd.batch_management_requirement,
            mpd.quota_arrangement_usage,
            mpd.service_level,
            mpd.splitting_indicator,
            mpd.plan_version,
            mpd.object_type,
            mpd.object_id,
            mpd.availability_check,
            mpd.fiscal_year_variant,
            mpd.correction_factors,
            mpd.shipping_setup_time,
            mpd.shipping_processing_time,
            mpd.delivery_cycle,
            mpd.source_of_supply,
            mpd.automatic_purchase_order,
            mpd.source_list,
            mpd.commodity_code,
            mpd.country_of_origin,
            mpd.region_of_origin,
            mpd.commodity_code_unit,
            mpd.intrastat_material_group,
            mpd.profit_center,
            mpd.planning_calendar,
            mpd.repetitive_manufacturing,
            mpd.planning_time_fence,
            mpd.consumption_mode,
            mpd.backward_consumption_period,
            mpd.forward_consumption_period,
            mpd.version_indicator,
            mpd.alternative_bom,
            mpd.bom_usage,
            mpd.task_list_group,
            mpd.group_counter,
            mpd.special_procurement_costing,
            mpd.production_unit,
            mpd.production_storage_location,
            mpd.mrp_group,
            mpd.component_scrap,
            mpd.certificate_type,
            mpd.inspection_setup,
            mpd.takt_time,
            mpd.coverage_profile,
            mpd.local_field_name,
            mpd.physical_inventory_indicator,
            mpd.variance_key,
            mpd.serial_number_profile,
            mpd.internal_object_number,
            mpd.configurable_material,
            mpd.repetitive_manufacturing_profile,
            mpd.negative_stocks,
            mpd.target_qm_system,
            mpd.planning_cycle,
            mpd.rounding_profile,
            mpd.reference_material_for_consumption,
            mpd.reference_plant_for_consumption,
            mpd.date_of_material,
            mpd.multiplier_for_reference_material,
            mpd.reset_automatically,
            mpd.customs_preference,
            mpd.exemption_certificate,
            mpd.exemption_certificate_number,
            mpd.issue_date_certificate,
            mpd.vendor_declaration_code,
            mpd.vendor_declaration_date,
            mpd.military_goods,
            mpd.isr_service_level,
            mpd.material_co_product,
            mpd.planning_strategy_group,
            mpd.material_internal_object_number,
            mpd.storage_location_external_procurement,
            mpd.bulk_material,
            mpd.cc_indicator_fixed,
            mpd.withdrawal_sequence_group,
            mpd.qm_material_authorization,
            mpd.adjustment_period,
            mpd.task_list_type,
            mpd.uom_group,
            mpd.conversion_group,
            mpd.air_bouyancy_factor,
            mpd.production_scheduling_profile,
            mpd.safety_time_indicator,
            mpd.safety_time,
            mpd.action_control,
            mpd.batch_entry,
            mpd.controlling_area,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

            CASE WHEN mm.dw_last_update_date > md.dw_last_update_date and mm.dw_last_update_date > mpd.dw_last_update_date and mm.dw_last_update_date > mc.dw_last_update_date
                 THEN mm.dw_last_update_date
                 WHEN mpd.dw_last_update_date > mm.dw_last_update_date and mpd.dw_last_update_date > md.dw_last_update_date and mpd.dw_last_update_date > mc.dw_last_update_date
                 THEN mpd.dw_last_update_date
                 WHEN md.dw_last_update_date > mm.dw_last_update_date and md.dw_last_update_date > mpd.dw_last_update_date and md.dw_last_update_date > mc.dw_last_update_date
                 THEN md.dw_last_update_date
                 ELSE mc.dw_last_update_date
            END AS input_last_update_date,
            mm.dw_active_indicator
      FROM `${ProjectID}.${StagingDatasetName}.material_master` mm
           INNER JOIN `${ProjectID}.${StagingDatasetName}.material_plant_data` mpd 
        ON mpd.dw_active_indicator = 'Y'
       AND mpd.material_number = mm.material_number
           INNER JOIN `${ProjectID}.${StagingDatasetName}.material_description` md
        ON md.material_number = mm.material_number
       AND md.dw_active_indicator = mm.dw_active_indicator
       AND md.language_key IN ('E','EN')
            INNER JOIN (
select plant,material_number,currency_key,product_cost,dw_last_update_date
from 
(select plant,material_number,currency_key,standard_price/price_unit as product_cost,fiscal_year_period,dw_last_update_date
  ,row_number() over(partition by plant,material_number,currency_key order by plant,material_number,currency_key,fiscal_year_period desc) as rowpick
  from `${ProjectID}.${StagingDatasetName}.material_valuation`
where dw_active_indicator = 'Y' and price_control_indicator = 'S' and price_type = 'P01') where rowpick = 1
union distinct 
select plant,material_number,currency_key,product_cost,dw_last_update_date
from 
(select plant,material_number,currency_key,standard_price/price_unit as product_cost,fiscal_year_period,dw_last_update_date
  ,row_number() over(partition by plant,material_number,currency_key order by plant,material_number,currency_key,fiscal_year_period desc) as rowpick
                          from `${ProjectID}.${StagingDatasetName}.material_valuation`
where dw_active_indicator = 'Y' and price_control_indicator = 'V' and price_type = 'P02') where rowpick = 1) mc
         on mm.material_number = mc.material_number
        and mpd.plant = mc.plant
     WHERE mm.dw_active_indicator = 'Y'

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

       AND (mm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'material_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR md.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'material_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR mpd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'material_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR mc.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'material_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_mat AS (SELECT ts.*,

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.material_key as material_join_key,t.*
  from tmp_mat t
UNION ALL 

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as material_join_key,t.*
  from tmp_mat t
       INNER JOIN `${ProjectID}.${TargetDatasetNames1}.material_dimension` md
    ON t.material_key = md.material_key
   AND md.finalmd5key <> t.finalmd5key
 WHERE md.dw_active_indicator = 'Y') scr

-- Join the source  and the taget table using the join keys.

  ON tgt.material_key = scr.material_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT (
material_uuid,
material_key,
material_number,
plant,
material_group,
industry_sector,
material_type,
created_on,
created_by,
last_change,
changed_by,
complete_material_status,
maintenance_status,
client_level_deletion_flag,
old_material_number,
base_unit_of_measure,
purchase_order_unit,
document_number,
document_type,
document_version,
page_format_2,
document_change_number,
page_number,
number_of_sheets,
production_memo,
page_format_1,
size_dimensions,
basic_material,
industry_standard_description,
laboratory_design_office,
purchasing_value_key,
gross_weight,
net_weight,
weight_unit,
volume,
volume_unit_2,
container_requirements,
storage_conditions,
temperature_conditions_indicator,
low_level_code,
transportation_group,
hazardous_material_number,
division,
customer_number,
european_article_number,
goods_receipt_slips_quantity,
procurement_rule,
season_category,
label_type,
label_form,
disposal_type,
international_article_number,
ean_category,
material_length,
material_width,
material_height,
unit_of_dimension,
product_hierarchy,
net_change_costing,
cad_indicator,
qm_procurement,
allowed_packaging_weight,
unit_of_weight,
allowed_packaging_volume,
volume_unit_1,
excess_weight_tolerance,
excess_volume_tolerance,
variable_purchase_order_unit_active,
revision_level_assigned,
packaging_material_type,
maximum_level,
stacking_factor,
material_group_packaging_materials,
authorization_group,
deletion_date,
season_year,
price_band_category,
empties_bill_of_material,
external_material_group,
cross_plant_configurable_material,
material_category,
pricing_reference_material,
cross_plant_material_status,
cross_distribution_chain_status,
cross_plant_valid_from,
cross_distribution_valid_from,
tax_classification,
catalog_profile,
minimum_remaining_shelf_life,
total_shelf_life,
storage_percentage,
content_unit,
net_contents,
comparison_price_unit,
labeling_material_grouping,
gross_contents,
quantity_conversion_method,
environmentally_relevant,
product_allocation,
pricing_profile,
discount_in_kind,
manufacturer_part_number,
manufacturer_number,
inventory_material_number,
manufacturer_part_profile,
units_of_measure_usage,
rollout_season,
dangerous_goods_indicator_profile,
highly_viscous,
in_bulk_liquid,
serialization_level,
closed,
approved_batch_record_required,
assign_effectivity_values,
material_completion_level,
shelf_life_expiration_date,
rounding_rule_sled,
product_composition,
general_category_group,
logistical_variants,
cw_material,
valuation_unit_of_measure,
cw_tolerance_group,
checkbox,
base_unit_of_measure_1,
nato_stock_number,
internal_charactieristic_number,
internal_char_number_main,
internal_char_number_second,
colors_of_variants,
main_size,
second_size,
free_characteristic_value,
care_code,
brand,
fiber_code_component_1,
percentage_share_1,
fiber_code_component_2,
percentage_share_2,
fiber_code_component_3,
percentage_share_3,
fiber_code_component_4,
percentage_share_4,
material_group_hierarchy_level_1,
material_group_hierarchy_level_2,
material_group_hierarchy_level_3,
material_group_hierarchy_level_4,
fashion_grade,
language_key,
material_description,
product_cost,
currency_key,
plant_level_deletion_flag,
valuation_category,
batch_management_indicator,
plant_specific_material_status,
valid_from,
abc_indicator,
critical_part,
purchasing_group,
unit_of_issue,
mrp_profile,
mrp_type,
mrp_controller,
mrp_controller_buyer,
planned_deliv_time,
goods_receipt_processing_time,
period_indicator,
assembly_scrap,
lot_sizing_procedure,
procurement_type,
special_procurement_type,
dependent_requirements_indicator,
storage_costs_code,
selection_method,
discontinuation_indicator,
effective_out_date,
follow_up_material,
requirements_group,
mixed_mrp_indicator,
scheduling_margin_key,
automatic_fixing_planned_orders,
automatic_release,
backflush,
production_supervisor,
processing_time,
setup_time,
interoperation_time,
in_house_production,
maximum_storage_period,
time_unit,
withdrawal_production_bin,
rough_cut_planning,
overdelivery_tolerance_limit,
unlimited_overdelivery_allowed,
underdely_tolerance,
total_replenishment_lead_time,
replacement_part,
surcharge_factor_percent,
state_of_manufacture,
stock_type,
sample_percentage,
quarantine_period,
qm_control_key,
mean_inspection_duration,
inspection_plan_indicator,
documentation_required,
active_substance,
inspection_interval,
next_inspection,
loading_group,
batch_management_requirement,
quota_arrangement_usage,
service_level,
splitting_indicator,
plan_version,
object_type,
object_id,
availability_check,
fiscal_year_variant,
correction_factors,
shipping_setup_time,
shipping_processing_time,
delivery_cycle,
source_of_supply,
automatic_purchase_order,
source_list,
commodity_code,
country_of_origin,
region_of_origin,
commodity_code_unit,
intrastat_material_group,
profit_center,
planning_calendar,
repetitive_manufacturing,
planning_time_fence,
consumption_mode,
backward_consumption_period,
forward_consumption_period,
version_indicator,
alternative_bom,
bom_usage,
task_list_group,
group_counter,
special_procurement_costing,
production_unit,
production_storage_location,
mrp_group,
component_scrap,
certificate_type,
inspection_setup,
takt_time,
coverage_profile,
local_field_name,
physical_inventory_indicator,
variance_key,
serial_number_profile,
internal_object_number,
configurable_material,
repetitive_manufacturing_profile,
negative_stocks,
target_qm_system,
planning_cycle,
rounding_profile,
reference_material_for_consumption,
reference_plant_for_consumption,
date_of_material,
multiplier_for_reference_material,
reset_automatically,
customs_preference,
exemption_certificate,
exemption_certificate_number,
issue_date_certificate,
vendor_declaration_code,
vendor_declaration_date,
military_goods,
isr_service_level,
material_co_product,
planning_strategy_group,
material_internal_object_number,
storage_location_external_procurement,
bulk_material,
cc_indicator_fixed,
withdrawal_sequence_group,
qm_material_authorization,
adjustment_period,
task_list_type,
uom_group,
conversion_group,
air_bouyancy_factor,
production_scheduling_profile,
safety_time_indicator,
safety_time,
action_control,
batch_entry,
controlling_area,
input_last_update_date,
finalmd5key,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date)

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

VALUES (TO_HEX(MD5(CONCAT(scr.material_key,scr.finalmd5key))),
scr.material_key,
scr.material_number,
scr.plant,
scr.material_group,
scr.industry_sector,
scr.material_type,
scr.created_on,
scr.created_by,
scr.last_change,
scr.changed_by,
scr.complete_material_status,
scr.maintenance_status,
scr.client_level_deletion_flag,
scr.old_material_number,
scr.base_unit_of_measure,
scr.purchase_order_unit,
scr.document_number,
scr.document_type,
scr.document_version,
scr.page_format_2,
scr.document_change_number,
scr.page_number,
scr.number_of_sheets,
scr.production_memo,
scr.page_format_1,
scr.size_dimensions,
scr.basic_material,
scr.industry_standard_description,
scr.laboratory_design_office,
scr.purchasing_value_key,
scr.gross_weight,
scr.net_weight,
scr.weight_unit,
scr.volume,
scr.volume_unit_2,
scr.container_requirements,
scr.storage_conditions,
scr.temperature_conditions_indicator,
scr.low_level_code,
scr.transportation_group,
scr.hazardous_material_number,
scr.division,
scr.customer_number,
scr.european_article_number,
scr.goods_receipt_slips_quantity,
scr.procurement_rule,
scr.season_category,
scr.label_type,
scr.label_form,
scr.disposal_type,
scr.international_article_number,
scr.ean_category,
scr.length,
scr.width,
scr.height,
scr.unit_of_dimension,
scr.product_hierarchy,
scr.net_change_costing,
scr.cad_indicator,
scr.qm_procurement,
scr.allowed_packaging_weight,
scr.unit_of_weight,
scr.allowed_packaging_volume,
scr.volume_unit_1,
scr.excess_weight_tolerance,
scr.excess_volume_tolerance,
scr.variable_purchase_order_unit_active,
scr.revision_level_assigned,
scr.packaging_material_type,
scr.maximum_level,
scr.stacking_factor,
scr.material_group_packaging_materials,
scr.authorization_group,
scr.deletion_date,
scr.season_year,
scr.price_band_category,
scr.empties_bill_of_material,
scr.external_material_group,
scr.cross_plant_configurable_material,
scr.material_category,
scr.pricing_reference_material,
scr.cross_plant_material_status,
scr.cross_distribution_chain_status,
scr.cross_plant_valid_from,
scr.cross_distribution_valid_from,
scr.tax_classification,
scr.catalog_profile,
scr.minimum_remaining_shelf_life,
scr.total_shelf_life,
scr.storage_percentage,
scr.content_unit,
scr.net_contents,
scr.comparison_price_unit,
scr.labeling_material_grouping,
scr.gross_contents,
scr.quantity_conversion_method,
scr.environmentally_relevant,
scr.product_allocation,
scr.pricing_profile,
scr.discount_in_kind,
scr.manufacturer_part_number,
scr.manufacturer_number,
scr.inventory_material_number,
scr.manufacturer_part_profile,
scr.units_of_measure_usage,
scr.rollout_season,
scr.dangerous_goods_indicator_profile,
scr.highly_viscous,
scr.in_bulk_liquid,
scr.serialization_level,
scr.closed,
scr.approved_batch_record_required,
scr.assign_effectivity_values,
scr.material_completion_level,
scr.shelf_life_expiration_date,
scr.rounding_rule_sled,
scr.product_composition,
scr.general_category_group,
scr.logistical_variants,
scr.cw_material,
scr.valuation_unit_of_measure,
scr.cw_tolerance_group,
scr.checkbox,
scr.base_unit_of_measure_1,
scr.nato_stock_number,
scr.internal_charactieristic_number,
scr.internal_char_number_main,
scr.internal_char_number_second,
scr.colors_of_variants,
scr.main_size,
scr.second_size,
scr.free_characteristic_value,
scr.care_code,
scr.brand,
scr.fiber_code_component_1,
scr.percentage_share_1,
scr.fiber_code_component_2,
scr.percentage_share_2,
scr.fiber_code_component_3,
scr.percentage_share_3,
scr.fiber_code_component_4,
scr.percentage_share_4,
scr.material_group_hierarchy_level_1,
scr.material_group_hierarchy_level_2,
scr.material_group_hierarchy_level_3,
scr.material_group_hierarchy_level_4,
scr.fashion_grade,
scr.language_key,
scr.material_description,
scr.product_cost,
scr.currency_key,
scr.plant_level_deletion_flag,
scr.valuation_category,
scr.batch_management_indicator,
scr.plant_specific_material_status,
scr.valid_from,
scr.abc_indicator,
scr.critical_part,
scr.purchasing_group,
scr.unit_of_issue,
scr.mrp_profile,
scr.mrp_type,
scr.mrp_controller,
scr.mrp_controller_buyer,
scr.planned_deliv_time,
scr.goods_receipt_processing_time,
scr.period_indicator,
scr.assembly_scrap,
scr.lot_sizing_procedure,
scr.procurement_type,
scr.special_procurement_type,
scr.dependent_requirements_indicator,
scr.storage_costs_code,
scr.selection_method,
scr.discontinuation_indicator,
scr.effective_out_date,
scr.follow_up_material,
scr.requirements_group,
scr.mixed_mrp_indicator,
scr.scheduling_margin_key,
scr.automatic_fixing_planned_orders,
scr.automatic_release,
scr.backflush,
scr.production_supervisor,
scr.processing_time,
scr.setup_time,
scr.interoperation_time,
scr.in_house_production,
scr.maximum_storage_period,
scr.time_unit,
scr.withdrawal_production_bin,
scr.rough_cut_planning,
scr.overdelivery_tolerance_limit,
scr.unlimited_overdelivery_allowed,
scr.underdely_tolerance,
scr.total_replenishment_lead_time,
scr.replacement_part,
scr.surcharge_factor_percent,
scr.state_of_manufacture,
scr.stock_type,
scr.sample_percentage,
scr.quarantine_period,
scr.qm_control_key,
scr.mean_inspection_duration,
scr.inspection_plan_indicator,
scr.documentation_required,
scr.active_substance,
scr.inspection_interval,
scr.next_inspection,
scr.loading_group,
scr.batch_management_requirement,
scr.quota_arrangement_usage,
scr.service_level,
scr.splitting_indicator,
scr.plan_version,
scr.object_type,
scr.object_id,
scr.availability_check,
scr.fiscal_year_variant,
scr.correction_factors,
scr.shipping_setup_time,
scr.shipping_processing_time,
scr.delivery_cycle,
scr.source_of_supply,
scr.automatic_purchase_order,
scr.source_list,
scr.commodity_code,
scr.country_of_origin,
scr.region_of_origin,
scr.commodity_code_unit,
scr.intrastat_material_group,
scr.profit_center,
scr.planning_calendar,
scr.repetitive_manufacturing,
scr.planning_time_fence,
scr.consumption_mode,
scr.backward_consumption_period,
scr.forward_consumption_period,
scr.version_indicator,
scr.alternative_bom,
scr.bom_usage,
scr.task_list_group,
scr.group_counter,
scr.special_procurement_costing,
scr.production_unit,
scr.production_storage_location,
scr.mrp_group,
scr.component_scrap,
scr.certificate_type,
scr.inspection_setup,
scr.takt_time,
scr.coverage_profile,
scr.local_field_name,
scr.physical_inventory_indicator,
scr.variance_key,
scr.serial_number_profile,
scr.internal_object_number,
scr.configurable_material,
scr.repetitive_manufacturing_profile,
scr.negative_stocks,
scr.target_qm_system,
scr.planning_cycle,
scr.rounding_profile,
scr.reference_material_for_consumption,
scr.reference_plant_for_consumption,
scr.date_of_material,
scr.multiplier_for_reference_material,
scr.reset_automatically,
scr.customs_preference,
scr.exemption_certificate,
scr.exemption_certificate_number,
scr.issue_date_certificate,
scr.vendor_declaration_code,
scr.vendor_declaration_date,
scr.military_goods,
scr.isr_service_level,
scr.material_co_product,
scr.planning_strategy_group,
scr.material_internal_object_number,
scr.storage_location_external_procurement,
scr.bulk_material,
scr.cc_indicator_fixed,
scr.withdrawal_sequence_group,
scr.qm_material_authorization,
scr.adjustment_period,
scr.task_list_type,
scr.uom_group,
scr.conversion_group,
scr.air_bouyancy_factor,
scr.production_scheduling_profile,
scr.safety_time_indicator,
scr.safety_time,
scr.action_control,
scr.batch_entry,
scr.controlling_area,
scr.input_last_update_date,
scr.finalmd5key,
scr.dw_active_indicator,
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME());

MERGE INTO 
`${ProjectID}.${StagingDatasetName}.layer1_audit_table` tgt
USING ( SELECT 

-- mention table name for which we are updating the record.

         'material_dimension' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'material_dimension') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'material_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'0MATERIAL_ATTR,0MATERIAL_TEXT,0MAT_PLANT_ATTR' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames1}.material_dimension`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.material_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'material_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.material_dimension` where dw_active_indicator = 'Y')))  AS inserted_record_count
-- last update/insert date

        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 

-- Record exists update the information 

UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.extractors_names = scr.extractors_names
WHEN NOT MATCHED THEN

-- No record then insert the new entry into the audit table

INSERT (table_name,
        full_delta_indicator,
        extractors_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.extractors_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);