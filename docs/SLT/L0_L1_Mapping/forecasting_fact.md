
## Table Name : forecasting_fact

| sap_table | sap_column      | column_name             | data_type | description                                                |
|-----------|-----------------|-------------------------|-----------|------------------------------------------------------------|
|           |                 | forcasting_uuid         | STRING    | Unique Generated Id                                        |
|           |                 | forcasting_key          | STRING    | Forcasting Key                                             |
| PBIM      | MANDT           | client                  | STRING    | Client                                                     |
| PBIM      | MATNR           | material                | STRING    | Material Number                                            |
| PBIM      | WERKS           | plant                   | STRING    | Plant                                                      |
| PBIM      | BEDAE           | reqmts_type             | STRING    | Requirements type                                          |
| PBIM      | VERSB           | version                 | STRING    | Version Number for Independent Requirements                |
|           |                 | material_uuid           | STRING    | Material Dimension Unique Generated Id                     |
|           |                 | material_key            | STRING    | Material key from Material Dimension                       |
|           |                 | plant_uuid              | STRING    | Plant Dimension Unique Generated Id                        |
|           |                 | plant_key               | STRING    | Plant key from Plant Dimension                             |
| PBIM      | PBDNR           | requirements_plan       | STRING    | Requirements Plan                                          |
| PBIM      | BDZEI           | rqmts_pointer           | STRING    | Independent Requirements Pointer                           |
| PBIM      | ZUVKZ           | consumption             | STRING    | Consumption indicator                                      |
| PBIM      | VERVS           | active                  | STRING    | Indicator: Version Active                                  |
| PBIM      | VERKZ           | cind                    | STRING    | Consumption indicator for planning requirements            |
| PBIM      | ZUOKR           | alloc_criterion         | STRING    | Criterion for allocation                                   |
| PBIM      | PLNKZ           | planning_ind            | STRING    | Planning Indicator                                         |
| PBIM      | TXTKZ           | long_txt_exists         | STRING    | Long Text Exists                                           |
| PBIM      | LOEVR           | deletion_indicator      | STRING    | Deletion indicator                                         |
| PBIM      | UEBKZ           | copied                  | STRING    | Indicator: data copied                                     |
| PBIM      | DATLP           | entry_date              | DATE      | Date                                                       |
| PBIM      | UHRLP           | entry_time              | TIME      | Time                                                       |
| PBIM      | AGGPB           | aggregation             | STRING    | Aggregation indicator for planned independent requirements |
| PBIM      | PLSCN           | planning_scenario       | STRING    | Planning Scenario in Long-Term Planning                    |
| PBIM      | VRSIO           | version_1               | STRING    | Version number in the information structure                |
| PBIM      | MCINF           | info_structure          | STRING    | Name of information structure                              |
| PBIM      | STFNA           | field_name              | STRING    | Field name in the generated DDIC structure                 |
| PBIM      | OPLKZ           | without_mrp             | STRING    | With no MRP                                                |
| PBIM      | MCINC           | info_structure_1        | STRING    | Name of info structure - characteristic values             |
| PBIM      | VRSIC           | version_2               | STRING    | Version number in the information structure                |
| PBIM      | KNTTP           | acct_assgmt_cat         | STRING    | Account Assignment Category                                |
| PBIM      | SOBKZ           | special_stock           | STRING    | Special Stock Indicator                                    |
| PBIM      | KZVBR           | consumption_1           | STRING    | Consumption posting                                        |
| PBIM      | PSPEL           | wbs_element             | STRING    | Work Breakdown Structure Element (WBS Element)             |
| PBIM      | KDPOS           | sales_ord_item          | STRING    | Item number in Sales Order                                 |
| PBIM      | KDAUF           | sales_order             | STRING    | Sales Order Number                                         |
| PBIM      | PROFILID        | prof_name               | STRING    | Name of planning profile                                   |
| PBIM      | KZBWS           | valuation               | STRING    | Valuation of Special Stock                                 |
| PBIM      | PBDNR_EXT       | ext_req_plan            | STRING    | External Requirements Plan ID                              |
| PBIM      | SGT_RCAT        | reqmnt_segment          | STRING    | Requirement Segment                                        |
| PBIM      | LASTCHANGEDTS   | time_stamp              | NUMERIC   | UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)        |
| PBED      | BDZEI           | rqmts_pointer_pbed      | STRING    | Independent Requirements Pointer                           |
| PBED      | PDATU           | finish_date             | DATE      | Delivery/order finish date                                 |
| PBED      | WDATU           | reqstd_date             | DATE      | Reqstd date                                                |
| PBED      | AENAM           | changed_by              | STRING    | Name of person who changed object                          |
| PBED      | LAEDA           | last_change             | DATE      | Date of Last Change                                        |
| PBED      | MEINS           | base_unit               | STRING    | Base Unit of Measure                                       |
| PBED      | PLNMG           | planned_qty             | NUMERIC   | Planned quantity                                           |
| PBED      | ENTMG           | withdrawal_qty          | NUMERIC   | Withdrawal Quantity                                        |
| PBED      | UPLMG           | orig_plnd_qty           | NUMERIC   | Originally planned quantity                                |
| PBED      | ENTLI           | date_type               | STRING    | Date type (day, week, month, interval)                     |
| PBED      | ENTLU           | perin                   | STRING    | Period indicator (day, week, month, posting period)        |
| PBED      | PERXX           | period                  | STRING    | Planning period                                            |
| PBED      | SERNR           | bom_expl_number         | STRING    | BOM explosion number                                       |
| PBED      | VERID           | prod_version            | STRING    | Production Version                                         |
| PBED      | ERFME           | unit_of_entry           | STRING    | Unit of entry                                              |
| PBED      | ERFMG           | quantity_in_une         | NUMERIC   | Quantity in unit of entry                                  |
| PBED      | UMREZ           | counter                 | NUMERIC   | Numerator for Conversion to Base Units of Measure          |
| PBED      | UMREN           | denominator             | NUMERIC   | Denominator for conversion to base units of measure        |
| PBED      | FIXMG           | planned_qty_1           | NUMERIC   | Planned quantity                                           |
| PBED      | TXTET           | long_txt_exists_pbed    | STRING    | Long Text Exists                                           |
| PBED      | LOEVR           | deletion_indicator_pbed | STRING    | Deletion indicator                                         |
| PBED      | CUOBJ           | int_object_no           | STRING    | Configuration (internal object number)                     |
| PBED      | STPKT           | supporting_pnt          | STRING    | Supporting point for independent requirements              |
| PBED      | TECHS           | standardvariant         | STRING    | Parameter Variant/Standard Variant                         |
| PBED      | ACC_PAST        | accptd_past_demand      | STRING    | Indicator: Accepted Forecast Demand in the Past            |
| PBED      | FSH_SEASON_YEAR | season_year             | STRING    | Season Year                                                |
| PBED      | FSH_SEASON      | season                  | STRING    | Season                                                     |
| PBED      | FSH_COLLECTION  | collection              | STRING    | Fashion Collection                                         |
| PBED      | FSH_THEME       | theme                   | STRING    | Fashion Theme                                              |
|           |                 | finalmd5key             | STRING    | MD5 key combining all columns                              |
|           |                 | input_last_update_date  | DATETIME  | Last Input read time                                       |
|           |                 | dw_active_indicator     | STRING    | Valid Indicator                                            |
|           |                 | dw_start_date           | DATETIME  | Record start date                                          |
|           |                 | dw_end_date             | DATETIME  | Record end date                                            |
|           |                 | dw_last_update_date     | DATETIME  | Record Inserted/Updated date                               |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms