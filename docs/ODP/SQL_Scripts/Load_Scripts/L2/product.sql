CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.product_vw`
AS
SELECT material_uuid as uuid
      ,'PRODUCT' || '-' || material_key as product_uid
      ,material_number as product_id
      ,plant as organization_level
      ,material_type as product_type
      ,material_description as product_description
      ,material_group as product_group
      ,product_hierarchy
      ,batch_management_indicator as batch_managed 
      ,procurement_type as procurement_type
      ,base_unit_of_measure as base_uom 
      ,material_category as product_category
      ,temperature_conditions_indicator as temperature_condition 
      ,CAST(product_cost AS FLOAT64) as product_cost 
      ,currency_key as product_cost_currency
      ,CAST(NULL AS STRING) as shelf_life 
      ,CAST(NULL AS STRING) as product_classification
      ,CAST(NULL AS STRING) as safty_stock
      ,volume
      ,gross_weight
      ,CAST(NULL AS DATE) as valid_from_date
      ,CAST(NULL AS DATE) as valid_to_date
      ,client_level_deletion_flag as active
      ,created_on as creation_date
      ,last_change as change_date
      ,CAST(NULL AS NUMERIC) as lead_time
      ,CAST(NULL AS STRING) as product_hierarchy_name
      ,CAST(NULL AS STRING) as product_hierarchy_level
      ,CAST(NULL AS STRING) as product_hierarchy_level_name
      ,CAST(NULL AS STRING) as product_hierarchy_level_1
      ,CAST(NULL AS STRING) as product_hierarchy_level_1_name
      ,CAST(NULL AS STRING) as product_hierarchy_level_2
      ,CAST(NULL AS STRING) as product_hierarchy_level_2_name
  FROM `${ProjectID}.${TargetDatasetNames1}.material_dimension`
WHERE dw_active_indicator = 'Y'