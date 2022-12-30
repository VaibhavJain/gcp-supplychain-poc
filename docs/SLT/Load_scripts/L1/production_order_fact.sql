MERGE INTO `{{ projectid }}.{{ slt_l1_facts }}.production_order_fact` tgt
USING (
with tmp_scr AS(
SELECT  CONCAT(poh.client,'-',poh.order_number,'-',poid.order_item_no) as production_order_key
       ,poh.client 
       ,poh.order_number
       ,poh.basic_fin_date
       ,poh.bas_start_date
       ,poh.release
       ,poh.sched_finish
       ,poh.sched_start
       ,poh.actual_start
       ,poh.actual_finish
       ,poh.actual_finish_1
       ,poh.actual_release
       ,poh.planned_release
       ,poh.reservation_number
       ,poh.total_scrap
       ,poh.target_quantity
       ,poh.base_unit
       ,poh.material
       ,poh.task_list_type
       ,poh.group_list
       ,poh.application
       ,poh.group_counter
       ,poh.usage
       ,poh.explosion_date
       ,poh.lot_size_to
       ,poh.task_list_unit
       ,poh.lot_size_from
       ,poh.valid_from
       ,poh.change_number
       ,poh.planner_group
       ,poh.lot_size_div
       ,poh.bom_category
       ,poh.material_1
       ,poh.bom_status
       ,poh.bom
       ,poh.valid_from_1
       ,poh.base_quantity
       ,poh.base_unit_1
       ,poh.change_number_1
       ,poh.alternative
       ,poh.usage_1
       ,poh.from_lot_size
       ,poh.to_lot_size
       ,poh.bom_expl_date
       ,poh.mrp_controller
       ,poh.plan_no_f_oper
       ,poh.prodn_supervisor
       ,poh.schedmargin_key
       ,poh.scheduling_type
       ,poh.reduction_ind
       ,poh.priority
       ,poh.network
       ,poh.superior_act
       ,poh.network_profile
       ,poh.float_bef_prod
       ,poh.float_aft_prod
       ,poh.release_period
       ,poh.dates_changed
       ,poh.capacity_requirement
       ,poh.project_def
       ,poh.counter
       ,poh.counter_1
       ,poh.add_crit_countr
       ,poh.inspection_lot
       ,poh.plnd_costing_variant
       ,poh.act_costing_variant
       ,poh.backflushing
       ,poh.sched_basis
       ,poh.ind_relshp_data
       ,poh.ind_work
       ,poh.finish_date
       ,poh.start_date
       ,poh.finish_date_1
       ,poh.start_date_1
       ,poh.release_1
       ,poh.reduction_ind_1
       ,poh.sched_type_for
       ,poh.confirmation
       ,poh.counter_2
       ,poh.confirmed_yield
       ,poh.rate_id
       ,poh.rough_sched_id
       ,poh.int_object_no
       ,poh.finish_time
       ,poh.schedstarttime
       ,poh.revision_level
       ,poh.object_type
       ,poh.object_id
       ,poh.object_type_1
       ,poh.object_id_1
       ,poh.no_auto_cost
       ,poh.noautomatcost
       ,poh.level
       ,poh.path
       ,poh.path_1
       ,poh.reservation_1
       ,poh.order_item_no as order_item_no_poh
       ,poh.superior_order
       ,poh.left_node
       ,poh.right_node
       ,poh.collective_order
       ,poh.confirmed_scrap
       ,poh.processing
       ,poh.subnetwork_of
       ,poh.plan_no_f_oper_1
       ,poh.counter_3
       ,poh.eff_mat_plng
       ,poh.apportionment
       ,poh.change_number_2
       ,poh.sequence_number
       ,poh.exact_breaks
       ,poh.float_bef_prod_1
       ,poh.flt_after_prod
       ,poh.scheduled_on
       ,poh.basic_fin_time
       ,poh.start_time
       ,poh.actualstart
       ,poh.actual_finish_2
       ,poh.finish_time_1
       ,poh.start_time_1
       ,poh.finish_time_2
       ,poh.sched_start_1
       ,poh.search_proced
       ,poh.rempreprodfloat
       ,poh.remaining_float
       ,poh.leading_order
       ,poh.start
       ,poh.start_1
       ,poh.finish
       ,poh.finish_1
       ,poh.no_cap_reqmts
       ,poh.costcompind
       ,poh.prod_sched_profile
       ,poh.confirmed_rework
       ,poh.commitment_date
       ,poh.committed
       ,poh.no_planned_costs
       ,poh.account_assgnt
       ,poh.request_id
       ,poh.changeind
       ,poh.changeproctype
       ,poh.version
       ,poh.co_processing
       ,poh.proj_summ_mastda
       ,poh.identical_obj
       ,poh.object_id_2
       ,poh.version_1
       ,poh.sched_note
       ,poh.split_status
       ,poh.update_costs
       ,poh.maximum_qty
       ,poh.mes_routing
       ,poh.routing_version
       ,poh.bom_version
       ,poh.flexible
       ,poh.pm_ps_ref_element
       ,poh.sales_document
       ,poh.item
       ,poh.item_1
       ,poh.max_storage
       ,poh.time_unit
       ,poh.additional_days
       ,poh.date_of_manuf
       ,poh.bbd_sled
       ,poh.handling_type
       ,poh.master_prod_ord
       ,poh.bundle
       ,poh.adjustmt_factor
       ,poh.base_unit_2
       ,poh.base_quantity_1
       ,poh.combination_ind
       ,pomd.order_number as order_number_aufk
       ,pomd.order_type
       ,pomd.order_category
       ,pomd.order_1
       ,pomd.entered_by
       ,pomd.created_on
       ,pomd.changed_by
       ,pomd.changed_on
       ,pomd.description
       ,pomd.long_txt_exists
       ,pomd.company_code
       ,pomd.plant
       ,pomd.business_area
       ,pomd.co_area
       ,pomd.cost_collector
       ,pomd.resp_cost_cntr
       ,pomd.location
       ,pomd.location_plant
       ,pomd.statistical
       ,pomd.currency
       ,pomd.status
       ,pomd.status_change
       ,pomd.reached_status
       ,pomd.created
       ,pomd.released
       ,pomd.completed
       ,pomd.closed
       ,pomd.planned_release as planned_release_aufk
       ,pomd.plannedcompltn
       ,pomd.planned_clo_dat
       ,pomd.release as release_aufk
       ,pomd.tech_completion
       ,pomd.close
       ,pomd.object_id as object_id_aufk
       ,pomd.distrangroup
       ,pomd.deletion_flag
       ,pomd.plan_line_items
       ,pomd.usage as usage_aufk
       ,pomd.application as application_aufk
       ,pomd.costing_sheet
       ,pomd.overhead_key
       ,pomd.process_group
       ,pomd.settlement_ce
       ,pomd.cost_center
       ,pomd.g_l_account
       ,pomd.allocation_set
       ,pomd.cctr_true_post
       ,pomd.valid_from as valid_from_aufk
       ,pomd.sequence_number as sequence_number_aufk
       ,pomd.applicant
       ,pomd.telephone
       ,pomd.person_resp
       ,pomd.telephone_1
       ,pomd.estimated_costs
       ,pomd.applicdate
       ,pomd.department
       ,pomd.work_start
       ,pomd.end_of_work
       ,pomd.work_permit
       ,pomd.object_number
       ,pomd.profit_center
       ,pomd.wbs_element
       ,pomd.variance_key
       ,pomd.ra_key
       ,pomd.event_based_posting
       ,pomd.tax_jur
       ,pomd.functional_area
       ,pomd.object_class
       ,pomd.integ_planning
       ,pomd.sales_order
       ,pomd.sales_ord_item
       ,pomd.ext_order_no
       ,pomd.invest_profile
       ,pomd.logical_system
       ,pomd.multiple_items
       ,pomd.req_co_code
       ,pomd.req_cost_center
       ,pomd.scale
       ,pomd.invest_reason
       ,pomd.envir_invest
       ,pomd.cost_collector_1
       ,pomd.interest_prof
       ,pomd.cost_collector_2
       ,pomd.req_order
       ,pomd.prod_proc_no
       ,pomd.process_cat
       ,pomd.refurbishment
       ,pomd.acctindicator
       ,pomd.address_number
       ,pomd.time_created
       ,pomd.changed_at
       ,pomd.costing_variant
       ,pomd.cost_estimateno
       ,pomd.personresponsible
       ,pomd.dummy_function_in_length_1
       ,pomd.joint_venture
       ,pomd.recovery_indic
       ,pomd.equity_type
       ,pomd.jv_object_type
       ,pomd.jib_jibe_class
       ,pomd.jib_jibe_sbclsa
       ,pomd.or_cost_obj
       ,pomd.time_stamp
       ,pomd.cu_order
       ,pomd.cm_number
       ,pomd.auto_est_costs
       ,pomd.cu_design_no
       ,pomd.dip_profile
       ,pomd.main_workctr
       ,pomd.plnt_workcenter
       ,pomd.reg_indicator
       ,pomd.clm_creation_cntrl
       ,pomd.claim_inconsistent
       ,pomd.claim_upd_trigger
       ,poid.order_number as order_number_afpo
       ,poid.order_item_no
       ,poid.spec_procuremt
       ,poid.quota_arr
       ,poid.quota_arr_item
       ,poid.wbs_element as wbs_element_afpo
       ,poid.planned_order
       ,poid.plnd_start_date
       ,poid.plnd_open_date
       ,poid.sales_order as sales_order_afpo
       ,poid.sales_ord_item as sales_ord_item_afpo
       ,poid.sorder_schedule
       ,poid.procurement
       ,poid.planned_scrap
       ,poid.total_quantity
       ,poid.gr_quantity
       ,poid.expectvarrecipt
       ,poid.order_un
       ,poid.base_unit as base_unit_afpo
       ,poid.material as material_afpo
       ,poid.scrap_quantity
       ,poid.order_quantity
       ,poid.acct_assgmt_cat
       ,poid.partial_convrs
       ,poid.delivery_date
       ,poid.planned_delivery
       ,poid.cost_estimateno as cost_estimateno_afpo
       ,poid.overdeliv_tol
       ,poid.unlimited
       ,poid.underdel_tol
       ,poid.stock_type
       ,poid.goods_receipt
       ,poid.valuation_type
       ,poid.valuation_cat
       ,poid.planning_plant
       ,poid.stor_loc
       ,poid.counter as counter_afpo
       ,poid.denominator
       ,poid.gr_proc_time
       ,poid.deliv_compl
       ,poid.rs_header
       ,poid.prod_version
       ,poid.bom_expl_number
       ,poid.standardvariant
       ,poid.plant as plant_afpo
       ,poid.order_category as order_category_afpo
       ,poid.order_type as order_type_afpo
       ,poid.basic_fin_date as basic_fin_date_afpo
       ,poid.sched_finish as sched_finish_afpo
       ,poid.release_ind
       ,poid.not_relevant
       ,poid.distribution
       ,poid.special_stock
       ,poid.consumption
       ,poid.gr_value
       ,poid.gr_non_valuated
       ,poid.unloading_point
       ,poid.recipient
       ,poid.batch
       ,poid.business_area as business_area_afpo
       ,poid.gr_can_change
       ,poid.int_object_no as int_object_no_afpo
       ,poid.kanban_indicat
       ,poid.settle_reser_no
       ,poid.settle_item_no
       ,poid.reservation_number as reservation_number_afpo
       ,poid.item_no
       ,poid.cost_collector as cost_collector_afpo
       ,poid.repetitive_mfg
       ,poid.kanban
       ,poid.sales_ord_stock
       ,poid.external_ppc
       ,poid.valid_from as valid_from_afpo
       ,poid.valid_to
       ,poid.object_number as object_number_afpo
       ,poid.not_relevant_1
       ,poid.committed as committed_afpo
       ,poid.commitment_date as commitment_date_afpo
       ,poid.type_avail_chck
       ,poid.valuation
       ,poid.deletion_flag as deletion_flag_afpo
       ,poid.serialnoprofile
       ,poid.no_serial_no
       ,poid.changeind as changeind_afpo
       ,poid.changeproctype as changeproctype_afpo
       ,poid.fixed_price_co_prod
       ,poid.int_object_no_1
       ,poid.mrp_area
       ,poid.standardvariant_1
       ,poid.stock_segment
       ,poid.customer
       ,poid.season_year
       ,poid.season
       ,poid.collection
       ,poid.theme
       ,poid.allocated_stock
       ,poid.original_order
       ,poid.confirmed_qty
       ,poid.sequence  
       ,CASE WHEN poh.dw_last_update_date > pomd.dw_last_update_date and poh.dw_last_update_date > poid.dw_last_update_date
             THEN poh.dw_last_update_date
             WHEN pomd.dw_last_update_date > poh.dw_last_update_date and pomd.dw_last_update_date > poid.dw_last_update_date
             THEN pomd.dw_last_update_date
             ELSE poid.dw_last_update_date
        END as input_last_update_date
       ,poh.dw_active_indicator 
       ,md.material_uuid
       ,md.material_key
       ,pd.plant_uuid
       ,pd.plant_key
       ,cd.customer_uuid
       ,cd.customer_key
       ,ccd.company_code_uuid
       ,ccd.company_code_key  
       ,sld.storage_location_uuid
       ,sld.storage_location_key      
  from  `{{ projectid }}.{{ slt_l0_staging }}.production_order_header` poh
        inner join `{{ projectid }}.{{ slt_l0_staging }}.production_order_master_details` pomd
    on  poh.client = pomd.client
   and  poh.order_number = pomd.order_number
   and  poh.dw_active_indicator = pomd.dw_active_indicator
        inner join `{{ projectid }}.{{ slt_l0_staging }}.production_order_item_details` poid
    on pomd.client = poid.client
   and pomd.order_number = poid.order_number
   and pomd.dw_active_indicator = poid.dw_active_indicator
       left join `{{ projectid }}.{{ slt_l1_dimension }}.material_dimension` md
    on md.material_key = CONCAT(poh.client,'-',poh.material,'-',pomd.plant)
   and md.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = CONCAT(poh.client,'-',pomd.plant)
   and pd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension` cd
    on cd.customer_key = CONCAT(poid.client,'-',poid.customer)
   and cd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` ccd
    on ccd.company_code_key = CONCAT(pomd.client,'-',pomd.company_code)
   and ccd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.storage_location_dimension` sld
    on sld.storage_location_key = CONCAT(poid.client,'-',poid.plant,'-',poid.stor_loc)
   and sld.dw_active_indicator = 'Y'
 where poh.dw_active_indicator = 'Y'
  and (poh.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'production_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
   or pomd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'production_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
   or poid.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'production_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_po AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.production_order_key as production_order_join_key,t.*
  from tmp_po t
UNION ALL 
SELECT NULL as production_order_join_key,t.*
  from tmp_po t
       INNER JOIN `{{ projectid }}.{{ slt_l1_facts }}.production_order_fact` pof
    on pof.production_order_key = t.production_order_key
   AND pof.finalmd5key <> t.finalmd5key
 WHERE pof.dw_active_indicator = 'Y') scr
ON tgt.production_order_key = scr.production_order_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 production_order_uuid
,production_order_key
,client
,order_number
,order_item_no
,material_uuid
,material_key
,plant_uuid
,plant_key
,customer_uuid
,customer_key
,company_code_uuid
,company_code_key
,storage_location_uuid
,storage_location_key
,basic_fin_date
,bas_start_date
,release
,sched_finish
,sched_start
,actual_start
,actual_finish
,actual_finish_1
,actual_release
,planned_release
,reservation_number
,total_scrap
,target_quantity
,base_unit
,material
,task_list_type
,group_list
,application
,group_counter
,usage
,explosion_date
,lot_size_to
,task_list_unit
,lot_size_from
,valid_from
,change_number
,planner_group
,lot_size_div
,bom_category
,material_1
,bom_status
,bom
,valid_from_1
,base_quantity
,base_unit_1
,change_number_1
,alternative
,usage_1
,from_lot_size
,to_lot_size
,bom_expl_date
,mrp_controller
,plan_no_f_oper
,prodn_supervisor
,schedmargin_key
,scheduling_type
,reduction_ind
,priority
,network
,superior_act
,network_profile
,float_bef_prod
,float_aft_prod
,release_period
,dates_changed
,capacity_requirement
,project_def
,counter
,counter_1
,add_crit_countr
,inspection_lot
,plnd_costing_variant
,act_costing_variant
,backflushing
,sched_basis
,ind_relshp_data
,ind_work
,finish_date
,start_date
,finish_date_1
,start_date_1
,release_1
,reduction_ind_1
,sched_type_for
,confirmation
,counter_2
,confirmed_yield
,rate_id
,rough_sched_id
,int_object_no
,finish_time
,schedstarttime
,revision_level
,object_type
,object_id
,object_type_1
,object_id_1
,no_auto_cost
,noautomatcost
,level
,path
,path_1
,reservation_1
,order_item_no_poh
,superior_order
,left_node
,right_node
,collective_order
,confirmed_scrap
,processing
,subnetwork_of
,plan_no_f_oper_1
,counter_3
,eff_mat_plng
,apportionment
,change_number_2
,sequence_number
,exact_breaks
,float_bef_prod_1
,flt_after_prod
,scheduled_on
,basic_fin_time
,start_time
,actualstart
,actual_finish_2
,finish_time_1
,start_time_1
,finish_time_2
,sched_start_1
,search_proced
,rempreprodfloat
,remaining_float
,leading_order
,start
,start_1
,finish
,finish_1
,no_cap_reqmts
,costcompind
,prod_sched_profile
,confirmed_rework
,commitment_date
,committed
,no_planned_costs
,account_assgnt
,request_id
,changeind
,changeproctype
,version
,co_processing
,proj_summ_mastda
,identical_obj
,object_id_2
,version_1
,sched_note
,split_status
,update_costs
,maximum_qty
,mes_routing
,routing_version
,bom_version
,flexible
,pm_ps_ref_element
,sales_document
,item
,item_1
,max_storage
,time_unit
,additional_days
,date_of_manuf
,bbd_sled
,handling_type
,master_prod_ord
,bundle
,adjustmt_factor
,base_unit_2
,base_quantity_1
,combination_ind
,order_number_aufk
,order_type
,order_category
,order_1
,entered_by
,created_on
,changed_by
,changed_on
,description
,long_txt_exists
,company_code
,plant
,business_area
,co_area
,cost_collector
,resp_cost_cntr
,location
,location_plant
,statistical
,currency
,status
,status_change
,reached_status
,created
,released
,completed
,closed
,planned_release_aufk
,plannedcompltn
,planned_clo_dat
,release_aufk
,tech_completion
,close
,object_id_aufk
,distrangroup
,deletion_flag
,plan_line_items
,usage_aufk
,application_aufk
,costing_sheet
,overhead_key
,process_group
,settlement_ce
,cost_center
,g_l_account
,allocation_set
,cctr_true_post
,valid_from_aufk
,sequence_number_aufk
,applicant
,telephone
,person_resp
,telephone_1
,estimated_costs
,applicdate
,department
,work_start
,end_of_work
,work_permit
,object_number
,profit_center
,wbs_element
,variance_key
,ra_key
,event_based_posting
,tax_jur
,functional_area
,object_class
,integ_planning
,sales_order
,sales_ord_item
,ext_order_no
,invest_profile
,logical_system
,multiple_items
,req_co_code
,req_cost_center
,scale
,invest_reason
,envir_invest
,cost_collector_1
,interest_prof
,cost_collector_2
,req_order
,prod_proc_no
,process_cat
,refurbishment
,acctindicator
,address_number
,time_created
,changed_at
,costing_variant
,cost_estimateno
,personresponsible
,dummy_function_in_length_1
,joint_venture
,recovery_indic
,equity_type
,jv_object_type
,jib_jibe_class
,jib_jibe_sbclsa
,or_cost_obj
,time_stamp
,cu_order
,cm_number
,auto_est_costs
,cu_design_no
,dip_profile
,main_workctr
,plnt_workcenter
,reg_indicator
,clm_creation_cntrl
,claim_inconsistent
,claim_upd_trigger
,order_number_afpo
,spec_procuremt
,quota_arr
,quota_arr_item
,wbs_element_afpo
,planned_order
,plnd_start_date
,plnd_open_date
,sales_order_afpo
,sales_ord_item_afpo
,sorder_schedule
,procurement
,planned_scrap
,total_quantity
,gr_quantity
,expectvarrecipt
,order_un
,base_unit_afpo
,material_afpo
,scrap_quantity
,order_quantity
,acct_assgmt_cat
,partial_convrs
,delivery_date
,planned_delivery
,cost_estimateno_afpo
,overdeliv_tol
,unlimited
,underdel_tol
,stock_type
,goods_receipt
,valuation_type
,valuation_cat
,planning_plant
,stor_loc
,counter_afpo
,denominator
,gr_proc_time
,deliv_compl
,rs_header
,prod_version
,bom_expl_number
,standardvariant
,plant_afpo
,order_category_afpo
,order_type_afpo
,basic_fin_date_afpo
,sched_finish_afpo
,release_ind
,not_relevant
,distribution
,special_stock
,consumption
,gr_value
,gr_non_valuated
,unloading_point
,recipient
,batch
,business_area_afpo
,gr_can_change
,int_object_no_afpo
,kanban_indicat
,settle_reser_no
,settle_item_no
,reservation_number_afpo
,item_no
,cost_collector_afpo
,repetitive_mfg
,kanban
,sales_ord_stock
,external_ppc
,valid_from_afpo
,valid_to
,object_number_afpo
,not_relevant_1
,committed_afpo
,commitment_date_afpo
,type_avail_chck
,valuation
,deletion_flag_afpo
,serialnoprofile
,no_serial_no
,changeind_afpo
,changeproctype_afpo
,fixed_price_co_prod
,int_object_no_1
,mrp_area
,standardvariant_1
,stock_segment
,customer
,season_year
,season
,collection
,theme
,allocated_stock
,original_order
,confirmed_qty
,sequence
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.production_order_key,scr.finalmd5key)))
,scr.production_order_key
,scr.client
,scr.order_number
,scr.order_item_no
,scr.material_uuid
,scr.material_key
,scr.plant_uuid
,scr.plant_key
,scr.customer_uuid
,scr.customer_key
,scr.company_code_uuid
,scr.company_code_key
,scr.storage_location_uuid
,scr.storage_location_key
,scr.basic_fin_date
,scr.bas_start_date
,scr.release
,scr.sched_finish
,scr.sched_start
,scr.actual_start
,scr.actual_finish
,scr.actual_finish_1
,scr.actual_release
,scr.planned_release
,scr.reservation_number
,scr.total_scrap
,scr.target_quantity
,scr.base_unit
,scr.material
,scr.task_list_type
,scr.group_list
,scr.application
,scr.group_counter
,scr.usage
,scr.explosion_date
,scr.lot_size_to
,scr.task_list_unit
,scr.lot_size_from
,scr.valid_from
,scr.change_number
,scr.planner_group
,scr.lot_size_div
,scr.bom_category
,scr.material_1
,scr.bom_status
,scr.bom
,scr.valid_from_1
,scr.base_quantity
,scr.base_unit_1
,scr.change_number_1
,scr.alternative
,scr.usage_1
,scr.from_lot_size
,scr.to_lot_size
,scr.bom_expl_date
,scr.mrp_controller
,scr.plan_no_f_oper
,scr.prodn_supervisor
,scr.schedmargin_key
,scr.scheduling_type
,scr.reduction_ind
,scr.priority
,scr.network
,scr.superior_act
,scr.network_profile
,scr.float_bef_prod
,scr.float_aft_prod
,scr.release_period
,scr.dates_changed
,scr.capacity_requirement
,scr.project_def
,scr.counter
,scr.counter_1
,scr.add_crit_countr
,scr.inspection_lot
,scr.plnd_costing_variant
,scr.act_costing_variant
,scr.backflushing
,scr.sched_basis
,scr.ind_relshp_data
,scr.ind_work
,scr.finish_date
,scr.start_date
,scr.finish_date_1
,scr.start_date_1
,scr.release_1
,scr.reduction_ind_1
,scr.sched_type_for
,scr.confirmation
,scr.counter_2
,scr.confirmed_yield
,scr.rate_id
,scr.rough_sched_id
,scr.int_object_no
,scr.finish_time
,scr.schedstarttime
,scr.revision_level
,scr.object_type
,scr.object_id
,scr.object_type_1
,scr.object_id_1
,scr.no_auto_cost
,scr.noautomatcost
,scr.level
,scr.path
,scr.path_1
,scr.reservation_1
,scr.order_item_no_poh
,scr.superior_order
,scr.left_node
,scr.right_node
,scr.collective_order
,scr.confirmed_scrap
,scr.processing
,scr.subnetwork_of
,scr.plan_no_f_oper_1
,scr.counter_3
,scr.eff_mat_plng
,scr.apportionment
,scr.change_number_2
,scr.sequence_number
,scr.exact_breaks
,scr.float_bef_prod_1
,scr.flt_after_prod
,scr.scheduled_on
,scr.basic_fin_time
,scr.start_time
,scr.actualstart
,scr.actual_finish_2
,scr.finish_time_1
,scr.start_time_1
,scr.finish_time_2
,scr.sched_start_1
,scr.search_proced
,scr.rempreprodfloat
,scr.remaining_float
,scr.leading_order
,scr.start
,scr.start_1
,scr.finish
,scr.finish_1
,scr.no_cap_reqmts
,scr.costcompind
,scr.prod_sched_profile
,scr.confirmed_rework
,scr.commitment_date
,scr.committed
,scr.no_planned_costs
,scr.account_assgnt
,scr.request_id
,scr.changeind
,scr.changeproctype
,scr.version
,scr.co_processing
,scr.proj_summ_mastda
,scr.identical_obj
,scr.object_id_2
,scr.version_1
,scr.sched_note
,scr.split_status
,scr.update_costs
,scr.maximum_qty
,scr.mes_routing
,scr.routing_version
,scr.bom_version
,scr.flexible
,scr.pm_ps_ref_element
,scr.sales_document
,scr.item
,scr.item_1
,scr.max_storage
,scr.time_unit
,scr.additional_days
,scr.date_of_manuf
,scr.bbd_sled
,scr.handling_type
,scr.master_prod_ord
,scr.bundle
,scr.adjustmt_factor
,scr.base_unit_2
,scr.base_quantity_1
,scr.combination_ind
,scr.order_number_aufk
,scr.order_type
,scr.order_category
,scr.order_1
,scr.entered_by
,scr.created_on
,scr.changed_by
,scr.changed_on
,scr.description
,scr.long_txt_exists
,scr.company_code
,scr.plant
,scr.business_area
,scr.co_area
,scr.cost_collector
,scr.resp_cost_cntr
,scr.location
,scr.location_plant
,scr.statistical
,scr.currency
,scr.status
,scr.status_change
,scr.reached_status
,scr.created
,scr.released
,scr.completed
,scr.closed
,scr.planned_release_aufk
,scr.plannedcompltn
,scr.planned_clo_dat
,scr.release_aufk
,scr.tech_completion
,scr.close
,scr.object_id_aufk
,scr.distrangroup
,scr.deletion_flag
,scr.plan_line_items
,scr.usage_aufk
,scr.application_aufk
,scr.costing_sheet
,scr.overhead_key
,scr.process_group
,scr.settlement_ce
,scr.cost_center
,scr.g_l_account
,scr.allocation_set
,scr.cctr_true_post
,scr.valid_from_aufk
,scr.sequence_number_aufk
,scr.applicant
,scr.telephone
,scr.person_resp
,scr.telephone_1
,scr.estimated_costs
,scr.applicdate
,scr.department
,scr.work_start
,scr.end_of_work
,scr.work_permit
,scr.object_number
,scr.profit_center
,scr.wbs_element
,scr.variance_key
,scr.ra_key
,scr.event_based_posting
,scr.tax_jur
,scr.functional_area
,scr.object_class
,scr.integ_planning
,scr.sales_order
,scr.sales_ord_item
,scr.ext_order_no
,scr.invest_profile
,scr.logical_system
,scr.multiple_items
,scr.req_co_code
,scr.req_cost_center
,scr.scale
,scr.invest_reason
,scr.envir_invest
,scr.cost_collector_1
,scr.interest_prof
,scr.cost_collector_2
,scr.req_order
,scr.prod_proc_no
,scr.process_cat
,scr.refurbishment
,scr.acctindicator
,scr.address_number
,scr.time_created
,scr.changed_at
,scr.costing_variant
,scr.cost_estimateno
,scr.personresponsible
,scr.dummy_function_in_length_1
,scr.joint_venture
,scr.recovery_indic
,scr.equity_type
,scr.jv_object_type
,scr.jib_jibe_class
,scr.jib_jibe_sbclsa
,scr.or_cost_obj
,scr.time_stamp
,scr.cu_order
,scr.cm_number
,scr.auto_est_costs
,scr.cu_design_no
,scr.dip_profile
,scr.main_workctr
,scr.plnt_workcenter
,scr.reg_indicator
,scr.clm_creation_cntrl
,scr.claim_inconsistent
,scr.claim_upd_trigger
,scr.order_number_afpo
,scr.spec_procuremt
,scr.quota_arr
,scr.quota_arr_item
,scr.wbs_element_afpo
,scr.planned_order
,scr.plnd_start_date
,scr.plnd_open_date
,scr.sales_order_afpo
,scr.sales_ord_item_afpo
,scr.sorder_schedule
,scr.procurement
,scr.planned_scrap
,scr.total_quantity
,scr.gr_quantity
,scr.expectvarrecipt
,scr.order_un
,scr.base_unit_afpo
,scr.material_afpo
,scr.scrap_quantity
,scr.order_quantity
,scr.acct_assgmt_cat
,scr.partial_convrs
,scr.delivery_date
,scr.planned_delivery
,scr.cost_estimateno_afpo
,scr.overdeliv_tol
,scr.unlimited
,scr.underdel_tol
,scr.stock_type
,scr.goods_receipt
,scr.valuation_type
,scr.valuation_cat
,scr.planning_plant
,scr.stor_loc
,scr.counter_afpo
,scr.denominator
,scr.gr_proc_time
,scr.deliv_compl
,scr.rs_header
,scr.prod_version
,scr.bom_expl_number
,scr.standardvariant
,scr.plant_afpo
,scr.order_category_afpo
,scr.order_type_afpo
,scr.basic_fin_date_afpo
,scr.sched_finish_afpo
,scr.release_ind
,scr.not_relevant
,scr.distribution
,scr.special_stock
,scr.consumption
,scr.gr_value
,scr.gr_non_valuated
,scr.unloading_point
,scr.recipient
,scr.batch
,scr.business_area_afpo
,scr.gr_can_change
,scr.int_object_no_afpo
,scr.kanban_indicat
,scr.settle_reser_no
,scr.settle_item_no
,scr.reservation_number_afpo
,scr.item_no
,scr.cost_collector_afpo
,scr.repetitive_mfg
,scr.kanban
,scr.sales_ord_stock
,scr.external_ppc
,scr.valid_from_afpo
,scr.valid_to
,scr.object_number_afpo
,scr.not_relevant_1
,scr.committed_afpo
,scr.commitment_date_afpo
,scr.type_avail_chck
,scr.valuation
,scr.deletion_flag_afpo
,scr.serialnoprofile
,scr.no_serial_no
,scr.changeind_afpo
,scr.changeproctype_afpo
,scr.fixed_price_co_prod
,scr.int_object_no_1
,scr.mrp_area
,scr.standardvariant_1
,scr.stock_segment
,scr.customer
,scr.season_year
,scr.season
,scr.collection
,scr.theme
,scr.allocated_stock
,scr.original_order
,scr.confirmed_qty
,scr.sequence
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'production_order_fact' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'production_order_fact') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'production_order_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'production_order_header,production_order_master_details,production_order_item_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_facts }}.production_order_fact`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.production_order_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'production_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.production_order_fact` where dw_active_indicator = 'Y'))) as inserted_record_count
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