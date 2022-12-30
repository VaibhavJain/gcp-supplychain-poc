CREATE TABLE `${ProjectID}.${StagingDatasetName}.layer1_audit_table`
(
  table_name STRING,
  full_delta_indicator STRING,
  extractors_names STRING,
  full_load_datetime DATETIME,
  delta_load_datetime DATETIME,
  inserted_record_count INT64,
  last_update_date DATETIME
);