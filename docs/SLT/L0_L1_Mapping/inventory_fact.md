
## Table Name : inventory_fact

| sap_table | sap_column            | column_name                    | data_type | description                                                  |
|-----------|-----------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                       | inventory_uuid                 | STRING    | Unique Generated Id                                          |
|           |                       | inventory_key                  | STRING    | Inventory Key                                                |
| MARD      | MANDT                 | client                         | STRING    | Client                                                       |
| MARD      | MATNR                 | material                       | STRING    | Material Number                                              |
| MARD      | WERKS                 | plant                          | STRING    | Plant                                                        |
| MARD      | LGORT                 | stor_loc                       | STRING    | Storage location                                             |
|           |                       | material_uuid                  | STRING    | Material Dimension Unique Generated Id                       |
|           |                       | material_key                   | STRING    | Material key from Material Dimension                         |
|           |                       | plant_uuid                     | STRING    | Plant Dimension Unique Generated Id                          |
|           |                       | plant_key                      | STRING    | Plant key from Plant Dimension                               |
|           |                       | storage_location_uuid          | STRING    | Storage location Dimension Unique Generated Id               |
|           |                       | storage_location_key           | STRING    | Storage location key from Storage location Dimension         |
| MARD      | PSTAT                 | maint_status                   | STRING    | Maintenance status                                           |
| MARD      | LVORM                 | df_stor_loc_lvl                | STRING    | Flag Material for Deletion at Storage Location Level         |
| MARD      | LFGJA                 | year_cur_period                | STRING    | Fiscal Year of Current Period                                |
| MARD      | LFMON                 | current_period                 | STRING    | Current period (posting period)                              |
| MARD      | SPERR                 | phys_inv_blk                   | STRING    | Physical Inventory Blocking Indicator                        |
| MARD      | LABST                 | unrestricted                   | NUMERIC   | Valuated Unrestricted-Use Stock                              |
| MARD      | UMLME                 | stock_in_tfr                   | NUMERIC   | Stock in transfer (from one storage location to another)     |
| MARD      | INSME                 | quality_insp                   | NUMERIC   | Stock in Quality Inspection                                  |
| MARD      | EINME                 | restricted_use                 | NUMERIC   | Total Stock of All Restricted Batches                        |
| MARD      | SPEME                 | blocked                        | NUMERIC   | Blocked Stock                                                |
| MARD      | RETME                 | returns_block_stock            | NUMERIC   | Blocked Stock Returns                                        |
| MARD      | VMLAB                 | unrestr_use                    | NUMERIC   | Valuated unrestricted-use stock in previous period           |
| MARD      | VMUML                 | in_transfer                    | NUMERIC   | Stock in Transfer in Previous Period                         |
| MARD      | VMINS                 | in_qual_insp                   | NUMERIC   | Stock in Quality Inspection in Previous Period               |
| MARD      | VMEIN                 | restr_use_pp                   | NUMERIC   | Restricted-Use Stock in Previous Period                      |
| MARD      | VMSPE                 | blocked_1                      | NUMERIC   | Blocked stock of previous period                             |
| MARD      | VMRET                 | returns_1                      | NUMERIC   | Blocked Stock Returns in Previous Period                     |
| MARD      | KZILL                 | warehouse_stock                | STRING    | Physical inventory indicator for whse stock in current year  |
| MARD      | KZILQ                 | qualinspstock                  | STRING    | Phys. inventory ind. f. stock in qual. insp. in current year |
| MARD      | KZILE                 | restricted_use_1               | STRING    | Physical inventory indicator for restricted-use stock        |
| MARD      | KZILS                 | blocked_stock                  | STRING    | Physical inventory indicator for blocked stock               |
| MARD      | KZVLL                 | warehouse_stock_1              | STRING    | Physical inventory indicator for stock in previous year      |
| MARD      | KZVLQ                 | qualinspstock_1                | STRING    | Phys. inventory ind. f. stock in qual. insp. in prev. period |
| MARD      | KZVLE                 | restricted_use_2               | STRING    | Physical inventory ind. for restricted-use stock, prev.pd    |
| MARD      | KZVLS                 | blocked_stock_1                | STRING    | Phys. inventory indicator for blocked stock in prev. period  |
| MARD      | DISKZ                 | mrp_ind                        | STRING    | Storage location MRP indicator                               |
| MARD      | LSOBS                 | spec_proc_sloc                 | STRING    | Special procurement type at storage location level           |
| MARD      | LMINB                 | reorder_point                  | NUMERIC   | Reorder point for storage location MRP                       |
| MARD      | LBSTF                 | replenishmt_qty                | NUMERIC   | Replenishment quantity for storage location MRP              |
| MARD      | HERKL                 | ctry_of_origin                 | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| MARD      | EXPPG                 | preference_ind                 | STRING    | Preference indicator (deactivated)                           |
| MARD      | EXVER                 | export_ind                     | STRING    | Export indicator (deactivated)                               |
| MARD      | LGPBE                 | storage_bin                    | STRING    | Storage Bin                                                  |
| MARD      | KLABS                 | unrestr_consgt                 | NUMERIC   | Unrestricted-Use Consignment Stock                           |
| MARD      | KINSM                 | cnsgt_in_qinsp                 | NUMERIC   | Consignment Stock in Quality Inspection                      |
| MARD      | KEINM                 | restr_consgt                   | NUMERIC   | Restricted-Use Consignment Stock                             |
| MARD      | KSPEM                 | blocked_consgt                 | NUMERIC   | Blocked Consignment Stock                                    |
| MARD      | DLINL                 | last_count_date                | DATE      | Date of Last Posted Count                                    |
| MARD      | PRCTL                 | profit_center                  | STRING    | Profit Center                                                |
| MARD      | ERSDA                 | created_on                     | DATE      | Created On                                                   |
| MARD      | VKLAB                 | sp_stock_value                 | NUMERIC   | Stock value of a value-only material at sales price          |
| MARD      | VKUML                 | stk_transfer_sv                | NUMERIC   | Sales value in stock transfer (SLOc to SLoc)                 |
| MARD      | LWMKB                 | picking_area                   | STRING    | Picking area for lean WM                                     |
| MARD      | BSKRF                 | inven_cor_fact                 | FLOAT64   | Inventory Correction Factor                                  |
| MARD      | MDRUE                 | mardh_rec_already_exists_for   | STRING    | MARDH rec. already exists for per. before last of MARD per.  |
| MARD      | MDJIN                 | fiscal_year_of_current_physica | STRING    | Fiscal year of current physical inventory indicator          |
| MARD      | DUMMY_STL_INCL_EEW_PS | md_product_storage_location    | STRING    | MD PRODUCT Storage location                                  |
| MARD      | FSH_SALLOC_QTY_S      | allocated_stock                | NUMERIC   | Allocated Stock Quantity                                     |
| MARD      | __CWM__LABST          | unrestricted_1                 | NUMERIC   | Valuated Unrestricted-Use Stock                              |
| MARD      | __CWM__INSME          | quality_insp_1                 | NUMERIC   | Stock in Quality Inspection                                  |
| MARD      | __CWM__EINME          | restricted_use_3               | NUMERIC   | Total Stock of All Restricted Batches                        |
| MARD      | __CWM__SPEME          | blocked_2                      | NUMERIC   | Blocked Stock                                                |
| MARD      | __CWM__RETME          | returns_2                      | NUMERIC   | Blocked Stock Returns                                        |
| MARD      | __CWM__UMLME          | stock_in_tfr_1                 | NUMERIC   | Stock in transfer (from one storage location to another)     |
| MARD      | __CWM__KLABS          | unrestr_consgt_1               | NUMERIC   | Unrestricted-Use Consignment Stock                           |
| MARD      | __CWM__KINSM          | cnsgt_in_qinsp_1               | NUMERIC   | Consignment Stock in Quality Inspection                      |
| MARD      | __CWM__KEINM          | restr_consgt_1                 | NUMERIC   | Restricted-Use Consignment Stock                             |
| MARD      | __CWM__KSPEM          | blocked_consgt_1               | NUMERIC   | Blocked Consignment Stock                                    |
| MARD      | __CWM__VMLAB          | unrestr_use_1                  | NUMERIC   | Valuated unrestricted-use stock in previous period           |
| MARD      | __CWM__VMINS          | in_qual_insp_1                 | NUMERIC   | Stock in Quality Inspection in Previous Period               |
| MARD      | __CWM__VMEIN          | restr_use_pp_1                 | NUMERIC   | Restricted-Use Stock in Previous Period                      |
| MARD      | __CWM__VMSPE          | blocked_3                      | NUMERIC   | Blocked stock of previous period                             |
| MARD      | __CWM__VMRET          | returns_3                      | NUMERIC   | Blocked Stock Returns in Previous Period                     |
| MARD      | __CWM__VMUML          | in_transfer_1                  | NUMERIC   | Stock in Transfer in Previous Period                         |
|           |                       | finalmd5key                    | STRING    | MD5 key combining all columns                                |
|           |                       | input_last_update_date         | DATETIME  | Last Input read time                                         |
|           |                       | dw_active_indicator            | STRING    | Valid Indicator                                              |
|           |                       | dw_start_date                  | DATETIME  | Record start date                                            |
|           |                       | dw_end_date                    | DATETIME  | Record end date                                              |
|           |                       | dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms