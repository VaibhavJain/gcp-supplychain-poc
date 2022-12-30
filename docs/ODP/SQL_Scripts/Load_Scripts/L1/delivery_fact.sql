MERGE INTO `${ProjectID}.${TargetDatasetNames2}.delivery_fact` tgt
USING (
WITH tmp_scr AS (SELECT

-- Combining columns which are required to make a key for the delivery_fact

(dh.sales_document || '-' || di.item_number) AS delivery_key,
dh.sales_document,
di.item_number,
dh.total_weight,
dh.sd_document_category,
dh.number_deliveries,
dh.number_packages,
di.picking_confirmation,
di.picking_status,
di.goods_movement_status,
di.unloading_point,
di.company_code,
di.sales_district,
di.billing_block_sd_document,
di.incoterms_part_1,
di.incoterms_part_2,
di.customer_group,
di.sold_to_party,
di.customer_number,
di.delivery_type,
di.delivery_date,
di.vendors_account_number,
di.delivery_block,
di.departure_loading_point,
di.shipment_route,
di.sd_document_category_1,
di.sales_organization,
di.shipping_point,
di.planned_goods_movement_date,
di.actual_goods_movement_date,
di.changed_on,
di.promotion,
di.gross_weight,
di.application_component,
di.transfer_process,
di.batch_number,
di.international_article_number,
di.created_on,
di.created_by,
di.entry_time,
di.billing_block,
di.weight_unit,
di.business_area,
di.picking_indicator,
di.customer_group_1,
di.customer_group_2,
di.customer_group_3,
di.customer_group_4,
di.customer_group_5,
di.consumption_posting,
di.delivery_quantity,
di.actual_delivery_quantity,
di.warehouse_number,
di.storage_location,
di.storage_bin,
di.storage_type,
di.material_group,
di.material_number,
di.material_entered,
di.base_unit_of_measure,
di.material_group_1,
di.material_group_2,
di.material_group_3,
di.material_group_4,
di.material_group_5,
di.net_weight,
di.bill_to_party,
di.payer,
di.item_type,
di.product_hierarchy,
di.forwarding_agent,
di.item_category,
di.sales_employee,
di.statistics_date,
di.denominator,
di.numerator,
di.fixed_processing_time,
di.variable_processing_time,
di.update_date_statistics,
di.reference_document,
di.reference_item,
di.sd_document_category_2,
di.sales_office,
di.sales_group,
di.volume_unit,
di.volume,
di.sales_unit,
di.distribution_channel,
di.plant,
di.number_delivery_items,
di.division_for_order_header,
di.wbs_element,
di.fiscal_year_variant,
di.goods_issue_delay,
di.campaign_order_item,
coalesce(oid.confirmation_status,ohd.confirmation_status) as confirmation_status,
coalesce(oid.billing_status_order_related,ohd.billing_status_order_related) as billing_status_order_related,
oid.billing_status_delivery_related,
coalesce(oid.overall_processing_status,ohd.overall_processing_status) as overall_processing_status,
coalesce(oid.overall_Deliver_status,ohd.overall_deliver_status) as overall_deliver_status,
coalesce(oid.delivery_status,ohd.delivery_status) as delivery_status,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

CASE WHEN dh.dw_last_update_date > di.dw_last_update_date
     THEN dh.dw_last_update_date
     ELSE di.dw_last_update_date
END as input_last_update_date,
dh.dw_active_indicator,
md.material_uuid,
pd.plant_uuid,
sd.supplier_uuid,
cd.customer_uuid,
csod.customer_sales_org_uuid,
di.vendors_account_number as supplier_key,
(di.material_number || '-' || di.plant) as material_key,
di.plant as plant_key,
di.customer_number as customer_key,
(di.customer_number || '-' || di.sales_organization || '-' || di.distribution_channel || '-' || di.division_for_order_header) as customer_sales_org_key
  from  `${ProjectID}.${StagingDatasetName}.delivery_header` dh 
        INNER JOIN `${ProjectID}.${StagingDatasetName}.delivery_item` di 
    ON  dh.sales_document = di.sales_document
   AND  dh.dw_active_indicator = di.dw_active_indicator
       LEFT JOIN `${ProjectID}.${StagingDatasetName}.order_header_data` ohd
    on ohd.sales_document = dh.sales_document
   and ohd.dw_active_indicator = 'Y'
       LEFT JOIN `${ProjectID}.${StagingDatasetName}.order_item_data` oid 
    on oid.sales_document = dh.sales_document
   and oid.item_number = di.item_number
   and oid.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.material_dimension` md
    ON md.material_key = (di.material_number || '-' || di.plant)
   AND md.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd
    ON pd.plant_key = di.plant 
   AND pd.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.supplier_dimension` sd
    ON sd.supplier_key = di.vendors_account_number 
   AND sd.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.customer_dimension` cd
    ON cd.customer_key = di.customer_number 
   AND cd.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.customer_sales_org_dimension` csod
    ON csod.customer_sales_org_key = (di.customer_number || '-' || di.sales_organization || '-' || di.distribution_channel || '-' || di.division_for_order_header)
   AND csod.dw_active_indicator = 'Y'
  WHERE trim(dh.cancel_data_record) = ''
    AND trim(di.cancel_data_record) = ''
    AND dh.dw_active_indicator = 'Y'

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

    AND (dh.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'delivery_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
     OR  di.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'delivery_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
tmp_del AS (SELECT ts.*,

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.delivery_key as delivery_join_key,t.*
  from tmp_del t
UNION ALL 

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as delivery_join_key,t.*
  from tmp_del t
       INNER JOIN `${ProjectID}.${TargetDatasetNames2}.delivery_fact` df
    ON df.delivery_key = t.delivery_key
   AND df.finalmd5key <> t.finalmd5key
 WHERE df.dw_active_indicator = 'Y') scr 

-- Join the source  and the taget table using the join keys.

 ON tgt.delivery_key = scr.delivery_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT (
delivery_uuid,
delivery_key,
sales_document,
item_number,
plant_uuid,
material_uuid,
supplier_uuid,
customer_uuid,
customer_sales_org_uuid,
material_key,
plant_key,
supplier_key,
customer_key,
customer_sales_org_key,
total_weight,
sd_document_category,
number_deliveries,
number_packages,
picking_confirmation,
picking_status,
goods_movement_status,
unloading_point,
company_code,
sales_district,
billing_block_sd_document,
incoterms_part_1,
incoterms_part_2,
customer_group,
sold_to_party,
customer_number,
delivery_type,
delivery_date,
delivery_block,
departure_loading_point,
shipment_route,
sd_document_category_1,
sales_organization,
shipping_point,
planned_goods_movement_date,
actual_goods_movement_date,
changed_on,
promotion,
gross_weight,
application_component,
transfer_process,
batch_number,
international_article_number,
created_on,
created_by,
entry_time,
billing_block,
weight_unit,
business_area,
picking_indicator,
customer_group_1,
customer_group_2,
customer_group_3,
customer_group_4,
customer_group_5,
consumption_posting,
delivery_quantity,
actual_delivery_quantity,
warehouse_number,
storage_location,
storage_bin,
storage_type,
material_group,
material_entered,
base_unit_of_measure,
material_group_1,
material_group_2,
material_group_3,
material_group_4,
material_group_5,
net_weight,
bill_to_party,
payer,
item_type,
product_hierarchy,
forwarding_agent,
item_category,
sales_employee,
statistics_date,
denominator,
numerator,
fixed_processing_time,
variable_processing_time,
update_date_statistics,
reference_document,
reference_item,
sd_document_category_2,
sales_office,
sales_group,
volume_unit,
volume,
sales_unit,
distribution_channel,
number_delivery_items,
division_for_order_header,
wbs_element,
fiscal_year_variant,
goods_issue_delay,
campaign_order_item,
confirmation_status,
billing_status_order_related,
billing_status_delivery_related,
overall_processing_status,
overall_deliver_status,
delivery_status,
input_last_update_date,
finalmd5key,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
) VALUES 
(

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

TO_HEX(MD5(CONCAT(scr.delivery_key,scr.finalmd5key))),
scr.delivery_key,
scr.sales_document,
scr.item_number,
scr.plant_uuid,
scr.material_uuid,
scr.supplier_uuid,
scr.customer_uuid,
scr.customer_sales_org_uuid,
scr.material_key,
scr.plant_key,
scr.supplier_key,
scr.customer_key,
scr.customer_sales_org_key,
scr.total_weight,
scr.sd_document_category,
scr.number_deliveries,
scr.number_packages,
scr.picking_confirmation,
scr.picking_status,
scr.goods_movement_status,
scr.unloading_point,
scr.company_code,
scr.sales_district,
scr.billing_block_sd_document,
scr.incoterms_part_1,
scr.incoterms_part_2,
scr.customer_group,
scr.sold_to_party,
scr.customer_number,
scr.delivery_type,
scr.delivery_date,
scr.delivery_block,
scr.departure_loading_point,
scr.shipment_route,
scr.sd_document_category_1,
scr.sales_organization,
scr.shipping_point,
scr.planned_goods_movement_date,
scr.actual_goods_movement_date,
scr.changed_on,
scr.promotion,
scr.gross_weight,
scr.application_component,
scr.transfer_process,
scr.batch_number,
scr.international_article_number,
scr.created_on,
scr.created_by,
scr.entry_time,
scr.billing_block,
scr.weight_unit,
scr.business_area,
scr.picking_indicator,
scr.customer_group_1,
scr.customer_group_2,
scr.customer_group_3,
scr.customer_group_4,
scr.customer_group_5,
scr.consumption_posting,
scr.delivery_quantity,
scr.actual_delivery_quantity,
scr.warehouse_number,
scr.storage_location,
scr.storage_bin,
scr.storage_type,
scr.material_group,
scr.material_entered,
scr.base_unit_of_measure,
scr.material_group_1,
scr.material_group_2,
scr.material_group_3,
scr.material_group_4,
scr.material_group_5,
scr.net_weight,
scr.bill_to_party,
scr.payer,
scr.item_type,
scr.product_hierarchy,
scr.forwarding_agent,
scr.item_category,
scr.sales_employee,
scr.statistics_date,
scr.denominator,
scr.numerator,
scr.fixed_processing_time,
scr.variable_processing_time,
scr.update_date_statistics,
scr.reference_document,
scr.reference_item,
scr.sd_document_category_2,
scr.sales_office,
scr.sales_group,
scr.volume_unit,
scr.volume,
scr.sales_unit,
scr.distribution_channel,
scr.number_delivery_items,
scr.division_for_order_header,
scr.wbs_element,
scr.fiscal_year_variant,
scr.goods_issue_delay,
scr.campaign_order_item,
scr.confirmation_status,
scr.billing_status_order_related,
scr.billing_status_delivery_related,
scr.overall_processing_status,
scr.overall_deliver_status,
scr.delivery_status,
scr.input_last_update_date,
scr.finalmd5key,
scr.dw_active_indicator,
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);

MERGE INTO 
`${ProjectID}.${StagingDatasetName}.layer1_audit_table` tgt
USING ( SELECT 

-- mention table name for which we are updating the record.

         'delivery_fact' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'delivery_fact') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'delivery_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'2LIS_12_VCHDR,2LIS_12_VCITM,2LIS_11_VASTI,2LIS_11_VASTH' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames2}.delivery_fact`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames2}.delivery_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'delivery_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames2}.delivery_fact` where dw_active_indicator = 'Y')))  AS inserted_record_count
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