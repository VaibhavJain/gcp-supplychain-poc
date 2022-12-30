create or replace view `{$productid}.{$slt_l2_canonical}.product_vw`
as
select md.material_uuid as uuid
      ,md.material_key as product_uid
      ,md.material as product_id
      ,md.plant as organization_level
      ,md.material_type as product_type
      ,mdesc.description as product_description
      ,md.material_group as product_group
      ,md.prod_hierarchy as  product_hierarchy
      ,md.batch_mgmt_rqt as batch_managed 
      ,md.procurement as procurement_type
      ,md.base_unit as base_uom 
      ,md.matl_category as product_category
      ,md.temperature as temperature_condition 
      ,CAST(case when md.price_control = 'V'
            then md.moving_price
            when md.price_control = 'S'
            then md.standard_price
       end AS FLOAT64) as product_cost 
      ,CAST(NULL AS STRING) as product_cost_currency
      ,md.tot_shelf_life as shelf_life 
      ,md.abc_indicator as product_classification
      ,md.min_safetystock as safty_stock
      ,md.volume
      ,md.gross_weight
      ,md.valid_from as valid_from_date
      ,md.valid_to as valid_to_date
      ,md.df_client_level as active
      ,md.created_on as creation_date
      ,md.last_change as change_date
      ,md.total_rl_time as lead_time
      ,phd.description as product_hierarchy_name
      ,md.prod_hierarchy as product_hierarchy_level
      ,phd.description as product_hierarchy_level_name
      ,SUBSTR(md.prod_hierarchy,1,5) as product_hierarchy_level_1
      ,phd1.description as product_hierarchy_level_1_name
      ,SUBSTR(md.prod_hierarchy,1,10) as product_hierarchy_level_2
      ,phd2.description as product_hierarchy_level_2_name
  FROM `{$productid}.{$slt_l1_dimension}.material_dimension` md
       left join `{$productid}.slt_staging.material_description` mdesc
    on md.client = mdesc.client
   and md.material = mdesc.material
   and mdesc.dw_active_indicator = 'Y'
   and mdesc.language_key = 'E'
       left join `{$productid}.slt_staging.product_hierarchy_description` phd
    on phd.client = md.client
   and phd.prod_hierarchy = md.prod_hierarchy
   and phd.language_key = 'E'
   and phd.dw_active_indicator = 'Y'
      left join `{$productid}.slt_staging.product_hierarchy_description` phd1
    on phd1.client = md.client
   and phd1.prod_hierarchy = SUBSTR(md.prod_hierarchy,1,5)
   and phd1.language_key = 'E'
   and phd1.dw_active_indicator = 'Y'
      left join `{$productid}.slt_staging.product_hierarchy_description` phd2
    on phd2.client = md.client
   and phd2.prod_hierarchy = SUBSTR(md.prod_hierarchy,1,10)
   and phd2.language_key = 'E'
   and phd2.dw_active_indicator = 'Y'
where md.dw_active_indicator = 'Y';