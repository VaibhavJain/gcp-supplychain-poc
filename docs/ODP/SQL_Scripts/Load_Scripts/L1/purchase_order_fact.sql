MERGE
INTO  `${ProjectID}.${TargetDatasetNames2}.purchase_order_fact` tgt
USING ( WITH tmp_scr AS
      (
-- Combining columns which are required to make a key for the purchase_order_fact

                 SELECT     (ph.transaction_purchasing_document
                                       || '-'
                                       || ph.purchasing_document_number
                                       || '-'
                                       || pi.item_number) AS purchase_order_key,
                            ph.purchasing_document_number,
                            ph.purchasing_group,
                            ph.purchasing_organization,
                            ph.vendors_account_number,
                            ph.purchasing_document_date,
                            ph.logical_system_2,
                            ph.transaction_purchasing_document,
                            pi.item_number,
                            ph.cancel_data_record,
                            ph.purchasing_document_type,
                            ph.purchasing_document_category,
                            ph.supplying_plant_stock,
                            ph.status_of_purchasing_document,
                            ph.supplying_plant_partner,
                            ph.partner_supplier,
                            pi.local_currency,
                            pi.current_goods_receipt_quantity,
                            pi.transfer_process,
                            pi.delivery_completed,
                            pi.material_number_1,
                            pi.quantity_deviation,
                            pi.schedule_deviation,
                            pi.total_delivery_time,
                            pi.storage_location,
                            pi.base_unit_of_measure,
                            pi.quantity_variance,
                            pi.material_group,
                            pi.material_number,
                            pi.purchase_order_unit,
                            pi.order_quantity,
                            pi.net_order_price,
                            pi.net_order_value,
                            pi.delivery_date_variance,
                            pi.plant,
                            pi.goods_receipts_date,
                            psl.document_date,
                            psl.posting_date,
                            psl.validity_period_start,
                            psl.validity_period_end,
                            psl.receiving_supplier,
                            psl.different_invoicing_party,
                            psl.goods_supplier_1,
                            psl.logical_system_1,
                            psl.supplying_plant,
                            psl.status,
                            psl.entry_date,
                            psl.order_currency,
                            psl.exchange_rate,
                            psl.requisitioner,
                            psl.promotion,
                            psl.order_release,
                            psl.application_component,
                            psl.final_invoice,
                            psl.outline_agrement,
                            psl.agreement_item,
                            psl.order_unit,
                            psl.net_price,
                            psl.price_unit,
                            psl.item_category,
                            psl.issuing_storage_location,
                            psl.short_text,
                            psl.denominator,
                            psl.equal_to,
                            psl.gr_base_invoice_verification,
                            psl.goods_receipt,
                            psl.evaluated_receipt_settlement,
                            psl.purchase_requisition,
                            psl.requisition_item,
                            psl.gross_order_value,
                            psl.effective_order_value,
                            psl.cost_value_local_currency,
                            psl.cost_value_order_currency,
                            psl.retail_local_currecny,
                            psl.retail_tax_local_currency,
                            psl.subtotal_1,
                            psl.subtotal_2,
                            psl.subtotal_3,
                            psl.subtotal_4,
                            psl.subtotal_5,
                            psl.subtotal_6,
                            psl.quantity_order_unit,
                            psl.delivery_costs,
                            psl.batch_number,
                            psl.delta_purchase_order_cost,
                            psl.delta_purchase_quantity,
                            psl.delivery_date,
                            psl.schedule_line,
                            psl.number_of_reminders,
                            psl.statistics_delivery_date,
                            psl.budget_number,
                            psl.required_budget,
                            psl.otb_currency,
                            psl.reserved_budget,
                            psl.special_release_budget,
                            psl.otb_reason_profile,
                            psl.budget_type,
                            psl.otb_status,
                            psl.reason_indicator,
                            psl.check_type,
                            psl.date_line_id,
                            psl.transfer_date,
                            psl.no_scem_controlling,
                            psl.reminder_date,
                            psl.reminder_time,
                            psl.cancellation_threat_made,
                            psl.item_type,
                            psl.data_record_type,
                            psl.material_category,
                            psl.plant_category,
                            psl.fiscal_year_variant,
                            psl.schedule_line_date,
                            psl.counter_schedule_line,
                            psl.goods_supplier_2,
                            psl.invoicing_party,
                            psl.supplier_plant,
                            psl.ordering_address,

-- Here we are comparing dw_last_udpate_date from all the input source table, Get the value which is greater and use that value to populate in the input_last_update_date

                            CASE
                                       WHEN ph.dw_last_update_date > pi.dw_last_update_date
                                       AND        ph.dw_last_update_date > psl.dw_last_update_date THEN ph.dw_last_update_date
                                       WHEN pi.dw_last_update_date > ph.dw_last_update_date
                                       AND        pi.dw_last_update_date > psl.dw_last_update_date THEN pi.dw_last_update_date
                                       ELSE psl.dw_last_update_date
                            END AS input_last_update_date,
                            ph.dw_active_indicator,
                            md.material_uuid,
                            pd.plant_uuid,
                            sd.supplier_uuid,
                            spod.supplier_purchase_org_uuid,
                            (pi.material_number
                                       || '-'
                                       || pi.plant)   AS material_key,
                            pi.plant                  AS plant_key,
                            ph.vendors_account_number AS supplier_key,
                            (pi.vendors_account_number
                                       || '-'
                                       || pi.purchasing_organization) AS supplier_purchase_org_key
                 FROM       `${ProjectID}.${StagingDatasetName}.purchasing_header` ph
                 INNER JOIN
                            (
                                            SELECT DISTINCT cancel_data_record,
                                                            purchasing_document_date,
                                                            purchasing_document_type,
                                                            purchasing_document_category,
                                                            MIN(posting_date) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS posting_date,
                                                            purchasing_document_number,
                                                            purchasing_group,
                                                            purchasing_organization,
                                                            local_currency,
                                                            COALESCE(validity_period_start, '1900-01-01') AS validity_period_start,
                                                            COALESCE(validity_period_end, '1900-01-01')   AS validity_period_end,
                                                            receiving_supplier,
                                                            vendors_account_number,
                                                            different_invoicing_party,
                                                            goods_supplier_1,
                                                            logical_system,
                                                            original_logical_system,
                                                            supplying_issuing_plant,
                                                            status_of_purchasing_document,
                                                            MIN(entry_date) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS entry_date,
                                                            currency_key,
                                                            exchange_rate,
                                                            MAX(requisitioner) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS requisitioner,
                                                            promotion,
                                                            SUM(current_goods_receipt_quantity) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS current_goods_receipt_quantity,
                                                            SUM(shipping_notified) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number)              AS shipping_notified,
                                                            SUM(deliveries_number) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number)              AS deliveries_number,
                                                            reason_for_ordering,
                                                            application_component,
                                                            transfer_process,
                                                            item_number,
                                                            MAX(delivery_completed) OVER(PARTITION BY purchasing_document_number, item_number ORDER BY purchasing_document_number, item_number, material_number) AS delivery_completed,
                                                            material_number_1,
                                                            final_invoice,
                                                            outline_agreement,
                                                            target_quantity,
                                                            principal_agreement_item,
                                                            MAX(quantity_deviation) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS quantity_deviation,
                                                            item_counter,
                                                            MAX(schedule_deviation) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS schedule_deviation,
                                                            shipping_notification,
                                                            MAX(total_delivery_time) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS total_delivery_time,
                                                            storage_location,
                                                            base_unit_of_measure,
                                                            quantity_variance,
                                                            material_group,
                                                            material_number,
                                                            purchase_order_unit,
                                                            order_quantity,
                                                            net_order_price,
                                                            net_order_value,
                                                            price_unit,
                                                            item_category,
                                                            compliance_shipping_instructions,
                                                            on_time_delivery,
                                                            quantity_reliability,
                                                            on_time_delivery_performance,
                                                            points_score_quality_services,
                                                            invoice_receipt,
                                                            SUM(delivery_date_variance) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS delivery_date_variance,
                                                            short_text,
                                                            denominator,
                                                            equal_to,
                                                            goods_receipt_invoice_verification,
                                                            goods_receipt_indicator,
                                                            plant,
                                                            evaluated_receipt_settlement,
                                                            outline_agreement_target_value,
                                                            fiscal_year_variant,
                                                            interval_quantity_interval,
                                                            interval_for_date_split,
                                                            counter_date_split,
                                                            counter_quantity_interval,
                                                            SUM(counter_items) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS counter_items,
                                                            goods_supplier_2,
                                                            invoicing_party,
                                                            supplying_plant,
                                                            partner_supplier,
                                                            ordering_address,
                                                            smoothing_factor_quality_variance,
                                                            smoothing_factor,
                                                            best_score,
                                                            smoothing_factor_compliance,
                                                            MIN(
                                                            CASE
                                                                            WHEN current_goods_receipt_quantity > 0 THEN posting_date
                                                                            ELSE NULL
                                                            END ) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS goods_receipts_date,
                                                            TIME,
                                                            dw_active_indicator,
                                                            MAX(dw_last_update_date) OVER(PARTITION BY purchasing_document_number, item_number ORDER BY purchasing_document_number, item_number, material_number ) AS dw_last_update_date
                                            FROM            `${ProjectID}.${StagingDatasetName}.purchasing_item`
                                            WHERE           cancel_data_record = ''
                                            AND             dw_active_indicator = 'Y') pi
                 ON         ph.purchasing_document_number = pi.purchasing_document_number
                 AND        ph.transaction_purchasing_document = '01'
                 AND        ph.dw_active_indicator = pi.dw_active_indicator
                 LEFT JOIN
                            (
                                            SELECT DISTINCT cancel_data_record,
                                                            document_date,
                                                            purchasing_document_type,
                                                            purchasing_document_category,
                                                            MIN(posting_date) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS posting_date,
                                                            purchasing_document_number,
                                                            purchasing_group,
                                                            purchasing_organization,
                                                            local_currency,
                                                            COALESCE(start_validity_period, '1900-01-01') AS validity_period_start,
                                                            COALESCE(end_validity_period, '1900-01-01')   AS validity_period_end,
                                                            receiving_supplier,
                                                            vendors_account_number,
                                                            different_invoicing_party,
                                                            goods_supplier_1,
                                                            logical_system_1,
                                                            logical_system_2,
                                                            supplying_plant,
                                                            status,
                                                            MIN(entry_date) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS entry_date,
                                                            order_currency,
                                                            exchange_rate,
                                                            MAX(requisitioner) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS requisitioner,
                                                            promotion,
                                                            MAX(order_release) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS order_release,
                                                            application_component,
                                                            transfer_process,
                                                            item_number,
                                                            MAX(delivery_completed) OVER(PARTITION BY purchasing_document_number, item_number ORDER BY purchasing_document_number, item_number, material_number) AS delivery_completed,
                                                            material_number_1,
                                                            final_invoice,
                                                            outline_agrement,
                                                            agreement_item,
                                                            storage_location,
                                                            base_unit_measure,
                                                            material_group,
                                                            material_number,
                                                            order_unit,
                                                            net_price,
                                                            price_unit,
                                                            item_category,
                                                            issuing_storage_location,
                                                            short_text,
                                                            denominator,
                                                            equal_to,
                                                            gr_base_invoice_verification,
                                                            goods_receipt,
                                                            plant,
                                                            evaluated_receipt_settlement,
                                                            purchase_requisition,
                                                            requisition_item,
                                                            gross_order_value,
                                                            effective_order_value,
                                                            cost_value_local_currency,
                                                            cost_value_order_currency,
                                                            retail_local_currecny,
                                                            retail_tax_local_currency,
                                                            subtotal_1,
                                                            subtotal_2,
                                                            subtotal_3,
                                                            subtotal_4,
                                                            subtotal_5,
                                                            subtotal_6,
                                                            quantity_order_unit,
                                                            delivery_costs,
                                                            batch_number,
                                                            delta_purchase_order_cost,
                                                            delta_purchase_quantity,
                                                            delivery_date,
                                                            schedule_line,
                                                            SUM(number_of_reminders) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS number_of_reminders,
                                                            statistics_delivery_date,
                                                            TIME,
                                                            budget_number,
                                                            required_budget,
                                                            otb_currency,
                                                            reserved_budget,
                                                            special_release_budget,
                                                            otb_reason_profile,
                                                            budget_type,
                                                            otb_status,
                                                            reason_indicator,
                                                            check_type,
                                                            date_line_id,
                                                            transfer_date,
                                                            no_scem_controlling,
                                                            reminder_date,
                                                            reminder_time,
                                                            cancellation_threat_made,
                                                            item_type,
                                                            data_record_type,
                                                            material_category,
                                                            plant_category,
                                                            fiscal_year_variant,
                                                            schedule_line_date,
                                                            MAX(counter_schedule_line) OVER(PARTITION BY purchasing_document_number, item_number, material_number ORDER BY purchasing_document_number, item_number, material_number) AS counter_schedule_line,
                                                            goods_supplier_2,
                                                            invoicing_party,
                                                            supplier_plant,
                                                            partner_supplier,
                                                            ordering_address,
                                                            dw_active_indicator,
                                                            MAX(dw_last_update_date) OVER(PARTITION BY purchasing_document_number, item_number ORDER BY purchasing_document_number, item_number, material_number ) AS dw_last_update_date
                                            FROM            `${ProjectID}.${StagingDatasetName}.purchasing_schedule_line`
                                            WHERE           cancel_data_record = ''
                                            AND             dw_active_indicator = 'Y') psl
                 ON         psl.purchasing_document_number = ph.purchasing_document_number
                 AND        psl.item_number = pi.item_number
                 LEFT JOIN  `${ProjectID}.${TargetDatasetNames1}.material_dimension` md
                 ON         md.material_key = (pi.material_number
                                       || '-'
                                       || pi.plant)
                 AND        md.dw_active_indicator = 'Y'
                 LEFT JOIN  `${ProjectID}.${TargetDatasetNames1}.plant_dimension` pd
                 ON         pd.plant_key = pi.plant
                 AND        pd.dw_active_indicator = 'Y'
                 LEFT JOIN  `${ProjectID}.${TargetDatasetNames1}.supplier_dimension` sd
                 ON         sd.supplier_key = pi.vendors_account_number
                 AND        sd.dw_active_indicator = 'Y'
                 LEFT JOIN  `${ProjectID}.${TargetDatasetNames1}.supplier_purchase_org_dimension` spod
                 ON         spod.supplier_purchase_org_key = (pi.vendors_account_number
                                       || '-'
                                       || pi.purchasing_organization)
                 AND        spod.dw_active_indicator = 'Y'
                 WHERE      ph.cancel_data_record <> 'X'
                            --AND        ph.purchasing_document_number = '4501173911'
                 AND        ph.dw_active_indicator = 'Y'
                 AND        (

-- Here we are try get from the audit table (layer1_audit_table) in which mode we are running the merge query. Based on that we have to deside which date column we need to use to fetch the records from the input table.

                                       ph.dw_last_update_date >=
                                       coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'purchase_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
                            OR         pi.dw_last_update_date >=
                                       coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'purchase_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME))
                            OR         psl.dw_last_update_date >=
                                       coalesce((SELECT CASE WHEN lat.full_delta_indicator = 'F' THEN lat.full_load_datetime
                                             WHEN lat.full_delta_indicator <> 'F' THEN lat.delta_load_datetime
                                             ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                        END FROM `${ProjectID}.${StagingDatasetName}.layer1_audit_table` lat
                                WHERE lat.table_name = 'purchase_order_fact'),CAST('1900-01-01T00:00:00' AS DATETIME)) )), tmp_purch AS
      (

-- Logic to convert all the input source columns to string datatype and concatenate the not null columns and make a MD5 key.

             SELECT ts.*,
                    TO_HEX(MD5(
                    (
                             SELECT   STRING_AGG(CAST(col AS STRING), ', ' ORDER BY OFFSET )
                             FROM     UNNEST(SPLIT(TRIM(FORMAT('%t',
                                      (
                                             SELECT AS STRUCT ts.*
                                             EXCEPT
                                                    (input_last_update_date))), '()'),', ')) col WITH OFFSET
                             WHERE    NOT col IS NULL ))) AS finalmd5key
             FROM   tmp_scr ts)

-- the base source data by creating join key is use to implement the SCD2 in the merge query. 

SELECT t.purchase_order_key AS purchase_order_join_key,
       t.*
FROM   tmp_purch t
UNION ALL

-- Generating extra row for changes records. The NULL join key forces records down the INSERT Path.

SELECT       NULL AS purchase_order_join_key,
             t.*
FROM         tmp_purch t
INNER JOIN   `${ProjectID}.${TargetDatasetNames2}.purchase_order_fact` pof

-- Join the source  and the taget table using the join keys.

ON           pof.purchase_order_key = t.purchase_order_key
AND          pof.finalmd5key <> t.finalmd5key
WHERE        pof.dw_active_indicator = 'Y') scr
ON tgt.purchase_order_key = scr.purchase_order_join_key
WHEN MATCHED
AND          tgt.finalmd5key <> scr.finalmd5key THEN
UPDATE
SET              tgt.dw_end_date = CURRENT_DATETIME(),
                 tgt.dw_active_indicator = 'N'
WHEN NOT MATCHED THEN 
INSERT
       (
              purchase_order_uuid,
              purchase_order_key,
              purchasing_document_number,
              purchasing_group,
              purchasing_organization,
              vendors_account_number,
              purchasing_document_date,
              logical_system_2,
              transaction_purchasing_document,
              item_number,
              material_uuid,
              plant_uuid,
              supplier_uuid,
              supplier_purchase_org_uuid,
              material_number,
              plant,
              material_key,
              plant_key,
              supplier_key,
              supplier_purchase_org_key,
              cancel_data_record,
              purchasing_document_type,
              purchasing_document_category,
              supplying_plant_stock,
              status_of_purchasing_document,
              supplying_plant_partner,
              partner_supplier,
              local_currency,
              current_goods_receipt_quantity,
              transfer_process,
              delivery_completed,
              material_number_1,
              quantity_deviation,
              schedule_deviation,
              total_delivery_time,
              storage_location,
              base_unit_of_measure,
              quantity_variance,
              material_group,
              purchase_order_unit,
              order_quantity,
              net_order_price,
              net_order_value,
              delivery_date_variance,
              goods_receipts_date,
              document_date,
              posting_date,
              validity_period_start,
              validity_period_end,
              receiving_supplier,
              different_invoicing_party,
              goods_supplier_1,
              logical_system_1,
              supplying_plant,
              status,
              entry_date,
              order_currency,
              exchange_rate,
              requisitioner,
              promotion,
              order_release,
              application_component,
              final_invoice,
              outline_agrement,
              agreement_item,
              order_unit,
              net_price,
              price_unit,
              item_category,
              issuing_storage_location,
              short_text,
              denominator,
              equal_to,
              gr_base_invoice_verification,
              goods_receipt,
              evaluated_receipt_settlement,
              purchase_requisition,
              requisition_item,
              gross_order_value,
              effective_order_value,
              cost_value_local_currency,
              cost_value_order_currency,
              retail_local_currecny,
              retail_tax_local_currency,
              subtotal_1,
              subtotal_2,
              subtotal_3,
              subtotal_4,
              subtotal_5,
              subtotal_6,
              quantity_order_unit,
              delivery_costs,
              batch_number,
              delta_purchase_order_cost,
              delta_purchase_quantity,
              delivery_date,
              schedule_line,
              number_of_reminders,
              statistics_delivery_date,
              budget_number,
              required_budget,
              otb_currency,
              reserved_budget,
              special_release_budget,
              otb_reason_profile,
              budget_type,
              otb_status,
              reason_indicator,
              check_type,
              date_line_id,
              transfer_date,
              no_scem_controlling,
              reminder_date,
              reminder_time,
              cancellation_threat_made,
              item_type,
              data_record_type,
              material_category,
              plant_category,
              fiscal_year_variant,
              schedule_line_date,
              counter_schedule_line,
              goods_supplier_2,
              invoicing_party,
              supplier_plant,
              ordering_address,
              input_last_update_date,
              finalmd5key,
              dw_active_indicator,
              dw_start_date,
              dw_end_date,
              dw_last_update_date
       )
       VALUES
       (

-- generating uuid column for each record my combining the key colum and finalmd5key information to have unique value.

              TO_HEX(MD5(CONCAT(scr.purchase_order_key,scr.finalmd5key))),
              scr.purchase_order_key,
              scr.purchasing_document_number,
              scr.purchasing_group,
              scr.purchasing_organization,
              scr.vendors_account_number,
              scr.purchasing_document_date,
              scr.logical_system_2,
              scr.transaction_purchasing_document,
              scr.item_number,
              scr.material_uuid,
              scr.plant_uuid,
              scr.supplier_uuid,
              scr.supplier_purchase_org_uuid,
              scr.material_number,
              scr.plant,
              scr.material_key,
              scr.plant_key,
              scr.supplier_key,
              scr.supplier_purchase_org_key,
              scr.cancel_data_record,
              scr.purchasing_document_type,
              scr.purchasing_document_category,
              scr.supplying_plant_stock,
              scr.status_of_purchasing_document,
              scr.supplying_plant_partner,
              scr.partner_supplier,
              scr.local_currency,
              scr.current_goods_receipt_quantity,
              scr.transfer_process,
              scr.delivery_completed,
              scr.material_number_1,
              scr.quantity_deviation,
              scr.schedule_deviation,
              scr.total_delivery_time,
              scr.storage_location,
              scr.base_unit_of_measure,
              scr.quantity_variance,
              scr.material_group,
              scr.purchase_order_unit,
              scr.order_quantity,
              scr.net_order_price,
              scr.net_order_value,
              scr.delivery_date_variance,
              scr.goods_receipts_date,
              scr.document_date,
              scr.posting_date,
              scr.validity_period_start,
              scr.validity_period_end,
              scr.receiving_supplier,
              scr.different_invoicing_party,
              scr.goods_supplier_1,
              scr.logical_system_1,
              scr.supplying_plant,
              scr.status,
              scr.entry_date,
              scr.order_currency,
              scr.exchange_rate,
              scr.requisitioner,
              scr.promotion,
              scr.order_release,
              scr.application_component,
              scr.final_invoice,
              scr.outline_agrement,
              scr.agreement_item,
              scr.order_unit,
              scr.net_price,
              scr.price_unit,
              scr.item_category,
              scr.issuing_storage_location,
              scr.short_text,
              scr.denominator,
              scr.equal_to,
              scr.gr_base_invoice_verification,
              scr.goods_receipt,
              scr.evaluated_receipt_settlement,
              scr.purchase_requisition,
              scr.requisition_item,
              scr.gross_order_value,
              scr.effective_order_value,
              scr.cost_value_local_currency,
              scr.cost_value_order_currency,
              scr.retail_local_currecny,
              scr.retail_tax_local_currency,
              scr.subtotal_1,
              scr.subtotal_2,
              scr.subtotal_3,
              scr.subtotal_4,
              scr.subtotal_5,
              scr.subtotal_6,
              scr.quantity_order_unit,
              scr.delivery_costs,
              scr.batch_number,
              scr.delta_purchase_order_cost,
              scr.delta_purchase_quantity,
              scr.delivery_date,
              scr.schedule_line,
              scr.number_of_reminders,
              scr.statistics_delivery_date,
              scr.budget_number,
              scr.required_budget,
              scr.otb_currency,
              scr.reserved_budget,
              scr.special_release_budget,
              scr.otb_reason_profile,
              scr.budget_type,
              scr.otb_status,
              scr.reason_indicator,
              scr.check_type,
              scr.date_line_id,
              scr.transfer_date,
              scr.no_scem_controlling,
              scr.reminder_date,
              scr.reminder_time,
              scr.cancellation_threat_made,
              scr.item_type,
              scr.data_record_type,
              scr.material_category,
              scr.plant_category,
              scr.fiscal_year_variant,
              scr.schedule_line_date,
              scr.counter_schedule_line,
              scr.goods_supplier_2,
              scr.invoicing_party,
              scr.supplier_plant,
              scr.ordering_address,
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

         'purchase_order_fact' as table_name

-- check the layer1_audit_table is having entry for the table. if not mark the flag as 'F'.

         ,CASE WHEN (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'purchase_order_fact') IS NULL
                    OR (select full_delta_indicator from `${ProjectID}.${StagingDatasetName}.layer1_audit_table` where table_name = 'purchase_order_fact') = 'F'
               THEN 'F'
               ELSE 'D'
          END AS full_delta_indicator

-- mention all the extractor names which are used as source

        ,'2LIS_02_HDR,2LIS_02_ITM' as extractors_names

-- default value '1900-01-01T00:00:00'

        ,CAST('1900-01-01T00:00:00' AS DATETIME) as full_load_datetime

-- get max input_last_udpate_date from the purchase_order_fact 

        ,(select max(input_last_update_date) as delta_load_datatime from `${ProjectID}.${TargetDatasetNames2}.purchase_order_fact`) as delta_load_datetime

-- count of records base on the flag 'F' -- Full and 'D' -- Delta. If there is no entry in the table ,it treats it is a Full load and get entire count.

        ,(coalesce((select COUNT(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames2}.purchase_order_fact` a inner join `${ProjectID}.${StagingDatasetName}.layer1_audit_table` b
          on 1 = 1 where b.table_name = 'purchase_order_fact' and  a.dw_last_update_date > CASE WHEN b.full_delta_indicator = 'F' 
                                                                                            THEN b.full_load_datetime
                                                                                            WHEN b.full_delta_indicator <> 'F' THEN b.delta_load_datetime
                                                                                            ELSE CAST('1900-01-01T00:00:00' AS DATETIME)
                                                                                       END
          and a.dw_active_indicator = 'Y'),(select count(*) AS inserted_record_count from `${ProjectID}.${TargetDatasetNames2}.purchase_order_fact`))) AS inserted_record_count

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

