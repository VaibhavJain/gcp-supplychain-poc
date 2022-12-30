# SCM Digital Twin Data Integration in Cloud Data Fusion


# Version

Version 1.0
 
# L2 Layer
# Overview

This layer is known as canonical layer where data is extracted from all Dimensions and Facts and loaded into respective entity tables. Looker team utilizes these table and generated insights from data.
  
  
  ## List of entities.

| Entities       |
|----------------------|
| asset     |
| forecast        | 
| inventory   | 
| legal_entity      | 
| order      | 
| product     | 


> Note: Pipeline which is started with **L2_table_creation** and **L2_table_views** need to run first to create the L2 layer canonical tables and views. This two pipeline will run only for one time.

Whenever we have completed the L1- layer process,then we have to trigger pipeline **L2_loading_data** which refresh the data in the above Canonical entity tables in L2 layer.

**Sync the data into a new Project ID**

``` sql
TRUNCATE TABLE `${TargetProjectID}.${TargetDatasetName}.inventory`;
INSERT INTO `${TargetProjectID}.${TargetDatasetName}.inventory`
SELECT * FROM `${SourceProjectID}.${SourceDatasetName}.inventory_vw`;

TRUNCATE TABLE `$${TargetProjectID}.${TargetDatasetName}.legal_entity`;
INSERT INTO `${TargetProjectID}.${TargetDatasetName}.legal_entity`
SELECT * FROM `${SourceProjectID}.${SourceDatasetName}.legal_entity_vw`;

TRUNCATE TABLE `${TargetProjectID}.${TargetDatasetNames3}.location`;
INSERT INTO `${TargetProjectID}.${TargetDatasetName}.location`
SELECT * FROM `${SourceProjectID}.${SourceDatasetName}.location_vw`;

TRUNCATE TABLE `${TargetProjectID}.${TargetDatasetName}.order`;
INSERT INTO `${TargetProjectID}.${TargetDatasetName}.order`
SELECT * FROM `${SourceProjectID}.${SourceDatasetName}.order_vw`;

TRUNCATE TABLE `${TargetProjectID}.${TargetDatasetName}.product`;
INSERT INTO `${TargetProjectID}.${TargetDatasetName}.product`
SELECT * FROM `${SourceProjectID}.${SourceDatasetName}.product_vw`;
```


Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at
https://cloud.google.com/terms/service-terms#general-service-terms
