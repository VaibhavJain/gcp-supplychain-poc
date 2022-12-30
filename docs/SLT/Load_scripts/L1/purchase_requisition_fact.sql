MERGE INTO `{{ projectid }}.{{ slt_l1_facts }}.purchase_requisition_fact` tgt
USING (
with tmp_scr AS(
SELECT  CONCAT(prd.client,'-',prd.purchase_req,'-',prd.requisn_item,COALESCE(CONCAT('-',praa.ser_no_acc_ass),'')) as purchase_requisition_key
       ,prd.client
       ,prd.purchase_req
       ,prd.requisn_item
       ,prd.document_type
       ,prd.doc_category
       ,prd.control
       ,prd.deletion_ind
       ,prd.processing_stat
       ,prd.creation_ind
       ,prd.release_ind
       ,prd.release_state
       ,prd.rel_strategy
       ,prd.purch_group
       ,prd.created_by
       ,prd.changed_on
       ,prd.requisitioner
       ,prd.short_text
       ,prd.material
       ,prd.mpn_material
       ,prd.plant
       ,prd.stor_loc
       ,prd.tracking_number
       ,prd.material_group
       ,prd.supplying_plant
       ,prd.quantity
       ,prd.unit_of_measure
       ,prd.shortage
       ,prd.requisn_date
       ,prd.delivery_date
       ,prd.delivery_date_1
       ,prd.release_date
       ,prd.gr_proc_time
       ,prd.valuation_price
       ,prd.price_unit
       ,prd.item_category
       ,prd.acct_assgmt_cat
       ,prd.consumption
       ,prd.modifiable
       ,prd.distribution
       ,prd.partial_invoice
       ,prd.goods_receipt
       ,prd.gr_non_valuated
       ,prd.invoice_receipt
       ,prd.desired_vendor
       ,prd.fixed_vendor
       ,prd.purchasing_org
       ,prd.doc_category_1
       ,prd.agreement
       ,prd.agreement_item
       ,prd.info_record
       ,prd.assigned
       ,prd.quota_arr
       ,prd.quota_arr_item
       ,prd.mrp_controller
       ,prd.bom_expl_number
       ,prd.last_resubmiss
       ,prd.resubmission
       ,prd.no_resubmiss
       ,prd.purchase_order
       ,prd.item
       ,prd.po_date
       ,prd.order_quantity
       ,prd.entry_sheet
       ,prd.valuation_type
       ,prd.commitments
       ,prd.closed
       ,prd.reservation_number
       ,prd.special_stock
       ,prd.settle_reser_no
       ,prd.settle_item_no
       ,prd.fixed_ind
       ,prd.order_unit
       ,prd.revision_level
       ,prd.advance_proc
       ,prd.package_number
       ,prd.kanban_indicat
       ,prd.po_price
       ,prd.int_object_no
       ,prd.release_group
       ,prd.subj_to_release
       ,prd.promotion
       ,prd.batch
       ,prd.sp_ind_st_tfr
       ,prd.prod_version
       ,prd.commitment_item
       ,prd.funds_center
       ,prd.fund
       ,prd.origin_of_config
       ,prd.cross_plant_cm
       ,prd.committed_qty
       ,prd.committed_date
       ,prd.matl_category
       ,prd.address
       ,prd.address_1
       ,prd.customer
       ,prd.supplier
       ,prd.sc_supplier
       ,prd.valuation
       ,prd.currency
       ,prd.supp_mat_no
       ,prd.overall_req_rel
       ,prd.mfr_part_profile
       ,prd.units_meas_use
       ,prd.language_key
       ,prd.standardvariant
       ,prd.mfr_part_number
       ,prd.manufacturer
       ,prd.external_manuf
       ,prd.framework_order
       ,prd.frwrk_ord_item
       ,prd.pl_deliv_time
       ,prd.mrp_area
       ,prd.deliver_date_time
       ,prd.functional_area
       ,prd.grants
       ,prd.incomplete
       ,prd.proc_state
       ,prd.tot_val_rel
       ,prd.blocking_ind
       ,prd.version
       ,prd.blocking_text
       ,prd.procuring_plant
       ,prd.procurement_prof
       ,prd.external_doc
       ,prd.external_item
       ,prd.po_qty_on_hold
       ,prd.reduce_com_value
       ,prd.iss_stor_loc
       ,prd.earmarked_funds
       ,prd.document_item
       ,prd.reqmt_urgency
       ,prd.reqmt_priority
       ,prd.incompl_cat
       ,prd.no_serial_no
       ,prd.rem_shelf_life
       ,prd.period_ind
       ,prd.res_purc_req
       ,prd.central_contract
       ,prd.cent_contract_item
       ,prd.budget_period
       ,prd.planned_dates
       ,prd.pr_in_expert_mode
       ,prd.is_central_pr_procg
       ,prd.crm_ref_order
       ,prd.crm_rf_item_no
       ,prd.pr_ext_include
       ,prd.character
       ,prd.character_field_length_64
       ,prd.creation_date
       ,prd.creation_time
       ,prd.product_type_group
       ,prd.service_performer
       ,prd.business_purp_compl
       ,prd.external_revision
       ,prd.us_govt
       ,prd.start_date
       ,prd.end_date
       ,prd.material_1
       ,prd.fixed_supplier
       ,prd.desired_supplier
       ,prd.contract
       ,prd.contract_item
       ,prd.info_record_1
       ,prd.plant_1
       ,prd.company_code
       ,prd.purch_organization
       ,prd.comm_system
       ,prd.connected_system_id
       ,prd.pr_change_indicator
       ,prd.pr_doctyp_of_connsys
       ,prd.ext_prcsng_status
       ,prd.pr_item
       ,prd.time_stamp
       ,prd.shop_on_behalf_ind
       ,prd.sdm_version
       ,prd.g_l_account
       ,prd.cost_center
       ,prd.expected_value
       ,prd.overall_limit
       ,prd.advice_code
       ,prd.statuscode
       ,prd.cs_preq
       ,prd.cs_preqitm
       ,prd.cs_item_cat
       ,prd.po_qty_sender
       ,prd.no_sloc_data
       ,prd.model_id_code
       ,prd.order_priority
       ,prd.delivery_prior
       ,prd.aircraftreg_no
       ,prd.donotsub
       ,prd.subcon_type
       ,prd.sp_stock
       ,prd.wbs_element
       ,prd.customer_1
       ,prd.sales_document
       ,prd.item_1
       ,prd.owner_of_stock
       ,prd.supply_process
       ,prd.hold_on_shore
       ,prd.season_year
       ,prd.season
       ,prd.collection
       ,prd.theme
       ,prd.vas_relevant
       ,prd.item_2
       ,prd.transaction_number
       ,prd.item_group
       ,prd.item_number
       ,prd.iuid_relevant
       ,prd.catalog_item_key
       ,prd.web_service_id
       ,prd.catalog_item
       ,prd.requestor
       ,prd.author
       ,prd.stock_segment
       ,prd.reqmnt_segment
       ,prd.characteristic_1
       ,prd.characteristic_2
       ,prd.characteristic_3
       ,praa.purchase_req as purchase_req_ebkn
       ,praa.requisn_item as requisn_item_ebkn
       ,praa.ser_no_acc_ass
       ,praa.deletion_ind as deletion_ind_ebkn
       ,praa.created_on
       ,praa.created_by as created_by_ebkn
       ,praa.quantity as quantity_ebkn
       ,praa.distribution as distribution_ebkn
       ,praa.g_l_account as g_l_account_ebkn
       ,praa.business_area
       ,praa.cost_center as cost_center_ebkn
       ,praa.not_in_use
       ,praa.sales_document as sales_document_ebkn
       ,praa.item as item_ebkn
       ,praa.schedule_line as schedule_line_ebkn
       ,praa.asset
       ,praa.sub_number
       ,praa.order_number
       ,praa.recipient
       ,praa.unloading_point
       ,praa.co_area
       ,praa.posting_to_cost_cent
       ,praa.to_order
       ,praa.to_project
       ,praa.cost_object
       ,praa.profit_segment
       ,praa.profit_center
       ,praa.wbs_element as wbs_element_ebkn
       ,praa.network
       ,praa.plan_no_f_oper
       ,praa.real_estate_key
       ,praa.counter
       ,praa.partner
       ,praa.commitment_item as commitment_item_ebkn
       ,praa.recovery_indic
       ,praa.funds_center as funds_center_ebkn
       ,praa.fund as fund_ebkn
       ,praa.functional_area as functional_area_ebkn
       ,praa.reference_date
       ,praa.net_value
       ,praa.plan_no_f_oper_1
       ,praa.counter_1
       ,praa.wbs_element_1
       ,praa.network_activity
       ,praa.service_doc_type
       ,praa.service_document
       ,praa.service_doc_item
       ,praa.earmarked_funds as earmarked_funds_ebkn
       ,praa.document_item as document_item_ebkn
       ,praa.activity_type
       ,praa.business_proc
       ,praa.grants as grants_ebkn
       ,praa.dist_batch_no
       ,praa.auth_group
       ,praa.budget_period as budget_period_ebkn
       ,praa.dummy
       ,praa.us_govt as us_govt_ebkn
       ,praa.equity_group
       ,praa.joint_venture
       ,praa.object_number
       ,praa.date_of_service
       ,praa.do_not_correct
       ,praa.option_rate
       ,praa.diff_opt_rate
       ,case when prd.dw_last_update_date > coalesce(praa.dw_last_update_date,CAST('1900-01-01T00:00:00' AS DATETIME))
             then prd.dw_last_update_date 
             else praa.dw_last_update_date
        end as input_last_update_date
       ,prd.dw_active_indicator   
       ,md.material_uuid
       ,md.material_key
       ,sd.supplier_uuid
       ,sd.supplier_key
       ,pd.plant_uuid
       ,pd.plant_key
       ,cd.customer_uuid
       ,cd.customer_key
       ,scd.supplier_company_code_uuid
       ,scd.supplier_company_code_key
       ,ccd.company_code_uuid
       ,ccd.company_code_key
       ,sld.storage_location_uuid
       ,sld.storage_location_key
  from `{{ projectid }}.{{ slt_l0_staging }}.purchase_requisition_details` prd
        left join `{{ projectid }}.{{ slt_l0_staging }}.purchase_requisition_account_assignment` praa
    on prd.client = praa.client
   and prd.purchase_req = praa.purchase_req
   and prd.requisn_item = praa.requisn_item
   and prd.dw_active_indicator = praa.dw_active_indicator
       left join `{{ projectid }}.{{ slt_l1_dimension }}.material_dimension` md
    on md.material_key = CONCAT(prd.client,'-',prd.material,'-',prd.plant)
   and md.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.plant_dimension` pd
    on pd.plant_key = CONCAT(prd.client,'-',prd.plant)
   and pd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.supplier_dimension` sd
    on sd.supplier_key = CONCAT(prd.client,'-',prd.desired_vendor)
   and sd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.supplier_code_dimension` scd
    on scd.supplier_company_code_key = CONCAT(prd.client,'-',prd.desired_vendor,'-',prd.company_code)
   and scd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.customer_dimension` cd
    on cd.customer_key = CONCAT(prd.client,'-',prd.customer) 
   and CD.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.company_code_dimension` ccd
    on ccd.company_code_key = CONCAT(prd.client,'-',prd.company_code)
   and ccd.dw_active_indicator = 'Y'
       left join `{{ projectid }}.{{ slt_l1_dimension }}.storage_location_dimension` sld
    on sld.storage_location_key = CONCAT(prd.client,'-',prd.plant,'-',prd.stor_loc)
   and sld.dw_active_indicator = 'Y'
 where prd.dw_active_indicator = 'Y' 
  and (prd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'purchase_requisition_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
   or praa.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'purchase_requisition_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_pr AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.purchase_requisition_key as purchase_requisition_join_key,t.*
  from tmp_pr t
UNION ALL 
SELECT NULL as purchase_requisition_join_key,t.*
  from tmp_pr t
       INNER JOIN `{{ projectid }}.{{ slt_l1_facts }}.purchase_requisition_fact` prf
    on prf.purchase_requisition_key = t.purchase_requisition_key
   AND prf.finalmd5key <> t.finalmd5key
 WHERE prf.dw_active_indicator = 'Y') scr
ON tgt.purchase_requisition_key = scr.purchase_requisition_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 purchase_requisition_uuid
,purchase_requisition_key
,client
,purchase_req
,requisn_item
,material_uuid
,material_key
,supplier_uuid
,supplier_key
,plant_uuid
,plant_key
,customer_uuid
,customer_key
,supplier_company_code_uuid
,supplier_company_code_key
,company_code_uuid
,company_code_key
,storage_location_uuid
,storage_location_key
,document_type
,doc_category
,control
,deletion_ind
,processing_stat
,creation_ind
,release_ind
,release_state
,rel_strategy
,purch_group
,created_by
,changed_on
,requisitioner
,short_text
,material
,mpn_material
,plant
,stor_loc
,tracking_number
,material_group
,supplying_plant
,quantity
,unit_of_measure
,shortage
,requisn_date
,delivery_date
,delivery_date_1
,release_date
,gr_proc_time
,valuation_price
,price_unit
,item_category
,acct_assgmt_cat
,consumption
,modifiable
,distribution
,partial_invoice
,goods_receipt
,gr_non_valuated
,invoice_receipt
,desired_vendor
,fixed_vendor
,purchasing_org
,doc_category_1
,agreement
,agreement_item
,info_record
,assigned
,quota_arr
,quota_arr_item
,mrp_controller
,bom_expl_number
,last_resubmiss
,resubmission
,no_resubmiss
,purchase_order
,item
,po_date
,order_quantity
,entry_sheet
,valuation_type
,commitments
,closed
,reservation_number
,special_stock
,settle_reser_no
,settle_item_no
,fixed_ind
,order_unit
,revision_level
,advance_proc
,package_number
,kanban_indicat
,po_price
,int_object_no
,release_group
,subj_to_release
,promotion
,batch
,sp_ind_st_tfr
,prod_version
,commitment_item
,funds_center
,fund
,origin_of_config
,cross_plant_cm
,committed_qty
,committed_date
,matl_category
,address
,address_1
,customer
,supplier
,sc_supplier
,valuation
,currency
,supp_mat_no
,overall_req_rel
,mfr_part_profile
,units_meas_use
,language_key
,standardvariant
,mfr_part_number
,manufacturer
,external_manuf
,framework_order
,frwrk_ord_item
,pl_deliv_time
,mrp_area
,deliver_date_time
,functional_area
,grants
,incomplete
,proc_state
,tot_val_rel
,blocking_ind
,version
,blocking_text
,procuring_plant
,procurement_prof
,external_doc
,external_item
,po_qty_on_hold
,reduce_com_value
,iss_stor_loc
,earmarked_funds
,document_item
,reqmt_urgency
,reqmt_priority
,incompl_cat
,no_serial_no
,rem_shelf_life
,period_ind
,res_purc_req
,central_contract
,cent_contract_item
,budget_period
,planned_dates
,pr_in_expert_mode
,is_central_pr_procg
,crm_ref_order
,crm_rf_item_no
,pr_ext_include
,character
,character_field_length_64
,creation_date
,creation_time
,product_type_group
,service_performer
,business_purp_compl
,external_revision
,us_govt
,start_date
,end_date
,material_1
,fixed_supplier
,desired_supplier
,contract
,contract_item
,info_record_1
,plant_1
,company_code
,purch_organization
,comm_system
,connected_system_id
,pr_change_indicator
,pr_doctyp_of_connsys
,ext_prcsng_status
,pr_item
,time_stamp
,shop_on_behalf_ind
,sdm_version
,g_l_account
,cost_center
,expected_value
,overall_limit
,advice_code
,statuscode
,cs_preq
,cs_preqitm
,cs_item_cat
,po_qty_sender
,no_sloc_data
,model_id_code
,order_priority
,delivery_prior
,aircraftreg_no
,donotsub
,subcon_type
,sp_stock
,wbs_element
,customer_1
,sales_document
,item_1
,owner_of_stock
,supply_process
,hold_on_shore
,season_year
,season
,collection
,theme
,vas_relevant
,item_2
,transaction_number
,item_group
,item_number
,iuid_relevant
,catalog_item_key
,web_service_id
,catalog_item
,requestor
,author
,stock_segment
,reqmnt_segment
,characteristic_1
,characteristic_2
,characteristic_3
,purchase_req_ebkn
,requisn_item_ebkn
,ser_no_acc_ass
,deletion_ind_ebkn
,created_on
,created_by_ebkn
,quantity_ebkn
,distribution_ebkn
,g_l_account_ebkn
,business_area
,cost_center_ebkn
,not_in_use
,sales_document_ebkn
,item_ebkn
,schedule_line_ebkn
,asset
,sub_number
,order_number
,recipient
,unloading_point
,co_area
,posting_to_cost_cent
,to_order
,to_project
,cost_object
,profit_segment
,profit_center
,wbs_element_ebkn
,network
,plan_no_f_oper
,real_estate_key
,counter
,partner
,commitment_item_ebkn
,recovery_indic
,funds_center_ebkn
,fund_ebkn
,functional_area_ebkn
,reference_date
,net_value
,plan_no_f_oper_1
,counter_1
,wbs_element_1
,network_activity
,service_doc_type
,service_document
,service_doc_item
,earmarked_funds_ebkn
,document_item_ebkn
,activity_type
,business_proc
,grants_ebkn
,dist_batch_no
,auth_group
,budget_period_ebkn
,dummy
,us_govt_ebkn
,equity_group
,joint_venture
,object_number
,date_of_service
,do_not_correct
,option_rate
,diff_opt_rate
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.purchase_requisition_key,scr.finalmd5key)))
,scr.purchase_requisition_key
,scr.client
,scr.purchase_req
,scr.requisn_item
,scr.material_uuid
,scr.material_key
,scr.supplier_uuid
,scr.supplier_key
,scr.plant_uuid
,scr.plant_key
,scr.customer_uuid
,scr.customer_key
,scr.supplier_company_code_uuid
,scr.supplier_company_code_key
,scr.company_code_uuid
,scr.company_code_key
,scr.storage_location_uuid
,scr.storage_location_key
,scr.document_type
,scr.doc_category
,scr.control
,scr.deletion_ind
,scr.processing_stat
,scr.creation_ind
,scr.release_ind
,scr.release_state
,scr.rel_strategy
,scr.purch_group
,scr.created_by
,scr.changed_on
,scr.requisitioner
,scr.short_text
,scr.material
,scr.mpn_material
,scr.plant
,scr.stor_loc
,scr.tracking_number
,scr.material_group
,scr.supplying_plant
,scr.quantity
,scr.unit_of_measure
,scr.shortage
,scr.requisn_date
,scr.delivery_date
,scr.delivery_date_1
,scr.release_date
,scr.gr_proc_time
,scr.valuation_price
,scr.price_unit
,scr.item_category
,scr.acct_assgmt_cat
,scr.consumption
,scr.modifiable
,scr.distribution
,scr.partial_invoice
,scr.goods_receipt
,scr.gr_non_valuated
,scr.invoice_receipt
,scr.desired_vendor
,scr.fixed_vendor
,scr.purchasing_org
,scr.doc_category_1
,scr.agreement
,scr.agreement_item
,scr.info_record
,scr.assigned
,scr.quota_arr
,scr.quota_arr_item
,scr.mrp_controller
,scr.bom_expl_number
,scr.last_resubmiss
,scr.resubmission
,scr.no_resubmiss
,scr.purchase_order
,scr.item
,scr.po_date
,scr.order_quantity
,scr.entry_sheet
,scr.valuation_type
,scr.commitments
,scr.closed
,scr.reservation_number
,scr.special_stock
,scr.settle_reser_no
,scr.settle_item_no
,scr.fixed_ind
,scr.order_unit
,scr.revision_level
,scr.advance_proc
,scr.package_number
,scr.kanban_indicat
,scr.po_price
,scr.int_object_no
,scr.release_group
,scr.subj_to_release
,scr.promotion
,scr.batch
,scr.sp_ind_st_tfr
,scr.prod_version
,scr.commitment_item
,scr.funds_center
,scr.fund
,scr.origin_of_config
,scr.cross_plant_cm
,scr.committed_qty
,scr.committed_date
,scr.matl_category
,scr.address
,scr.address_1
,scr.customer
,scr.supplier
,scr.sc_supplier
,scr.valuation
,scr.currency
,scr.supp_mat_no
,scr.overall_req_rel
,scr.mfr_part_profile
,scr.units_meas_use
,scr.language_key
,scr.standardvariant
,scr.mfr_part_number
,scr.manufacturer
,scr.external_manuf
,scr.framework_order
,scr.frwrk_ord_item
,scr.pl_deliv_time
,scr.mrp_area
,scr.deliver_date_time
,scr.functional_area
,scr.grants
,scr.incomplete
,scr.proc_state
,scr.tot_val_rel
,scr.blocking_ind
,scr.version
,scr.blocking_text
,scr.procuring_plant
,scr.procurement_prof
,scr.external_doc
,scr.external_item
,scr.po_qty_on_hold
,scr.reduce_com_value
,scr.iss_stor_loc
,scr.earmarked_funds
,scr.document_item
,scr.reqmt_urgency
,scr.reqmt_priority
,scr.incompl_cat
,scr.no_serial_no
,scr.rem_shelf_life
,scr.period_ind
,scr.res_purc_req
,scr.central_contract
,scr.cent_contract_item
,scr.budget_period
,scr.planned_dates
,scr.pr_in_expert_mode
,scr.is_central_pr_procg
,scr.crm_ref_order
,scr.crm_rf_item_no
,scr.pr_ext_include
,scr.character
,scr.character_field_length_64
,scr.creation_date
,scr.creation_time
,scr.product_type_group
,scr.service_performer
,scr.business_purp_compl
,scr.external_revision
,scr.us_govt
,scr.start_date
,scr.end_date
,scr.material_1
,scr.fixed_supplier
,scr.desired_supplier
,scr.contract
,scr.contract_item
,scr.info_record_1
,scr.plant_1
,scr.company_code
,scr.purch_organization
,scr.comm_system
,scr.connected_system_id
,scr.pr_change_indicator
,scr.pr_doctyp_of_connsys
,scr.ext_prcsng_status
,scr.pr_item
,scr.time_stamp
,scr.shop_on_behalf_ind
,scr.sdm_version
,scr.g_l_account
,scr.cost_center
,scr.expected_value
,scr.overall_limit
,scr.advice_code
,scr.statuscode
,scr.cs_preq
,scr.cs_preqitm
,scr.cs_item_cat
,scr.po_qty_sender
,scr.no_sloc_data
,scr.model_id_code
,scr.order_priority
,scr.delivery_prior
,scr.aircraftreg_no
,scr.donotsub
,scr.subcon_type
,scr.sp_stock
,scr.wbs_element
,scr.customer_1
,scr.sales_document
,scr.item_1
,scr.owner_of_stock
,scr.supply_process
,scr.hold_on_shore
,scr.season_year
,scr.season
,scr.collection
,scr.theme
,scr.vas_relevant
,scr.item_2
,scr.transaction_number
,scr.item_group
,scr.item_number
,scr.iuid_relevant
,scr.catalog_item_key
,scr.web_service_id
,scr.catalog_item
,scr.requestor
,scr.author
,scr.stock_segment
,scr.reqmnt_segment
,scr.characteristic_1
,scr.characteristic_2
,scr.characteristic_3
,scr.purchase_req_ebkn
,scr.requisn_item_ebkn
,scr.ser_no_acc_ass
,scr.deletion_ind_ebkn
,scr.created_on
,scr.created_by_ebkn
,scr.quantity_ebkn
,scr.distribution_ebkn
,scr.g_l_account_ebkn
,scr.business_area
,scr.cost_center_ebkn
,scr.not_in_use
,scr.sales_document_ebkn
,scr.item_ebkn
,scr.schedule_line_ebkn
,scr.asset
,scr.sub_number
,scr.order_number
,scr.recipient
,scr.unloading_point
,scr.co_area
,scr.posting_to_cost_cent
,scr.to_order
,scr.to_project
,scr.cost_object
,scr.profit_segment
,scr.profit_center
,scr.wbs_element_ebkn
,scr.network
,scr.plan_no_f_oper
,scr.real_estate_key
,scr.counter
,scr.partner
,scr.commitment_item_ebkn
,scr.recovery_indic
,scr.funds_center_ebkn
,scr.fund_ebkn
,scr.functional_area_ebkn
,scr.reference_date
,scr.net_value
,scr.plan_no_f_oper_1
,scr.counter_1
,scr.wbs_element_1
,scr.network_activity
,scr.service_doc_type
,scr.service_document
,scr.service_doc_item
,scr.earmarked_funds_ebkn
,scr.document_item_ebkn
,scr.activity_type
,scr.business_proc
,scr.grants_ebkn
,scr.dist_batch_no
,scr.auth_group
,scr.budget_period_ebkn
,scr.dummy
,scr.us_govt_ebkn
,scr.equity_group
,scr.joint_venture
,scr.object_number
,scr.date_of_service
,scr.do_not_correct
,scr.option_rate
,scr.diff_opt_rate
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'purchase_requisition_fact' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'purchase_requisition_fact') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'purchase_requisition_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'purchase_requisition_details,purchase_requisition_account_assignment' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_facts }}.purchase_requisition_fact`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.purchase_requisition_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'purchase_requisition_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_facts }}.purchase_requisition_fact` where dw_active_indicator = 'Y'))) as inserted_record_count
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