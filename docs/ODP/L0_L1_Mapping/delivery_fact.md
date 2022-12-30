
## Table Name : delivery_fact

|COLUMN NAME|DATA TYPE|description|Key Columns|delivery_header|delivery_item|order_item_data|order_header_data|plant_dimension|material_dimension|supplier_dimension|customer_dimension|customer_sales_org_dimension|
|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|:----|
|delivery_uuid|STRING|Unique Generated Id|MD5 value on delivery_key column| | | | | | | | | |
|delivery_key|STRING|Delivery Key|sales_document || ‘-’ || item_number|sales_document|item_number| | | | | | | |
|sales_document|STRING|Sales and Distribution Document Number| |sales_document| | | | | | | | |
|item_number|STRING|Item number of the SD document| | |item_number| | | | | | | |
|plant_uuid|STRING|Plant Dimension unique generated id| | | | | |plant_uuid| | | | |
|material_uuid|STRING|Material Dimension unique generated id| | | | | | |material_uuid| | | |
|supplier_uuid|STRING|Supplier Dimension unique generated id| | | | | | | |supplier_uuid| | |
|customer_uuid|STRING|Customer Dimension unique generated id| | | | | | | | |customer_uuid| |
|customer_sales_org_uuid|STRING|Customer Sales Org Dimension unique generated id| | | | | | | | | |customer_sales_org_uuid|
|material_key|STRING|Material Key from Material Dimension| | |material || '-' || plant| | | |material_key| | | |
|plant_key|STRING|Plant key from Plant Dimension| | |plant| | |plant_key| | | | |
|supplier_key|STRING|Supplier Key from Supplier Dimension| | |vendors_account_number| | | | |supplier_key| | |
|customer_key|STRING|Customer Key from Customer Dimension| | |customer_number| | | | | |customer_key| |
|customer_sales_org_key|STRING|Customer Sales Org Key from Customer Sales Org Dimension| | |customer_number || '-' || sales_organization || '-' || distribution_channel || '-' || division_for_order_header| | | | | | |customer_sales_org_key|
|total_weight|NUMERIC|Total Weight| |total_weight| | | | | | | | |
|sd_document_category|STRING|SD Document Category| |sd_document_category| | | | | | | | |
|number_deliveries|NUMERIC|No. of deliveries| |number_deliveries| | | | | | | | |
|number_packages|NUMERIC|Extraction BW: Number of Packages per Delivery| |number_packages| | | | | | | | |
|picking_confirmation|STRING|Confirmation status of picking/putaway| | |picking_confirmation| | | | | | | |
|picking_status|STRING|Picking Status/Putaway Status (Item)| | |picking_status| | | | | | | |
|goods_movement_status|STRING|Goods Movement Status| | |goods_movement_status| | | | | | | |
|unloading_point|STRING|Unloading Point| | |unloading_point| | | | | | | |
|company_code|STRING|Company Code| | |company_code| | | | | | | |
|sales_district|STRING|Sales District| | |sales_district| | | | | | | |
|billing_block_sd_document|STRING|Billing Block in SD Document| | |billing_block_sd_document| | | | | | | |
|incoterms_part_1|STRING|Incoterms (Part 1)| | |incoterms_part_1| | | | | | | |
|incoterms_part_2|STRING|Incoterms (Part 2)| | |incoterms_part_2| | | | | | | |
|customer_group|STRING|Customer Group| | |customer_group| | | | | | | |
|sold_to_party|STRING|Sold-To Party| | |sold_to_party| | | | | | | |
|customer_number|STRING|Ship-to party| | |customer_number| | | | | | | |
|delivery_type|STRING|Delivery Type| | |delivery_type| | | | | | | |
|delivery_date|DATE|Delivery Date| | |delivery_date| | | | | | | |
|delivery_block|STRING|Delivery Block (Document Header)| | |delivery_block| | | | | | | |
|departure_loading_point|STRING|Loading Point| | |departure_loading_point| | | | | | | |
|shipment_route|STRING|Route| | |shipment_route| | | | | | | |
|sd_document_category_1|STRING|SD Document Category| | |sd_document_category_1| | | | | | | |
|sales_organization|STRING|Sales Organization| | |sales_organization| | | | | | | |
|shipping_point|STRING|Shipping Point / Receiving Point| | |shipping_point| | | | | | | |
|planned_goods_movement_date|DATE|Planned Goods Movement Date| | |planned_goods_movement_date| | | | | | | |
|actual_goods_movement_date|DATE|Actual Goods Movement Date| | |actual_goods_movement_date| | | | | | | |
|changed_on|DATE|Date of Last Change| | |changed_on| | | | | | | |
|promotion|STRING|Promotion| | |promotion| | | | | | | |
|gross_weight|NUMERIC|Gross weight| | |gross_weight| | | | | | | |
|application_component|STRING|Application Component| | |application_component| | | | | | | |
|transfer_process|STRING|SAP BW transaction key| | |transfer_process| | | | | | | |
|batch_number|STRING|Batch Number| | |batch_number| | | | | | | |
|international_article_number|STRING|International Article Number (EAN/UPC)| | |international_article_number| | | | | | | |
|created_on|DATE|Date on which the record was created| | |created_on| | | | | | | |
|created_by|STRING|Name of Person who Created the Object| | |created_by| | | | | | | |
|entry_time|TIME|Entry time| | |entry_time| | | | | | | |
|billing_block|STRING|Billing Block| | |billing_block| | | | | | | |
|weight_unit|STRING|Weight Unit| | |weight_unit| | | | | | | |
|business_area|STRING|Business Area| | |business_area| | | | | | | |
|picking_indicator|STRING|Indicator for picking control| | |picking_indicator| | | | | | | |
|customer_group_1|STRING|Customer group 1| | |customer_group_1| | | | | | | |
|customer_group_2|STRING|Customer group 2| | |customer_group_2| | | | | | | |
|customer_group_3|STRING|Customer group 3| | |customer_group_3| | | | | | | |
|customer_group_4|STRING|Customer group 4| | |customer_group_4| | | | | | | |
|customer_group_5|STRING|Customer group 5| | |customer_group_5| | | | | | | |
|consumption_posting|STRING|Consumption posting| | |consumption_posting| | | | | | | |
|delivery_quantity|NUMERIC|Actual quantity delivered (in sales units)| | |delivery_quantity| | | | | | | |
|actual_delivery_quantity|NUMERIC|Actual quantity delivered in stockkeeping units| | |actual_delivery_quantity| | | | | | | |
|warehouse_number|STRING|Warehouse Number / Warehouse Complex| | |warehouse_number| | | | | | | |
|storage_location|STRING|Storage location| | |storage_location| | | | | | | |
|storage_bin|STRING|Storage Bin| | |storage_bin| | | | | | | |
|storage_type|STRING|Storage Type| | |storage_type| | | | | | | |
|material_group|STRING|Material Group| | |material_group| | | | | | | |
|material_entered|STRING|Material entered| | |material_entered| | | | | | | |
|base_unit_of_measure|STRING|Base Unit of Measure| | |base_unit_of_measure| | | | | | | |
|material_group_1|STRING|Material group 1| | |material_group_1| | | | | | | |
|material_group_2|STRING|Material group 2| | |material_group_2| | | | | | | |
|material_group_3|STRING|Material group 3| | |material_group_3| | | | | | | |
|material_group_4|STRING|Material group 4| | |material_group_4| | | | | | | |
|material_group_5|STRING|Material group 5| | |material_group_5| | | | | | | |
|net_weight|NUMERIC|Net weight| | |net_weight| | | | | | | |
|bill_to_party|STRING|Bill-to party| | |bill_to_party| | | | | | | |
|payer|STRING|Payer| | |payer| | | | | | | |
|item_type|STRING|Item Type| | |item_type| | | | | | | |
|product_hierarchy|STRING|Product hierarchy| | |product_hierarchy| | | | | | | |
|forwarding_agent|STRING|Forwarding Agent| | |forwarding_agent| | | | | | | |
|item_category|STRING|Delivery item category| | |item_category| | | | | | | |
|sales_employee|STRING|Sales employee| | |sales_employee| | | | | | | |
|statistics_date|DATE|Statistics date| | |statistics_date| | | | | | | |
|denominator|NUMERIC|Denominator (Divisor) for Conversion of Sales Qty into SKU| | |denominator| | | | | | | |
|numerator|NUMERIC|Numerator (factor) for conversion of sales quantity into SKU| | |numerator| | | | | | | |
|fixed_processing_time|NUMERIC|Fixed shipping processing time in days (= setup time)| | |fixed_processing_time| | | | | | | |
|variable_processing_time|NUMERIC|Variable shipping processing time in days| | |variable_processing_time| | | | | | | |
|update_date_statistics|DATE|Date of update for statistics updating| | |update_date_statistics| | | | | | | |
|reference_document|STRING|Document number of the reference document| | |reference_document| | | | | | | |
|reference_item|STRING|Item number of the reference item| | |reference_item| | | | | | | |
|sd_document_category_2|STRING|SD Document Category| | |sd_document_category_2| | | | | | | |
|sales_office|STRING|Sales office| | |sales_office| | | | | | | |
|sales_group|STRING|Sales group| | |sales_group| | | | | | | |
|volume_unit|STRING|Volume unit| | |volume_unit| | | | | | | |
|volume|NUMERIC|Volume| | |volume| | | | | | | |
|sales_unit|STRING|Sales unit| | |sales_unit| | | | | | | |
|distribution_channel|STRING|Distribution Channel| | |distribution_channel| | | | | | | |
|number_delivery_items|NUMERIC|Number of delivery items| | |number_delivery_items| | | | | | | |
|division_for_order_header|STRING|Division for order header| | |division_for_order_header| | | | | | | |
|wbs_element|STRING|Work Breakdown Structure Element (WBS Element)| | |wbs_element| | | | | | | |
|fiscal_year_variant|STRING|Fiscal Year Variant| | |fiscal_year_variant| | | | | | | |
|goods_issue_delay|NUMERIC|BW Extraction LE: Actual GI Delay - GI Date for Delivery| | |goods_issue_delay| | | | | | | |
|campaign_order_item|STRING|Campaign of referred sales order item for BW-Extraction| | |campaign_order_item| | | | | | | |
|confirmation_status|STRING|Confirmation Status (Item)| | | |confirmation_status|confirmation_status| | | | | |
|billing_status_order_related|STRING|Order-Related Billing Status (Item)| | | |billing_status_order_related|billing_status_order_related| | | | | |
|billing_status_delivery_related|STRING|Delivery Status (Item)| | | |billing_status_delivery_related| | | | | | |
|overall_processing_status|STRING|Overall Processing Status (Item)| | | |overall_processing_status|overall_processing_status| | | | | |
|overall_deliver_status|STRING|Overall Delivery Status (Item)| | | |overall_deliver_status|overall_deliver_status| | | | | |
|delivery_status|STRING|Delivery Status (Item)| | | |delivery_status|delivery_status| | | | | |
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|dw_last_update_date|dw_last_update_date| | | | | |
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | | | | | | | | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | | | | | | | | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | | | | | | | | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | | | | | | | | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | | | | | | | | |

Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms

