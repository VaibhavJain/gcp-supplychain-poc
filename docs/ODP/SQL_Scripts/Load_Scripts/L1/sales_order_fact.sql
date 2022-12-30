MERGE INTO `${ProjectID}.${TargetDatasetNames2}.sales_order_fact` tgt
USING (
WITH tmp_scr AS (SELECT 

-- Combining columns which are required to make a key for the sales_order_fact

(sdh.sales_document || '-' || sdsl.item_number || '-' ||  sdsl.schedule_line_number) as sales_order_key,
sdh.sales_document,
sdsl.item_number,
sdsl.schedule_line_number,
sdh.sales_document_type,
sdh.billing_block,
sdh.requested_delivery_date,
sdh.document_currency,
sdh.number_of_orders,
sdi.billing_block_1,
sdi.sd_document_category,
sdi.gross_weight,
sdi.application_component,
sdi.transfer_process,
sdi.billing_block_2,
sdi.cumulative_confirmed_quantity_sales_unit,
sdi.cumulative_confirmed_quantity_base_unit,
sdi.sales_deal,
sdi.cumulative_order_quantity,
sdi.subtotal_1,
sdi.subtotal_2,
sdi.subtotal_3,
sdi.subtotal_4,
sdi.subtotal_5,
sdi.subtotal_6,
sdi.minimum_delivery_quantity,
sdi.required_delivery_qtuantity,
sdi.tax_amount,
sdi.net_order_value,
sdi.net_weight,
sdi.special_stock_indicator,
sdi.unlimited_tolerance,
sdi.overdelivery_tolerance,
sdi.underdel_tolerance,
sdi.reference_document,
sdi.reference_item,
sdi.volume,
sdi.cost_in_document_currency,
sdi.target_quantity,
sdi.outline_agreement_target_value,
sdi.promotion,
sdi.product_catalog_number,
sdi.order_items,
sdi.net_price_sales_quantity,
sdsl.cancel_data_record,
sdsl.rejection_status,
sdsl.incompletion_status_item,
sdsl.billing_incompletion_status_item,
sdsl.pricing_incompletion_status_item,
sdsl.delivery_incompletion_status_item,
sdsl.confirmed_quantity,
sdsl.corrected_quantity,
sdsl.delivery_date,
sdsl.schedule_line_category,
sdsl.loading_date,
sdsl.scheduled_line_blocked,
sdsl.required_quantity,
sdsl.material_availability_date,
sdsl.base_unit_of_measure,
sdsl.transportation_planning_date,
sdsl.sales_unit,
sdsl.goods_issue_date,
sdsl.desired_delivery_date,
sdsl.order_quantity,
sdsl.quotation_valid_from,
sdsl.order_reason,
sdsl.quotation_valid_to,
sdsl.company_code,
sdsl.billing_block_sd_document,
sdsl.local_currency,
sdsl.customer_number,
sdsl.exchange_rate_type,
sdsl.customer_group_1,
sdsl.customer_group_2,
sdsl.customer_group_3,
sdsl.customer_group_4,
sdsl.customer_group_5,
sdsl.delivery_block,
sdsl.statistics_currency,
sdsl.sd_document_category_1,
sdsl.sales_office,
sdsl.sales_group,
sdsl.sales_organization,
sdsl.distribution_channel,
sdsl.reason_for_rejection,
sdsl.changed_on,
sdsl.order_probability,
sdsl.batch_number,
sdsl.credit_data_exchange_rate,
sdsl.international_article_number,
sdsl.created_on,
sdsl.created_by,
sdsl.billing_block_item,
sdsl.weight_unit,
sdsl.condition_unit,
sdsl.condition_pricing_unit,
sdsl.storage_location,
sdsl.material_group,
sdsl.material_number,
sdsl.material_entered,
sdsl.material_group_1,
sdsl.material_group_2,
sdsl.material_group_3,
sdsl.material_group_4,
sdsl.material_group_5,
sdsl.net_order_price,
sdsl.unloading_point_ship_to_party,
sdsl.bill_to_party,
sdsl.payer,
sdsl.ship_to_party,
sdsl.product_hierarchy,
sdsl.forwarding_agent,
sdsl.item_category,
sdsl.sales_employee,
sdsl.shipment_route,
sdsl.division,
sdsl.statistics_date,
sdsl.exchange_rate_statistics,
sdsl.substitution_reason,
sdsl.denominator,
sdsl.numerator,
sdsl.conversion_factor_1,
sdsl.conversion_factor_2,
sdsl.update_date_statistics,
sdsl.sd_document_category_2,
sdsl.volume_unit,
sdsl.shipping_point,
sdsl.document_currency_1,
sdsl.plant,
sdsl.target_quantity_uom,
sdsl.sales_district,
sdsl.services_rendered_date,
sdsl.billing_date,
sdsl.incoterms_part_1,
sdsl.incoterms_part_2,
sdsl.customer_group,
sdsl.account_assignment_group,
sdsl.exchange_rate,
sdsl.translation_date,
sdsl.pricing_date,
sdsl.document_currency_2,
sdsl.division_for_order_header,
sdsl.sales_document_category_reference,
sdsl.wbs_element,
sdsl.fiscal_year_variant,
sdsl.campaign_order_item,
sdsl.planning_in_apo,
sdsl.customer_facing_location,
sdsl.customer_facing_location_type,
sdsl.executing_location,
sdsl.executing_location_type,
sdsl.logical_system,
sdsl.item_usage,
sdsl.managing_location,
sdsl.managing_location_type,
sld.sales_document as sales_document_shipping,
sld.picking_confirmation,
sld.picking_status,
sld.goods_movement_status,
sld.schedule_line_date,
sld.schedule_delivery_block,
sld.delivered_quantity,
sld.goods_issue_date_1,
sld.desired_delete_date,
sld.unloading_point,
sld.incterms_1,
sld.incoterms_2,
sld.sold_to_party,
sld.delivery_type,
sld.vendors_account_number,
sld.loading_point,
sld.route,
sld.actual_goods_movement_date,
sld.entry_time,
sld.business_area,
sld.picking_indicator,
sld.consumption_posting,
sld.warehouse_number,
sld.storage_bin,
sld.storage_type,
sld.item_type,
sld.delivery_item_category,
sld.denominator_sales_quantity,
sld.numerator_sales_quantity,
sld.sales_document_1,
sld.sales_document_item,
sld.goods_issue_date_2,
sld.division_order_header,
sld.goods_issue_delay,
sld.actual_goods_issue_delay,
coalesce(oid.confirmation_status,ohd.confirmation_status) as confirmation_status,
coalesce(oid.billing_status_order_related,ohd.billing_status_order_related) as billing_status_order_related,
oid.billing_status_delivery_related,
coalesce(oid.overall_processing_status,ohd.overall_processing_status) as overall_processing_status,
coalesce(oid.overall_Deliver_status,ohd.overall_deliver_status) as overall_deliver_status,
coalesce(oid.delivery_status,ohd.delivery_status) as delivery_status,
(sdsl.material_number || '-' || sdsl.plant) as material_key,
sdsl.plant as plant_key,
sdsl.customer_number as customer_key,
(sdsl.customer_number || '-' || sdsl.sales_organization || '-' || sdsl.distribution_channel || '-' || sdsl.division) as customer_sale_org_key,
sld.vendors_account_number as supplier_key,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

CASE WHEN sdh.dw_last_update_date > sdi.dw_last_update_date and sdh.dw_last_update_date > sdsl.dw_last_update_date and sdh.dw_last_update_date > sld.dw_last_update_date 
     THEN sdh.dw_last_update_date
     WHEN sdi.dw_last_update_date > sdh.dw_last_update_date and sdi.dw_last_update_date > sdsl.dw_last_update_date and sdi.dw_last_update_date > sld.dw_last_update_date
     THEN sdi.dw_last_update_date
     WHEN sdsl.dw_last_update_date > sdh.dw_last_update_date and sdsl.dw_last_update_date > sdi.dw_last_update_date and sdsl.dw_last_update_date > sld.dw_last_update_date
     THEN sdsl.dw_last_update_date
     ELSE sld.dw_last_update_date
END as input_last_update_date,
sdsl.dw_active_indicator,
md.material_uuid,
pd.plant_uuid,
cd.customer_uuid,
csod.customer_sales_org_uuid,
sd.supplier_uuid
 FROM `${ProjectID}.${StagingDatasetName}.sales_document_header` sdh 
       INNER JOIN `${ProjectID}.${StagingDatasetName}.sales_document_item` sdi 
    ON sdh.sales_document = sdi.sales_document
   AND sdi.dw_active_indicator = sdh.dw_active_indicator
       INNER JOIN `${ProjectID}.${StagingDatasetName}.sales_document_schedule_line` sdsl
    ON sdsl.sales_document = sdh.sales_document
   AND sdsl.item_number = sdi.item_number
   AND sdsl.dw_active_indicator = 'Y'
       LEFT JOIN `${ProjectID}.${StagingDatasetName}.schedule_line_delivery` sld
    ON sld.sales_document_1 = sdh.sales_document
   AND sdi.item_number = sld.item_number
   AND sdsl.schedule_line_number = sld.schedule_line_number
   AND sld.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.material_dimension` md
    ON md.material_key = (sdsl.material_number || '-' || sdsl.plant) 
   AND md.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd
    ON pd.plant_key = sdsl.plant 
   AND pd.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.customer_dimension` cd
    ON cd.customer_key = sdsl.customer_number 
   AND cd.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.customer_sales_org_dimension` csod
    ON csod.customer_sales_org_key = (sdsl.customer_number || '-' || sdsl.sales_organization || '-' || sdsl.distribution_channel || '-' || sdsl.division) 
   AND csod.dw_active_indicator = 'Y'
        LEFT JOIN `${ProjectID}.${TargetDatasetNames1}.supplier_dimension` sd
    ON sd.supplier_key = sld.vendors_account_number 
   AND sd.dw_active_indicator = 'Y'
       LEFT JOIN `${ProjectID}.${StagingDatasetName}.order_header_data` ohd
    on ohd.sales_document = sdh.sales_document
   and ohd.dw_active_indicator = 'Y'
       LEFT JOIN `${ProjectID}.${StagingDatasetName}.order_item_data` oid 
    on oid.sales_document = sdh.sales_document
   and oid.item_number = sdi.item_number
   and oid.dw_active_indicator = 'Y'
where sdh.dw_active_indicator = 'Y'

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

  AND (sdh.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'sales_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
     OR  sdi.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'sales_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
     OR  sdsl.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'sales_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
    OR  sld.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'sales_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

tmp_sale AS (SELECT ts.*,
     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.sales_order_key as sales_order_join_key,t.*
  from tmp_sale t
UNION ALL 

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as purchase_order_join_key,t.*
  from tmp_sale t
       INNER JOIN `${ProjectID}.${TargetDatasetNames2}.sales_order_fact` sof
   ON  sof.sales_order_key  = t.sales_order_key
  AND sof.finalmd5key <> t.finalmd5key
 WHERE sof.dw_active_indicator = 'Y') scr

-- Join the source  and the taget table using the join keys.

    ON tgt.sales_order_key = scr.sales_order_join_key
WHEN MATCHED  AND tgt.finalmd5key <> scr.finalmd5key  THEN 
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT (
sales_order_uuid,
sales_order_key,
sales_document,
item_number,
schedule_line_number,
sales_document_type,
material_uuid,
customer_uuid,
plant_uuid,
supplier_uuid,
customer_sales_org_uuid,
billing_block,
requested_delivery_date,
document_currency,
number_of_orders,
billing_block_1,
sd_document_category,
gross_weight,
application_component,
transfer_process,
billing_block_2,
cumulative_confirmed_quantity_sales_unit,
cumulative_confirmed_quantity_base_unit,
sales_deal,
cumulative_order_quantity,
subtotal_1,
subtotal_2,
subtotal_3,
subtotal_4,
subtotal_5,
subtotal_6,
minimum_delivery_quantity,
required_delivery_qtuantity,
tax_amount,
net_order_value,
net_weight,
special_stock_indicator,
unlimited_tolerance,
overdelivery_tolerance,
underdel_tolerance,
reference_document,
reference_item,
volume,
cost_in_document_currency,
target_quantity,
outline_agreement_target_value,
promotion,
product_catalog_number,
order_items,
net_price_sales_quantity,
cancel_data_record,
rejection_status,
incompletion_status_item,
billing_incompletion_status_item,
pricing_incompletion_status_item,
delivery_incompletion_status_item,
confirmed_quantity,
corrected_quantity,
delivery_date,
schedule_line_category,
loading_date,
scheduled_line_blocked,
required_quantity,
material_availability_date,
base_unit_of_measure,
transportation_planning_date,
sales_unit,
goods_issue_date,
desired_delivery_date,
order_quantity,
quotation_valid_from,
order_reason,
quotation_valid_to,
company_code,
billing_block_sd_document,
local_currency,
exchange_rate_type,
customer_group_1,
customer_group_2,
customer_group_3,
customer_group_4,
customer_group_5,
delivery_block,
statistics_currency,
sd_document_category_1,
sales_office,
sales_group,
sales_organization,
distribution_channel,
reason_for_rejection,
changed_on,
order_probability,
batch_number,
credit_data_exchange_rate,
international_article_number,
created_on,
created_by,
billing_block_item,
weight_unit,
condition_unit,
condition_pricing_unit,
storage_location,
material_group,
material_entered,
material_group_1,
material_group_2,
material_group_3,
material_group_4,
material_group_5,
net_order_price,
unloading_point_ship_to_party,
bill_to_party,
payer,
ship_to_party,
product_hierarchy,
forwarding_agent,
item_category,
sales_employee,
shipment_route,
division,
statistics_date,
exchange_rate_statistics,
substitution_reason,
denominator,
numerator,
conversion_factor_1,
conversion_factor_2,
update_date_statistics,
sd_document_category_2,
volume_unit,
shipping_point,
document_currency_1,
target_quantity_uom,
sales_district,
services_rendered_date,
billing_date,
incoterms_part_1,
incoterms_part_2,
customer_group,
account_assignment_group,
exchange_rate,
translation_date,
pricing_date,
document_currency_2,
division_for_order_header,
sales_document_category_reference,
wbs_element,
fiscal_year_variant,
campaign_order_item,
planning_in_apo,
customer_facing_location,
customer_facing_location_type,
executing_location,
executing_location_type,
logical_system,
item_usage,
managing_location,
managing_location_type,
sales_document_shipping,
picking_confirmation,
picking_status,
goods_movement_status,
schedule_line_date,
schedule_delivery_block,
delivered_quantity,
goods_issue_date_1,
desired_delete_date,
unloading_point,
incterms_1,
incoterms_2,
sold_to_party,
delivery_type,
vendors_account_number,
loading_point,
route,
actual_goods_movement_date,
entry_time,
business_area,
picking_indicator,
consumption_posting,
warehouse_number,
storage_bin,
storage_type,
item_type,
delivery_item_category,
denominator_sales_quantity,
numerator_sales_quantity,
sales_document_1,
sales_document_item,
goods_issue_date_2,
division_order_header,
goods_issue_delay,
actual_goods_issue_delay,
material_key,
plant_key,
customer_sales_org_key,
supplier_key,
customer_key,
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
)
VALUES 

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

(TO_HEX(MD5(CONCAT(scr.sales_order_key,scr.finalmd5key))),
scr.sales_order_key,
scr.sales_document,
scr.item_number,
scr.schedule_line_number,
scr.sales_document_type,
scr.material_uuid,
scr.customer_uuid,
scr.plant_uuid,
scr.supplier_uuid,
scr.customer_sales_org_uuid,
scr.billing_block,
scr.requested_delivery_date,
scr.document_currency,
scr.number_of_orders,
scr.billing_block_1,
scr.sd_document_category,
scr.gross_weight,
scr.application_component,
scr.transfer_process,
scr.billing_block_2,
scr.cumulative_confirmed_quantity_sales_unit,
scr.cumulative_confirmed_quantity_base_unit,
scr.sales_deal,
scr.cumulative_order_quantity,
scr.subtotal_1,
scr.subtotal_2,
scr.subtotal_3,
scr.subtotal_4,
scr.subtotal_5,
scr.subtotal_6,
scr.minimum_delivery_quantity,
scr.required_delivery_qtuantity,
scr.tax_amount,
scr.net_order_value,
scr.net_weight,
scr.special_stock_indicator,
scr.unlimited_tolerance,
scr.overdelivery_tolerance,
scr.underdel_tolerance,
scr.reference_document,
scr.reference_item,
scr.volume,
scr.cost_in_document_currency,
scr.target_quantity,
scr.outline_agreement_target_value,
scr.promotion,
scr.product_catalog_number,
scr.order_items,
scr.net_price_sales_quantity,
scr.cancel_data_record,
scr.rejection_status,
scr.incompletion_status_item,
scr.billing_incompletion_status_item,
scr.pricing_incompletion_status_item,
scr.delivery_incompletion_status_item,
scr.confirmed_quantity,
scr.corrected_quantity,
scr.delivery_date,
scr.schedule_line_category,
scr.loading_date,
scr.scheduled_line_blocked,
scr.required_quantity,
scr.material_availability_date,
scr.base_unit_of_measure,
scr.transportation_planning_date,
scr.sales_unit,
scr.goods_issue_date,
scr.desired_delivery_date,
scr.order_quantity,
scr.quotation_valid_from,
scr.order_reason,
scr.quotation_valid_to,
scr.company_code,
scr.billing_block_sd_document,
scr.local_currency,
scr.exchange_rate_type,
scr.customer_group_1,
scr.customer_group_2,
scr.customer_group_3,
scr.customer_group_4,
scr.customer_group_5,
scr.delivery_block,
scr.statistics_currency,
scr.sd_document_category_1,
scr.sales_office,
scr.sales_group,
scr.sales_organization,
scr.distribution_channel,
scr.reason_for_rejection,
scr.changed_on,
scr.order_probability,
scr.batch_number,
scr.credit_data_exchange_rate,
scr.international_article_number,
scr.created_on,
scr.created_by,
scr.billing_block_item,
scr.weight_unit,
scr.condition_unit,
scr.condition_pricing_unit,
scr.storage_location,
scr.material_group,
scr.material_entered,
scr.material_group_1,
scr.material_group_2,
scr.material_group_3,
scr.material_group_4,
scr.material_group_5,
scr.net_order_price,
scr.unloading_point_ship_to_party,
scr.bill_to_party,
scr.payer,
scr.ship_to_party,
scr.product_hierarchy,
scr.forwarding_agent,
scr.item_category,
scr.sales_employee,
scr.shipment_route,
scr.division,
scr.statistics_date,
scr.exchange_rate_statistics,
scr.substitution_reason,
scr.denominator,
scr.numerator,
scr.conversion_factor_1,
scr.conversion_factor_2,
scr.update_date_statistics,
scr.sd_document_category_2,
scr.volume_unit,
scr.shipping_point,
scr.document_currency_1,
scr.target_quantity_uom,
scr.sales_district,
scr.services_rendered_date,
scr.billing_date,
scr.incoterms_part_1,
scr.incoterms_part_2,
scr.customer_group,
scr.account_assignment_group,
scr.exchange_rate,
scr.translation_date,
scr.pricing_date,
scr.document_currency_2,
scr.division_for_order_header,
scr.sales_document_category_reference,
scr.wbs_element,
scr.fiscal_year_variant,
scr.campaign_order_item,
scr.planning_in_apo,
scr.customer_facing_location,
scr.customer_facing_location_type,
scr.executing_location,
scr.executing_location_type,
scr.logical_system,
scr.item_usage,
scr.managing_location,
scr.managing_location_type,
scr.sales_document_shipping,
scr.picking_confirmation,
scr.picking_status,
scr.goods_movement_status,
scr.schedule_line_date,
scr.schedule_delivery_block,
scr.delivered_quantity,
scr.goods_issue_date_1,
scr.desired_delete_date,
scr.unloading_point,
scr.incterms_1,
scr.incoterms_2,
scr.sold_to_party,
scr.delivery_type,
scr.vendors_account_number,
scr.loading_point,
scr.route,
scr.actual_goods_movement_date,
scr.entry_time,
scr.business_area,
scr.picking_indicator,
scr.consumption_posting,
scr.warehouse_number,
scr.storage_bin,
scr.storage_type,
scr.item_type,
scr.delivery_item_category,
scr.denominator_sales_quantity,
scr.numerator_sales_quantity,
scr.sales_document_1,
scr.sales_document_item,
scr.goods_issue_date_2,
scr.division_order_header,
scr.goods_issue_delay,
scr.actual_goods_issue_delay,
scr.material_key,
scr.plant_key,
scr.customer_sale_org_key,
scr.supplier_key,
scr.customer_key,
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

         'sales_order_fact' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'sales_order_fact') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'sales_order_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'2LIS_11_VAHDR,2LIS_11_VAITM,2LIS_11_VASCL,2LIS_11_VASTI,2LIS_11_VASTH,2LIS_12_VCSCL' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames2}.sales_order_fact`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames2}.sales_order_fact` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'sales_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames2}.sales_order_fact` where dw_active_indicator = 'Y'))) AS inserted_record_count

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