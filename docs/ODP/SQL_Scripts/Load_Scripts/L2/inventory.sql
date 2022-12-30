CREATE OR REPLACE VIEW `${ProjectID}.${TargetDatasetNames3}.inventory_vw`
AS
SELECT invf.posting_date as inventory_date
,'PRODUCT' || '-' || invf.material_key as product_uid
,'PLANT' || '-' || invf.plant_key as location_uid
,invf.batch_management_indicator AS batch_number
,invf.stock_type AS inventory_type
,invf.plant AS inventory_assignment
,invf.quantity_in_base_unit inventory_quantity
,CAST(NULL AS STRING) as remaining_shelf_life
,CAST(NULL AS STRING) as inventory_block
,CAST(NULL AS DATE) as inv_gr_date
,pd.company_code as inventory_ownership
,invf.valuation_area as valuation_area
FROM `${ProjectID}.${TargetDatasetNames2}.inventory_fact` invf
      LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd 
   ON invf.plant_key = pd.plant_key
where invf.dw_active_indicator = 'Y';