
## Table Name : sales_order_fact


|COLUMN NAME|DATA TYPE|description|Key Columns|sales_document_header|sales_document_item|sales_document_schedule_line|schedule_line_delivery|order_item_data|order_header_data|material_diemension|customer_dimension|plant_dimension|customer_sales_org_dimension|supplier_dimension|
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
|sales_order_uuid|STRING|Unique Generated Id|MD5 value on sales_order_key column| | | | | | | | | | | |
|sales_order_key|STRING|Sales order Key|sales_document || ‘-’ || item_number || ‘-’ || schedule_line_number|sales_document| |item_number || '-' || schedule_line_number| | | | | | | | |
|sales_document|STRING|Sales and Distribution Document Number| |sales_document| | | | | | | | | | |
|item_number|STRING|Item number of the SD document| | | |item_number| | | | | | | | |
|schedule_line_number|STRING|Schedule Line Number| | | |schedule_line_number| | | | | | | | |
|sales_document_type|STRING|Sales Document Type| |sales_document_type| | | | | | | | | | |
|material_uuid|STRING|Material Dimension unique id| | | | | | | |material_uuid| | | | |
|customer_uuid|STRING|Customer DImension unique id| | | | | | | | |customer_uuid| | | |
|plant_uuid|STRING|Plant Dimension unique id| | | | | | | | | |plant_uuid| | |
|customer_sales_org_uuid|STRING|Customer Sales Org Dimension unique id| | | | | | | | | | |customer_sales_org_uuid| |
|supplier_uuid|STRING|Supplier Dimension unique id| | | | | | | | | | | |supplier_uuid|
|material_key|STRING|Material Key from Material Dimension| | | |material_number || '-' || plant| | | |material_key| | | | |
|plant_key|STRING|Plant Ley from Flant Dimension| | | |plant| | | | | |plant_key| | |
|supplier_key|STRING|Supplier Key from Supplier Dimension| | | | |vendors_account_number| | | | | | |supplier_key|
|customer_key|STRING|Cistomer Key from Customer Dimension| | | |customer_number| | | | |customer_key| | | |
|customer_sales_org_key|STRING|Customer Sales Org from Customer Sales Org Dimension| | | |customer_number || '-' || sales_organization || '-' || distribution_channel || '-' || division)| | | | | | |customer_sales_org_key| |
|billing_block|STRING|Billing Block in SD Document| |billing_block| | | | | | | | | | |
|requested_delivery_date|DATE|Requested Delivery Date| |requested_delivery_date| | | | | | | | | | |
|document_currency|STRING|SD document currency| |document_currency| | | | | | | | | | |
|number_of_orders|NUMERIC|Number of Orders| |number_of_orders| | | | | | | | | | |
|billing_block_1|STRING|Billing Block in SD Document| | |billing_block_1| | | | | | | | | |
|sd_document_category|STRING|SD Document Category| | |sd_document_category| | | | | | | | | |
|gross_weight|NUMERIC|Gross Weight of the Item| | |gross_weight| | | | | | | | | |
|application_component|STRING|Application Component| | |application_component| | | | | | | | | |
|transfer_process|STRING|SAP BW transaction key| | |transfer_process| | | | | | | | | |
|billing_block_2|STRING|Billing Block for Item| | |billing_block_2| | | | | | | | | |
|cumulative_confirmed_quantity_sales_unit|NUMERIC|Cumulative Confirmed Quantity in Sales Unit| | |cumulative_confirmed_quantity_sales_unit| | | | | | | | | |
|cumulative_confirmed_quantity_base_unit|NUMERIC|Cumulative Confirmed Quantity in Base Unit| | |cumulative_confirmed_quantity_base_unit| | | | | | | | | |
|sales_deal|STRING|Sales deal| | |sales_deal| | | | | | | | | |
|cumulative_order_quantity|NUMERIC|Cumulative order quantity in sales units| | |cumulative_order_quantity| | | | | | | | | |
|subtotal_1|NUMERIC|Subtotal 1 from pricing procedure for condition| | |subtotal_1| | | | | | | | | |
|subtotal_2|NUMERIC|Subtotal 2 from pricing procedure for condition| | |subtotal_2| | | | | | | | | |
|subtotal_3|NUMERIC|Subtotal 3 from pricing procedure for condition| | |subtotal_3| | | | | | | | | |
|subtotal_4|NUMERIC|Subtotal 4 from pricing procedure for condition| | |subtotal_4| | | | | | | | | |
|subtotal_5|NUMERIC|Subtotal 5 from pricing procedure for condition| | |subtotal_5| | | | | | | | | |
|subtotal_6|NUMERIC|Subtotal 6 from pricing procedure for condition| | |subtotal_6| | | | | | | | | |
|minimum_delivery_quantity|NUMERIC|Minimum Delivery Quantity in Delivery Note Processing| | |minimum_delivery_quantity| | | | | | | | | |
|required_delivery_qtuantity|NUMERIC|Cumulative Required Delivery Qty (All Dlv-Relev.Sched.Lines)| | |required_delivery_qtuantity| | | | | | | | | |
|tax_amount|NUMERIC|Tax amount in document currency| | |tax_amount| | | | | | | | | |
|net_order_value|NUMERIC|Net Value of the Order Item in Document Currency| | |net_order_value| | | | | | | | | |
|net_weight|NUMERIC|Net Weight of the Item| | |net_weight| | | | | | | | | |
|special_stock_indicator|STRING|Special Stock Indicator| | |special_stock_indicator| | | | | | | | | |
|unlimited_tolerance|STRING|Unlimited Overdelivery Allowed| | |unlimited_tolerance| | | | | | | | | |
|overdelivery_tolerance|NUMERIC|Overdelivery Tolerance| | |overdelivery_tolerance| | | | | | | | | |
|underdel_tolerance|NUMERIC|Underdelivery Tolerance| | |underdel_tolerance| | | | | | | | | |
|reference_document|STRING|Document number of the reference document| | |reference_document| | | | | | | | | |
|reference_item|STRING|Item number of the reference item| | |reference_item| | | | | | | | | |
|volume|NUMERIC|Volume of the item| | |volume| | | | | | | | | |
|cost_in_document_currency|NUMERIC|Cost in document currency| | |cost_in_document_currency| | | | | | | | | |
|target_quantity|NUMERIC|Target Quantity in Sales Units| | |target_quantity| | | | | | | | | |
|outline_agreement_target_value|NUMERIC|Target Value for Outline Agreement in Document Currency| | |outline_agreement_target_value| | | | | | | | | |
|promotion|STRING|Promotion| | |promotion| | | | | | | | | |
|product_catalog_number|STRING|Product catalog number| | |product_catalog_number| | | | | | | | | |
|order_items|NUMERIC|Number of Order Items| | |order_items| | | | | | | | | |
|net_price_sales_quantity|NUMERIC|BW: Net Price Referring to Sales Quantity for Order Item| | |net_price_sales_quantity| | | | | | | | | |
|cancel_data_record|STRING|Indicator: Cancel Data Record| | | |cancel_data_record| | | | | | | | |
|rejection_status|STRING|Rejection Status (Item)| | | |rejection_status| | | | | | | | |
|incompletion_status_item|STRING|Incompletion Status (Item)| | | |incompletion_status_item| | | | | | | | |
|billing_incompletion_status_item|STRING|Billing Incompletion Status (Item)| | | |billing_incompletion_status_item| | | | | | | | |
|pricing_incompletion_status_item|STRING|Pricing Incompletion Status (Item)| | | |pricing_incompletion_status_item| | | | | | | | |
|delivery_incompletion_status_item|STRING|Delivery Incompletion Status (Item)| | | |delivery_incompletion_status_item| | | | | | | | |
|confirmed_quantity|NUMERIC|Confirmed Quantity| | | |confirmed_quantity| | | | | | | | |
|corrected_quantity|NUMERIC|Corrected quantity in sales unit| | | |corrected_quantity| | | | | | | | |
|delivery_date|DATE|Schedule line date| | | |delivery_date| | | | | | | | |
|schedule_line_category|STRING|Schedule line category| | | |schedule_line_category| | | | | | | | |
|loading_date|DATE|Loading Date| | | |loading_date| | | | | | | | |
|scheduled_line_blocked|STRING|Schedule Line Blocked for Delivery| | | |scheduled_line_blocked| | | | | | | | |
|required_quantity|NUMERIC|Required quantity for mat.management in stockkeeping units| | | |required_quantity| | | | | | | | |
|material_availability_date|DATE|Material Staging/Availability Date| | | |material_availability_date| | | | | | | | |
|base_unit_of_measure|STRING|Base Unit of Measure| | | |base_unit_of_measure| | | | | | | | |
|transportation_planning_date|DATE|Transportation Planning Date| | | |transportation_planning_date| | | | | | | | |
|sales_unit|STRING|Sales unit| | | |sales_unit| | | | | | | | |
|goods_issue_date|DATE|Goods Issue Date| | | |goods_issue_date| | | | | | | | |
|desired_delivery_date|DATE|Desired del. date in confirmed schedule lines| | | |desired_delivery_date| | | | | | | | |
|order_quantity|NUMERIC|Order Quantity in Sales Units| | | |order_quantity| | | | | | | | |
|quotation_valid_from|DATE|Quotation/Inquiry is Valid From| | | |quotation_valid_from| | | | | | | | |
|order_reason|STRING|Order Reason (Reason for the Business Transaction)| | | |order_reason| | | | | | | | |
|quotation_valid_to|DATE|Date Until Which Bid/Quotation is Binding (Valid-To Date)| | | |quotation_valid_to| | | | | | | | |
|company_code|STRING|Company Code| | | |company_code| | | | | | | | |
|billing_block_sd_document|STRING|Billing Block in SD Document| | | |billing_block_sd_document| | | | | | | | |
|local_currency|STRING|Local Currency| | | |local_currency| | | | | | | | |
|exchange_rate_type|STRING|Exchange Rate Type| | | |exchange_rate_type| | | | | | | | |
|customer_group_1|STRING|Customer group 1| | | |customer_group_1| | | | | | | | |
|customer_group_2|STRING|Customer group 2| | | |customer_group_2| | | | | | | | |
|customer_group_3|STRING|Customer group 3| | | |customer_group_3| | | | | | | | |
|customer_group_4|STRING|Customer group 4| | | |customer_group_4| | | | | | | | |
|customer_group_5|STRING|Customer group 5| | | |customer_group_5| | | | | | | | |
|delivery_block|STRING|Delivery Block (Document Header)| | | |delivery_block| | | | | | | | |
|statistics_currency|STRING|Statistics Currency| | | |statistics_currency| | | | | | | | |
|sd_document_category_1|STRING|SD Document Category| | | |sd_document_category_1| | | | | | | | |
|sales_office|STRING|Sales office| | | |sales_office| | | | | | | | |
|sales_group|STRING|Sales group| | | |sales_group| | | | | | | | |
|sales_organization|STRING|Sales Organization| | | |sales_organization| | | | | | | | |
|distribution_channel|STRING|Distribution Channel| | | |distribution_channel| | | | | | | | |
|reason_for_rejection|STRING|Reason for Rejection of Sales Documents| | | |reason_for_rejection| | | | | | | | |
|changed_on|DATE|Date of Last Change| | | |changed_on| | | | | | | | |
|order_probability|STRING|Order Probability of the Item| | | |order_probability| | | | | | | | |
|batch_number|STRING|Batch Number| | | |batch_number| | | | | | | | |
|credit_data_exchange_rate|NUMERIC|Credit data exchange rate for requested delivery date| | | |credit_data_exchange_rate| | | | | | | | |
|international_article_number|STRING|International Article Number (EAN/UPC)| | | |international_article_number| | | | | | | | |
|created_on|DATE|Date on which the record was created| | | |created_on| | | | | | | | |
|created_by|STRING|Name of Person who Created the Object| | | |created_by| | | | | | | | |
|billing_block_item|STRING|Billing Block for Item| | | |billing_block_item| | | | | | | | |
|weight_unit|STRING|Weight Unit| | | |weight_unit| | | | | | | | |
|condition_unit|STRING|Condition Unit| | | |condition_unit| | | | | | | | |
|condition_pricing_unit|NUMERIC|Condition Pricing Unit| | | |condition_pricing_unit| | | | | | | | |
|storage_location|STRING|Storage location| | | |storage_location| | | | | | | | |
|material_group|STRING|Material Group| | | |material_group| | | | | | | | |
|material_entered|STRING|Material entered| | | |material_entered| | | | | | | | |
|material_group_1|STRING|Material group 1| | | |material_group_1| | | | | | | | |
|material_group_2|STRING|Material group 2| | | |material_group_2| | | | | | | | |
|material_group_3|STRING|Material group 3| | | |material_group_3| | | | | | | | |
|material_group_4|STRING|Material group 4| | | |material_group_4| | | | | | | | |
|material_group_5|STRING|Material group 5| | | |material_group_5| | | | | | | | |
|net_order_price|NUMERIC|Net Price| | | |net_order_price| | | | | | | | |
|unloading_point_ship_to_party|STRING|Unloading point of the ship-to party| | | |unloading_point_ship_to_party| | | | | | | | |
|bill_to_party|STRING|Bill-to party| | | |bill_to_party| | | | | | | | |
|payer|STRING|Payer| | | |payer| | | | | | | | |
|ship_to_party|STRING|Ship-to party| | | |ship_to_party| | | | | | | | |
|product_hierarchy|STRING|Product hierarchy| | | |product_hierarchy| | | | | | | | |
|forwarding_agent|STRING|Forwarding Agent| | | |forwarding_agent| | | | | | | | |
|item_category|STRING|Sales document item category| | | |item_category| | | | | | | | |
|sales_employee|STRING|Sales employee| | | |sales_employee| | | | | | | | |
|shipment_route|STRING|Route| | | |shipment_route| | | | | | | | |
|division|STRING|Division| | | |division| | | | | | | | |
|statistics_date|DATE|Statistics date| | | |statistics_date| | | | | | | | |
|exchange_rate_statistics|NUMERIC|Exchange rate for statistics (Exch.rate at time of creation)| | | |exchange_rate_statistics| | | | | | | | |
|substitution_reason|STRING|Reason for material substitution| | | |substitution_reason| | | | | | | | |
|denominator|NUMERIC|Denominator (Divisor) for Conversion of Sales Qty into SKU| | | |denominator| | | | | | | | |
|numerator|NUMERIC|Numerator (factor) for conversion of sales quantity into SKU| | | |numerator| | | | | | | | |
|conversion_factor_1|NUMERIC|Factor for Converting Sales Units to Base Units (Target Qty)| | | |conversion_factor_1| | | | | | | | |
|conversion_factor_2|NUMERIC|Factor for Converting Sales Units to Base Units (Target Qty)| | | |conversion_factor_2| | | | | | | | |
|update_date_statistics|DATE|Date of update for statistics updating| | | |update_date_statistics| | | | | | | | |
|sd_document_category_2|STRING|SD Document Category| | | |sd_document_category_2| | | | | | | | |
|volume_unit|STRING|Volume unit| | | |volume_unit| | | | | | | | |
|shipping_point|STRING|Shipping Point / Receiving Point| | | |shipping_point| | | | | | | | |
|document_currency_1|STRING|SD document currency| | | |document_currency_1| | | | | | | | |
|target_quantity_uom|STRING|Target Quantity UoM| | | |target_quantity_uom| | | | | | | | |
|sales_district|STRING|Sales District| | | |sales_district| | | | | | | | |
|services_rendered_date|DATE|Date on which services are rendered| | | |services_rendered_date| | | | | | | | |
|billing_date|DATE|Billing Date| | | |billing_date| | | | | | | | |
|incoterms_part_1|STRING|Incoterms (Part 1)| | | |incoterms_part_1| | | | | | | | |
|incoterms_part_2|STRING|Incoterms (Part 2)| | | |incoterms_part_2| | | | | | | | |
|customer_group|STRING|Customer Group| | | |customer_group| | | | | | | | |
|account_assignment_group|STRING|Account Assignment Group for this customer| | | |account_assignment_group| | | | | | | | |
|exchange_rate|NUMERIC|Exchange Rate for Price Determination| | | |exchange_rate| | | | | | | | |
|translation_date|DATE|Translation date| | | |translation_date| | | | | | | | |
|pricing_date|DATE|Date for Pricing and Exchange Rate| | | |pricing_date| | | | | | | | |
|document_currency_2|STRING|SD document currency| | | |document_currency_2| | | | | | | | |
|division_for_order_header|STRING|Division for order header| | | |division_for_order_header| | | | | | | | |
|sales_document_category_reference|STRING|Sales Document Category of Reference Doc. in Order Header| | | |sales_document_category_reference| | | | | | | | |
|wbs_element|STRING|Work Breakdown Structure Element (WBS Element)| | | |wbs_element| | | | | | | | |
|fiscal_year_variant|STRING|Fiscal Year Variant| | | |fiscal_year_variant| | | | | | | | |
|campaign_order_item|STRING|Campaign of referred sales order item for BW-Extraction| | | |campaign_order_item| | | | | | | | |
|planning_in_apo|STRING|Planning in APO| | | |planning_in_apo| | | | | | | | |
|customer_facing_location|STRING|Customer-Facing Location| | | |customer_facing_location| | | | | | | | |
|customer_facing_location_type|STRING|Type of Customer-Facing Location| | | |customer_facing_location_type| | | | | | | | |
|executing_location|STRING|Executing Location| | | |executing_location| | | | | | | | |
|executing_location_type|STRING|Type of Executing Location| | | |executing_location_type| | | | | | | | |
|logical_system|STRING|Logical system| | | |logical_system| | | | | | | | |
|item_usage|STRING|Item Usage| | | |item_usage| | | | | | | | |
|managing_location|STRING|First Inventory-Managing Location| | | |managing_location| | | | | | | | |
|managing_location_type|STRING|Type of First Inventory-Managing Location| | | |managing_location_type| | | | | | | | |
|sales_document_shipping|STRING|Sales and Distribution Document Number| | | | |sales_document| | | | | | | |
|picking_confirmation|STRING|Confirmation status of picking/putaway| | | | |picking_confirmation| | | | | | | |
|picking_status|STRING|Picking Status/Putaway Status (Item)| | | | |picking_status| | | | | | | |
|goods_movement_status|STRING|Goods Movement Status| | | | |goods_movement_status| | | | | | | |
|schedule_line_date|DATE|Schedule line date| | | | |schedule_line_date| | | | | | | |
|schedule_delivery_block|STRING|Schedule Line Blocked for Delivery| | | | |schedule_delivery_block| | | | | | | |
|delivered_quantity|NUMERIC|Delivered quantity per schedule line and delivery item| | | | |delivered_quantity| | | | | | | |
|goods_issue_date_1|DATE|Goods Issue Date| | | | |goods_issue_date_1| | | | | | | |
|desired_delete_date|DATE|Desired del. date in confirmed schedule lines| | | | |desired_delete_date| | | | | | | |
|unloading_point|STRING|Unloading Point| | | | |unloading_point| | | | | | | |
|incterms_1|STRING|Incoterms (Part 1)| | | | |incterms_1| | | | | | | |
|incoterms_2|STRING|Incoterms (Part 2)| | | | |incoterms_2| | | | | | | |
|sold_to_party|STRING|Sold-To Party| | | | |sold_to_party| | | | | | | |
|delivery_type|STRING|Delivery Type| | | | |delivery_type| | | | | | | |
|vendors_account_number|STRING|Vendor's account number| | | | |vendors_account_number| | | | | | | |
|loading_point|STRING|Loading Point| | | | |loading_point| | | | | | | |
|route|STRING|Route| | | | |route| | | | | | | |
|actual_goods_movement_date|DATE|Actual Goods Movement Date| | | | |actual_goods_movement_date| | | | | | | |
|entry_time|TIME|Entry time| | | | |entry_time| | | | | | | |
|business_area|STRING|Business Area| | | | |business_area| | | | | | | |
|picking_indicator|STRING|Indicator for picking control| | | | |picking_indicator| | | | | | | |
|consumption_posting|STRING|Consumption posting| | | | |consumption_posting| | | | | | | |
|warehouse_number|STRING|Warehouse Number / Warehouse Complex| | | | |warehouse_number| | | | | | | |
|storage_bin|STRING|Storage Bin| | | | |storage_bin| | | | | | | |
|storage_type|STRING|Storage Type| | | | |storage_type| | | | | | | |
|item_type|STRING|Item Type| | | | |item_type| | | | | | | |
|delivery_item_category|STRING|Delivery item category| | | | |delivery_item_category| | | | | | | |
|denominator_sales_quantity|NUMERIC|Denominator (Divisor) for Conversion of Sales Qty into SKU| | | | |denominator_sales_quantity| | | | | | | |
|numerator_sales_quantity|NUMERIC|Numerator (factor) for conversion of sales quantity into SKU| | | | |numerator_sales_quantity| | | | | | | |
|sales_document_1|STRING|Sales Document| | | | |sales_document_1| | | | | | | |
|sales_document_item|STRING|Sales Document Item| | | | |sales_document_item| | | | | | | |
|goods_issue_date_2|DATE|Goods Issue Date| | | | |goods_issue_date_2| | | | | | | |
|division_order_header|STRING|Division for order header| | | | |division_order_header| | | | | | | |
|goods_issue_delay|NUMERIC|BW Extraction SD/LE: GI Delay - GI Date for Schedule Line| | | | |goods_issue_delay| | | | | | | |
|actual_goods_issue_delay|NUMERIC|BW Extraction LE: Actual GI Delay - GI Date for Delivery| | | | |actual_goods_issue_delay| | | | | | | |
|confirmation_status|STRING|Confirmation Status (Item)| | | | | |confirmation_status|confirmation_status| | | | | |
|billing_status_order_related|STRING|Order-Related Billing Status (Item)| | | | | |billing_status_order_related|billing_status_order_related| | | | | |
|billing_status_delivery_related|STRING|Delivery Status (Item)| | | | | |billing_status_delivery_related| | | | | | |
|overall_processing_status|STRING|Overall Processing Status (Item)| | | | | |overall_processing_status|overall_processing_status| | | | | |
|overall_deliver_status|STRING|Overall Delivery Status (Item)| | | | | |overall_deliver_status|overall_deliver_status| | | | | |
|delivery_status|STRING|Delivery Status (Item)| | | | | |delivery_status|delivery_status| | | | | |
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|dw_last_update_date|dw_last_update_date|dw_last_update_date|dw_last_update_date| | | | | |
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | | | | | | | | | | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | | | | | | | | | | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | | | | | | | | | | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | | | | | | | | | | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | | | | | | | | | | |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms