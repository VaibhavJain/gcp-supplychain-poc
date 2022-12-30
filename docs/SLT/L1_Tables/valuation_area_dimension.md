
## Table Name : valuation_area_dimension

| column_name            | data_type | description                                                |
|------------------------|-----------|------------------------------------------------------------|
| valuation_area_uuid    | STRING    | Unique Generated Id                                        |
| valuation_area_key     | STRING    | Valuation area Key                                         |
| client                 | STRING    | Client                                                     |
| valuation_area         | STRING    | Valuation area                                             |
| company_code           | STRING    | Company Code                                               |
| val_grpg_code          | STRING    | Valuation Grouping Code                                    |
| negative_stocks        | STRING    | Negative stocks in valuation area allowed                  |
| ml_act                 | STRING    | Material Ledger Activated in Valuation Area                |
| ml_comp                | STRING    | Material Ledger Activated in Valuation Area (Compulsory)   |
| salespr_valuat         | STRING    | Sales price valuation active                               |
| explanation_facility   | STRING    | Explanation Facility for Material Ledger Active/Inactive   |
| rev_profile            | STRING    | Retail revalution profile                                  |
| profile_vim            | STRING    | Profile for value-based inventory management               |
| price_determ           | STRING    | Material Price Determination: Control                      |
| price_determ_binding   | STRING    | Price Determination Is Binding in Valuation Area           |
| stock_corr_tol         | NUMERIC   | Stock correction tolerance                                 |
| prdiff_gr_sc           | STRING    | Price difference posting in GR for subcontract oder        |
| post_recpt_val         | STRING    | Post purchase account with receipt value                   |
| two_documents          | STRING    | Two FI documents with purchase account                     |
| price_release          | STRING    | Price Release                                              |
| actcstcmpsplit         | STRING    | Active Actual Cost Component Split                         |
| delivery_costs         | STRING    | Del. costs to price diff. acct when purch. acct active     |
| from_year              | STRING    | Start of validity period f. del. costs in price diff. acct |
| price_release_1        | STRING    | Price Release Flexible Material Prices                     |
| price_release_group    | STRING    | Price Release Group                                        |
| finalmd5key            | STRING    | MD5 key combining all columns                              |
| input_last_update_date | DATETIME  | Last Input read time                                       |
| dw_active_indicator    | STRING    | Valid Indicator                                            |
| dw_start_date          | DATETIME  | Record start date                                          |
| dw_end_date            | DATETIME  | Record end date                                            |
| dw_last_update_date    | DATETIME  | Record Inserted/Updated date                               |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms