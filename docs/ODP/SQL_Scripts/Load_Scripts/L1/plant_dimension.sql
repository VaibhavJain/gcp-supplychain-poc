MERGE INTO `${ProjectID}.${TargetDatasetNames1}.plant_dimension` tgt
USING 
(WITH tmp_scr AS (SELECT 

-- Combining columns which are required to make a key for the plant_dimension

pm.plant as plant_key,
pm.plant,
pm.purchasing_organization,
pm.sales_organization,
pm.country_key,
pm.Region,
pm.postal_code,
pm.name,
pm.name_2,
pm.street_house_number,
pm.po_box,
pm.city,
pm.valuationion_area,
pm.batch_status_management,
pm.factory_calendar,
pm.condition_plant_level,
pm.source_list,
pm.requirement_planning,
pm.country_code,
pm.city_code,
pm.planning_plant,
pm.tax_jurisdiction,
pm.distribution_channel,
pm.intercompany_nilling_division,
pm.customer_number_plant,
pm.language_key,
pm.sop_plant,
pm.variance_key,
pm.plant_category,
pm.supply_number_plant,
pm.sales_district,
pm.supply_region,
pm.plant_tax_indicator,
pm.regular_supplier,
pm.tolerance_1,
pm.tolerance_2,
pm.tolerance_3,
pm.text_1st_dunning,
pm.text_2nd_dunning,
pm.text_3rd_dunning,
pm.po_tolerance,
pm.store_category,
pm.superior_department_store,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

pm.dw_last_update_date as input_last_update_date,
pm.dw_active_indicator,
va.company_code
FROM `${ProjectID}.${StagingDatasetName}.plant_master` pm
      LEFT JOIN `${ProjectID}.${StagingDatasetName}.valuation_area` va
  ON va.valuation_area = pm.valuationion_area
 AND va.dw_active_indicator = 'Y'
WHERE pm.dw_active_indicator = 'Y'

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

  AND pm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'plant_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),
  tmp_plant AS (SELECT ts.*,

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.plant_key as plant_join_key,t.*
  from tmp_plant t
UNION ALL 

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as plant_join_key,t.*
  from tmp_plant t
       INNER JOIN `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd
    ON pd.plant_key = t.plant_key
   AND pd.finalmd5key <> t.finalmd5key
WHERE pd.dw_active_indicator = 'Y') scr

-- Join the source  and the taget table using the join keys.

 ON tgt.plant_key = scr.plant_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT (plant_uuid,
plant_key,
plant,
purchasing_organization,
sales_organization,
country_key,
Region,
postal_code,
name,
name_2,
street_house_number,
po_box,
city,
valuationion_area,
batch_status_management,
factory_calendar,
condition_plant_level,
source_list,
requirement_planning,
country_code,
city_code,
planning_plant,
tax_jurisdiction,
distribution_channel,
intercompany_nilling_division,
customer_number_plant,
language_key,
sop_plant,
variance_key,
plant_category,
supply_number_plant,
sales_district,
supply_region,
plant_tax_indicator,
regular_supplier,
tolerance_1,
tolerance_2,
tolerance_3,
text_1st_dunning,
text_2nd_dunning,
text_3rd_dunning,
po_tolerance,
store_category,
superior_department_store,
company_code,
input_last_update_date,
finalmd5key,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date)
VALUES

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

(TO_HEX(MD5(CONCAT(scr.plant_key,scr.finalmd5key))),
scr.plant_key,
scr.plant,
scr.purchasing_organization,
scr.sales_organization,
scr.country_key,
scr.Region,
scr.postal_code,
scr.name,
scr.name_2,
scr.street_house_number,
scr.po_box,
scr.city,
scr.valuationion_area,
scr.batch_status_management,
scr.factory_calendar,
scr.condition_plant_level,
scr.source_list,
scr.requirement_planning,
scr.country_code,
scr.city_code,
scr.planning_plant,
scr.tax_jurisdiction,
scr.distribution_channel,
scr.intercompany_nilling_division,
scr.customer_number_plant,
scr.language_key,
scr.sop_plant,
scr.variance_key,
scr.plant_category,
scr.supply_number_plant,
scr.sales_district,
scr.supply_region,
scr.plant_tax_indicator,
scr.regular_supplier,
scr.tolerance_1,
scr.tolerance_2,
scr.tolerance_3,
scr.text_1st_dunning,
scr.text_2nd_dunning,
scr.text_3rd_dunning,
scr.po_tolerance,
scr.store_category,
scr.superior_department_store,
scr.company_code,
scr.input_last_update_date,
scr.finalmd5key,
scr.dw_active_indicator,
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME());

MERGE INTO
`${ProjectID}.${StagingDatasetName}.layer1_audit_table` tgt
USING ( SELECT 

-- mention table name for which we are updating the record.

         'plant_dimension' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'plant_dimension') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'plant_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'0PLANT_ATTR' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames1}.plant_dimension`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.plant_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'plant_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.plant_dimension` where dw_active_indicator = 'Y'))) AS inserted_record_count
-- last update/insert date

        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 

-- Record exists update the information 

UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.extractors_names = scr.extractors_names
WHEN NOT MATCHED THEN

-- No record then insert the new entry into the audit table

INSERT (table_name,
        full_delta_indicator,
        extractors_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.extractors_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);