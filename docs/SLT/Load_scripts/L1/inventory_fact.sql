MERGE INTO `{{ projectid }}.{{ slt_l1_facts }}.inventory_fact` tgt
USING (
with tmp_scr AS(
 SELECT  CONCAT(msl.client,'-',msl.material,'-',msl.plant,'-',msl.stor_loc) as inventory_key
        ,msl.client
        ,msl.material
        ,msl.plant
        ,msl.stor_loc
        ,msl.maint_status
        ,msl.df_stor_loc_lvl
        ,msl.year_cur_period
        ,msl.current_period
        ,msl.phys_inv_blk
        ,msl.unrestricted
        ,msl.stock_in_tfr
        ,msl.quality_insp
        ,msl.restricted_use
        ,msl.blocked
        ,msl.returns_block_stock
        ,msl.unrestr_use
        ,msl.in_transfer
        ,msl.in_qual_insp
        ,msl.restr_use_pp
        ,msl.blocked_1
        ,msl.returns_1
        ,msl.warehouse_stock
        ,msl.qualinspstock
        ,msl.restricted_use_1
        ,msl.blocked_stock
        ,msl.warehouse_stock_1
        ,msl.qualinspstock_1
        ,msl.restricted_use_2
        ,msl.blocked_stock_1
        ,msl.mrp_ind
        ,msl.spec_proc_sloc
        ,msl.reorder_point
        ,msl.replenishmt_qty
        ,msl.ctry_of_origin
        ,msl.preference_ind
        ,msl.export_ind
        ,msl.storage_bin
        ,msl.unrestr_consgt
        ,msl.cnsgt_in_qinsp
        ,msl.restr_consgt
        ,msl.blocked_consgt
        ,msl.last_count_date
        ,msl.profit_center
        ,msl.created_on
        ,msl.sp_stock_value
        ,msl.stk_transfer_sv
        ,msl.picking_area
        ,msl.inven_cor_fact
        ,msl.mardh_rec_already_exists_for
        ,msl.fiscal_year_of_current_physica
        ,msl.md_product_storage_location
        ,msl.allocated_stock
        ,msl.unrestricted_1
        ,msl.quality_insp_1
        ,msl.restricted_use_3
        ,msl.blocked_2
        ,msl.returns_2
        ,msl.stock_in_tfr_1
        ,msl.unrestr_consgt_1
        ,msl.cnsgt_in_qinsp_1
        ,msl.restr_consgt_1
        ,msl.blocked_consgt_1
        ,msl.unrestr_use_1
        ,msl.in_qual_insp_1
        ,msl.restr_use_pp_1
        ,msl.blocked_3
        ,msl.returns_3
        ,msl.in_transfer_1
        ,msl.dw_last_update_date as input_last_update_date
        ,msl.dw_active_indicator
        ,md.material_uuid
        ,md.material_key
        ,pd.plant_uuid
        ,pd.plant_key
        ,sld.storage_location_uuid
        ,sld.storage_location_key
   from `{{ projectid }}.{{ slt_l0_staging }}.material_storage_location`  msl

        left join `{{ projectid }}.{{ slt_l1_dimension }}.material_dimension` md
    on md.material_key = CONCAT(msl.client,'-',msl.material,'-',msl.plant)
   and md.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = CONCAT(msl.client,'-',msl.plant)
   and pd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.storage_location_dimension` sld
    on sld.storage_location_key = CONCAT(msl.client,'-',msl.plant,'-',msl.stor_loc)
   and sld.dw_active_indicator = 'Y'
 where msl.dw_active_indicator = 'Y'
  and (msl.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'inventory_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_if AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.inventory_key as inventory_join_key,t.*
  from tmp_if t
UNION ALL 
SELECT NULL as purchase_order_join_key,t.*
  from tmp_if t
       INNER JOIN `{{ projectid }}.{{ slt_l1_facts }}.inventory_fact` ff
    on ff.inventory_key = t.inventory_key
   AND ff.finalmd5key <> t.finalmd5key
 WHERE ff.dw_active_indicator = 'Y') scr
ON tgt.inventory_key = scr.inventory_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 inventory_uuid
,inventory_key
,client
,material
,plant
,stor_loc
,material_uuid
,material_key
,plant_uuid
,plant_key
,storage_location_uuid
,storage_location_key
,maint_status
,df_stor_loc_lvl
,year_cur_period
,current_period
,phys_inv_blk
,unrestricted
,stock_in_tfr
,quality_insp
,restricted_use
,blocked
,returns_block_stock
,unrestr_use
,in_transfer
,in_qual_insp
,restr_use_pp
,blocked_1
,returns_1
,warehouse_stock
,qualinspstock
,restricted_use_1
,blocked_stock
,warehouse_stock_1
,qualinspstock_1
,restricted_use_2
,blocked_stock_1
,mrp_ind
,spec_proc_sloc
,reorder_point
,replenishmt_qty
,ctry_of_origin
,preference_ind
,export_ind
,storage_bin
,unrestr_consgt
,cnsgt_in_qinsp
,restr_consgt
,blocked_consgt
,last_count_date
,profit_center
,created_on
,sp_stock_value
,stk_transfer_sv
,picking_area
,inven_cor_fact
,mardh_rec_already_exists_for
,fiscal_year_of_current_physica
,md_product_storage_location
,allocated_stock
,unrestricted_1
,quality_insp_1
,restricted_use_3
,blocked_2
,returns_2
,stock_in_tfr_1
,unrestr_consgt_1
,cnsgt_in_qinsp_1
,restr_consgt_1
,blocked_consgt_1
,unrestr_use_1
,in_qual_insp_1
,restr_use_pp_1
,blocked_3
,returns_3
,in_transfer_1
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.inventory_key,scr.finalmd5key)))
,scr.inventory_key
,scr.client
,scr.material
,scr.plant
,scr.stor_loc
,scr.material_uuid
,scr.material_key
,scr.plant_uuid
,scr.plant_key
,scr.storage_location_uuid
,scr.storage_location_key
,scr.maint_status
,scr.df_stor_loc_lvl
,scr.year_cur_period
,scr.current_period
,scr.phys_inv_blk
,scr.unrestricted
,scr.stock_in_tfr
,scr.quality_insp
,scr.restricted_use
,scr.blocked
,scr.returns_block_stock
,scr.unrestr_use
,scr.in_transfer
,scr.in_qual_insp
,scr.restr_use_pp
,scr.blocked_1
,scr.returns_1
,scr.warehouse_stock
,scr.qualinspstock
,scr.restricted_use_1
,scr.blocked_stock
,scr.warehouse_stock_1
,scr.qualinspstock_1
,scr.restricted_use_2
,scr.blocked_stock_1
,scr.mrp_ind
,scr.spec_proc_sloc
,scr.reorder_point
,scr.replenishmt_qty
,scr.ctry_of_origin
,scr.preference_ind
,scr.export_ind
,scr.storage_bin
,scr.unrestr_consgt
,scr.cnsgt_in_qinsp
,scr.restr_consgt
,scr.blocked_consgt
,scr.last_count_date
,scr.profit_center
,scr.created_on
,scr.sp_stock_value
,scr.stk_transfer_sv
,scr.picking_area
,scr.inven_cor_fact
,scr.mardh_rec_already_exists_for
,scr.fiscal_year_of_current_physica
,scr.md_product_storage_location
,scr.allocated_stock
,scr.unrestricted_1
,scr.quality_insp_1
,scr.restricted_use_3
,scr.blocked_2
,scr.returns_2
,scr.stock_in_tfr_1
,scr.unrestr_consgt_1
,scr.cnsgt_in_qinsp_1
,scr.restr_consgt_1
,scr.blocked_consgt_1
,scr.unrestr_use_1
,scr.in_qual_insp_1
,scr.restr_use_pp_1
,scr.blocked_3
,scr.returns_3
,scr.in_transfer_1
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'inventory_fact' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'inventory_fact') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'inventory_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'material_storage_location' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_facts }}.inventory_fact`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.inventory_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'inventory_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.inventory_fact` where dw_active_indicator = 'Y'))) as inserted_record_count
        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 
UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.source_table_names = scr.source_table_names
WHEN NOT MATCHED THEN
INSERT (table_name,
        full_delta_indicator,
        source_table_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.source_table_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);