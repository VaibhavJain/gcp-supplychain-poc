MERGE INTO
  `${ProjectID}.${TargetDatasetNames1}.supplier_purchase_org_dimension` tgt
USING
  (
WITH tmp_scr AS (select 

-- Combining columns which are required to make a key for the supplier_purchase_org_dimension

(sm.vendors_account_number || '-' || spo.purchasing_organization) as supplier_purchase_org_key,
sm.vendors_account_number,
spo.purchasing_organization,
sm.vendor_account_group,
sm.title,
sm.train_station,
sm.international_location_number_1,
sm.international_location_number_2,
sm.authorization_group,
sm.industry_key,
sm.check_digit,
sm.data_line,
sm.date_medium_exchange_indicator,
sm.instruction_key,
sm.created_on,
sm.created_by,
sm.isr_subscriber_number,
sm.group_key,
sm.customer_number,
sm.country_key,
sm.alternative_payee,
sm.central_deletion_flag,
sm.name_1,
sm.name_2,
sm.name_3,
sm.name_4,
sm.city,
sm.district,
sm.post_office_box,
sm.po_box_postal_code,
sm.postal_code,
sm.region,
sm.sort_field,
sm.central_posting_block,
sm.central_purchasing_block,
sm.language_key,
sm.tax_number_1,
sm.tax_number_2,
sm.tax_number_3,
sm.sales_equalization_tax,
sm.liable_for_vat,
sm.street_and_house_number,
sm.telebox_number,
sm.telephone_1,
sm.telephone_2,
sm.fax_number,
sm.teletex_number,
sm.telex_number,
sm.one_time_account,
sm.payee_in_document,
sm.trading_partner,
sm.fiscal_address,
sm.vat_registration_number,
sm.natural_person,
sm.block_function,
sm.matchcode_name_1,
sm.matchcode_name_2,
sm.matchcode_city,
sm.place_of_birth,
sm.date_of_birth,
sm.sex,
sm.credit_information_number,
sm.last_external_review,
sm.actual_qm_system,
sm.reference_account_group,
sm.post_office_box_city,
sm.plant,
sm.vendor_sub_range_relevant,
sm.plant_level_relevant,
sm.factory_calendar,
sm.tax_jurisdiction,
sm.payment_block,
sm.address,
sm.tax_number_4,
sm.tax_number_5,
spo.purchasing_organization_block,
spo.purchasing_organization_delete_flag,
spo.abc_indicator,
spo.order_currency,
spo.responsible_salesperson,
spo.telephone_number,
spo.minimum_order_value,
spo.payment_terms,
spo.incoterms_1,
spo.incoterms_2,
spo.gr_based_invoice,
spo.acknowledgment_required,
spo.schems_group_supplier,
spo.automatic_purchase_order,
spo.mode_of_transport,
spo.customs_office,
spo.price_date_control,
spo.purchasing_group,
spo.subsequient_settlement,
spo.business_volumn_comparison,
spo.evaluated_receipt_settlement,
spo.planned_delivery_time,
spo.planning_calendar,
spo.planning_cycle,
spo.order_entry_supplier,
spo.supplier_price_marking,
spo.rack_jobbing,
spo.price_determination,
spo.qualifying_discount_kind_granted,
spo.subsequient_settlement_index,
spo.document_index_active,
spo.returns_supplier,
spo.sort_criterion,
spo.confimration_control,
spo.rounding_profile,
spo.unit_of_measure_group,
spo.supplier_service_level,
spo.load_building_restriction_profile,
spo.automatic_evaluated_receipt,
spo.account_supplier,
spo.release_creation_profile,
spo.proact_control_profile,
spo.settlement_management,
spo.revaluation_allowed,
spo.shipping_conditions,
spo.service_based_invoice_verification,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

CASE WHEN sm.dw_last_update_date > spo.dw_last_update_date
     THEN sm.dw_last_update_date
     ELSE spo.dw_last_update_date
END as input_last_update_date,
sm.dw_active_indicator
  from `${ProjectID}.${StagingDatasetName}.supply_master` sm 
        INNER JOIN `${ProjectID}.${StagingDatasetName}.supplier_purchasing_organization` spo 
    on sm.vendors_account_number = spo.vendors_account_number
 WHERE sm.dw_active_indicator = 'Y'

 -- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

   AND (sm.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'supplier_purchase_org_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))
    OR  spo.dw_last_update_date >= coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'supplier_purchase_org_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME)))),
  tmp_supp AS (SELECT ts.*,

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

     TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    from unnest(split(trim(format('%t',(select as struct ts.* except(input_last_update_date))), '()'),', ')) col with offset 
    where not col IS NULL
    ))) as finalmd5key      
  from tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.supplier_purchase_org_key as supplier_purchase_org_join_key,t.*
  from tmp_supp t
UNION ALL 

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT NULL as supplier_join_key,t.*
  from tmp_supp t
       INNER JOIN `${ProjectID}.${TargetDatasetNames1}.supplier_purchase_org_dimension` spod 
    ON spod.supplier_purchase_org_key = t.supplier_purchase_org_key
   AND spod.finalmd5key <> t.finalmd5key
WHERE spod.dw_active_indicator = 'Y') scr 

-- Join the source  and the taget table using the join keys.

    ON tgt.supplier_purchase_org_key = scr.supplier_purchase_org_join_key
WHEN MATCHED AND tgt.finalmd5key <> scr.finalmd5key THEN
UPDATE set tgt.dw_end_date = CURRENT_DATETIME()
          ,tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT (
supplier_purchase_org_uuid,
supplier_purchase_org_key,
vendors_account_number,
purchasing_organization,
vendor_account_group,
title,
train_station,
international_location_number_1,
international_location_number_2,
authorization_group,
industry_key,
check_digit,
data_line,
date_medium_exchange_indicator,
instruction_key,
created_on,
created_by,
isr_subscriber_number,
group_key,
customer_number,
country_key,
alternative_payee,
central_deletion_flag,
name_1,
name_2,
name_3,
name_4,
city,
district,
post_office_box,
po_box_postal_code,
postal_code,
region,
sort_field,
central_posting_block,
central_purchasing_block,
language_key,
tax_number_1,
tax_number_2,
tax_number_3,
sales_equalization_tax,
liable_for_vat,
street_and_house_number,
telebox_number,
telephone_1,
telephone_2,
fax_number,
teletex_number,
telex_number,
one_time_account,
payee_in_document,
trading_partner,
fiscal_address,
vat_registration_number,
natural_person,
block_function,
matchcode_name_1,
matchcode_name_2,
matchcode_city,
place_of_birth,
date_of_birth,
sex,
credit_information_number,
last_external_review,
actual_qm_system,
reference_account_group,
post_office_box_city,
plant,
vendor_sub_range_relevant,
plant_level_relevant,
factory_calendar,
tax_jurisdiction,
payment_block,
address,
tax_number_4,
tax_number_5,
purchasing_organization_block,
purchasing_organization_delete_flag,
abc_indicator,
order_currency,
responsible_salesperson,
telephone_number,
minimum_order_value,
payment_terms,
incoterms_1,
incoterms_2,
gr_based_invoice,
acknowledgment_required,
schems_group_supplier,
automatic_purchase_order,
mode_of_transport,
customs_office,
price_date_control,
purchasing_group,
subsequient_settlement,
business_volumn_comparison,
evaluated_receipt_settlement,
planned_delivery_time,
planning_calendar,
planning_cycle,
order_entry_supplier,
supplier_price_marking,
rack_jobbing,
price_determination,
qualifying_discount_kind_granted,
subsequient_settlement_index,
document_index_active,
returns_supplier,
sort_criterion,
confimration_control,
rounding_profile,
unit_of_measure_group,
supplier_service_level,
load_building_restriction_profile,
automatic_evaluated_receipt,
account_supplier,
release_creation_profile,
proact_control_profile,
settlement_management,
revaluation_allowed,
shipping_conditions,
service_based_invoice_verification,
input_last_update_date,
finalmd5key,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date)
VALUES 

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

(TO_HEX(MD5(CONCAT(scr.supplier_purchase_org_key,scr.finalmd5key))),
scr.supplier_purchase_org_key,
scr.vendors_account_number,
scr.purchasing_organization,
scr.vendor_account_group,
scr.title,
scr.train_station,
scr.international_location_number_1,
scr.international_location_number_2,
scr.authorization_group,
scr.industry_key,
scr.check_digit,
scr.data_line,
scr.date_medium_exchange_indicator,
scr.instruction_key,
scr.created_on,
scr.created_by,
scr.isr_subscriber_number,
scr.group_key,
scr.customer_number,
scr.country_key,
scr.alternative_payee,
scr.central_deletion_flag,
scr.name_1,
scr.name_2,
scr.name_3,
scr.name_4,
scr.city,
scr.district,
scr.post_office_box,
scr.po_box_postal_code,
scr.postal_code,
scr.region,
scr.sort_field,
scr.central_posting_block,
scr.central_purchasing_block,
scr.language_key,
scr.tax_number_1,
scr.tax_number_2,
scr.tax_number_3,
scr.sales_equalization_tax,
scr.liable_for_vat,
scr.street_and_house_number,
scr.telebox_number,
scr.telephone_1,
scr.telephone_2,
scr.fax_number,
scr.teletex_number,
scr.telex_number,
scr.one_time_account,
scr.payee_in_document,
scr.trading_partner,
scr.fiscal_address,
scr.vat_registration_number,
scr.natural_person,
scr.block_function,
scr.matchcode_name_1,
scr.matchcode_name_2,
scr.matchcode_city,
scr.place_of_birth,
scr.date_of_birth,
scr.sex,
scr.credit_information_number,
scr.last_external_review,
scr.actual_qm_system,
scr.reference_account_group,
scr.post_office_box_city,
scr.plant,
scr.vendor_sub_range_relevant,
scr.plant_level_relevant,
scr.factory_calendar,
scr.tax_jurisdiction,
scr.payment_block,
scr.address,
scr.tax_number_4,
scr.tax_number_5,
scr.purchasing_organization_block,
scr.purchasing_organization_delete_flag,
scr.abc_indicator,
scr.order_currency,
scr.responsible_salesperson,
scr.telephone_number,
scr.minimum_order_value,
scr.payment_terms,
scr.incoterms_1,
scr.incoterms_2,
scr.gr_based_invoice,
scr.acknowledgment_required,
scr.schems_group_supplier,
scr.automatic_purchase_order,
scr.mode_of_transport,
scr.customs_office,
scr.price_date_control,
scr.purchasing_group,
scr.subsequient_settlement,
scr.business_volumn_comparison,
scr.evaluated_receipt_settlement,
scr.planned_delivery_time,
scr.planning_calendar,
scr.planning_cycle,
scr.order_entry_supplier,
scr.supplier_price_marking,
scr.rack_jobbing,
scr.price_determination,
scr.qualifying_discount_kind_granted,
scr.subsequient_settlement_index,
scr.document_index_active,
scr.returns_supplier,
scr.sort_criterion,
scr.confimration_control,
scr.rounding_profile,
scr.unit_of_measure_group,
scr.supplier_service_level,
scr.load_building_restriction_profile,
scr.automatic_evaluated_receipt,
scr.account_supplier,
scr.release_creation_profile,
scr.proact_control_profile,
scr.settlement_management,
scr.revaluation_allowed,
scr.shipping_conditions,
scr.service_based_invoice_verification,
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

         'supplier_purchase_org_dimension' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'supplier_purchase_org_dimension') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'supplier_purchase_org_dimension') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'0VENDOR_ATTR,0VEN_PURORG_ATTR' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the sales_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames1}.supplier_purchase_org_dimension`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.customer_dimension` a 
          where a.dw_active_indicator = 'Y'  and a.dw_last_update_date > COALESCE((SELECT CASE WHEN b.full_delta_indicator = 'F' 
                                                              THEN b.full_load_datetime
                                                              WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                          END
                                                    from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
                                        where b.table_name = 'supplier_purchase_org_dimension'),CAST('1900-01-01T00:00:00' AS DATETIME))),(select count(*) as inserted_record_count from `${ProjectID}.${TargetDatasetNames1}.supplier_purchase_org_dimension` where dw_active_indicator = 'Y'))) AS inserted_record_count
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