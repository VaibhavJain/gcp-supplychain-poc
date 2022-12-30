MERGE INTO `{{ projectid }}.{{ slt_l1_facts }}.material_movement_fact` tgt
USING (
with tmp_scr AS(
SELECT CONCAT(mmd.client,'-',CAST(mmd.split_guid_part_1 AS STRING),'-',CAST(mmd.split_guid_part_2 AS STRING),'-',CAST(mmd.split_guid_part_3 AS STRING),'-',CAST(mmd.split_guid_part_4 AS STRING),'-',CAST(mmd.split_guid_part_5 AS STRING),'-',CAST(mmd.split_guid_part_6 AS STRING)) as material_movement_key,
       mmd.client,
       mmd.split_guid_part_1,
       mmd.split_guid_part_2,
       mmd.split_guid_part_3,
       mmd.split_guid_part_4,
       mmd.split_guid_part_5,
       mmd.split_guid_part_6,
       mmd.record_type,
       mmd.matl_doc_counter,
       mmd.stock_mat,
       mmd.plant,
       mmd.stor_location_sid,
       mmd.batch_sid,
       mmd.supplier_sid,
       mmd.sales_order,
       mmd.sales_ord_item,
       mmd.wbs_element,
       mmd.customer_sid,
       mmd.special_stock,
       mmd.stock_type,
       mmd.addl_supplier_sid,
       mmd.company_code,
       mmd.batch_sid_1,
       mmd.qty_updating,
       mmd.value_updating,
       mmd.document_object,
       mmd.valuation,
       mmd.stock_char,
       mmd.stock_cat,
       mmd.prodcostest_no,
       mmd.mrp_area,
       mmd.currency,
       mmd.amount_in_lc,
       mmd.delivery_costs,
       mmd.amount,
       mmd.revaluation,
       mmd.ext_amount_lc,
       mmd.salval_inc_vat,
       mmd.sales_value,
       mmd.total_value,
       mmd.salval_w_o_vat,
       mmd.alt_base_amnt,
       mmd.salval_incl_vat,
       mmd.amt_lc_w_stk_qty,
       mmd.amt_lc_w_cons_qty,
       mmd.base_unit,
       mmd.quantity,
       mmd.valuated_stock,
       mmd.stock_quantity,
       mmd.consumption_quantity,
       mmd.unit_of_entry,
       mmd.quantity_in_une,
       mmd.po_price_unit,
       mmd.qty_in_opun,
       mmd.order_unit,
       mmd.qty_in_oun,
       mmd.del_note_unit,
       mmd.del_note_qty,
       mmd.quantity_1,
       mmd.analytical_currency,
       mmd.analytical_price,
       mmd.analytical_pr_ind,
       mmd.analytical_value,
       mmd.analytic_val_cons,
       mmd.qty_in_puom,
       mmd.parallel_uom,
       mmd.puom_euom_qty,
       mmd.puom_entry_uom,
       mmd.pq_stock_quantity,
       mmd.pq_consumption_qty,
       mmd.parallel_uom_sid,
       mmd.receiving_mat,
       mmd.plant_1,
       mmd.stor_location_sid_1,
       mmd.batch_sid_2,
       mmd.supplier_sid_1,
       mmd.sales_document_sid,
       mmd.item_sid,
       mmd.wbs_element_sid,
       mmd.customer_sid_1,
       mmd.special_stock_1,
       mmd.stock_type_1,
       mmd.vendor,
       mmd.company_code_1,
       mmd.batch_sid_3,
       mmd.qty_updating_1,
       mmd.value_updating_1,
       mmd.document_object_1,
       mmd.valuation_1,
       mmd.stock_char_1,
       mmd.stock_cat_1,
       mmd.prodcostest_no_1,
       mmd.posting_date,
       mmd.entered_on,
       mmd.entered_at,
       mmd.year_day,
       mmd.year_week,
       mmd.year_month,
       mmd.year_quarter,
       mmd.year,
       mmd.quarter_1_4,
       mmd.month_1_12,
       mmd.calendar_week,
       mmd.day_of_year_1_366,
       mmd.week_day,
       mmd.document_date,
       mmd.changed_on,
       mmd.gi_time,
       mmd.time_zone,
       mmd.fi_year_variant,
       mmd.fiscal_year,
       mmd.period_year,
       mmd.period_year_1,
       mmd.sled_bbd,
       mmd.reference_date,
       mmd.reference_date_1,
       mmd.date_of_manuf,
       mmd.material_doc,
       mmd.mat_doc_year,
       mmd.mat_doc_item,
       mmd.line_id,
       mmd.parent_id,
       mmd.level,
       mmd.orig_line_itm,
       mmd.sales_order_1,
       mmd.sales_ord_item_1,
       mmd.sorder_schedule,
       mmd.purchase_order,
       mmd.item,
       mmd.fisc_yr_ref_doc,
       mmd.reference_doc,
       mmd.ref_doc_item,
       mmd.mat_doc_year_1,
       mmd.material_doc_1,
       mmd.mat_doc_item_1,
       mmd.order_number,
       mmd.asset,
       mmd.sub_number,
       mmd.document_number,
       mmd.line_item,
       mmd.document_number_1,
       mmd.line_item_1,
       mmd.reservation_number,
       mmd.item_no,
       mmd.tr_number,
       mmd.tr_item,
       mmd.posting_chge_no,
       mmd.to_number,
       mmd.orig_line_itm_1,
       mmd.reference,
       mmd.delivery,
       mmd.item_1,
       mmd.delivery_1,
       mmd.logical_system,
       mmd.material_doc_ewm,
       mmd.is_item_cancelled,
       mmd.rel_for_analytics,
       mmd.revmvmttypeind,
       mmd.service_doc_type,
       mmd.service_document,
       mmd.service_doc_item,
       mmd.warehouse_no,
       mmd.gm_document,
       mmd.movement_type,
       mmd.auto_created,
       mmd.material,
       mmd.stor_loc,
       mmd.batch,
       mmd.valuation_type,
       mmd.stock_type_2,
       mmd.status_key,
       mmd.batch_restr,
       mmd.vendor_1,
       mmd.customer,
       mmd.distribution,
       mmd.debit_credit,
       mmd.d_c_ind_reval,
       mmd.deliv_compl,
       mmd.text,
       mmd.equipment,
       mmd.recipient,
       mmd.unloading_point,
       mmd.business_area,
       mmd.co_area,
       mmd.trdg_part_ba,
       mmd.clearing_cocode,
       mmd.cost_center,
       mmd.not_in_use,
       mmd.cctposting_stat,
       mmd.ord_post_stat,
       mmd.projpost_stat,
       mmd.pa_post_stat,
       mmd.post_prev_per,
       mmd.pst_to_pr_year,
       mmd.final_issue,
       mmd.stat_relevant,
       mmd.receiving_mat_1,
       mmd.receiving_batch,
       mmd.receiving_sloc,
       mmd.restricted_use,
       mmd.stkeytferbatch,
       mmd.movement_ind,
       mmd.consumption,
       mmd.receipt_ind,
       mmd.gr_non_valuated,
       mmd.no_of_pallets,
       mmd.warehouse_no_1,
       mmd.storage_type,
       mmd.storage_bin,
       mmd.stock_category,
       mmd.movement_type_1,
       mmd.posting_in_wm,
       mmd.int_st_pst_src,
       mmd.inter_post_dest,
       mmd.dynamic_bin,
       mmd.trnsfr_priority,
       mmd.no_of_gr_slips,
       mmd.reason_for_mvmt,
       mmd.shipping_instr,
       mmd.compliance,
       mmd.real_estate_key,
       mmd.cost_object,
       mmd.profit_segment,
       mmd.profit_center,
       mmd.wbs_element_1,
       mmd.network,
       mmd.plan_no_f_oper,
       mmd.counter,
       mmd.order_item_no,
       mmd.partner,
       mmd.commitment_item,
       mmd.g_l_account,
       mmd.revgr_desp_ir,
       mmd.supplier,
       mmd.promotion,
       mmd.account_assgmt_no,
       mmd.int_object_no,
       mmd.partner_pc,
       mmd.record_type_1,
       mmd.fund,
       mmd.funds_center,
       mmd.quantity_string,
       mmd.value_string,
       mmd.price_control,
       mmd.functional_area,
       mmd.automatic_po,
       mmd.status_gr_doc,
       mmd.tax_code,
       mmd.tax_jur,
       mmd.mpn_material,
       mmd.gi_reval_o_k,
       mmd.tax_code_1,
       mmd.staging_ind,
       mmd.calcn_of_val_open,
       mmd.acctindicator,
       mmd.business_proc,
       mmd.goods_supplier,
       mmd.activity_type,
       mmd.vendor_stk_val,
       mmd.grants,
       mmd.stock_type_mod,
       mmd.gts_stock_type,
       mmd.earmarked_funds,
       mmd.document_item,
       mmd.multi_acct_assgt,
       mmd.receiving_mat_2,
       mmd.val_type_tfr,
       mmd.plant_2,
       mmd.special_stock_2,
       mmd.stock_segment,
       mmd.rec_stock_seg,
       mmd.reqmnt_segment,
       mmd.vendor_2,
       mmd.compl_ind,
       mmd.do_not_adj_crq,
       mmd.adjust_item,
       mmd.dialog_box,
       mmd.service_performer,
       mmd.personnel_no,
       mmd.acct_assgmt_cat,
       mmd.work_item_id,
       mmd.serv_rendered,
       mmd.dummy,
       mmd.season_year,
       mmd.season,
       mmd.collection,
       mmd.theme,
       mmd.characteristic_1,
       mmd.characteristic_2,
       mmd.characteristic_3,
       mmd.non_deductible,
       mmd.condkey,
       mmd.condkey_1,
       mmd.document_type,
       mmd.doc_type_rev,
       mmd.undefined_range_can_be_used_f,
       mmd.doc_header_text,
       mmd.unpl_del_costs,
       mmd.bill_of_lading,
       mmd.print_version,
       mmd.gr_gi_slip_no,
       mmd.logical_system_1,
       mmd.doc_type_ad,
       mmd.ext_wms_control,
       mmd.trans_ev_type,
       mmd.user_name,
       mmd.transaction_code,
       mmd.foreign_trade_datanr,
       mmd.customs_ref_no,
       mmd.enh_store_ret,
       mmd.adv_returns,
       mmd.single_character_flag,
       mmd.doc_condition,
       mmd.data_filter_value_for_data_agi,
       mmd.print_active,
       mmd.under_overdel,
       mmd.percentage_var,
       mmd.missing_part,
       mmd.print_kanban,      
       mmd.dw_last_update_date as input_last_update_date,
       mmd.dw_active_indicator ,
       md.material_uuid,
       md.material_key,
       pd.plant_uuid,
       pd.plant_key,
       sd.supplier_uuid,
       sd.supplier_key,
       ccd.company_code_uuid,
       ccd.company_code_key,
       sld.storage_location_uuid,
       sld.storage_location_key     
  from  `{{ projectid }}.{{ slt_l0_staging }}.masterial_movement_details` mmd
       left join `{{ projectid }}.{{ slt_l1_dimension }}.material_dimension` md
    on md.material_key = CONCAT(mmd.client,'-',mmd.material,'-',mmd.plant)
   and md.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = CONCAT(mmd.client,'-',mmd.plant)
   and pd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension` sd
    on sd.supplier_key = CONCAT(mmd.client,'-',mmd.vendor_1)
   and sd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` ccd
    on ccd.company_code_key = CONCAT(mmd.client,'-',mmd.company_code)
   and ccd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.storage_location_dimension` sld
    on sld.storage_location_key = CONCAT(mmd.client,'-',mmd.plant,'-',mmd.stor_loc)
   and sld.dw_active_indicator = 'Y'
 where mmd.dw_active_indicator = 'Y'
  and mmd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'material_movement_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),
tmp_po AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.material_movement_key as material_movement_join_key,t.*
  from tmp_po t
UNION ALL 
SELECT NULL as material_movement_join_key,t.*
  from tmp_po t
       INNER JOIN `{{ projectid }}.{{ slt_l1_facts }}.material_movement_fact` pof
    on pof.material_movement_key = t.material_movement_key
   AND pof.finalmd5key <> t.finalmd5key
 WHERE pof.dw_active_indicator = 'Y') scr
ON tgt.material_movement_key = scr.material_movement_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 material_movement_uuid
,material_movement_key
,client
,split_guid_part_1
,split_guid_part_2
,split_guid_part_3
,split_guid_part_4
,split_guid_part_5
,split_guid_part_6
,material_uuid
,material_key
,plant_uuid
,plant_key
,company_code_uuid
,company_code_key
,storage_location_uuid
,storage_location_key
,supplier_uuid
,supplier_key
,record_type
,matl_doc_counter
,stock_mat
,plant
,stor_location_sid
,batch_sid
,supplier_sid
,sales_order
,sales_ord_item
,wbs_element
,customer_sid
,special_stock
,stock_type
,addl_supplier_sid
,company_code
,batch_sid_1
,qty_updating
,value_updating
,document_object
,valuation
,stock_char
,stock_cat
,prodcostest_no
,mrp_area
,currency
,amount_in_lc
,delivery_costs
,amount
,revaluation
,ext_amount_lc
,salval_inc_vat
,sales_value
,total_value
,salval_w_o_vat
,alt_base_amnt
,salval_incl_vat
,amt_lc_w_stk_qty
,amt_lc_w_cons_qty
,base_unit
,quantity
,valuated_stock
,stock_quantity
,consumption_quantity
,unit_of_entry
,quantity_in_une
,po_price_unit
,qty_in_opun
,order_unit
,qty_in_oun
,del_note_unit
,del_note_qty
,quantity_1
,analytical_currency
,analytical_price
,analytical_pr_ind
,analytical_value
,analytic_val_cons
,qty_in_puom
,parallel_uom
,puom_euom_qty
,puom_entry_uom
,pq_stock_quantity
,pq_consumption_qty
,parallel_uom_sid
,receiving_mat
,plant_1
,stor_location_sid_1
,batch_sid_2
,supplier_sid_1
,sales_document_sid
,item_sid
,wbs_element_sid
,customer_sid_1
,special_stock_1
,stock_type_1
,vendor
,company_code_1
,batch_sid_3
,qty_updating_1
,value_updating_1
,document_object_1
,valuation_1
,stock_char_1
,stock_cat_1
,prodcostest_no_1
,posting_date
,entered_on
,entered_at
,year_day
,year_week
,year_month
,year_quarter
,year
,quarter_1_4
,month_1_12
,calendar_week
,day_of_year_1_366
,week_day
,document_date
,changed_on
,gi_time
,time_zone
,fi_year_variant
,fiscal_year
,period_year
,period_year_1
,sled_bbd
,reference_date
,reference_date_1
,date_of_manuf
,material_doc
,mat_doc_year
,mat_doc_item
,line_id
,parent_id
,level
,orig_line_itm
,sales_order_1
,sales_ord_item_1
,sorder_schedule
,purchase_order
,item
,fisc_yr_ref_doc
,reference_doc
,ref_doc_item
,mat_doc_year_1
,material_doc_1
,mat_doc_item_1
,order_number
,asset
,sub_number
,document_number
,line_item
,document_number_1
,line_item_1
,reservation_number
,item_no
,tr_number
,tr_item
,posting_chge_no
,to_number
,orig_line_itm_1
,reference
,delivery
,item_1
,delivery_1
,logical_system
,material_doc_ewm
,is_item_cancelled
,rel_for_analytics
,revmvmttypeind
,service_doc_type
,service_document
,service_doc_item
,warehouse_no
,gm_document
,movement_type
,auto_created
,material
,stor_loc
,batch
,valuation_type
,stock_type_2
,status_key
,batch_restr
,vendor_1
,customer
,distribution
,debit_credit
,d_c_ind_reval
,deliv_compl
,text
,equipment
,recipient
,unloading_point
,business_area
,co_area
,trdg_part_ba
,clearing_cocode
,cost_center
,not_in_use
,cctposting_stat
,ord_post_stat
,projpost_stat
,pa_post_stat
,post_prev_per
,pst_to_pr_year
,final_issue
,stat_relevant
,receiving_mat_1
,receiving_batch
,receiving_sloc
,restricted_use
,stkeytferbatch
,movement_ind
,consumption
,receipt_ind
,gr_non_valuated
,no_of_pallets
,warehouse_no_1
,storage_type
,storage_bin
,stock_category
,movement_type_1
,posting_in_wm
,int_st_pst_src
,inter_post_dest
,dynamic_bin
,trnsfr_priority
,no_of_gr_slips
,reason_for_mvmt
,shipping_instr
,compliance
,real_estate_key
,cost_object
,profit_segment
,profit_center
,wbs_element_1
,network
,plan_no_f_oper
,counter
,order_item_no
,partner
,commitment_item
,g_l_account
,revgr_desp_ir
,supplier
,promotion
,account_assgmt_no
,int_object_no
,partner_pc
,record_type_1
,fund
,funds_center
,quantity_string
,value_string
,price_control
,functional_area
,automatic_po
,status_gr_doc
,tax_code
,tax_jur
,mpn_material
,gi_reval_o_k
,tax_code_1
,staging_ind
,calcn_of_val_open
,acctindicator
,business_proc
,goods_supplier
,activity_type
,vendor_stk_val
,grants
,stock_type_mod
,gts_stock_type
,earmarked_funds
,document_item
,multi_acct_assgt
,receiving_mat_2
,val_type_tfr
,plant_2
,special_stock_2
,stock_segment
,rec_stock_seg
,reqmnt_segment
,vendor_2
,compl_ind
,do_not_adj_crq
,adjust_item
,dialog_box
,service_performer
,personnel_no
,acct_assgmt_cat
,work_item_id
,serv_rendered
,dummy
,season_year
,season
,collection
,theme
,characteristic_1
,characteristic_2
,characteristic_3
,non_deductible
,condkey
,condkey_1
,document_type
,doc_type_rev
,undefined_range_can_be_used_f
,doc_header_text
,unpl_del_costs
,bill_of_lading
,print_version
,gr_gi_slip_no
,logical_system_1
,doc_type_ad
,ext_wms_control
,trans_ev_type
,user_name
,transaction_code
,foreign_trade_datanr
,customs_ref_no
,enh_store_ret
,adv_returns
,single_character_flag
,doc_condition
,data_filter_value_for_data_agi
,print_active
,under_overdel
,percentage_var
,missing_part
,print_kanban
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.material_movement_key,scr.finalmd5key)))
,scr.material_movement_key
,scr.client
,scr.split_guid_part_1
,scr.split_guid_part_2
,scr.split_guid_part_3
,scr.split_guid_part_4
,scr.split_guid_part_5
,scr.split_guid_part_6
,scr.material_uuid
,scr.material_key
,scr.plant_uuid
,scr.plant_key
,scr.company_code_uuid
,scr.company_code_key
,scr.storage_location_uuid
,scr.storage_location_key
,scr.supplier_uuid
,scr.supplier_key
,scr.record_type
,scr.matl_doc_counter
,scr.stock_mat
,scr.plant
,scr.stor_location_sid
,scr.batch_sid
,scr.supplier_sid
,scr.sales_order
,scr.sales_ord_item
,scr.wbs_element
,scr.customer_sid
,scr.special_stock
,scr.stock_type
,scr.addl_supplier_sid
,scr.company_code
,scr.batch_sid_1
,scr.qty_updating
,scr.value_updating
,scr.document_object
,scr.valuation
,scr.stock_char
,scr.stock_cat
,scr.prodcostest_no
,scr.mrp_area
,scr.currency
,scr.amount_in_lc
,scr.delivery_costs
,scr.amount
,scr.revaluation
,scr.ext_amount_lc
,scr.salval_inc_vat
,scr.sales_value
,scr.total_value
,scr.salval_w_o_vat
,scr.alt_base_amnt
,scr.salval_incl_vat
,scr.amt_lc_w_stk_qty
,scr.amt_lc_w_cons_qty
,scr.base_unit
,scr.quantity
,scr.valuated_stock
,scr.stock_quantity
,scr.consumption_quantity
,scr.unit_of_entry
,scr.quantity_in_une
,scr.po_price_unit
,scr.qty_in_opun
,scr.order_unit
,scr.qty_in_oun
,scr.del_note_unit
,scr.del_note_qty
,scr.quantity_1
,scr.analytical_currency
,scr.analytical_price
,scr.analytical_pr_ind
,scr.analytical_value
,scr.analytic_val_cons
,scr.qty_in_puom
,scr.parallel_uom
,scr.puom_euom_qty
,scr.puom_entry_uom
,scr.pq_stock_quantity
,scr.pq_consumption_qty
,scr.parallel_uom_sid
,scr.receiving_mat
,scr.plant_1
,scr.stor_location_sid_1
,scr.batch_sid_2
,scr.supplier_sid_1
,scr.sales_document_sid
,scr.item_sid
,scr.wbs_element_sid
,scr.customer_sid_1
,scr.special_stock_1
,scr.stock_type_1
,scr.vendor
,scr.company_code_1
,scr.batch_sid_3
,scr.qty_updating_1
,scr.value_updating_1
,scr.document_object_1
,scr.valuation_1
,scr.stock_char_1
,scr.stock_cat_1
,scr.prodcostest_no_1
,scr.posting_date
,scr.entered_on
,scr.entered_at
,scr.year_day
,scr.year_week
,scr.year_month
,scr.year_quarter
,scr.year
,scr.quarter_1_4
,scr.month_1_12
,scr.calendar_week
,scr.day_of_year_1_366
,scr.week_day
,scr.document_date
,scr.changed_on
,scr.gi_time
,scr.time_zone
,scr.fi_year_variant
,scr.fiscal_year
,scr.period_year
,scr.period_year_1
,scr.sled_bbd
,scr.reference_date
,scr.reference_date_1
,scr.date_of_manuf
,scr.material_doc
,scr.mat_doc_year
,scr.mat_doc_item
,scr.line_id
,scr.parent_id
,scr.level
,scr.orig_line_itm
,scr.sales_order_1
,scr.sales_ord_item_1
,scr.sorder_schedule
,scr.purchase_order
,scr.item
,scr.fisc_yr_ref_doc
,scr.reference_doc
,scr.ref_doc_item
,scr.mat_doc_year_1
,scr.material_doc_1
,scr.mat_doc_item_1
,scr.order_number
,scr.asset
,scr.sub_number
,scr.document_number
,scr.line_item
,scr.document_number_1
,scr.line_item_1
,scr.reservation_number
,scr.item_no
,scr.tr_number
,scr.tr_item
,scr.posting_chge_no
,scr.to_number
,scr.orig_line_itm_1
,scr.reference
,scr.delivery
,scr.item_1
,scr.delivery_1
,scr.logical_system
,scr.material_doc_ewm
,scr.is_item_cancelled
,scr.rel_for_analytics
,scr.revmvmttypeind
,scr.service_doc_type
,scr.service_document
,scr.service_doc_item
,scr.warehouse_no
,scr.gm_document
,scr.movement_type
,scr.auto_created
,scr.material
,scr.stor_loc
,scr.batch
,scr.valuation_type
,scr.stock_type_2
,scr.status_key
,scr.batch_restr
,scr.vendor_1
,scr.customer
,scr.distribution
,scr.debit_credit
,scr.d_c_ind_reval
,scr.deliv_compl
,scr.text
,scr.equipment
,scr.recipient
,scr.unloading_point
,scr.business_area
,scr.co_area
,scr.trdg_part_ba
,scr.clearing_cocode
,scr.cost_center
,scr.not_in_use
,scr.cctposting_stat
,scr.ord_post_stat
,scr.projpost_stat
,scr.pa_post_stat
,scr.post_prev_per
,scr.pst_to_pr_year
,scr.final_issue
,scr.stat_relevant
,scr.receiving_mat_1
,scr.receiving_batch
,scr.receiving_sloc
,scr.restricted_use
,scr.stkeytferbatch
,scr.movement_ind
,scr.consumption
,scr.receipt_ind
,scr.gr_non_valuated
,scr.no_of_pallets
,scr.warehouse_no_1
,scr.storage_type
,scr.storage_bin
,scr.stock_category
,scr.movement_type_1
,scr.posting_in_wm
,scr.int_st_pst_src
,scr.inter_post_dest
,scr.dynamic_bin
,scr.trnsfr_priority
,scr.no_of_gr_slips
,scr.reason_for_mvmt
,scr.shipping_instr
,scr.compliance
,scr.real_estate_key
,scr.cost_object
,scr.profit_segment
,scr.profit_center
,scr.wbs_element_1
,scr.network
,scr.plan_no_f_oper
,scr.counter
,scr.order_item_no
,scr.partner
,scr.commitment_item
,scr.g_l_account
,scr.revgr_desp_ir
,scr.supplier
,scr.promotion
,scr.account_assgmt_no
,scr.int_object_no
,scr.partner_pc
,scr.record_type_1
,scr.fund
,scr.funds_center
,scr.quantity_string
,scr.value_string
,scr.price_control
,scr.functional_area
,scr.automatic_po
,scr.status_gr_doc
,scr.tax_code
,scr.tax_jur
,scr.mpn_material
,scr.gi_reval_o_k
,scr.tax_code_1
,scr.staging_ind
,scr.calcn_of_val_open
,scr.acctindicator
,scr.business_proc
,scr.goods_supplier
,scr.activity_type
,scr.vendor_stk_val
,scr.grants
,scr.stock_type_mod
,scr.gts_stock_type
,scr.earmarked_funds
,scr.document_item
,scr.multi_acct_assgt
,scr.receiving_mat_2
,scr.val_type_tfr
,scr.plant_2
,scr.special_stock_2
,scr.stock_segment
,scr.rec_stock_seg
,scr.reqmnt_segment
,scr.vendor_2
,scr.compl_ind
,scr.do_not_adj_crq
,scr.adjust_item
,scr.dialog_box
,scr.service_performer
,scr.personnel_no
,scr.acct_assgmt_cat
,scr.work_item_id
,scr.serv_rendered
,scr.dummy
,scr.season_year
,scr.season
,scr.collection
,scr.theme
,scr.characteristic_1
,scr.characteristic_2
,scr.characteristic_3
,scr.non_deductible
,scr.condkey
,scr.condkey_1
,scr.document_type
,scr.doc_type_rev
,scr.undefined_range_can_be_used_f
,scr.doc_header_text
,scr.unpl_del_costs
,scr.bill_of_lading
,scr.print_version
,scr.gr_gi_slip_no
,scr.logical_system_1
,scr.doc_type_ad
,scr.ext_wms_control
,scr.trans_ev_type
,scr.user_name
,scr.transaction_code
,scr.foreign_trade_datanr
,scr.customs_ref_no
,scr.enh_store_ret
,scr.adv_returns
,scr.single_character_flag
,scr.doc_condition
,scr.data_filter_value_for_data_agi
,scr.print_active
,scr.under_overdel
,scr.percentage_var
,scr.missing_part
,scr.print_kanban
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'material_movement_fact' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'material_movement_fact') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'material_movement_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'masterial_movement_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_facts }}.material_movement_fact`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.material_movement_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'material_movement_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.material_movement_fact` where dw_active_indicator = 'Y'))) as inserted_record_count
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