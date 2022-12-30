
## Table Name : valuation_area_dimension

| sap_table | sap_column    | column_name            | data_type | description                                                |
|-----------|---------------|------------------------|-----------|------------------------------------------------------------|
|           |               | valuation_area_uuid    | STRING    | Unique Generated Id                                        |
|           |               | valuation_area_key     | STRING    | Valuation area Key                                         |
| T001K     | MANDT         | client                 | STRING    | Client                                                     |
| T001K     | BWKEY         | valuation_area         | STRING    | Valuation area                                             |
| T001K     | BUKRS         | company_code           | STRING    | Company Code                                               |
| T001K     | BWMOD         | val_grpg_code          | STRING    | Valuation Grouping Code                                    |
| T001K     | XBKNG         | negative_stocks        | STRING    | Negative stocks in valuation area allowed                  |
| T001K     | MLBWA         | ml_act                 | STRING    | Material Ledger Activated in Valuation Area                |
| T001K     | MLBWV         | ml_comp                | STRING    | Material Ledger Activated in Valuation Area (Compulsory)   |
| T001K     | XVKBW         | salespr_valuat         | STRING    | Sales price valuation active                               |
| T001K     | ERKLAERKOM    | explanation_facility   | STRING    | Explanation Facility for Material Ledger Active/Inactive   |
| T001K     | UPROF         | rev_profile            | STRING    | Retail revalution profile                                  |
| T001K     | WBPRO         | profile_vim            | STRING    | Profile for value-based inventory management               |
| T001K     | MLAST         | price_determ           | STRING    | Material Price Determination: Control                      |
| T001K     | MLASV         | price_determ_binding   | STRING    | Price Determination Is Binding in Valuation Area           |
| T001K     | BDIFP         | stock_corr_tol         | NUMERIC   | Stock correction tolerance                                 |
| T001K     | XLBPD         | prdiff_gr_sc           | STRING    | Price difference posting in GR for subcontract oder        |
| T001K     | XEWRX         | post_recpt_val         | STRING    | Post purchase account with receipt value                   |
| T001K     | X2FDO         | two_documents          | STRING    | Two FI documents with purchase account                     |
| T001K     | PRSFR         | price_release          | STRING    | Price Release                                              |
| T001K     | MLCCS         | actcstcmpsplit         | STRING    | Active Actual Cost Component Split                         |
| T001K     | XEFRE         | delivery_costs         | STRING    | Del. costs to price diff. acct when purch. acct active     |
| T001K     | EFREJ         | from_year              | STRING    | Start of validity period f. del. costs in price diff. acct |
| T001K     | __FMP__PRSFR  | price_release_1        | STRING    | Price Release Flexible Material Prices                     |
| T001K     | __FMP__PRFRGR | price_release_group    | STRING    | Price Release Group                                        |
|           |               | finalmd5key            | STRING    | MD5 key combining all columns                              |
|           |               | input_last_update_date | DATETIME  | Last Input read time                                       |
|           |               | dw_active_indicator    | STRING    | Valid Indicator                                            |
|           |               | dw_start_date          | DATETIME  | Record start date                                          |
|           |               | dw_end_date            | DATETIME  | Record end date                                            |
|           |               | dw_last_update_date    | DATETIME  | Record Inserted/Updated date                               |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms