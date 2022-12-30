MERGE INTO `{{ projectid }}.{{ slt_l1_facts }}.forecasting_fact` tgt
USING (
with tmp_scr AS(
SELECT   CONCAT(pirm.client,'-',pirm.material,'-',pirm.plant,'-',pirm.reqmts_type,'-',pirm.version,'-',ird.rqmts_pointer) as forcasting_key
        ,pirm.client
        ,pirm.material
        ,pirm.plant
        ,pirm.reqmts_type
        ,pirm.version
        ,pirm.requirements_plan
        ,pirm.rqmts_pointer
        ,pirm.consumption
        ,pirm.active
        ,pirm.cind
        ,pirm.alloc_criterion
        ,pirm.planning_ind
        ,pirm.long_txt_exists
        ,pirm.deletion_indicator
        ,pirm.copied
        ,pirm.entry_date
        ,pirm.entry_time
        ,pirm.aggregation
        ,pirm.planning_scenario
        ,pirm.version_1
        ,pirm.info_structure
        ,pirm.field_name
        ,pirm.without_mrp
        ,pirm.info_structure_1
        ,pirm.version_2
        ,pirm.acct_assgmt_cat
        ,pirm.special_stock
        ,pirm.consumption_1
        ,pirm.wbs_element
        ,pirm.sales_ord_item
        ,pirm.sales_order
        ,pirm.prof_name
        ,pirm.valuation
        ,pirm.ext_req_plan
        ,pirm.reqmnt_segment
        ,pirm.time_stamp
        ,ird.rqmts_pointer as rqmts_pointer_pbed
        ,ird.finish_date
        ,ird.reqstd_date
        ,ird.changed_by
        ,ird.last_change
        ,ird.base_unit
        ,ird.planned_qty
        ,ird.withdrawal_qty
        ,ird.orig_plnd_qty
        ,ird.date_type
        ,ird.perin
        ,ird.period
        ,ird.bom_expl_number
        ,ird.prod_version
        ,ird.unit_of_entry
        ,ird.quantity_in_une
        ,ird.counter
        ,ird.denominator
        ,ird.planned_qty_1
        ,ird.long_txt_exists as long_txt_exists_pbed
        ,ird.deletion_indicator as deletion_indicator_pbed
        ,ird.int_object_no
        ,ird.supporting_pnt
        ,ird.standardvariant
        ,ird.accptd_past_demand
        ,ird.season_year
        ,ird.season
        ,ird.collection
        ,ird.theme
        ,CASE WHEN pirm.dw_last_update_date > ird.dw_last_update_date
              THEN pirm.dw_last_update_date
              ELSE ird.dw_last_update_date
         END as input_last_update_date
        ,pirm.dw_active_indicator
        ,md.material_uuid
        ,md.material_key
        ,pd.plant_uuid
        ,pd.plant_key
   from `{{ projectid }}.{{ slt_l0_staging }}.planned_independent_requirement_material`  pirm
        inner join `{{ projectid }}.{{ slt_l0_staging }}.independent_requirement_data` ird
     on pirm.client = ird.client
    and pirm.rqmts_pointer = ird.rqmts_pointer
    and pirm.dw_active_indicator = ird.dw_active_indicator
        left join `{{ projectid }}.{{ slt_l1_dimension }}.material_dimension` md
    on md.material_key = CONCAT(pirm.client,'-',pirm.material,'-',pirm.plant)
   and md.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = CONCAT(pirm.client,'-',pirm.plant)
   and pd.dw_active_indicator = 'Y'
 where pirm.dw_active_indicator = 'Y'
  and (pirm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'forecasting_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
   or ird.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'forecasting_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_ff AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.forcasting_key as forcasting_join_key,t.*
  from tmp_ff t
UNION ALL 
SELECT NULL as purchase_order_join_key,t.*
  from tmp_ff t
       INNER JOIN `{{ projectid }}.{{ slt_l1_facts }}.forecasting_fact` ff
    on ff.forcasting_key = t.forcasting_key
   AND ff.finalmd5key <> t.finalmd5key
 WHERE ff.dw_active_indicator = 'Y') scr
ON tgt.forcasting_key = scr.forcasting_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 forcasting_uuid
,forcasting_key
,client
,material
,plant
,reqmts_type
,version
,material_uuid
,material_key
,plant_uuid
,plant_key
,requirements_plan
,rqmts_pointer
,consumption
,active
,cind
,alloc_criterion
,planning_ind
,long_txt_exists
,deletion_indicator
,copied
,entry_date
,entry_time
,aggregation
,planning_scenario
,version_1
,info_structure
,field_name
,without_mrp
,info_structure_1
,version_2
,acct_assgmt_cat
,special_stock
,consumption_1
,wbs_element
,sales_ord_item
,sales_order
,prof_name
,valuation
,ext_req_plan
,reqmnt_segment
,time_stamp
,rqmts_pointer_pbed
,finish_date
,reqstd_date
,changed_by
,last_change
,base_unit
,planned_qty
,withdrawal_qty
,orig_plnd_qty
,date_type
,perin
,period
,bom_expl_number
,prod_version
,unit_of_entry
,quantity_in_une
,counter
,denominator
,planned_qty_1
,long_txt_exists_pbed
,deletion_indicator_pbed
,int_object_no
,supporting_pnt
,standardvariant
,accptd_past_demand
,season_year
,season
,collection
,theme
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.forcasting_key,scr.finalmd5key)))
,scr.forcasting_key
,scr.client
,scr.material
,scr.plant
,scr.reqmts_type
,scr.version
,scr.material_uuid
,scr.material_key
,scr.plant_uuid
,scr.plant_key
,scr.requirements_plan
,scr.rqmts_pointer
,scr.consumption
,scr.active
,scr.cind
,scr.alloc_criterion
,scr.planning_ind
,scr.long_txt_exists
,scr.deletion_indicator
,scr.copied
,scr.entry_date
,scr.entry_time
,scr.aggregation
,scr.planning_scenario
,scr.version_1
,scr.info_structure
,scr.field_name
,scr.without_mrp
,scr.info_structure_1
,scr.version_2
,scr.acct_assgmt_cat
,scr.special_stock
,scr.consumption_1
,scr.wbs_element
,scr.sales_ord_item
,scr.sales_order
,scr.prof_name
,scr.valuation
,scr.ext_req_plan
,scr.reqmnt_segment
,scr.time_stamp
,scr.rqmts_pointer_pbed
,scr.finish_date
,scr.reqstd_date
,scr.changed_by
,scr.last_change
,scr.base_unit
,scr.planned_qty
,scr.withdrawal_qty
,scr.orig_plnd_qty
,scr.date_type
,scr.perin
,scr.period
,scr.bom_expl_number
,scr.prod_version
,scr.unit_of_entry
,scr.quantity_in_une
,scr.counter
,scr.denominator
,scr.planned_qty_1
,scr.long_txt_exists_pbed
,scr.deletion_indicator_pbed
,scr.int_object_no
,scr.supporting_pnt
,scr.standardvariant
,scr.accptd_past_demand
,scr.season_year
,scr.season
,scr.collection
,scr.theme
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'forecasting_fact' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'forecasting_fact') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'forecasting_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'planned_independent_requirement_material,independent_requirement_data' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_facts }}.forecasting_fact`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.forecasting_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'forecasting_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.forecasting_fact` where dw_active_indicator = 'Y'))) as inserted_record_count
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