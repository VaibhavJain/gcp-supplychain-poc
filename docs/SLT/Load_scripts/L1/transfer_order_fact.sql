MERGE INTO `{{ projectid }}.{{ slt_l1_facts }}.transfer_order_fact` tgt
USING (
with tmp_scr AS(
SELECT  CONCAT(toh.client,'-',toh.warehouse_no,'-',toh.to_number,'-',toi.tr_order_item) as transfer_order_key
       ,toh.client
       ,toh.warehouse_no
       ,toh.to_number
       ,toh.movement_type
       ,toh.movement_type_1
       ,toh.trnsfr_priority
       ,toh.shipment_type
       ,toh.creation_date
       ,toh.creation_time
       ,toh.user_number
       ,toh.group_number
       ,toh.tr_number
       ,toh.posting_chge_no
       ,toh.sales_document
       ,toh.confirmation
       ,toh.confirmat_date
       ,toh.material_doc
       ,toh.mat_doc_year
       ,toh.req_type
       ,toh.req_number
       ,toh.print_code
       ,toh.to_printed
       ,toh.partially_supp
       ,toh.ind_immediately
       ,toh.ind_accumulated
       ,toh.diff_immediat
       ,toh.ind_planned
       ,toh.execution_date
       ,toh.reservation_number
       ,toh.additional_number
       ,toh.requirementtype
       ,toh.control_cycle
       ,toh.kanban_item
       ,toh.performancedata
       ,toh.act_time_req_in_to
       ,toh.reqmt_act_data
       ,toh.personnel_no
       ,toh.plan_time_wm
       ,toh.plan_time_ext
       ,toh.actual_time_of_to
       ,toh.time_unit
       ,toh.to_hr_status
       ,toh.start_date
       ,toh.end_date
       ,toh.start_time
       ,toh.end_time
       ,toh.to_type
       ,toh.lean_wm
       ,toh.door_for_whse
       ,toh.staging_area
       ,toh.packaging_in_wm
       ,toh.deviation_pln_actual
       ,toh.to_proc_comment
       ,toh.special_ref
       ,toh.document_cat
       ,toh.queue
       ,toh.separate_conf
       ,toh.to_priority
       ,toh.pick_confirmed
       ,toh.confirm_hu
       ,toh.number_of_items
       ,toh.trm
       ,toh.delayed_update
       ,toh.conf_transfrd
       ,toh.to_for_mult_del
       ,toh.delivery_date
       ,toh.timeofdelivery
       ,toi.warehouse_no as warehouse_no_ltap
       ,toi.to_number as to_number_ltap
       ,toi.tr_order_item
       ,toi.tr_item
       ,toi.item
       ,toi.material
       ,toi.plant
       ,toi.batch
       ,toi.stock_category
       ,toi.special_stock
       ,toi.spec_stock_no
       ,toi.haz_matl_no
       ,toi.base_unit
       ,toi.alternativeunit
       ,toi.counter
       ,toi.denominator
       ,toi.stor_unit_type
       ,toi.preallstck
       ,toi.current_number
       ,toi.conf_required
       ,toi.zero_stock_chck
       ,toi.zero_stock_chck_1
       ,toi.invent_method
       ,toi.inventory_rec
       ,toi.confirmation as confirmation_ltap
       ,toi.confirmat_date as confirmat_date_ltap
       ,toi.confirmat_time
       ,toi.user
       ,toi.weight
       ,toi.weight_unit
       ,toi.mat_doc_item
       ,toi.recipient
       ,toi.unloading_point
       ,toi.gr_date
       ,toi.gr_number
       ,toi.goods_rec_item
       ,toi.certificate_no
       ,toi.printer
       ,toi.transfer_proc
       ,toi.source_stor_ty
       ,toi.src_stor_sectn
       ,toi.source_stor_bin
       ,toi.dynamic_bin
       ,toi.source_bin_pos
       ,toi.st_un_rem_stock
       ,toi.par_pallet_qty
       ,toi.source_targ_qty
       ,toi.source_act_qty
       ,toi.source_bin_dif
       ,toi.source_targ_qty_1
       ,toi.source_act_qty_1
       ,toi.source_b_diff
       ,toi.quant
       ,toi.source_it_appc
       ,toi.deststortype
       ,toi.dest_stor_sect
       ,toi.destination_bin
       ,toi.dynamic_bin_1
       ,toi.dest_bin_posit
       ,toi.su_to_be_pl_st
       ,toi.part_pallet_qty
       ,toi.dest_target_qty
       ,toi.act_qty_dest
       ,toi.dest_diff_qty
       ,toi.dest_target_qty_1
       ,toi.actual_qty
       ,toi.dest_diff_qty_1
       ,toi.quant_1
       ,toi.dest_it_to_appc
       ,toi.return_stor_ty
       ,toi.return_stor_ar
       ,toi.return_stor_bin
       ,toi.return_bin_pos
       ,toi.ret_target_qty
       ,toi.act_ret_qty
       ,toi.return_diff
       ,toi.ret_target_qty_1
       ,toi.act_ret_qty_1
       ,toi.return_diff_1
       ,toi.quant_2
       ,toi.ret_item_toappc
       ,toi.storage_type
       ,toi.storage_bin
       ,toi.quant_3
       ,toi.difference_qty
       ,toi.difference_qty_1
       ,toi.difference_ind
       ,toi.description
       ,toi.to_item_printed
       ,toi.source_su_no
       ,toi.dest_stor_unit
       ,toi.difference_su
       ,toi.srce_su_status
       ,toi.dest_su_status
       ,toi.stor_unit_cnts
       ,toi.removal_tot_su
       ,toi.item_category
       ,toi.original_item
       ,toi.totals_info
       ,toi.mixed_batches
       ,toi.totals_info_1
       ,toi.mixed_batches_1
       ,toi.item_no
       ,toi.sled_bbd
       ,toi.capac_material
       ,toi.capacity_check
       ,toi.capacity_check_1
       ,toi.capacity_check_2
       ,toi.item_to_subsys
       ,toi.inspection_lot
       ,toi.insp_lot_old
       ,toi.inspect_sample
       ,toi.record_type
       ,toi.confirm_batch
       ,toi.picking_area
       ,toi.stor_loc
       ,toi.plnd_time_toitm
       ,toi.time_unit as time_unit_ltap
       ,toi.step_picking
       ,toi.volume
       ,toi.volume_unit
       ,toi.inv_mgmt_active
       ,toi.posting_in_im
       ,toi.quantity_acting
       ,toi.act_ingred_uom
       ,toi.dest_bin_chgble
       ,toi.kanban_indicat
       ,toi.cancell_request
       ,toi.separate_conf as separate_conf_ltap
       ,toi.confirmation_1
       ,toi.confirmat_date_1
       ,toi.confirmat_time_1
       ,toi.user_1
       ,toi.leading_uom
       ,toi.conf_ind_extsys
       ,toi.hu_item
       ,toi.scstrgeunitnstd
       ,toi.packmaterials
       ,toi.indicator_source_su_is_pseudo
       ,toi.indicator_destination_su_is_p
       ,toi.indicator_source_su_is_a_hu_w
       ,toi.indicator_source_hu_suggested
       ,toi.handling_unit
       ,toi.flag_do_not_update_whse_contr
       ,toi.notransf_pckpnt
       ,toi.assignment_of_to_item_to_handl
       ,toi.packing_control
       ,toi.trm as trm_ltap
       ,toi.conf_transfrd as conf_transfrd_ltap
       ,toi.delivery
       ,toi.cross_dock
       ,toi.value_added
       ,toi.insp_guid
       ,toi.insp_guid_1
       ,toi.insp_guid_2
       ,toi.insp_guid_3
       ,toi.enter_parallel_qty
       ,toi.parallel_qty
       ,toi.parallel_uom
       ,toi.target_pq
       ,toi.parallel_uom_1
       ,toi.new_hu_parallel_qty
       ,toi.old_hu_parallel_qty
       ,toi.parallel_uom_2
       ,toi.cw_material
       ,toi.parallel_uom_3
       ,toi.pq_in_delivery
       ,toi.decision
       ,toi.indicator
       ,toi.indicator_1
       ,toi.stock_segment
       ,case when toh.dw_last_update_date > toi.dw_last_update_date
             then toh.dw_last_update_date 
             else toi.dw_last_update_date
        end as input_last_update_date
       ,toh.dw_active_indicator  
       ,wd.warehouse_uuid
       ,wd.warehouse_key    
       ,md.material_uuid
       ,md.material_key
       ,pd.plant_uuid
       ,pd.plant_key
  from `{{ projectid }}.{{ slt_l0_staging }}.transfer_order_header` toh
       inner join `{{ projectid }}.{{ slt_l0_staging }}.transfer_order_item` toi
    on toh.client = toi.client
   and toh.warehouse_no = toi.warehouse_no
   and toh.to_number = toi.to_number
   and toh.dw_active_indicator = toi.dw_active_indicator
       left join `{{ projectid }}.{{ slt_l1_dimension }}.warehouse_dimension` wd
    on wd.warehouse_key = CONCAT(toh.client,'-',toh.warehouse_no)
   and wd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.material_dimension` md
    on md.material_key = CONCAT(toh.client,'-',toi.material,'-',toi.plant)
   and md.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = CONCAT(toh.client,'-',toi.plant)
   and pd.dw_active_indicator = 'Y'
 where toh.dw_active_indicator = 'Y'
  and (toh.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'transfer_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
   or toi.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'transfer_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_to AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.transfer_order_key as transfer_order_join_key,t.*
  from tmp_to t
UNION ALL 
SELECT NULL as transfer_order_join_key,t.*
  from tmp_to t
       INNER JOIN `{{ projectid }}.{{ slt_l1_facts }}.transfer_order_fact` tof
    on tof.transfer_order_key = t.transfer_order_key
   AND tof.finalmd5key <> t.finalmd5key
 WHERE tof.dw_active_indicator = 'Y') scr
ON tgt.transfer_order_key = scr.transfer_order_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 transfer_order_uuid
,transfer_order_key
,client
,warehouse_no
,to_number
,tr_order_item
,warehouse_uuid
,warehouse_key
,material_uuid
,material_key
,plant_uuid
,plant_key
,movement_type
,movement_type_1
,trnsfr_priority
,shipment_type
,creation_date
,creation_time
,user_number
,group_number
,tr_number
,posting_chge_no
,sales_document
,confirmation
,confirmat_date
,material_doc
,mat_doc_year
,req_type
,req_number
,print_code
,to_printed
,partially_supp
,ind_immediately
,ind_accumulated
,diff_immediat
,ind_planned
,execution_date
,reservation_number
,additional_number
,requirementtype
,control_cycle
,kanban_item
,performancedata
,act_time_req_in_to
,reqmt_act_data
,personnel_no
,plan_time_wm
,plan_time_ext
,actual_time_of_to
,time_unit
,to_hr_status
,start_date
,end_date
,start_time
,end_time
,to_type
,lean_wm
,door_for_whse
,staging_area
,packaging_in_wm
,deviation_pln_actual
,to_proc_comment
,special_ref
,document_cat
,queue
,separate_conf
,to_priority
,pick_confirmed
,confirm_hu
,number_of_items
,trm
,delayed_update
,conf_transfrd
,to_for_mult_del
,delivery_date
,timeofdelivery
,warehouse_no_ltap
,to_number_ltap
,tr_item
,item
,material
,plant
,batch
,stock_category
,special_stock
,spec_stock_no
,haz_matl_no
,base_unit
,alternativeunit
,counter
,denominator
,stor_unit_type
,preallstck
,current_number
,conf_required
,zero_stock_chck
,zero_stock_chck_1
,invent_method
,inventory_rec
,confirmation_ltap
,confirmat_date_ltap
,confirmat_time
,user
,weight
,weight_unit
,mat_doc_item
,recipient
,unloading_point
,gr_date
,gr_number
,goods_rec_item
,certificate_no
,printer
,transfer_proc
,source_stor_ty
,src_stor_sectn
,source_stor_bin
,dynamic_bin
,source_bin_pos
,st_un_rem_stock
,par_pallet_qty
,source_targ_qty
,source_act_qty
,source_bin_dif
,source_targ_qty_1
,source_act_qty_1
,source_b_diff
,quant
,source_it_appc
,deststortype
,dest_stor_sect
,destination_bin
,dynamic_bin_1
,dest_bin_posit
,su_to_be_pl_st
,part_pallet_qty
,dest_target_qty
,act_qty_dest
,dest_diff_qty
,dest_target_qty_1
,actual_qty
,dest_diff_qty_1
,quant_1
,dest_it_to_appc
,return_stor_ty
,return_stor_ar
,return_stor_bin
,return_bin_pos
,ret_target_qty
,act_ret_qty
,return_diff
,ret_target_qty_1
,act_ret_qty_1
,return_diff_1
,quant_2
,ret_item_toappc
,storage_type
,storage_bin
,quant_3
,difference_qty
,difference_qty_1
,difference_ind
,description
,to_item_printed
,source_su_no
,dest_stor_unit
,difference_su
,srce_su_status
,dest_su_status
,stor_unit_cnts
,removal_tot_su
,item_category
,original_item
,totals_info
,mixed_batches
,totals_info_1
,mixed_batches_1
,item_no
,sled_bbd
,capac_material
,capacity_check
,capacity_check_1
,capacity_check_2
,item_to_subsys
,inspection_lot
,insp_lot_old
,inspect_sample
,record_type
,confirm_batch
,picking_area
,stor_loc
,plnd_time_toitm
,time_unit_ltap
,step_picking
,volume
,volume_unit
,inv_mgmt_active
,posting_in_im
,quantity_acting
,act_ingred_uom
,dest_bin_chgble
,kanban_indicat
,cancell_request
,separate_conf_ltap
,confirmation_1
,confirmat_date_1
,confirmat_time_1
,user_1
,leading_uom
,conf_ind_extsys
,hu_item
,scstrgeunitnstd
,packmaterials
,indicator_source_su_is_pseudo
,indicator_destination_su_is_p
,indicator_source_su_is_a_hu_w
,indicator_source_hu_suggested
,handling_unit
,flag_do_not_update_whse_contr
,notransf_pckpnt
,assignment_of_to_item_to_handl
,packing_control
,trm_ltap
,conf_transfrd_ltap
,delivery
,cross_dock
,value_added
,insp_guid
,insp_guid_1
,insp_guid_2
,insp_guid_3
,enter_parallel_qty
,parallel_qty
,parallel_uom
,target_pq
,parallel_uom_1
,new_hu_parallel_qty
,old_hu_parallel_qty
,parallel_uom_2
,cw_material
,parallel_uom_3
,pq_in_delivery
,decision
,indicator
,indicator_1
,stock_segment
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.transfer_order_key,scr.finalmd5key)))
,scr.transfer_order_key
,scr.client
,scr.warehouse_no
,scr.to_number
,scr.tr_order_item
,scr.warehouse_uuid
,scr.warehouse_key
,scr.material_uuid
,scr.material_key
,scr.plant_uuid
,scr.plant_key
,scr.movement_type
,scr.movement_type_1
,scr.trnsfr_priority
,scr.shipment_type
,scr.creation_date
,scr.creation_time
,scr.user_number
,scr.group_number
,scr.tr_number
,scr.posting_chge_no
,scr.sales_document
,scr.confirmation
,scr.confirmat_date
,scr.material_doc
,scr.mat_doc_year
,scr.req_type
,scr.req_number
,scr.print_code
,scr.to_printed
,scr.partially_supp
,scr.ind_immediately
,scr.ind_accumulated
,scr.diff_immediat
,scr.ind_planned
,scr.execution_date
,scr.reservation_number
,scr.additional_number
,scr.requirementtype
,scr.control_cycle
,scr.kanban_item
,scr.performancedata
,scr.act_time_req_in_to
,scr.reqmt_act_data
,scr.personnel_no
,scr.plan_time_wm
,scr.plan_time_ext
,scr.actual_time_of_to
,scr.time_unit
,scr.to_hr_status
,scr.start_date
,scr.end_date
,scr.start_time
,scr.end_time
,scr.to_type
,scr.lean_wm
,scr.door_for_whse
,scr.staging_area
,scr.packaging_in_wm
,scr.deviation_pln_actual
,scr.to_proc_comment
,scr.special_ref
,scr.document_cat
,scr.queue
,scr.separate_conf
,scr.to_priority
,scr.pick_confirmed
,scr.confirm_hu
,scr.number_of_items
,scr.trm
,scr.delayed_update
,scr.conf_transfrd
,scr.to_for_mult_del
,scr.delivery_date
,scr.timeofdelivery
,scr.warehouse_no_ltap
,scr.to_number_ltap
,scr.tr_item
,scr.item
,scr.material
,scr.plant
,scr.batch
,scr.stock_category
,scr.special_stock
,scr.spec_stock_no
,scr.haz_matl_no
,scr.base_unit
,scr.alternativeunit
,scr.counter
,scr.denominator
,scr.stor_unit_type
,scr.preallstck
,scr.current_number
,scr.conf_required
,scr.zero_stock_chck
,scr.zero_stock_chck_1
,scr.invent_method
,scr.inventory_rec
,scr.confirmation_ltap
,scr.confirmat_date_ltap
,scr.confirmat_time
,scr.user
,scr.weight
,scr.weight_unit
,scr.mat_doc_item
,scr.recipient
,scr.unloading_point
,scr.gr_date
,scr.gr_number
,scr.goods_rec_item
,scr.certificate_no
,scr.printer
,scr.transfer_proc
,scr.source_stor_ty
,scr.src_stor_sectn
,scr.source_stor_bin
,scr.dynamic_bin
,scr.source_bin_pos
,scr.st_un_rem_stock
,scr.par_pallet_qty
,scr.source_targ_qty
,scr.source_act_qty
,scr.source_bin_dif
,scr.source_targ_qty_1
,scr.source_act_qty_1
,scr.source_b_diff
,scr.quant
,scr.source_it_appc
,scr.deststortype
,scr.dest_stor_sect
,scr.destination_bin
,scr.dynamic_bin_1
,scr.dest_bin_posit
,scr.su_to_be_pl_st
,scr.part_pallet_qty
,scr.dest_target_qty
,scr.act_qty_dest
,scr.dest_diff_qty
,scr.dest_target_qty_1
,scr.actual_qty
,scr.dest_diff_qty_1
,scr.quant_1
,scr.dest_it_to_appc
,scr.return_stor_ty
,scr.return_stor_ar
,scr.return_stor_bin
,scr.return_bin_pos
,scr.ret_target_qty
,scr.act_ret_qty
,scr.return_diff
,scr.ret_target_qty_1
,scr.act_ret_qty_1
,scr.return_diff_1
,scr.quant_2
,scr.ret_item_toappc
,scr.storage_type
,scr.storage_bin
,scr.quant_3
,scr.difference_qty
,scr.difference_qty_1
,scr.difference_ind
,scr.description
,scr.to_item_printed
,scr.source_su_no
,scr.dest_stor_unit
,scr.difference_su
,scr.srce_su_status
,scr.dest_su_status
,scr.stor_unit_cnts
,scr.removal_tot_su
,scr.item_category
,scr.original_item
,scr.totals_info
,scr.mixed_batches
,scr.totals_info_1
,scr.mixed_batches_1
,scr.item_no
,scr.sled_bbd
,scr.capac_material
,scr.capacity_check
,scr.capacity_check_1
,scr.capacity_check_2
,scr.item_to_subsys
,scr.inspection_lot
,scr.insp_lot_old
,scr.inspect_sample
,scr.record_type
,scr.confirm_batch
,scr.picking_area
,scr.stor_loc
,scr.plnd_time_toitm
,scr.time_unit_ltap
,scr.step_picking
,scr.volume
,scr.volume_unit
,scr.inv_mgmt_active
,scr.posting_in_im
,scr.quantity_acting
,scr.act_ingred_uom
,scr.dest_bin_chgble
,scr.kanban_indicat
,scr.cancell_request
,scr.separate_conf_ltap
,scr.confirmation_1
,scr.confirmat_date_1
,scr.confirmat_time_1
,scr.user_1
,scr.leading_uom
,scr.conf_ind_extsys
,scr.hu_item
,scr.scstrgeunitnstd
,scr.packmaterials
,scr.indicator_source_su_is_pseudo
,scr.indicator_destination_su_is_p
,scr.indicator_source_su_is_a_hu_w
,scr.indicator_source_hu_suggested
,scr.handling_unit
,scr.flag_do_not_update_whse_contr
,scr.notransf_pckpnt
,scr.assignment_of_to_item_to_handl
,scr.packing_control
,scr.trm_ltap
,scr.conf_transfrd_ltap
,scr.delivery
,scr.cross_dock
,scr.value_added
,scr.insp_guid
,scr.insp_guid_1
,scr.insp_guid_2
,scr.insp_guid_3
,scr.enter_parallel_qty
,scr.parallel_qty
,scr.parallel_uom
,scr.target_pq
,scr.parallel_uom_1
,scr.new_hu_parallel_qty
,scr.old_hu_parallel_qty
,scr.parallel_uom_2
,scr.cw_material
,scr.parallel_uom_3
,scr.pq_in_delivery
,scr.decision
,scr.indicator
,scr.indicator_1
,scr.stock_segment
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'transfer_order_fact' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'transfer_order_fact') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'transfer_order_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'transfer_order_key,transfer_order_item' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_facts }}.transfer_order_fact`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.transfer_order_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'transfer_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.transfer_order_fact` where dw_active_indicator = 'Y'))) as inserted_record_count
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