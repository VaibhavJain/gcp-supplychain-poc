create or replace view `{$productid}.{$slt_l2_canonical}.inventory_vw`
as
with material_movement_fact as(
select CONCAT(mmf.client,'-',mmf.material,'-',mmf.plant,'-',mmf.stor_loc) as inventory_key
      ,CASE WHEN stock_type = '01'   
            THEN 'Unrestricted-use stock'
            WHEN stock_type = '02'
            THEN 'Quality inspection stock'
            WHEN stock_type = '03'
            THEN 'Returns blocked stock'
            WHEN stock_type = '04'    
            THEN 'Stock transfer stock at storage location level'
            WHEN stock_type = '05'
            THEN 'Stock transfer stock at plant level'
            WHEN stock_type = '06'
            THEN 'Stock in transit'
            WHEN stock_type = '07'    
            THEN 'Blocked stock'
            WHEN stock_type = '08'
            THEN 'Restricted stock'
            WHEN stock_type = '09'    
            THEN 'Tied empties stock'
       END as inventory_type,
       sum(mmf.stock_quantity) as inventory_quantity
  from  `{$productid}.{$slt_l1_facts}.material_movement_fact` mmf
 where mmf.dw_active_indicator = 'Y'
 group by 1,2)
,inventory_date as (
SELECT *          
  FROM UNNEST((SELECT GENERATE_DATE_ARRAY(date_start, date_end, INTERVAL 1 DAY) AS date_range
                FROM(SELECT MIN(CREATED_ON) AS date_start
                           ,CURRENT_DATE AS date_end
                       FROM `{$productid}.{$slt_l1_facts}.inventory_fact`
                      where dw_active_indicator = 'Y'))) as inventory_date)
select dt.inventory_date
      ,inf.material_key
      ,inf.plant_key
      ,CAST(NULL AS STRING) as batch_number
      ,mmf.inventory_type 
      ,inf.plant AS inventory_assignment
      ,mmf.inventory_quantity
      ,CAST(NULL AS STRING) as remaining_shelf_life
      ,CAST(NULL AS STRING) as inventory_block
      ,CAST(NULL AS DATE) as inv_gr_date
      ,vad.company_code as inventory_ownership
      ,vad.valuation_area as valuation_area
  from `{$productid}.{$slt_l1_facts}.inventory_fact` inf
       inner join material_movement_fact mmf
    on inf.inventory_key = mmf.inventory_key
       inner join inventory_date dt
    on 1 = 1
       left join `{$productid}.{$slt_l1_dimension}.plant_dimension` pd 
    on pd.plant_key = inf.plant_key
   and pd.dw_active_indicator = 'Y'
       left join `{$productid}.{$slt_l1_dimension}.valuation_area_dimension` vad
    on vad.valuation_area_key = CONCAT(pd.client,'-',pd.valuation_area)
   and vad.dw_active_indicator = 'Y'
 where inf.dw_active_indicator = 'Y'
   and inf.created_on <= dt.inventory_date
order by 1,2,3;