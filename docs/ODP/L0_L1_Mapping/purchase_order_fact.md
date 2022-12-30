
## Table Name : purchase_order_fact


|COLUMN NAME|DATA TYPE|description|Key Columns|purchasing_header|purchasing_item|purchasing_schedule_line|material_dimension|plant_dimension|supplier_dimension|supplier_purchase_org_dimension|
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
|purchase_order_uuid|STRING|Unique Generated Id|MD5 value on purchase_order_key column| | | | | | | |
|purchase_order_key|STRING|Purchase order key|transaction_purchasing_document || ‘-’ || purchasing_document_number || ‘-’ || item_number| | | | | | | |
|purchasing_document_number|STRING|Purchasing Document Number| |purchasing_document_number| | | | | | |
|purchasing_group|STRING|Purchasing Group| |purchasing_group| | | | | | |
|purchasing_organization|STRING|Purchasing organization| |purchasing_organization| | | | | | |
|vendors_account_number|STRING|Vendor's account number| |vendors_account_number| | | | | | |
|purchasing_document_date|DATE|Purchasing Document Date| |purchasing_document_date| | | | | | |
|logical_system_2|STRING|Logical System| |logical_system_2| | | | | | |
|transaction_purchasing_document|STRING|Transaction for Purchasing Document| |transaction_purchasing_document| | | | | | |
|item_number|STRING|Item Number of Purchasing Document| | |item_number| | | | | |
|material_uuid|STRING|Material Dimension unique id| | | | |material_uuid| | | |
|plant_uuid|STRING|Plant Dimension unique id| | | | | |plant_uuid| | |
|supplier_uuid|STRING|Supplier DImension unique id| | | | | | |supplier_uuid| |
|supplier_purchase_org_uuid|STRING|Supplier Purchase Org Dimension unique id| | | | | | | |supplier_purchase_org_uuid|
|material_number|STRING|Material Number| | |material_number| |material_key| | | |
|plant|STRING|Plant| | |plant| | |plant_key| | |
|material_key|STRING|Material Key from Material Dimension| | |material_number|| '-' || plant| | | |supplier_key| |
|plant_key|STRING|Plant key from Plant Dimension| | |plant| | | | |supplier_purchase_org_key|
|supplier_key|STRING|Supplier Key from Suppler Dimension| |vendors_account_number| | | | | | |
|supplier_purchase_org_key|STRING|Supplier Purchase Org Key from Supplier Purchase Org Dimension| | |vendors_account_number|| '-' ||purchasing_organization| | | | | |
|cancel_data_record|STRING|Indicator: Cancel Data Record| |cancel_data_record| | | | | | |
|purchasing_document_type|STRING|Purchasing Document Type| |purchasing_document_type| | | | | | |
|purchasing_document_category|STRING|Purchasing Document Category| |purchasing_document_category| | | | | | |
|supplying_plant_stock|STRING|Supplying (issuing) plant in case of stock transport order| |supplying_plant_stock| | | | | | |
|status_of_purchasing_document|STRING|Status of Purchasing Document| |status_of_purchasing_document| | | | | | |
|supplying_plant_partner|STRING|Supplying plant to which partner roles have been assigned| |supplying_plant_partner| | | | | | |
|partner_supplier|STRING|Supplier to whom Partner Roles have been Assigned| |partner_supplier| | | | | | |
|local_currency|STRING|Local Currency| | |local_currency| | | | | |
|current_goods_receipt_quantity|NUMERIC|Current goods receipt quantity in order unit| | |current_goods_receipt_quantity| | | | | |
|transfer_process|STRING|SAP BW transaction key| | |transfer_process| | | | | |
|delivery_completed|STRING|Delivery Completed Indicator| | |delivery_completed| | | | | |
|material_number_1|STRING|Material number| | |material_number_1| | | | | |
|quantity_deviation|STRING|Indicator: relevant quantity deviation| | |quantity_deviation| | | | | |
|schedule_deviation|STRING|Indicator: relevant schedule deviation| | |schedule_deviation| | | | | |
|total_delivery_time|NUMERIC|Total delivery time in days| | |total_delivery_time| | | | | |
|storage_location|STRING|Storage location| | |storage_location| | | | | |
|base_unit_of_measure|STRING|Base Unit of Measure| | |base_unit_of_measure| | | | | |
|quantity_variance|NUMERIC|Variance in the quantity delivered as %| | |quantity_variance| | | | | |
|material_group|STRING|Material Group| | |material_group| | | | | |
|purchase_order_unit|STRING|Purchase Order Unit of Measure| | |purchase_order_unit| | | | | |
|order_quantity|NUMERIC|Purchase Order Quantity| | |order_quantity| | | | | |
|net_order_price|NUMERIC|Net Price| | |net_order_price| | | | | |
|net_order_value|NUMERIC|Net order value in order currency| | |net_order_value| | | | | |
|delivery_date_variance|NUMERIC|Delivery Date Variance in Days| | |delivery_date_variance| | | | | |
|goods_receipts_date|DATE|Posting date of goods received or invoice receipt for order| | |goods_receipts_date| | | | | |
|document_date|DATE|Purchasing Document Date| | | |document_date| | | | |
|posting_date|DATE|Posting date of goods received or invoice receipt for order| | | |posting_date| | | | |
|validity_period_start|DATE|End of Validity Period| | | |validity_period_start| | | | |
|validity_period_end|DATE|Start of Validity Period| | | |validity_period_end| | | | |
|receiving_supplier|STRING|Field not used| | | |receiving_supplier| | | | |
|different_invoicing_party|STRING|Different Invoicing Party| | | |different_invoicing_party| | | | |
|goods_supplier_1|STRING|Goods Supplier| | | |goods_supplier_1| | | | |
|logical_system_1|STRING|Logical System| | | |logical_system_1| | | | |
|supplying_plant|STRING|Supplying (issuing) plant in case of stock transport order| | | |supplying_plant| | | | |
|status|STRING|Status of Purchasing Document| | | |status| | | | |
|entry_date|DATE|Date on which the purchasing document was entered| | | |entry_date| | | | |
|order_currency|STRING|Purchase order currency| | | |order_currency| | | | |
|exchange_rate|NUMERIC|Exchange Rate| | | |exchange_rate| | | | |
|requisitioner|STRING|Name of requisitioner/requester| | | |requisitioner| | | | |
|promotion|STRING|Promotion| | | |promotion| | | | |
|order_release|STRING|Reason for Ordering| | | |order_release| | | | |
|application_component|STRING|Application Component| | | |application_component| | | | |
|final_invoice|STRING|Final Invoice Indicator| | | |final_invoice| | | | |
|outline_agrement|STRING|Number of principal purchase agreement| | | |outline_agrement| | | | |
|agreement_item|STRING|Item number of principal purchase agreement| | | |agreement_item| | | | |
|order_unit|STRING|Purchase Order Unit of Measure| | | |order_unit| | | | |
|net_price|NUMERIC|Net Price| | | |net_price| | | | |
|price_unit|NUMERIC|Price unit| | | |price_unit| | | | |
|item_category|STRING|Item category in purchasing document| | | |item_category| | | | |
|issuing_storage_location|STRING|Issuing Storage Location for Stock Transport Order| | | |issuing_storage_location| | | | |
|short_text|STRING|Short Text| | | |short_text| | | | |
|denominator|NUMERIC|Denominator for Conversion of Order Unit to Base Unit| | | |denominator| | | | |
|equal_to|NUMERIC|Numerator for Conversion of Order Unit to Base Unit| | | |equal_to| | | | |
|gr_base_invoice_verification|STRING|Indicator: GR-Based Invoice Verification| | | |gr_base_invoice_verification| | | | |
|goods_receipt|STRING|Goods Receipt Indicator| | | |goods_receipt| | | | |
|evaluated_receipt_settlement|STRING|Evaluated Receipt Settlement (ERS)| | | |evaluated_receipt_settlement| | | | |
|purchase_requisition|STRING|Purchase Requisition Number| | | |purchase_requisition| | | | |
|requisition_item|STRING|Item number of purchase requisition| | | |requisition_item| | | | |
|gross_order_value|NUMERIC|Gross order value in order currency| | | |gross_order_value| | | | |
|effective_order_value|NUMERIC|Effective order value| | | |effective_order_value| | | | |
|cost_value_local_currency|NUMERIC|BW: Cost Value in Local Currency| | | |cost_value_local_currency| | | | |
|cost_value_order_currency|NUMERIC|BW: Cost Value in Order Currency| | | |cost_value_order_currency| | | | |
|retail_local_currecny|NUMERIC|BW: Retail Value in Local Currency| | | |retail_local_currecny| | | | |
|retail_tax_local_currency|NUMERIC|BW: Retail Value with Tax in Local Currency| | | |retail_tax_local_currency| | | | |
|subtotal_1|NUMERIC|Subtotal 1 from pricing procedure for condition| | | |subtotal_1| | | | |
|subtotal_2|NUMERIC|Subtotal 2 from pricing procedure for condition| | | |subtotal_2| | | | |
|subtotal_3|NUMERIC|Subtotal 3 from pricing procedure for condition| | | |subtotal_3| | | | |
|subtotal_4|NUMERIC|Subtotal 4 from pricing procedure for condition| | | |subtotal_4| | | | |
|subtotal_5|NUMERIC|Subtotal 5 from pricing procedure for condition| | | |subtotal_5| | | | |
|subtotal_6|NUMERIC|Subtotal 6 from pricing procedure for condition| | | |subtotal_6| | | | |
|quantity_order_unit|NUMERIC|BW: Quantity in Order Unit| | | |quantity_order_unit| | | | |
|delivery_costs|NUMERIC|Delivery costs for order from invoice in LC| | | |delivery_costs| | | | |
|batch_number|STRING|Batch Number| | | |batch_number| | | | |
|delta_purchase_order_cost|NUMERIC|Delta purchase order/goods receipt at cost| | | |delta_purchase_order_cost| | | | |
|delta_purchase_quantity|NUMERIC|Delta purchase order/goods receipt quantity in BUn| | | |delta_purchase_quantity| | | | |
|delivery_date|DATE|Item delivery date| | | |delivery_date| | | | |
|schedule_line|STRING|Delivery Schedule Line Counter| | | |schedule_line| | | | |
|number_of_reminders|NUMERIC|Number of Reminders/Expediters| | | |number_of_reminders| | | | |
|statistics_delivery_date|DATE|Statistics-Relevant Delivery Date| | | |statistics_delivery_date| | | | |
|budget_number|STRING|Unique Number of Budget| | | |budget_number| | | | |
|required_budget|NUMERIC|Required Budget| | | |required_budget| | | | |
|otb_currency|STRING|OTB Currency| | | |otb_currency| | | | |
|reserved_budget|NUMERIC|Reserved Budget for OTB-Relevant Purchasing Document| | | |reserved_budget| | | | |
|special_release_budget|NUMERIC|Special Release Budget| | | |special_release_budget| | | | |
|otb_reason_profile|STRING|Reason Profile for OTB Special Release| | | |otb_reason_profile| | | | |
|budget_type|STRING|Budget Type| | | |budget_type| | | | |
|otb_status|STRING|OTB Check Status| | | |otb_status| | | | |
|reason_indicator|STRING|Reason Indicator for OTB Check Status| | | |reason_indicator| | | | |
|check_type|STRING|Type of OTB Check| | | |check_type| | | | |
|date_line_id|STRING|Date Line ID (GUID)| | | |date_line_id| | | | |
|transfer_date|DATE|Transfer Date| | | |transfer_date| | | | |
|no_scem_controlling|STRING|Purchase Order Not Transferred to SCEM| | | |no_scem_controlling| | | | |
|reminder_date|DATE|Creation Date of Reminder Message Record| | | |reminder_date| | | | |
|reminder_time|TIME|Creation Time of Reminder Message Record| | | |reminder_time| | | | |
|cancellation_threat_made|STRING|Cancellation Threat Made| | | |cancellation_threat_made| | | | |
|item_type|STRING|EA Retail BW Extr. Enhancement: Item Type| | | |item_type| | | | |
|data_record_type|STRING|EA Retail BW Extr. Enhancement: Data Record Type| | | |data_record_type| | | | |
|material_category|STRING|Material Category| | | |material_category| | | | |
|plant_category|STRING|Plant category| | | |plant_category| | | | |
|fiscal_year_variant|STRING|Fiscal Year Variant| | | |fiscal_year_variant| | | | |
|schedule_line_date|DATE|Schedule line date| | | |schedule_line_date| | | | |
|counter_schedule_line|NUMERIC|Counter for Schedule Agreement Schedule Lines| | | |counter_schedule_line| | | | |
|goods_supplier_2|STRING|Goods supplier| | | |goods_supplier_2| | | | |
|invoicing_party|STRING|Invoicing party| | | |invoicing_party| | | | |
|supplier_plant|STRING|Supplying plant to which partner roles have been assigned| | | |supplier_plant| | | | |
|ordering_address|STRING|Ordering address| | | |ordering_address| | | | |
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|dw_last_update_date| | | | |
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | | | | | | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | | | | | | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | | | | | | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | | | | | | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | | | | | | |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms