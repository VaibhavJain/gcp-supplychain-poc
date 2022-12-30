MERGE INTO `${ProjectID}.${TargetDatasetNames1}.company_code_dimension` tgt
USING 
(WITH tmp_scr AS (

-- Combining columns which are required to make a key for the material_dimension

select cc.company_code as company_key
      ,cc.company_code
      ,cc.currency_key
      ,cc.chart_of_accounts
      ,cc.credit_control_area
      ,cc.fiscal_year_variant
      ,cc.company
      ,ccd.address
      ,ccd.valid_from
      ,ccd.address_version
      ,ccd.name_1
      ,ccd.name_2
      ,ccd.name_3
      ,ccd.name_4
      ,ccd.city
      ,ccd.po_box
      ,ccd.street
      ,ccd.house_number
      ,ccd.country_key
      ,ccd.telephone_number
      ,ccd.sequence_number
      ,ccd.home_address
      ,ccd.email_address

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

      ,CASE WHEN cc.dw_last_update_date > ccd.dw_last_update_date
            THEN cc.dw_last_update_date
            ELSE ccd.dw_last_update_date
       END AS input_last_update_date
      ,cc.dw_active_indicator
  from `${ProjectID}.${StagingDatasetName}.company_code` cc
       inner join `${ProjectID}.${StagingDatasetName}.company_code_details` ccd
    on cc.company_code = ccd.company_code
   and ccd.dw_active_indicator = 'Y'
     WHERE cc.dw_active_indicator = 'Y'

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

       AND (cc.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'company_code_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
        OR ccd.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'company_code_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_cmp AS (SELECT ts.*,

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 


SELECT t.company_key as company_join_key,t.*
  from tmp_cmp t
UNION ALL

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as company_join_key,t.*
  from tmp_cmp t
       INNER JOIN `${ProjectID}.${TargetDatasetNames1}.company_code_dimension` cd
    on cd.company_key = t.company_key
   AND cd.finalmd5key <> t.finalmd5key
 WHERE cd.dw_active_indicator = 'Y') scr

-- Join the source  and the taget table using the join keys.


  ON tgt.company_key = scr.company_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT (
company_uuid
,company_key
,company_code
,currency_key
,chart_of_accounts
,credit_control_area
,fiscal_year_variant
,company
,address
,valid_from
,address_version
,name_1
,name_2
,name_3
,name_4
,city
,po_box
,street
,house_number
,country_key
,telephone_number
,sequence_number
,home_address
,email_address
,input_last_update_date
,finalmd5key
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date)

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

VALUES (TO_HEX(MD5(CONCAT(scr.company_key,scr.finalmd5key)))
,scr.company_key
,scr.company_code
,scr.currency_key
,scr.chart_of_accounts
,scr.credit_control_area
,scr.fiscal_year_variant
,scr.company
,scr.address
,scr.valid_from
,scr.address_version
,scr.name_1
,scr.name_2
,scr.name_3
,scr.name_4
,scr.city
,scr.po_box
,scr.street
,scr.house_number
,scr.country_key
,scr.telephone_number
,scr.sequence_number
,scr.home_address
,scr.email_address
,scr.input_last_update_date
,scr.finalmd5key
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`${ProjectID}.${StagingDatasetName}.layer1_audit_table` tgt
USING ( SELECT 

-- mention table name for which we are updating the record.

         'company_code_dimension' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'company_code_dimension') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'company_code_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'0COMP_CODE_ATTR,0COMP_CODE_ADDRESS' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames1}.company_code_dimension`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.company_code_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'company_code_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.company_code_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
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
