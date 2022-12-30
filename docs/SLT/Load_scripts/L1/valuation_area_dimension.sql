MERGE INTO `{{ projectid }}.{{ slt_l1_dimension }}.valuation_area_dimension` tgt
USING (
with tmp_scr AS(
SELECT CONCAT(vad.client,'-',vad.valuation_area) as valuation_area_key
      ,vad.client
      ,vad.valuation_area
      ,vad.company_code
      ,vad.val_grpg_code
      ,vad.negative_stocks
      ,vad.ml_act
      ,vad.ml_comp
      ,vad.salespr_valuat
      ,vad.explanation_facility
      ,vad.rev_profile
      ,vad.profile_vim
      ,vad.price_determ
      ,vad.price_determ_binding
      ,vad.stock_corr_tol
      ,vad.prdiff_gr_sc
      ,vad.post_recpt_val
      ,vad.two_documents
      ,vad.price_release
      ,vad.actcstcmpsplit
      ,vad.delivery_costs
      ,vad.from_year
      ,vad.price_release_1
      ,vad.price_release_group
      ,vad.dw_last_update_date as input_last_update_date
      ,vad.dw_active_indicator    
 from `{{ projectid }}.{{ slt_l0_staging }}.valuation_area_details` vad
where vad.dw_active_indicator = 'Y'
  and (vad.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` lat
                                WHERE lat.table_name = 'valuation_area_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_vad AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key 
  from tmp_scr ts)
SELECT t.valuation_area_key as valuation_area_join_key,t.*
  from tmp_vad t
UNION ALL 
SELECT NULL as valuation_area_join_key,t.*
  from tmp_vad t
       INNER JOIN `{{ projectid }}.{{ slt_l1_dimension }}.valuation_area_dimension` vad
    on vad.valuation_area_key = t.valuation_area_key
   AND vad.finalmd5key <> t.finalmd5key
 WHERE vad.dw_active_indicator = 'Y') scr
ON tgt.valuation_area_key = scr.valuation_area_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT(
 valuation_area_uuid
,valuation_area_key
,client
,valuation_area
,company_code
,val_grpg_code
,negative_stocks
,ml_act
,ml_comp
,salespr_valuat
,explanation_facility
,rev_profile
,profile_vim
,price_determ
,price_determ_binding
,stock_corr_tol
,prdiff_gr_sc
,post_recpt_val
,two_documents
,price_release
,actcstcmpsplit
,delivery_costs
,from_year
,price_release_1
,price_release_group
,finalmd5key
,input_last_update_date
,dw_active_indicator
,dw_start_date
,dw_end_date
,dw_last_update_date
)
VALUES
(
 TO_HEX(MD5(CONCAT(scr.valuation_area_key,scr.finalmd5key)))
,scr.valuation_area_key
,scr.client
,scr.valuation_area
,scr.company_code
,scr.val_grpg_code
,scr.negative_stocks
,scr.ml_act
,scr.ml_comp
,scr.salespr_valuat
,scr.explanation_facility
,scr.rev_profile
,scr.profile_vim
,scr.price_determ
,scr.price_determ_binding
,scr.stock_corr_tol
,scr.prdiff_gr_sc
,scr.post_recpt_val
,scr.two_documents
,scr.price_release
,scr.actcstcmpsplit
,scr.delivery_costs
,scr.from_year
,scr.price_release_1
,scr.price_release_group
,scr.finalmd5key
,scr.input_last_update_date
,scr.dw_active_indicator
,CURRENT_DATETIME()
,DATETIME(9999, 12, 31, 23, 59, 59)
,CURRENT_DATETIME());

MERGE INTO 
`{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` tgt
USING ( SELECT 
         'valuation_area_dimension' as table_name
         ,CASE WHEN (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'valuation_area_dimension') IS NULL
                    OR (select full_delta_indicator from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` where table_name = 'valuation_area_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator
        ,'valuation_area_details' as source_table_names
        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime
        ,COALESCE((select max(input_last_update_date) as delta_load_datatime from `{{ projectid }}.{{ slt_l1_dimension }}.valuation_area_dimension`),CAST('1900-01-01T00:00:00' AS DATETIME)) as delta_load_datetime
        ,(coalesce((select COUNT(*) AS inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.valuation_area_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `{{ projectid }}.{{ slt_l0_staging }}.layer1_audit_table` b
                                        where b.table_name = 'valuation_area_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `{{ projectid }}.{{ slt_l1_dimension }}.valuation_area_dimension` where dw_active_indicator = 'Y'))) as inserted_record_count
        ,CURRENT_DATETIME() as last_update_date
) scr
on tgt.table_name = scr.table_name
WHEN MATCHED THEN 
UPDATE set tgt.full_load_datetime ='1900-01-01T00:00:00'
          ,tgt.delta_load_datetime = scr.delta_load_datetime
          ,tgt.inserted_record_count = scr.inserted_record_count
          ,tgt.last_update_date = scr.last_update_date
          ,tgt.source_table_names = scr.source_table_names
WHEN NOT MATCHED THEN
INSERT (table_name,
        full_delta_indicator,
        source_table_names,
        full_load_datetime,
        delta_load_datetime,
        inserted_record_count,
        last_update_date)
VALUES(scr.table_name,
       scr.full_delta_indicator,
       scr.source_table_names,
       scr.full_load_datetime,
       scr.delta_load_datetime,
       scr.inserted_record_count,
       scr.last_update_date);