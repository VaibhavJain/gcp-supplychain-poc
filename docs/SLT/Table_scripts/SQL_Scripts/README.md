# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0-L1-L2)
### Version
### Version 1.0
## Overview
Use these sql scripts to create Empty schema in Big Query for the following.
Data sources - such as SAP HANA/SAP ECC by using SLT plugin. Transformations, which sit between inputs and outputs Sinks, which are outputs - such as Big Query.
In data integration from [Cloud data fusion using SLT plugin](https://cloud.google.com/data-fusion/docs/how-to/use-sap-slt-plugin) we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.
### Data integration flow is divided into 3 layers.

|  Layers  |                                                                        Description                                                                        |
|:--------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------:|
| L0 layer | Raw & Staging layer, extracting the data using SLT plugin from the SAP and loading into the Big query.                                                    |
| L1 layer | Warehouse layer data is extracted from the staging layer and loaded into dimensions and facts.                                                                |
| L2 layer | Canonical layer data is extracted from the warehouse(L1 layer) and loaded into different entities like Asset, Inventory, Legal_entity, forecast, order and product. |

### Sql scripts  are divided into 4 modules.

| Script Name               | Description                                                                                                |
|---------------------------|------------------------------------------------------------------------------------------------------------|
| slt_l0_raw_tables.sql     | Raw table structure, these table will be created automatically by the CDF process.                         |
| slt_l0_staging_tables.sql | Staging table structure, these tables are get populated by getting data from the raw layer.                |
| slt_l1_layer_tables.sql   | Dimensions & Facts table structure, these tables are get populated by getting data from the staging layers |
| slt_l2_layer_tables.sql   | Canonical table structure, these tables are get populated by getting data from the L1 layer.               |


### Parameter variable for all scripts.


| Variable Name     | Value (description)                                                                              |
|-------------------|--------------------------------------------------------------------------------------------------|
| $projectid        | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| $slt_l0_raw       | Raw Dataset (slt_raw) - Dataset contains raw tables.                                             |
| $slt_l0_staging   | Staging Dataset (slt_staging) - Dataset contains staging tables.                                 |
| $slt_l0_control   | Control Dataset (slt_control) - Dataset contains all control tables to create view and tables.   |
| $slt_l1_dimension | Dimension Dataset (slt_dimension) - Dataset name which contains dimension tables.                |
| $slt_l1_facts     | Fact Dataset (slt_facts) - Dataset name which contains fact tables.                              |
| $slt_l2_canonical | Canonical Dataset (slt_canonical) - Dataset which contains semantic view get data from l1 layer. |


 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms