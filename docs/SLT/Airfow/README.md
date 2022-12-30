# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0-L1-L2)
### Version
### Version 1.0
## Overview

This folder have Airflow DAG scripts. Below are steps follow to use this scripts.

1. Create as SLT folder in the Airflow DAG location
2. Under that create L0, L1 and L2 folder where we have to copy the scripts from below folders.

| Folders | Scripts Copy              |
|---------|---------------------------|
| L0      | /docs/SLT/Load_scripts/L0 |
| L1      | /docs/SLT/Load_scripts/L1 |
| L2      | /docs/SLT/Load_scripts/L2 |

### Parameter variable for all DAG scripts.

| Variable Name         | Value (description)                                                                              |
|-----------------------|--------------------------------------------------------------------------------------------------|
| {{ projectid }}       | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| {{ slt_l0_raw }}      | Raw Dataset (slt_raw) - Dataset contains raw tables.                                             |
| {{ slt_l0_staging }}  | Staging Dataset (slt_staging) - Dataset contains staging tables.                                 |
| {{ slt_l0_control }}  | Control Dataset (slt_control) - Dataset contains all control tables to create view and tables.   |
| {{ slt_l1_dimension }}| Dimension Dataset (slt_dimension) - Dataset name which contains dimension tables.                |
| {{ slt_l1_facts }}    | Fact Dataset (slt_facts) - Dataset name which contains fact tables.                              |
| {{ slt_l2_canonical }}| Canonical Dataset (slt_canonical) - Dataset which contains semantic view get data from l1 layer. |

### File Details

| Script Name              | Description                                             |
|--------------------------|---------------------------------------------------------|
| l0_raw_staging_files.csv | File have list of all L0 raw to L0 Staging script names |
| l1_dimension_files.csv   | File have list of all L1 dimension merge script names   |
| l1_fact_files.csv		   | File have list of all L2 facts merge script names       |
| slt_l0_raw_staging.yaml  | File has all variable name with respective values.      |
| slt_l0_raw_staging.py    | DAG workflow for L0 raw to L0 staging                   |
| slt_l0_to_l1_to_l2.py    | DAG workflow to load L0 to L1 and L1 to L2              | 



 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms