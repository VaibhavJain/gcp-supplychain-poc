
## Table Name : transfer_order_fact

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| transfer_order_uuid            | STRING    | Unique Generated Id                                          |
| transfer_order_key             | STRING    | Transfer order Key                                           |
| client                         | STRING    | Client                                                       |
| warehouse_no                   | STRING    | Warehouse Number / Warehouse Complex                         |
| to_number                      | STRING    | Transfer Order Number                                        |
| tr_order_item                  | STRING    | Transfer order item                                          |
| warehouse_uuid                 | STRING    | Warehouse Dimension Unique Generated Id                      |
| warehouse_key                  | STRING    | Warehouse key from Warehouse Dimension                       |
| material_uuid                  | STRING    | Material Dimension Unique Generated Id                       |
| material_key                   | STRING    | Material key from Material Dimension                         |
| plant_uuid                     | STRING    | Plant Dimension Unique Generated Id                          |
| plant_key                      | STRING    | Plant key from Plant Dimension                               |
| movement_type                  | STRING    | Movement type (inventory management)                         |
| movement_type_1                | STRING    | Movement Type for Warehouse Management                       |
| trnsfr_priority                | STRING    | Transfer Priority                                            |
| shipment_type                  | STRING    | Shipment Type                                                |
| creation_date                  | DATE      | Creation Date of Transfer Order                              |
| creation_time                  | TIME      | Creation time of transfer order                              |
| user_number                    | STRING    | User Name                                                    |
| group_number                   | STRING    | Group                                                        |
| tr_number                      | STRING    | Transfer Requirement Number                                  |
| posting_chge_no                | STRING    | Posting Change Number                                        |
| sales_document                 | STRING    | Sales and Distribution Document Number                       |
| confirmation                   | STRING    | Indicator: Confirmation                                      |
| confirmat_date                 | DATE      | Date of Confirmation                                         |
| material_doc                   | STRING    | Number of Material Document                                  |
| mat_doc_year                   | STRING    | Material Document Year                                       |
| req_type                       | STRING    | Requirement Type                                             |
| req_number                     | STRING    | Requirement Number                                           |
| print_code                     | STRING    | Indicator: form and sort code for printing transfer orders   |
| to_printed                     | STRING    | Indicator: Transfer Order is Printed                         |
| partially_supp                 | STRING    | Ind.: partial supply for documents in multiple processing    |
| ind_immediately                | STRING    | Indicator: Call up R/2 immediately (RM posting)              |
| ind_accumulated                | STRING    | Indicator: R/2 control accumulated (RM posting)              |
| diff_immediat                  | STRING    | Indicator: Pass on diff. to R/2 immediately (RM posting)     |
| ind_planned                    | STRING    | Indicator: preplanned transfer order                         |
| execution_date                 | DATE      | Planned execution date for a transfer order                  |
| reservation_number             | STRING    | Number of reservation/dependent requirements                 |
| additional_number              | STRING    | Additional Reference Number for Transport                    |
| requirementtype                | STRING    | Requirement type                                             |
| control_cycle                  | STRING    | Control Cycle                                                |
| kanban_item                    | STRING    | Kanban Control Cycle Item                                    |
| performancedata                | STRING    | Indicator for performance data                               |
| act_time_req_in_to             | STRING    | Indicator: Actual time required in TO                        |
| reqmt_act_data                 | STRING    | Indicator: Input requirement for actual data                 |
| personnel_no                   | STRING    | Personnel Number of User                                     |
| plan_time_wm                   | NUMERIC   | Planned Transfer Order Processing Time From WM               |
| plan_time_ext                  | NUMERIC   | Planned Transfer Order Processing Time from External System  |
| actual_time_of_to              | NUMERIC   | Actual Time of the WM Transfer Order                         |
| time_unit                      | STRING    | Time unit for performance data                               |
| to_hr_status                   | STRING    | Transfer Order Human Resources (HR) Status                   |
| start_date                     | DATE      | Start Date of the Transfer Order                             |
| end_date                       | DATE      | Transfer Order End Date                                      |
| start_time                     | TIME      | Start time of the transfer order                             |
| end_time                       | TIME      | Transfer Order End Time                                      |
| to_type                        | STRING    | Transfer Order Type in 2-Step Picking                        |
| lean_wm                        | STRING    | Transfer order transfers no real storage bin stock           |
| door_for_whse                  | STRING    | Door for Warehouse Number                                    |
| staging_area                   | STRING    | Staging Area for Warehouse Complex                           |
| packaging_in_wm                | STRING    | Indicator: Connection to packaging in WM                     |
| deviation_pln_actual           | STRING    | Threshold value of planned/actual time deviation as percent  |
| to_proc_comment                | STRING    | TO processing comment (code)                                 |
| special_ref                    | STRING    | Indicator special reference                                  |
| document_cat                   | STRING    | SD Document Category                                         |
| queue                          | STRING    | Queue                                                        |
| separate_conf                  | STRING    | Indicator: Separate confirmation possible                    |
| to_priority                    | STRING    | Transfer order priority                                      |
| pick_confirmed                 | STRING    | Indicator: Material pick has been confirmed                  |
| confirm_hu                     | STRING    | Indicator, confirm HU                                        |
| number_of_items                | STRING    | Current number of items in TO                                |
| trm                            | STRING    | TRM Interface Active                                         |
| delayed_update                 | STRING    | Delayed Update of Outbound Delivery                          |
| conf_transfrd                  | STRING    | Confirmation Data Transferred To Delivery                    |
| to_for_mult_del                | STRING    | Transfer Order for Multiple Deliveries                       |
| delivery_date                  | DATE      | Delivery Date                                                |
| timeofdelivery                 | TIME      | Time of delivery                                             |
| warehouse_no_ltap              | STRING    | Warehouse Number / Warehouse Complex                         |
| to_number_ltap                 | STRING    | Transfer Order Number                                        |
| tr_order_item                  | STRING    | Transfer order item                                          |
| tr_item                        | STRING    | Transfer Requirement Item                                    |
| item                           | STRING    | Item number of the SD document                               |
| material                       | STRING    | Material Number                                              |
| plant                          | STRING    | Plant                                                        |
| batch                          | STRING    | Batch Number                                                 |
| stock_category                 | STRING    | Stock Category in the Warehouse Management System            |
| special_stock                  | STRING    | Special Stock Indicator                                      |
| spec_stock_no                  | STRING    | Special Stock Number                                         |
| haz_matl_no                    | STRING    | Hazardous material number                                    |
| base_unit                      | STRING    | Base Unit of Measure                                         |
| alternativeunit                | STRING    | Alternative Unit of Measure for Stockkeeping Unit            |
| counter                        | NUMERIC   | Numerator for Conversion to Base Units of Measure            |
| denominator                    | NUMERIC   | Denominator for conversion to base units of measure          |
| stor_unit_type                 | STRING    | Storage Unit Type                                            |
| preallstck                     | STRING    | Indicator: pre-allocated stock                               |
| current_number                 | STRING    | Sequence number                                              |
| conf_required                  | STRING    | Indicator: confirmation required                             |
| zero_stock_chck                | STRING    | Indicator: Execute Zero Stock Check                          |
| zero_stock_chck_1              | STRING    | Status of zero stock check in transfer order item            |
| invent_method                  | STRING    | Inventory indicators                                         |
| inventory_rec                  | STRING    | Number of system inventory record                            |
| confirmation_ltap              | STRING    | Indicator: confirmation complete                             |
| confirmat_date_ltap            | DATE      | Date of confirmation                                         |
| confirmat_time                 | TIME      | Time of confirmation                                         |
| user                           | STRING    | User name                                                    |
| weight                         | NUMERIC   | Gross weight of transfer order item                          |
| weight_unit                    | STRING    | Weight Unit                                                  |
| mat_doc_item                   | STRING    | Item in Material Document                                    |
| recipient                      | STRING    | Goods recipient                                              |
| unloading_point                | STRING    | Unloading Point                                              |
| gr_date                        | DATE      | Date of Goods Receipt                                        |
| gr_number                      | STRING    | Goods Receipt Number                                         |
| goods_rec_item                 | STRING    | Goods receipt item                                           |
| certificate_no                 | STRING    | Certificate Number                                           |
| printer                        | STRING    | Name of printer                                              |
| transfer_proc                  | STRING    | Transfer procedure                                           |
| source_stor_ty                 | STRING    | Source Storage Type                                          |
| src_stor_sectn                 | STRING    | Source storage section                                       |
| source_stor_bin                | STRING    | Source Storage Bin                                           |
| dynamic_bin                    | STRING    | Indicator: dynamic storage bin                               |
| source_bin_pos                 | STRING    | Position in source storage bin                               |
| st_un_rem_stock                | NUMERIC   | Number of storage units to be transferred from bulk storage  |
| par_pallet_qty                 | STRING    | Indicator: partial pallet quantity exists                    |
| source_targ_qty                | NUMERIC   | Source target quantity in stockkeeping unit                  |
| source_act_qty                 | NUMERIC   | Source actual quantity in stockkeeping unit                  |
| source_bin_dif                 | NUMERIC   | Difference in source storage bin in stockkeeping unit        |
| source_targ_qty_1              | NUMERIC   | Source target quantity in alternate unit                     |
| source_act_qty_1               | NUMERIC   | Source actual quantity in alternative unit of measure        |
| source_b_diff                  | NUMERIC   | Difference in source storage bin in alternative unit         |
| quant                          | STRING    | Quant                                                        |
| source_it_appc                 | STRING    | Ind.: Pass on source item to APPC interface                  |
| deststortype                   | STRING    | Destination Storage Type                                     |
| dest_stor_sect                 | STRING    | Destination storage section                                  |
| destination_bin                | STRING    | Destination Storage Bin                                      |
| dynamic_bin_1                  | STRING    | Indicator: dynamic storage bin                               |
| dest_bin_posit                 | STRING    | Position in destination storage bin                          |
| su_to_be_pl_st                 | NUMERIC   | Number of storage units to be transferred to bulk storage    |
| part_pallet_qty                | STRING    | Indicator: partial pallet quantity exists                    |
| dest_target_qty                | NUMERIC   | Destination target quantity in stockkeeping unit             |
| act_qty_dest                   | NUMERIC   | Destination actual quantity in stockkeeping unit             |
| dest_diff_qty                  | NUMERIC   | Destination difference quantity in stockkeeping unit         |
| dest_target_qty_1              | NUMERIC   | Destination target quantity in alternative unit              |
| actual_qty                     | NUMERIC   | Actual destination quantity in alternative unit              |
| dest_diff_qty_1                | NUMERIC   | Destination difference qty. in alternative unit              |
| quant_1                        | STRING    | Quant                                                        |
| dest_it_to_appc                | STRING    | Indicator: pass on destination item to APPC interface        |
| return_stor_ty                 | STRING    | Return storage type                                          |
| return_stor_ar                 | STRING    | Return storage area                                          |
| return_stor_bin                | STRING    | Return storage bin                                           |
| return_bin_pos                 | STRING    | Position in return storage bin                               |
| ret_target_qty                 | NUMERIC   | Return target quantity in stockkeeping unit                  |
| act_ret_qty                    | NUMERIC   | Actual returned quantity in stockkeeping unit                |
| return_diff                    | NUMERIC   | Return difference quantity in stockkeeping unit              |
| ret_target_qty_1               | NUMERIC   | Return target quantity in alternative unit                   |
| act_ret_qty_1                  | NUMERIC   | Actual return quantity in alternate unit of measure          |
| return_diff_1                  | NUMERIC   | Return difference quantity in alternative unit               |
| quant_2                        | STRING    | Quant                                                        |
| ret_item_toappc                | STRING    | Indicator: pass on return item to APPC interface             |
| storage_type                   | STRING    | Difference storage type                                      |
| storage_bin                    | STRING    | Difference storage bin                                       |
| quant_3                        | STRING    | Difference quant                                             |
| difference_qty                 | NUMERIC   | Quantity of difference posting in stockkeeping unit          |
| difference_qty_1               | NUMERIC   | Difference quantity in alternate unit of measure             |
| difference_ind                 | STRING    | Difference indicator                                         |
| description                    | STRING    | Material description                                         |
| to_item_printed                | STRING    | Indicator: transfer order item is printed                    |
| source_su_no                   | STRING    | Source storage unit number                                   |
| dest_stor_unit                 | STRING    | Destination storage unit number                              |
| difference_su                  | STRING    | Number of storage unit for difference quantities             |
| srce_su_status                 | STRING    | Status of source storage unit                                |
| dest_su_status                 | STRING    | Status of destination storage unit                           |
| stor_unit_cnts                 | STRING    | Indicator: print storage unit contents                       |
| removal_tot_su                 | STRING    | Indicator: stock removal of a total, homogenous storage unit |
| item_category                  | STRING    | Type of transfer order item                                  |
| original_item                  | STRING    | TO item from which current TO item was generated             |
| totals_info                    | STRING    | Level of totals information SOURCE                           |
| mixed_batches                  | STRING    | Blocks with mixed batches SOURCE                             |
| totals_info_1                  | STRING    | Level of totals information DEST.                            |
| mixed_batches_1                | STRING    | Blocks with mixed batches DEST                               |
| item_no                        | STRING    | Item Number of Reservation / Dependent Requirements          |
| sled_bbd                       | DATE      | Shelf Life Expiration or Best-Before Date                    |
| capac_material                 | NUMERIC   | Capacity usage of transferred material                       |
| capacity_check                 | STRING    | Capacity check for source storage type                       |
| capacity_check_1               | STRING    | Capacity check for destination storage type                  |
| capacity_check_2               | STRING    | Capacity check return storage type                           |
| item_to_subsys                 | STRING    | Indicator: pass on TO item to subsystem                      |
| inspection_lot                 | STRING    | Inspection Lot Number                                        |
| insp_lot_old                   | STRING    | Inspection Lot on Which the Usage Decision is Based          |
| inspect_sample                 | STRING    | Indicator: transfer of insp.sample                           |
| record_type                    | STRING    | Record type                                                  |
| confirm_batch                  | STRING    | Indicator: Confirm Batch to PP                               |
| picking_area                   | STRING    | Picking Area                                                 |
| stor_loc                       | STRING    | Storage location                                             |
| plnd_time_toitm                | NUMERIC   | Planned proc.time in transfer order item                     |
| time_unit_ltap                 | STRING    | Time unit for performance data                               |
| step_picking                   | STRING    | Relevance for 2-step picking                                 |
| volume                         | NUMERIC   | Volume                                                       |
| volume_unit                    | STRING    | Volume unit                                                  |
| inv_mgmt_active                | STRING    | Indicator Inventory Management active                        |
| posting_in_im                  | STRING    | Trigger posting in Inventory Management                      |
| quantity_acting                | NUMERIC   | Transferred ingredient qty                                   |
| act_ingred_uom                 | STRING    | Active ingredient unit of measure                            |
| dest_bin_chgble                | STRING    | Dest.stor.bin changeable during confirmation                 |
| kanban_indicat                 | STRING    | Kanban Indicator                                             |
| cancell_request                | STRING    | Cancellation req. for TO item (currently only from Kanban)   |
| separate_conf_ltap             | STRING    | Indicator: Separate confirmation possible                    |
| confirmation_1                 | STRING    | Indicator: Material pick has been confirmed                  |
| confirmat_date_1               | DATE      | Date of Pick Confirmation (First Step)                       |
| confirmat_time_1               | TIME      | Time of Pick Confirmation (First Step)                       |
| user_1                         | STRING    | User Name in Pick Confirmation (First Step)                  |
| leading_uom                    | STRING    | ID: Leading unit of measure for completing a transaction     |
| conf_ind_extsys                | STRING    | Confirmation ind.: Two-step confirmation for external system |
| hu_item                        | STRING    | Flag: Transfer order item is HU TO item                      |
| scstrgeunitnstd                | STRING    | Indicates whether the source storage unit is a nested HU     |
| packmaterials                  | STRING    | Packaging Materials                                          |
| indicator_source_su_is_pseudo  | STRING    | Indicator: Source SU is pseudo SU (only HUs)                 |
| indicator_destination_su_is_p  | STRING    | Indicator: Destination SU is pseudo SU (only HUs)            |
| indicator_source_su_is_a_hu_w  | STRING    | Indicator: Source SU is a HU with serial numbers             |
| indicator_source_hu_suggested  | STRING    | Indicator: source HU suggested as pick HU at confirmation    |
| handling_unit                  | STRING    | External Handling Unit Identification                        |
| flag_do_not_update_whse_contr  | STRING    | Flag: Do not update whse controlling during TO creation      |
| notransf_pckpnt                | STRING    | Flag: Do not transfer SU to pick point (for SU block stor.)  |
| assignment_of_to_item_to_handl | STRING    | Assignment of TO item to handling unit is required           |
| packing_control                | STRING    | Packing Control                                              |
| trm_ltap                       | STRING    | TRM Interface Active                                         |
| conf_transfrd_ltap             | STRING    | Confirmation Data Transferred To Delivery                    |
| delivery                       | STRING    | Delivery                                                     |
| cross_dock                     | STRING    | Cross dock interface                                         |
| value_added                    | STRING    | Value added service interface                                |
| insp_guid                      | BYTES     | Inspection GUID                                              |
| insp_guid_1                    | BYTES     | Inspection GUID                                              |
| insp_guid_2                    | BYTES     | Inspection GUID                                              |
| insp_guid_3                    | BYTES     | Inspection GUID                                              |
| enter_parallel_qty             | STRING    | Control Indicator for Entry of Parallel Quantity in TO       |
| parallel_qty                   | NUMERIC   | Parallel Quantity of Transfer Order Item                     |
| parallel_uom                   | STRING    | Unit of Measure of Parallel Quantity of Transfer Order Item  |
| target_pq                      | NUMERIC   | Target Parallel Quantity of Transfer Order Item              |
| parallel_uom_1                 | STRING    | Unit of Measure for Target PQ for Transfer Order Item        |
| new_hu_parallel_qty            | NUMERIC   | New Parallel Quantity of HU Item                             |
| old_hu_parallel_qty            | NUMERIC   | Old Parallel Quantity of HU Item                             |
| parallel_uom_2                 | STRING    | Parallel Unit of Measure                                     |
| cw_material                    | STRING    | Material Is Activated for CW                                 |
| parallel_uom_3                 | STRING    | Parallel Unit of Measure                                     |
| pq_in_delivery                 | STRING    | Indicator: Update Parallel Quantity in Delivery              |
| decision                       | STRING    | Cross-Docking Decision Number                                |
| indicator                      | STRING    | General Flag                                                 |
| indicator_1                    | STRING    | General Flag                                                 |
| stock_segment                  | STRING    | Stock Segment                                                |
| finalmd5key                    | STRING    | MD5 key combining all columns                                |
| input_last_update_date         | DATETIME  | Last Input read time                                         |
| dw_active_indicator            | STRING    | Valid Indicator                                              |
| dw_start_date                  | DATETIME  | Record start date                                            |
| dw_end_date                    | DATETIME  | Record end date                                              |
| dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms