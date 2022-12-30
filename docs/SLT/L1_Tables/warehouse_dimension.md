
## Table Name : warehouse_dimension

| column_name            | data_type | description                          |
|------------------------|-----------|--------------------------------------|
| warehouse_uuid         | STRING    | Unique Generated Id                  |
| warehouse_key          | STRING    | Warehouse Key                        |
| client                 | STRING    | Client                               |
| warehouse_no           | STRING    | Warehouse Number / Warehouse Complex |
| region                 | STRING    | Region code                          |
| language_key           | STRING    | Language Key                         |
| warehouse_no_t300t     | STRING    | Warehouse Number / Warehouse Complex |
| whse_no_desc           | STRING    | Warehouse Number Description         |
| finalmd5key            | STRING    | MD5 key combining all columns        |
| input_last_update_date | DATETIME  | Last Input read time                 |
| dw_active_indicator    | STRING    | Valid Indicator                      |
| dw_start_date          | DATETIME  | Record start date                    |
| dw_end_date            | DATETIME  | Record end date                      |
| dw_last_update_date    | DATETIME  | Record Inserted/Updated date         |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms