
## Table Name : transfer_order_fact

| sap_table | sap_column        | column_name                    | data_type | description                                                  |
|-----------|-------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                   | transfer_order_uuid            | STRING    | Unique Generated Id                                          |
|           |                   | transfer_order_key             | STRING    | Transfer order Key                                           |
| LTAK      | MANDT             | client                         | STRING    | Client                                                       |
| LTAK      | LGNUM             | warehouse_no                   | STRING    | Warehouse Number / Warehouse Complex                         |
| LTAK      | TANUM             | to_number                      | STRING    | Transfer Order Number                                        |
| LTAP      | TAPOS             | tr_order_item                  | STRING    | Transfer order item                                          |
|           |                   | warehouse_uuid                 | STRING    | Warehouse Dimension Unique Generated Id                      |
|           |                   | warehouse_key                  | STRING    | Warehouse key from Warehouse Dimension                       |
|           |                   | material_uuid                  | STRING    | Material Dimension Unique Generated Id                       |
|           |                   | material_key                   | STRING    | Material key from Material Dimension                         |
|           |                   | plant_uuid                     | STRING    | Plant Dimension Unique Generated Id                          |
|           |                   | plant_key                      | STRING    | Plant key from Plant Dimension                               |
| LTAK      | BWART             | movement_type                  | STRING    | Movement type (inventory management)                         |
| LTAK      | BWLVS             | movement_type_1                | STRING    | Movement Type for Warehouse Management                       |
| LTAK      | TBPRI             | trnsfr_priority                | STRING    | Transfer Priority                                            |
| LTAK      | TRART             | shipment_type                  | STRING    | Shipment Type                                                |
| LTAK      | BDATU             | creation_date                  | DATE      | Creation Date of Transfer Order                              |
| LTAK      | BZEIT             | creation_time                  | TIME      | Creation time of transfer order                              |
| LTAK      | BNAME             | user_number                    | STRING    | User Name                                                    |
| LTAK      | REFNR             | group_number                   | STRING    | Group                                                        |
| LTAK      | TBNUM             | tr_number                      | STRING    | Transfer Requirement Number                                  |
| LTAK      | UBNUM             | posting_chge_no                | STRING    | Posting Change Number                                        |
| LTAK      | VBELN             | sales_document                 | STRING    | Sales and Distribution Document Number                       |
| LTAK      | KQUIT             | confirmation                   | STRING    | Indicator: Confirmation                                      |
| LTAK      | QDATU             | confirmat_date                 | DATE      | Date of Confirmation                                         |
| LTAK      | MBLNR             | material_doc                   | STRING    | Number of Material Document                                  |
| LTAK      | MJAHR             | mat_doc_year                   | STRING    | Material Document Year                                       |
| LTAK      | BETYP             | req_type                       | STRING    | Requirement Type                                             |
| LTAK      | BENUM             | req_number                     | STRING    | Requirement Number                                           |
| LTAK      | DRUKZ             | print_code                     | STRING    | Indicator: form and sort code for printing transfer orders   |
| LTAK      | DRUCK             | to_printed                     | STRING    | Indicator: Transfer Order is Printed                         |
| LTAK      | TEILK             | partially_supp                 | STRING    | Ind.: partial supply for documents in multiple processing    |
| LTAK      | KR2SO             | ind_immediately                | STRING    | Indicator: Call up R/2 immediately (RM posting)              |
| LTAK      | KR2KU             | ind_accumulated                | STRING    | Indicator: R/2 control accumulated (RM posting)              |
| LTAK      | KDISO             | diff_immediat                  | STRING    | Indicator: Pass on diff. to R/2 immediately (RM posting)     |
| LTAK      | KZPLA             | ind_planned                    | STRING    | Indicator: preplanned transfer order                         |
| LTAK      | PLDAT             | execution_date                 | DATE      | Planned execution date for a transfer order                  |
| LTAK      | RSNUM             | reservation_number             | STRING    | Number of reservation/dependent requirements                 |
| LTAK      | LZNUM             | additional_number              | STRING    | Additional Reference Number for Transport                    |
| LTAK      | BDART             | requirementtype                | STRING    | Requirement type                                             |
| LTAK      | PKNUM             | control_cycle                  | STRING    | Control Cycle                                                |
| LTAK      | PKPOS             | kanban_item                    | STRING    | Kanban Control Cycle Item                                    |
| LTAK      | KZLEI             | performancedata                | STRING    | Indicator for performance data                               |
| LTAK      | KISTZ             | act_time_req_in_to             | STRING    | Indicator: Actual time required in TO                        |
| LTAK      | KISTP             | reqmt_act_data                 | STRING    | Indicator: Input requirement for actual data                 |
| LTAK      | PERNR             | personnel_no                   | STRING    | Personnel Number of User                                     |
| LTAK      | SOLWM             | plan_time_wm                   | NUMERIC   | Planned Transfer Order Processing Time From WM               |
| LTAK      | SOLEX             | plan_time_ext                  | NUMERIC   | Planned Transfer Order Processing Time from External System  |
| LTAK      | ISTWM             | actual_time_of_to              | NUMERIC   | Actual Time of the WM Transfer Order                         |
| LTAK      | ZEIEI             | time_unit                      | STRING    | Time unit for performance data                               |
| LTAK      | HRSTS             | to_hr_status                   | STRING    | Transfer Order Human Resources (HR) Status                   |
| LTAK      | STDAT             | start_date                     | DATE      | Start Date of the Transfer Order                             |
| LTAK      | ENDAT             | end_date                       | DATE      | Transfer Order End Date                                      |
| LTAK      | STUZT             | start_time                     | TIME      | Start time of the transfer order                             |
| LTAK      | ENUZT             | end_time                       | TIME      | Transfer Order End Time                                      |
| LTAK      | L2SKA             | to_type                        | STRING    | Transfer Order Type in 2-Step Picking                        |
| LTAK      | MINWM             | lean_wm                        | STRING    | Transfer order transfers no real storage bin stock           |
| LTAK      | LGTOR             | door_for_whse                  | STRING    | Door for Warehouse Number                                    |
| LTAK      | LGBZO             | staging_area                   | STRING    | Staging Area for Warehouse Complex                           |
| LTAK      | KZVEP             | packaging_in_wm                | STRING    | Indicator: Connection to packaging in WM                     |
| LTAK      | SWABW             | deviation_pln_actual           | STRING    | Threshold value of planned/actual time deviation as percent  |
| LTAK      | AUSFB             | to_proc_comment                | STRING    | TO processing comment (code)                                 |
| LTAK      | SPEZI             | special_ref                    | STRING    | Indicator special reference                                  |
| LTAK      | VBTYP             | document_cat                   | STRING    | SD Document Category                                         |
| LTAK      | QUEUE             | queue                          | STRING    | Queue                                                        |
| LTAK      | KGVNQ             | separate_conf                  | STRING    | Indicator: Separate confirmation possible                    |
| LTAK      | TAPRI             | to_priority                    | STRING    | Transfer order priority                                      |
| LTAK      | KVQUI             | pick_confirmed                 | STRING    | Indicator: Material pick has been confirmed                  |
| LTAK      | HUCON             | confirm_hu                     | STRING    | Indicator, confirm HU                                        |
| LTAK      | NOITM             | number_of_items                | STRING    | Current number of items in TO                                |
| LTAK      | KZTRM             | trm                            | STRING    | TRM Interface Active                                         |
| LTAK      | LATER             | delayed_update                 | STRING    | Delayed Update of Outbound Delivery                          |
| LTAK      | PASSD             | conf_transfrd                  | STRING    | Confirmation Data Transferred To Delivery                    |
| LTAK      | MULTL             | to_for_mult_del                | STRING    | Transfer Order for Multiple Deliveries                       |
| LTAK      | LFDAT             | delivery_date                  | DATE      | Delivery Date                                                |
| LTAK      | LFUHR             | timeofdelivery                 | TIME      | Time of delivery                                             |
| LTAP      | LGNUM             | warehouse_no_ltap              | STRING    | Warehouse Number / Warehouse Complex                         |
| LTAP      | TANUM             | to_number_ltap                 | STRING    | Transfer Order Number                                        |
| LTAP      | TBPOS             | tr_order_item                  | STRING    | Transfer order item                                          |
| LTAP      | POSNR             | tr_item                        | STRING    | Transfer Requirement Item                                    |
| LTAP      | MATNR             | item                           | STRING    | Item number of the SD document                               |
| LTAP      | WERKS             | material                       | STRING    | Material Number                                              |
| LTAP      | CHARG             | plant                          | STRING    | Plant                                                        |
| LTAP      | BESTQ             | batch                          | STRING    | Batch Number                                                 |
| LTAP      | SOBKZ             | stock_category                 | STRING    | Stock Category in the Warehouse Management System            |
| LTAP      | SONUM             | special_stock                  | STRING    | Special Stock Indicator                                      |
| LTAP      | STOFF             | spec_stock_no                  | STRING    | Special Stock Number                                         |
| LTAP      | MEINS             | haz_matl_no                    | STRING    | Hazardous material number                                    |
| LTAP      | ALTME             | base_unit                      | STRING    | Base Unit of Measure                                         |
| LTAP      | UMREZ             | alternativeunit                | STRING    | Alternative Unit of Measure for Stockkeeping Unit            |
| LTAP      | UMREN             | counter                        | NUMERIC   | Numerator for Conversion to Base Units of Measure            |
| LTAP      | LETYP             | denominator                    | NUMERIC   | Denominator for conversion to base units of measure          |
| LTAP      | KZFEH             | stor_unit_type                 | STRING    | Storage Unit Type                                            |
| LTAP      | LANUM             | preallstck                     | STRING    | Indicator: pre-allocated stock                               |
| LTAP      | KZQUI             | current_number                 | STRING    | Sequence number                                              |
| LTAP      | KZNKO             | conf_required                  | STRING    | Indicator: confirmation required                             |
| LTAP      | NULKO             | zero_stock_chck                | STRING    | Indicator: Execute Zero Stock Check                          |
| LTAP      | KZINV             | zero_stock_chck_1              | STRING    | Status of zero stock check in transfer order item            |
| LTAP      | IVNUM             | invent_method                  | STRING    | Inventory indicators                                         |
| LTAP      | PQUIT             | inventory_rec                  | STRING    | Number of system inventory record                            |
| LTAP      | QDATU             | confirmation_ltap              | STRING    | Indicator: confirmation complete                             |
| LTAP      | QZEIT             | confirmat_date_ltap            | DATE      | Date of confirmation                                         |
| LTAP      | QNAME             | confirmat_time                 | TIME      | Time of confirmation                                         |
| LTAP      | BRGEW             | user                           | STRING    | User name                                                    |
| LTAP      | GEWEI             | weight                         | NUMERIC   | Gross weight of transfer order item                          |
| LTAP      | MBPOS             | weight_unit                    | STRING    | Weight Unit                                                  |
| LTAP      | WEMPF             | mat_doc_item                   | STRING    | Item in Material Document                                    |
| LTAP      | ABLAD             | recipient                      | STRING    | Goods recipient                                              |
| LTAP      | WDATU             | unloading_point                | STRING    | Unloading Point                                              |
| LTAP      | WENUM             | gr_date                        | DATE      | Date of Goods Receipt                                        |
| LTAP      | WEPOS             | gr_number                      | STRING    | Goods Receipt Number                                         |
| LTAP      | ZEUGN             | goods_rec_item                 | STRING    | Goods receipt item                                           |
| LTAP      | LDEST             | certificate_no                 | STRING    | Certificate Number                                           |
| LTAP      | VORGA             | printer                        | STRING    | Name of printer                                              |
| LTAP      | VLTYP             | transfer_proc                  | STRING    | Transfer procedure                                           |
| LTAP      | VLBER             | source_stor_ty                 | STRING    | Source Storage Type                                          |
| LTAP      | VLPLA             | src_stor_sectn                 | STRING    | Source storage section                                       |
| LTAP      | VKDYN             | source_stor_bin                | STRING    | Source Storage Bin                                           |
| LTAP      | VPPOS             | dynamic_bin                    | STRING    | Indicator: dynamic storage bin                               |
| LTAP      | VANZL             | source_bin_pos                 | STRING    | Position in source storage bin                               |
| LTAP      | VANBR             | st_un_rem_stock                | NUMERIC   | Number of storage units to be transferred from bulk storage  |
| LTAP      | VSOLM             | par_pallet_qty                 | STRING    | Indicator: partial pallet quantity exists                    |
| LTAP      | VISTM             | source_targ_qty                | NUMERIC   | Source target quantity in stockkeeping unit                  |
| LTAP      | VDIFM             | source_act_qty                 | NUMERIC   | Source actual quantity in stockkeeping unit                  |
| LTAP      | VSOLA             | source_bin_dif                 | NUMERIC   | Difference in source storage bin in stockkeeping unit        |
| LTAP      | VISTA             | source_targ_qty_1              | NUMERIC   | Source target quantity in alternate unit                     |
| LTAP      | VDIFA             | source_act_qty_1               | NUMERIC   | Source actual quantity in alternative unit of measure        |
| LTAP      | VLQNR             | source_b_diff                  | NUMERIC   | Difference in source storage bin in alternative unit         |
| LTAP      | VAPPC             | quant                          | STRING    | Quant                                                        |
| LTAP      | NLTYP             | source_it_appc                 | STRING    | Ind.: Pass on source item to APPC interface                  |
| LTAP      | NLBER             | deststortype                   | STRING    | Destination Storage Type                                     |
| LTAP      | NLPLA             | dest_stor_sect                 | STRING    | Destination storage section                                  |
| LTAP      | NKDYN             | destination_bin                | STRING    | Destination Storage Bin                                      |
| LTAP      | NPPOS             | dynamic_bin_1                  | STRING    | Indicator: dynamic storage bin                               |
| LTAP      | NANZL             | dest_bin_posit                 | STRING    | Position in destination storage bin                          |
| LTAP      | NANBR             | su_to_be_pl_st                 | NUMERIC   | Number of storage units to be transferred to bulk storage    |
| LTAP      | NSOLM             | part_pallet_qty                | STRING    | Indicator: partial pallet quantity exists                    |
| LTAP      | NISTM             | dest_target_qty                | NUMERIC   | Destination target quantity in stockkeeping unit             |
| LTAP      | NDIFM             | act_qty_dest                   | NUMERIC   | Destination actual quantity in stockkeeping unit             |
| LTAP      | NSOLA             | dest_diff_qty                  | NUMERIC   | Destination difference quantity in stockkeeping unit         |
| LTAP      | NISTA             | dest_target_qty_1              | NUMERIC   | Destination target quantity in alternative unit              |
| LTAP      | NDIFA             | actual_qty                     | NUMERIC   | Actual destination quantity in alternative unit              |
| LTAP      | NLQNR             | dest_diff_qty_1                | NUMERIC   | Destination difference qty. in alternative unit              |
| LTAP      | NAPPC             | quant_1                        | STRING    | Quant                                                        |
| LTAP      | RLTYP             | dest_it_to_appc                | STRING    | Indicator: pass on destination item to APPC interface        |
| LTAP      | RLBER             | return_stor_ty                 | STRING    | Return storage type                                          |
| LTAP      | RLPLA             | return_stor_ar                 | STRING    | Return storage area                                          |
| LTAP      | RPPOS             | return_stor_bin                | STRING    | Return storage bin                                           |
| LTAP      | RSOLM             | return_bin_pos                 | STRING    | Position in return storage bin                               |
| LTAP      | RISTM             | ret_target_qty                 | NUMERIC   | Return target quantity in stockkeeping unit                  |
| LTAP      | RDIFM             | act_ret_qty                    | NUMERIC   | Actual returned quantity in stockkeeping unit                |
| LTAP      | RSOLA             | return_diff                    | NUMERIC   | Return difference quantity in stockkeeping unit              |
| LTAP      | RISTA             | ret_target_qty_1               | NUMERIC   | Return target quantity in alternative unit                   |
| LTAP      | RDIFA             | act_ret_qty_1                  | NUMERIC   | Actual return quantity in alternate unit of measure          |
| LTAP      | RLQNR             | return_diff_1                  | NUMERIC   | Return difference quantity in alternative unit               |
| LTAP      | RAPPC             | quant_2                        | STRING    | Quant                                                        |
| LTAP      | DLTYP             | ret_item_toappc                | STRING    | Indicator: pass on return item to APPC interface             |
| LTAP      | DLPLA             | storage_type                   | STRING    | Difference storage type                                      |
| LTAP      | DLQNR             | storage_bin                    | STRING    | Difference storage bin                                       |
| LTAP      | DMENG             | quant_3                        | STRING    | Difference quant                                             |
| LTAP      | DMENA             | difference_qty                 | NUMERIC   | Quantity of difference posting in stockkeeping unit          |
| LTAP      | KZDIF             | difference_qty_1               | NUMERIC   | Difference quantity in alternate unit of measure             |
| LTAP      | MAKTX             | difference_ind                 | STRING    | Difference indicator                                         |
| LTAP      | DRUCK             | description                    | STRING    | Material description                                         |
| LTAP      | VLENR             | to_item_printed                | STRING    | Indicator: transfer order item is printed                    |
| LTAP      | NLENR             | source_su_no                   | STRING    | Source storage unit number                                   |
| LTAP      | DLENR             | dest_stor_unit                 | STRING    | Destination storage unit number                              |
| LTAP      | VLEST             | difference_su                  | STRING    | Number of storage unit for difference quantities             |
| LTAP      | NLEST             | srce_su_status                 | STRING    | Status of source storage unit                                |
| LTAP      | LELAS             | dest_su_status                 | STRING    | Status of destination storage unit                           |
| LTAP      | HOMVE             | stor_unit_cnts                 | STRING    | Indicator: print storage unit contents                       |
| LTAP      | POSTY             | removal_tot_su                 | STRING    | Indicator: stock removal of a total, homogenous storage unit |
| LTAP      | ORPOS             | item_category                  | STRING    | Type of transfer order item                                  |
| LTAP      | VSUMM             | original_item                  | STRING    | TO item from which current TO item was generated             |
| LTAP      | VBLCH             | totals_info                    | STRING    | Level of totals information SOURCE                           |
| LTAP      | NSUMM             | mixed_batches                  | STRING    | Blocks with mixed batches SOURCE                             |
| LTAP      | NBLCH             | totals_info_1                  | STRING    | Level of totals information DEST.                            |
| LTAP      | RSPOS             | mixed_batches_1                | STRING    | Blocks with mixed batches DEST                               |
| LTAP      | VFDAT             | item_no                        | STRING    | Item Number of Reservation / Dependent Requirements          |
| LTAP      | VKAPV             | sled_bbd                       | DATE      | Shelf Life Expiration or Best-Before Date                    |
| LTAP      | VKAPA             | capac_material                 | NUMERIC   | Capacity usage of transferred material                       |
| LTAP      | NKAPA             | capacity_check                 | STRING    | Capacity check for source storage type                       |
| LTAP      | RKAPA             | capacity_check_1               | STRING    | Capacity check for destination storage type                  |
| LTAP      | KZSUB             | capacity_check_2               | STRING    | Capacity check return storage type                           |
| LTAP      | QPLOS             | item_to_subsys                 | STRING    | Indicator: pass on TO item to subsystem                      |
| LTAP      | QPLOA             | inspection_lot                 | STRING    | Inspection Lot Number                                        |
| LTAP      | KZSTI             | insp_lot_old                   | STRING    | Inspection Lot on Which the Usage Decision is Based          |
| LTAP      | RSART             | inspect_sample                 | STRING    | Indicator: transfer of insp.sample                           |
| LTAP      | KZECH             | record_type                    | STRING    | Record type                                                  |
| LTAP      | KOBER             | confirm_batch                  | STRING    | Indicator: Confirm Batch to PP                               |
| LTAP      | LGORT             | picking_area                   | STRING    | Picking Area                                                 |
| LTAP      | SOLPO             | stor_loc                       | STRING    | Storage location                                             |
| LTAP      | ZEIEI             | plnd_time_toitm                | NUMERIC   | Planned proc.time in transfer order item                     |
| LTAP      | L2SKR             | time_unit_ltap                 | STRING    | Time unit for performance data                               |
| LTAP      | VOLUM             | step_picking                   | STRING    | Relevance for 2-step picking                                 |
| LTAP      | VOLEH             | volume                         | NUMERIC   | Volume                                                       |
| LTAP      | KZBEF             | volume_unit                    | STRING    | Volume unit                                                  |
| LTAP      | IMREL             | inv_mgmt_active                | STRING    | Indicator Inventory Management active                        |
| LTAP      | NWIRM             | posting_in_im                  | STRING    | Trigger posting in Inventory Management                      |
| LTAP      | WIRME             | quantity_acting                | NUMERIC   | Transferred ingredient qty                                   |
| LTAP      | NPLEI             | act_ingred_uom                 | STRING    | Active ingredient unit of measure                            |
| LTAP      | KBNKZ             | dest_bin_chgble                | STRING    | Dest.stor.bin changeable during confirmation                 |
| LTAP      | STOAN             | kanban_indicat                 | STRING    | Kanban Indicator                                             |
| LTAP      | KGVNQ             | cancell_request                | STRING    | Cancellation req. for TO item (currently only from Kanban)   |
| LTAP      | PVQUI             | separate_conf_ltap             | STRING    | Indicator: Separate confirmation possible                    |
| LTAP      | EDATU             | confirmation_1                 | STRING    | Indicator: Material pick has been confirmed                  |
| LTAP      | EZEIT             | confirmat_date_1               | DATE      | Date of Pick Confirmation (First Step)                       |
| LTAP      | ENAME             | confirmat_time_1               | TIME      | Time of Pick Confirmation (First Step)                       |
| LTAP      | KZFME             | user_1                         | STRING    | User Name in Pick Confirmation (First Step)                  |
| LTAP      | QUSUB             | leading_uom                    | STRING    | ID: Leading unit of measure for completing a transaction     |
| LTAP      | FHUTA             | conf_ind_extsys                | STRING    | Confirmation ind.: Two-step confirmation for external system |
| LTAP      | VNEST             | hu_item                        | STRING    | Flag: Transfer order item is HU TO item                      |
| LTAP      | VHILM             | scstrgeunitnstd                | STRING    | Indicates whether the source storage unit is a nested HU     |
| LTAP      | VDUMM             | packmaterials                  | STRING    | Packaging Materials                                          |
| LTAP      | NDUMM             | indicator_source_su_is_pseudo  | STRING    | Indicator: Source SU is pseudo SU (only HUs)                 |
| LTAP      | VSERI             | indicator_destination_su_is_p  | STRING    | Indicator: Destination SU is pseudo SU (only HUs)            |
| LTAP      | HUPIK             | indicator_source_su_is_a_hu_w  | STRING    | Indicator: Source SU is a HU with serial numbers             |
| LTAP      | NXIDV             | indicator_source_hu_suggested  | STRING    | Indicator: source HU suggested as pick HU at confirmation    |
| LTAP      | NOLIS             | handling_unit                  | STRING    | External Handling Unit Identification                        |
| LTAP      | NPIPO             | flag_do_not_update_whse_contr  | STRING    | Flag: Do not update whse controlling during TO creation      |
| LTAP      | PIPAR             | notransf_pckpnt                | STRING    | Flag: Do not transfer SU to pick point (for SU block stor.)  |
| LTAP      | PCKPF             | assignment_of_to_item_to_handl | STRING    | Assignment of TO item to handling unit is required           |
| LTAP      | KZTRM             | packing_control                | STRING    | Packing Control                                              |
| LTAP      | PASSD             | trm_ltap                       | STRING    | TRM Interface Active                                         |
| LTAP      | VBELN             | conf_transfrd_ltap             | STRING    | Confirmation Data Transferred To Delivery                    |
| LTAP      | KZXDK             | delivery                       | STRING    | Delivery                                                     |
| LTAP      | KZVAS             | cross_dock                     | STRING    | Cross dock interface                                         |
| LTAP      | FROM_INSP_GUID    | value_added                    | STRING    | Value added service interface                                |
| LTAP      | TO_INSP_GUID      | insp_guid                      | BYTES     | Inspection GUID                                              |
| LTAP      | DIFF_INSP_GUID    | insp_guid_1                    | BYTES     | Inspection GUID                                              |
| LTAP      | RETURN_INSP_GUID  | insp_guid_2                    | BYTES     | Inspection GUID                                              |
| LTAP      | __CWM__IND_CATCH  | insp_guid_3                    | BYTES     | Inspection GUID                                              |
| LTAP      | __CWM__ACT_QTY    | enter_parallel_qty             | STRING    | Control Indicator for Entry of Parallel Quantity in TO       |
| LTAP      | __CWM__ACT_UOM    | parallel_qty                   | NUMERIC   | Parallel Quantity of Transfer Order Item                     |
| LTAP      | __CWM__TGT_QTY    | parallel_uom                   | STRING    | Unit of Measure of Parallel Quantity of Transfer Order Item  |
| LTAP      | __CWM__TGT_UOM    | target_pq                      | NUMERIC   | Target Parallel Quantity of Transfer Order Item              |
| LTAP      | __CWM__HU_NEW_QTY | parallel_uom_1                 | STRING    | Unit of Measure for Target PQ for Transfer Order Item        |
| LTAP      | __CWM__HU_OLD_QTY | new_hu_parallel_qty            | NUMERIC   | New Parallel Quantity of HU Item                             |
| LTAP      | __CWM__VEMEH      | old_hu_parallel_qty            | NUMERIC   | Old Parallel Quantity of HU Item                             |
| LTAP      | __CWM__XCWMAT     | parallel_uom_2                 | STRING    | Parallel Unit of Measure                                     |
| LTAP      | __CWM__MEINS      | cw_material                    | STRING    | Material Is Activated for CW                                 |
| LTAP      | __CWM__IND_DELUPD | parallel_uom_3                 | STRING    | Parallel Unit of Measure                                     |
| LTAP      | DCNUM             | pq_in_delivery                 | STRING    | Indicator: Update Parallel Quantity in Delivery              |
| LTAP      | ZRSTG             | decision                       | STRING    | Cross-Docking Decision Number                                |
| LTAP      | TOVAS             | indicator                      | STRING    | General Flag                                                 |
| LTAP      | SGT_SCAT          | indicator_1                    | STRING    | General Flag                                                 |
|           |                   | stock_segment                  | STRING    | Stock Segment                                                |
|           |                   | finalmd5key                    | STRING    | MD5 key combining all columns                                |
|           |                   | input_last_update_date         | DATETIME  | Last Input read time                                         |
|           |                   | dw_active_indicator            | STRING    | Valid Indicator                                              |
|           |                   | dw_start_date                  | DATETIME  | Record start date                                            |
|           |                   | dw_end_date                    | DATETIME  | Record end date                                              |
|           |                   | dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms