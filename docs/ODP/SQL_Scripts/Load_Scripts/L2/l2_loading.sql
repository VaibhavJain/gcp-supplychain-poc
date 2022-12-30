TRUNCATE TABLE `${ProjectID}.${TargetDatasetNames3}.inventory`;
INSERT INTO `${ProjectID}.${TargetDatasetNames3}.inventory`
SELECT * FROM `${ProjectID}.${TargetDatasetNames3}.inventory_vw`;

TRUNCATE TABLE `${ProjectID}.${TargetDatasetNames3}.legal_entity`;
INSERT INTO `${ProjectID}.${TargetDatasetNames3}.legal_entity`
SELECT * FROM `${ProjectID}.${TargetDatasetNames3}.legal_entity_vw`;

TRUNCATE TABLE `${ProjectID}.${TargetDatasetNames3}.location`;
INSERT INTO `${ProjectID}.${TargetDatasetNames3}.location`
SELECT * FROM `${ProjectID}.${TargetDatasetNames3}.location_vw`;

TRUNCATE TABLE `${ProjectID}.${TargetDatasetNames3}.order`;
INSERT INTO `${ProjectID}.${TargetDatasetNames3}.order`
SELECT * FROM `${ProjectID}.${TargetDatasetNames3}.order_vw`;

TRUNCATE TABLE `${ProjectID}.${TargetDatasetNames3}.product`;
INSERT INTO `${ProjectID}.${TargetDatasetNames3}.product`
SELECT * FROM `${ProjectID}.${TargetDatasetNames3}.product_vw`;