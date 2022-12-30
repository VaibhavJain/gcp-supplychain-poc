create or replace view `{$productid}.{$slt_l2_canonical}.forecast_vw`
as
select ff.finish_date as forecast_date
      ,ff.material_key as product_uid
      ,ff.plant_key as location_uid
      ,ff.perin as forecast_period_type
      ,ff.period as forecast_period
      ,ff.planned_qty as forecast_quantity
      ,ff.planned_qty as inventory_quantity
      ,ff.base_unit as forecast_uom
  from `{$productid}.{$slt_l1_facts}.forecasting_fact` ff
 where ff.dw_active_indicator = 'Y';