
## Table Name : forecasting_fact

| column_name             | data_type | description                                                |
|-------------------------|-----------|------------------------------------------------------------|
| forcasting_uuid         | STRING    | Unique Generated Id                                        |
| forcasting_key          | STRING    | Forcasting Key                                             |
| client                  | STRING    | Client                                                     |
| material                | STRING    | Material Number                                            |
| plant                   | STRING    | Plant                                                      |
| reqmts_type             | STRING    | Requirements type                                          |
| version                 | STRING    | Version Number for Independent Requirements                |
| material_uuid           | STRING    | Material Dimension Unique Generated Id                     |
| material_key            | STRING    | Material key from Material Dimension                       |
| plant_uuid              | STRING    | Plant Dimension Unique Generated Id                        |
| plant_key               | STRING    | Plant key from Plant Dimension                             |
| requirements_plan       | STRING    | Requirements Plan                                          |
| rqmts_pointer           | STRING    | Independent Requirements Pointer                           |
| consumption             | STRING    | Consumption indicator                                      |
| active                  | STRING    | Indicator: Version Active                                  |
| cind                    | STRING    | Consumption indicator for planning requirements            |
| alloc_criterion         | STRING    | Criterion for allocation                                   |
| planning_ind            | STRING    | Planning Indicator                                         |
| long_txt_exists         | STRING    | Long Text Exists                                           |
| deletion_indicator      | STRING    | Deletion indicator                                         |
| copied                  | STRING    | Indicator: data copied                                     |
| entry_date              | DATE      | Date                                                       |
| entry_time              | TIME      | Time                                                       |
| aggregation             | STRING    | Aggregation indicator for planned independent requirements |
| planning_scenario       | STRING    | Planning Scenario in Long-Term Planning                    |
| version_1               | STRING    | Version number in the information structure                |
| info_structure          | STRING    | Name of information structure                              |
| field_name              | STRING    | Field name in the generated DDIC structure                 |
| without_mrp             | STRING    | With no MRP                                                |
| info_structure_1        | STRING    | Name of info structure - characteristic values             |
| version_2               | STRING    | Version number in the information structure                |
| acct_assgmt_cat         | STRING    | Account Assignment Category                                |
| special_stock           | STRING    | Special Stock Indicator                                    |
| consumption_1           | STRING    | Consumption posting                                        |
| wbs_element             | STRING    | Work Breakdown Structure Element (WBS Element)             |
| sales_ord_item          | STRING    | Item number in Sales Order                                 |
| sales_order             | STRING    | Sales Order Number                                         |
| prof_name               | STRING    | Name of planning profile                                   |
| valuation               | STRING    | Valuation of Special Stock                                 |
| ext_req_plan            | STRING    | External Requirements Plan ID                              |
| reqmnt_segment          | STRING    | Requirement Segment                                        |
| time_stamp              | NUMERIC   | UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)        |
| rqmts_pointer_pbed      | STRING    | Independent Requirements Pointer                           |
| finish_date             | DATE      | Delivery/order finish date                                 |
| reqstd_date             | DATE      | Reqstd date                                                |
| changed_by              | STRING    | Name of person who changed object                          |
| last_change             | DATE      | Date of Last Change                                        |
| base_unit               | STRING    | Base Unit of Measure                                       |
| planned_qty             | NUMERIC   | Planned quantity                                           |
| withdrawal_qty          | NUMERIC   | Withdrawal Quantity                                        |
| orig_plnd_qty           | NUMERIC   | Originally planned quantity                                |
| date_type               | STRING    | Date type (day, week, month, interval)                     |
| perin                   | STRING    | Period indicator (day, week, month, posting period)        |
| period                  | STRING    | Planning period                                            |
| bom_expl_number         | STRING    | BOM explosion number                                       |
| prod_version            | STRING    | Production Version                                         |
| unit_of_entry           | STRING    | Unit of entry                                              |
| quantity_in_une         | NUMERIC   | Quantity in unit of entry                                  |
| counter                 | NUMERIC   | Numerator for Conversion to Base Units of Measure          |
| denominator             | NUMERIC   | Denominator for conversion to base units of measure        |
| planned_qty_1           | NUMERIC   | Planned quantity                                           |
| long_txt_exists_pbed    | STRING    | Long Text Exists                                           |
| deletion_indicator_pbed | STRING    | Deletion indicator                                         |
| int_object_no           | STRING    | Configuration (internal object number)                     |
| supporting_pnt          | STRING    | Supporting point for independent requirements              |
| standardvariant         | STRING    | Parameter Variant/Standard Variant                         |
| accptd_past_demand      | STRING    | Indicator: Accepted Forecast Demand in the Past            |
| season_year             | STRING    | Season Year                                                |
| season                  | STRING    | Season                                                     |
| collection              | STRING    | Fashion Collection                                         |
| theme                   | STRING    | Fashion Theme                                              |
| finalmd5key             | STRING    | MD5 key combining all columns                              |
| input_last_update_date  | DATETIME  | Last Input read time                                       |
| dw_active_indicator     | STRING    | Valid Indicator                                            |
| dw_start_date           | DATETIME  | Record start date                                          |
| dw_end_date             | DATETIME  | Record end date                                            |
| dw_last_update_date     | DATETIME  | Record Inserted/Updated date                               |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms