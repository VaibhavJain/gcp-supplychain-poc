# SQL Scripts - Loading L2 tables.
## Version 
Version 1.0

## Overview
Views created to load the L2 tables. These views are pulling the data from the L1 tables.


### Parameter variable for each script.

**L1_table_structure_dimension**

| Variable Name | Value |
| ------ | ------ |
| ProjectID | Project ID (sap-adapter) |
| TargetDatasetNames1 | Dimension tables Dataset Name (scl_sap_dimension) |

**L1_table_structure_facts**

| Variable Name | Value |
| ------ | ------ |
| ProjectID | Project ID (sap-adapter) |
| TargetDatasetNames2 | Fact tables Dataset Name (scl_sap_facts) |


**l1_audit_table**

| Variable Name | Value |
| ------ | ------ |
| ProjectID | Project ID (sap-adapter) |
| StagingDatasetName | L0 layer tables Dataset Name (scl_sap_staging) |

**L2_table_structure**

| Variable Name | Value |
| ------ | ------ |
| ProjectID | Project ID (sap-adapter) |
| TargetDatasetNames3 | L2 layer tables Dataset Name (scl_canonical) |


**L2_canonical_view**

| Variable Name | Value |
| ------ | ------ |
| ProjectID | Project ID (sap-adapter) |
| TargetDatasetNames1 | Dimension tables Dataset Name (scl_sap_dimension)  |
| TargetDatasetNames2 | Fact tables Dataset Name (scl_sap_facts) |
| TargetDatasetNames3 | Canonical tables Dataset Name (scl_canonical) |

Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at.
https://cloud.google.com/terms/service-terms#general-service-terms
