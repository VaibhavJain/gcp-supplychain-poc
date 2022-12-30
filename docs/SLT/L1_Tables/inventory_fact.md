
## Table Name : inventory_fact

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| inventory_uuid                 | STRING    | Unique Generated Id                                          |
| inventory_key                  | STRING    | Inventory Key                                                |
| client                         | STRING    | Client                                                       |
| material                       | STRING    | Material Number                                              |
| plant                          | STRING    | Plant                                                        |
| stor_loc                       | STRING    | Storage location                                             |
| material_uuid                  | STRING    | Material Dimension Unique Generated Id                       |
| material_key                   | STRING    | Material key from Material Dimension                         |
| plant_uuid                     | STRING    | Plant Dimension Unique Generated Id                          |
| plant_key                      | STRING    | Plant key from Plant Dimension                               |
| storage_location_uuid          | STRING    | Storage location Dimension Unique Generated Id               |
| storage_location_key           | STRING    | Storage location key from Storage location Dimension         |
| maint_status                   | STRING    | Maintenance status                                           |
| df_stor_loc_lvl                | STRING    | Flag Material for Deletion at Storage Location Level         |
| year_cur_period                | STRING    | Fiscal Year of Current Period                                |
| current_period                 | STRING    | Current period (posting period)                              |
| phys_inv_blk                   | STRING    | Physical Inventory Blocking Indicator                        |
| unrestricted                   | NUMERIC   | Valuated Unrestricted-Use Stock                              |
| stock_in_tfr                   | NUMERIC   | Stock in transfer (from one storage location to another)     |
| quality_insp                   | NUMERIC   | Stock in Quality Inspection                                  |
| restricted_use                 | NUMERIC   | Total Stock of All Restricted Batches                        |
| blocked                        | NUMERIC   | Blocked Stock                                                |
| returns_block_stock            | NUMERIC   | Blocked Stock Returns                                        |
| unrestr_use                    | NUMERIC   | Valuated unrestricted-use stock in previous period           |
| in_transfer                    | NUMERIC   | Stock in Transfer in Previous Period                         |
| in_qual_insp                   | NUMERIC   | Stock in Quality Inspection in Previous Period               |
| restr_use_pp                   | NUMERIC   | Restricted-Use Stock in Previous Period                      |
| blocked_1                      | NUMERIC   | Blocked stock of previous period                             |
| returns_1                      | NUMERIC   | Blocked Stock Returns in Previous Period                     |
| warehouse_stock                | STRING    | Physical inventory indicator for whse stock in current year  |
| qualinspstock                  | STRING    | Phys. inventory ind. f. stock in qual. insp. in current year |
| restricted_use_1               | STRING    | Physical inventory indicator for restricted-use stock        |
| blocked_stock                  | STRING    | Physical inventory indicator for blocked stock               |
| warehouse_stock_1              | STRING    | Physical inventory indicator for stock in previous year      |
| qualinspstock_1                | STRING    | Phys. inventory ind. f. stock in qual. insp. in prev. period |
| restricted_use_2               | STRING    | Physical inventory ind. for restricted-use stock, prev.pd    |
| blocked_stock_1                | STRING    | Phys. inventory indicator for blocked stock in prev. period  |
| mrp_ind                        | STRING    | Storage location MRP indicator                               |
| spec_proc_sloc                 | STRING    | Special procurement type at storage location level           |
| reorder_point                  | NUMERIC   | Reorder point for storage location MRP                       |
| replenishmt_qty                | NUMERIC   | Replenishment quantity for storage location MRP              |
| ctry_of_origin                 | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| preference_ind                 | STRING    | Preference indicator (deactivated)                           |
| export_ind                     | STRING    | Export indicator (deactivated)                               |
| storage_bin                    | STRING    | Storage Bin                                                  |
| unrestr_consgt                 | NUMERIC   | Unrestricted-Use Consignment Stock                           |
| cnsgt_in_qinsp                 | NUMERIC   | Consignment Stock in Quality Inspection                      |
| restr_consgt                   | NUMERIC   | Restricted-Use Consignment Stock                             |
| blocked_consgt                 | NUMERIC   | Blocked Consignment Stock                                    |
| last_count_date                | DATE      | Date of Last Posted Count                                    |
| profit_center                  | STRING    | Profit Center                                                |
| created_on                     | DATE      | Created On                                                   |
| sp_stock_value                 | NUMERIC   | Stock value of a value-only material at sales price          |
| stk_transfer_sv                | NUMERIC   | Sales value in stock transfer (SLOc to SLoc)                 |
| picking_area                   | STRING    | Picking area for lean WM                                     |
| inven_cor_fact                 | FLOAT64   | Inventory Correction Factor                                  |
| mardh_rec_already_exists_for   | STRING    | MARDH rec. already exists for per. before last of MARD per.  |
| fiscal_year_of_current_physica | STRING    | Fiscal year of current physical inventory indicator          |
| md_product_storage_location    | STRING    | MD PRODUCT Storage location                                  |
| allocated_stock                | NUMERIC   | Allocated Stock Quantity                                     |
| unrestricted_1                 | NUMERIC   | Valuated Unrestricted-Use Stock                              |
| quality_insp_1                 | NUMERIC   | Stock in Quality Inspection                                  |
| restricted_use_3               | NUMERIC   | Total Stock of All Restricted Batches                        |
| blocked_2                      | NUMERIC   | Blocked Stock                                                |
| returns_2                      | NUMERIC   | Blocked Stock Returns                                        |
| stock_in_tfr_1                 | NUMERIC   | Stock in transfer (from one storage location to another)     |
| unrestr_consgt_1               | NUMERIC   | Unrestricted-Use Consignment Stock                           |
| cnsgt_in_qinsp_1               | NUMERIC   | Consignment Stock in Quality Inspection                      |
| restr_consgt_1                 | NUMERIC   | Restricted-Use Consignment Stock                             |
| blocked_consgt_1               | NUMERIC   | Blocked Consignment Stock                                    |
| unrestr_use_1                  | NUMERIC   | Valuated unrestricted-use stock in previous period           |
| in_qual_insp_1                 | NUMERIC   | Stock in Quality Inspection in Previous Period               |
| restr_use_pp_1                 | NUMERIC   | Restricted-Use Stock in Previous Period                      |
| blocked_3                      | NUMERIC   | Blocked stock of previous period                             |
| returns_3                      | NUMERIC   | Blocked Stock Returns in Previous Period                     |
| in_transfer_1                  | NUMERIC   | Stock in Transfer in Previous Period                         |
| finalmd5key                    | STRING    | MD5 key combining all columns                                |
| input_last_update_date         | DATETIME  | Last Input read time                                         |
| dw_active_indicator            | STRING    | Valid Indicator                                              |
| dw_start_date                  | DATETIME  | Record start date                                            |
| dw_end_date                    | DATETIME  | Record end date                                              |
| dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms