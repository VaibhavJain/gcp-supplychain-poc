

## Table Name : customer_sales_org_dimension

|COLUMN NAME|DATA TYPE|description|Key Columns|customer_master|customer_sales_data|
|:----|:----|:----|:----|:----|:----|
|customer_sales_org_uuid|STRING|Unique Generated Id|MD5 value on customer_sales_org_key column| | |
|customer_sales_org_key|STRING|Customer Sales Org Key|customer_number || ‘-’ || sales_organization || ‘-’ || distribution_channel || ‘-’ || division|customer_number|sales_organization || ‘-’ || distribution_channel || ‘-’ || division|
|customer_number|STRING|Customer Number| |customer_number| |
|sales_organization|STRING|Sales Organization| | |sales_organization|
|distribution_channel|STRING|Distribution Channel| | |distribution_channel|
|division|STRING|Division| | |division|
|customer_classification|STRING|Customer classification| |customer_classification| |
|industry_key|STRING|Industry key| |industry_key| |
|country_key|STRING|Country Key| |country_key| |
|address|STRING|Address| |address| |
|title|STRING|Title| |title| |
|central_order_block|STRING|Central order block for customer| |central_order_block| |
|express_station|STRING|Express train station| |express_station| |
|train_station|STRING|Train station| |train_station| |
|international_location_number_1|STRING|International location number (part 1)| |international_location_number_1| |
|international_location_number_2|STRING|International location number (Part 2)| |international_location_number_2| |
|authorization_group|STRING|Authorization Group| |authorization_group| |
|check_digit|STRING|Check digit for the international location number| |check_digit| |
|data_line|STRING|Data communication line no.| |data_line| |
|unloading_points|STRING|Indicator: Unloading points exist| |unloading_points| |
|fiscal_address|STRING|Account number of the master record with the fiscal address| |fiscal_address| |
|working_times|STRING|Working Time Calendar| |working_times| |
|alternative_payer|STRING|Account number of an alternative payer| |alternative_payer| |
|group_key|STRING|Group key| |group_key| |
|customer_account_group|STRING|Customer Account Group| |customer_account_group| |
|vendors_account_number|STRING|Account Number of Vendor or Creditor| |vendors_account_number| |
|central_delivery_block|STRING|Central delivery block for the customer| |central_delivery_block| |
|location_code|STRING|City Coordinates| |location_code| |
|central_deletion_flag|STRING|Central Deletion Flag for Master Record| |central_deletion_flag| |
|name_1|STRING|Name 1| |name_1| |
|name_2|STRING|Name 2| |name_2| |
|name_3|STRING|Name 3| |name_3| |
|name_4|STRING|Name 4| |name_4| |
|nielsen_indicator|STRING|Nielsen ID| |nielsen_indicator| |
|city|STRING|City| |city| |
|district|STRING|District| |district| |
|post_office_box|STRING|PO Box| |post_office_box| |
|po_box_postal_code|STRING|P.O. Box Postal Code| |po_box_postal_code| |
|postal_code|STRING|Postal Code| |postal_code| |
|region|STRING|Region (State, Province, County)| |region| |
|county_code|STRING|County Code| |county_code| |
|city_code|STRING|City Code| |city_code| |
|regional_market|STRING|Regional market| |regional_market| |
|sort_field|STRING|Sort field| |sort_field| |
|central_posting_block|STRING|Central posting block| |central_posting_block| |
|language_key|STRING|Language Key| |language_key| |
|tax_number_1|STRING|Tax Number 1| |tax_number_1| |
|tax_number_2|STRING|Tax Number 2| |tax_number_2| |
|sales_equalization_tax|STRING|Indicator: Business Partner Subject to Equalization Tax?| |sales_equalization_tax| |
|liable_for_vat|STRING|Liable for VAT| |liable_for_vat| |
|street_and_house_number|STRING|Street and House Number| |street_and_house_number| |
|telebox_number|STRING|Telebox number| |telebox_number| |
|telephone_1|STRING|First telephone number| |telephone_1| |
|telephone_2|STRING|Second telephone number| |telephone_2| |
|fax_number|STRING|Fax Number| |fax_number| |
|teletex_number|STRING|Teletex number| |teletex_number| |
|telex_number|STRING|Telex number| |telex_number| |
|transportation_zone|STRING|Transportation zone to or from which the goods are delivered| |transportation_zone| |
|one_time_account|STRING|Indicator: Is the account a one-time account?| |one_time_account| |
|payee_in_document|STRING|Indicator: Alternative Payee in Document Allowed?| |payee_in_document| |
|trading_partner|STRING|Company ID of Trading Partner| |trading_partner| |
|vat_registration_number|STRING|VAT Registration Number| |vat_registration_number| |
|competitors_indicator|STRING|Indicator: Competitor| |competitors_indicator| |
|sales_partners_indicator|STRING|Indicator: Sales partner| |sales_partners_indicator| |
|sales_prospect_indicator|STRING|Indicator: Sales prospect| |sales_prospect_indicator| |
|customer_type_4|STRING|Indicator for customer type 4| |customer_type_4| |
|default_sold_to_party|STRING|ID for default sold-to party| |default_sold_to_party| |
|consumer_indicator|STRING|Indicator: Consumer| |consumer_indicator| |
|legal_status|STRING|Legal status| |legal_status| |
|industry_code_1|STRING|Industry code 1| |industry_code_1| |
|industry_code_2|STRING|Industry code 2| |industry_code_2| |
|industry_code_3|STRING|Industry code 3| |industry_code_3| |
|industry_code_4|STRING|Industry code 4| |industry_code_4| |
|industry_code_5|STRING|Industry code 5| |industry_code_5| |
|initial_contact|STRING|Initial contact| |initial_contact| |
|annual_sales_2|NUMERIC|Annual sales| |annual_sales_2| |
|sales_year|STRING|Year For Which Sales are Given| |sales_year| |
|currency_sales_figure|STRING|Currency of sales figure| |currency_sales_figure| |
|year_number_employees|STRING|Yearly number of employees| |year_number_employees| |
|year_number_given|STRING|Year for which the number of employees is given| |year_number_given| |
|attribute_1|STRING|Attribute 1| |attribute_1| |
|attribute_2|STRING|Attribute 2| |attribute_2| |
|attribute_3|STRING|Attribute 3| |attribute_3| |
|attribute_4|STRING|Attribute 4| |attribute_4| |
|attribute_5|STRING|Attribute 5| |attribute_5| |
|attribute_6|STRING|Attribute 6| |attribute_6| |
|attribute_7|STRING|Attribute 7| |attribute_7| |
|attribute_8|STRING|Attribute 8| |attribute_8| |
|attribute_9|STRING|Attribute 9| |attribute_9| |
|attribute_10|STRING|Attribute 10| |attribute_10| |
|natural_person|STRING|Natural Person| |natural_person| |
|annual_sales_1|NUMERIC|Annual sales| |annual_sales_1| |
|tax_jurisdiction|STRING|Tax Jurisdiction| |tax_jurisdiction| |
|matchcode_name_1|STRING|Search term for matchcode search| |matchcode_name_1| |
|matchcode_name_2|STRING|Search Term for Matchcode Search| |matchcode_name_2| |
|matcgcode_city|STRING|Search term for matchcode search| |matcgcode_city| |
|fiscal_year_variant|STRING|Fiscal Year Variant| |fiscal_year_variant| |
|usage_indicator|STRING|Usage Indicator| |usage_indicator| |
|by_customer|STRING|Inspection Carried Out By Customer (No Inspection Lot)| |by_customer| |
|after_delivery|STRING|Inspection for a Delivery Note After Outbound Delivery| |after_delivery| |
|reference_account_group|STRING|Reference Account Group for One-Time Account (Customer)| |reference_account_group| |
|post_office_box_city|STRING|PO Box city| |post_office_box_city| |
|plant|STRING|Plant| |plant| |
|date_medium_exchange_indicator|STRING|Report key for data medium exchange| |date_medium_exchange_indicator| |
|instruction_key|STRING|Instruction key for data medium exchange| |instruction_key| |
|data_transfer_status|STRING|Status of Data Transfer into Subsequent Release| |data_transfer_status| |
|hierarchy_assignment|STRING|Assignment to Hierarchy| |hierarchy_assignment| |
|payment_block|STRING|Payment Block| |payment_block| |
|labeking_customer_group|STRING|IS-R Labeling: customer/plant group| |labeking_customer_group| |
|non_military_use|STRING|ID for mainly non-military use| |non_military_use| |
|military_use|STRING|ID for mainly military use| |military_use| |
|condition_group_1|STRING|Customer condition group 1| |condition_group_1| |
|condition_group_2|STRING|Customer condition group 2| |condition_group_2| |
|condition_group_3|STRING|Customer condition group 3| |condition_group_3| |
|condition_group_4|STRING|Customer condition group 4| |condition_group_4| |
|condition_group_5|STRING|Customer condition group 5| |condition_group_5| |
|alternative_payer_account|STRING|Indicator: Alternative payer using account number| |alternative_payer_account| |
|tax_type|STRING|Tax type| |tax_type| |
|tax_number_type|STRING|Tax Number Type| |tax_number_type| |
|tax_number_3|STRING|Tax Number 3| |tax_number_3| |
|tax_number_4|STRING|Tax Number 4| |tax_number_4| |
|icms_exempt|STRING|Customer is ICMS-exempt| |icms_exempt| |
|ipi_exempt|STRING|Customer is IPI-exempt| |ipi_exempt| |
|subtrib_group|STRING|Customer group for Substituiçao Tributária calculation| |subtrib_group| |
|customer_cfop_category|STRING|Customer's CFOP category| |customer_cfop_category| |
|icms_law|STRING|Tax law: ICMS| |icms_law| |
|ipi_law|STRING|Tax law: IPI| |ipi_law| |
|biochemical_warfare|STRING|Indicator for biochemical warfare for legal control| |biochemical_warfare| |
|nuclear_nonprolif|STRING|Indicator for nuclear nonproliferation for legal control| |nuclear_nonprolif| |
|national_security|STRING|Indicator for national security for legal control| |national_security| |
|missile_technology|STRING|Indicator for missile technology for legal control| |missile_technology| |
|central_sales_block|STRING|Central sales block for customer| |central_sales_block| |
|uniform_resource_locator|STRING|Uniform resource locator| |uniform_resource_locator| |
|created_by|STRING|Name of Person who Created the Object| | |created_by|
|created_on|DATE|Date on which the Record Was Created| | |created_on|
|deletion_indicator_sales_area|STRING|Deletion flag for customer (sales level)| | |deletion_indicator_sales_area|
|customer_statistics_group|STRING|Customer Statistics Group| | |customer_statistics_group|
|order_block_sales_area|STRING|Customer order block (sales area)| | |order_block_sales_area|
|customer_price_procedure|STRING|Customer Classification for Pricing Procedure Determination| | |customer_price_procedure|
|customer_group|STRING|Customer Group| | |customer_group|
|sales_district|STRING|Sales District| | |sales_district|
|customer_price_group|STRING|Customer Price Group| | |customer_price_group|
|price_list_type|STRING|Price List Type| | |price_list_type|
|order_probability|STRING|Order Probability of the Item| | |order_probability|
|incoterms_part_1|STRING|Incoterms (Part 1)| | |incoterms_part_1|
|incoterms_part_2|STRING|Incoterms (Part 2)| | |incoterms_part_2|
|delivery_block_sales_area|STRING|Customer delivery block (sales area)| | |delivery_block_sales_area|
|complete_delivery|STRING|Complete Delivery Defined for Each Sales Order?| | |complete_delivery|
|maximum_partial_deliveries|NUMERIC|Maximum Number of Partial Deliveries Allowed Per Item| | |maximum_partial_deliveries|
|partial_delivery|STRING|Partial delivery at item level| | |partial_delivery|
|order_combination_indicator|STRING|Order Combination Indicator| | |order_combination_indicator|
|batch_split_allowed|STRING|Batch split allowed| | |batch_split_allowed|
|delivery_priority|STRING|Delivery Priority| | |delivery_priority|
|account_at_customer|STRING|Shipper's (Our) Account Number at the Customer or Vendor| | |account_at_customer|
|shipping_conditions|STRING|Shipping Conditions| | |shipping_conditions|
|central_billing_block|STRING|Billing block for customer (sales and distribution)| | |central_billing_block|
|manual_invoice_maintenance|STRING|Manual Invoice Maintenance| | |manual_invoice_maintenance|
|invoicing_dates|STRING|Invoice Dates (Calendar Identification)| | |invoicing_dates|
|invoice_list_schedule|STRING|Invoice List Schedule (calendar identification)| | |invoice_list_schedule|
|cost_estimate|STRING|Cost estimate indicator (inactive)| | |cost_estimate|
|maximum_cost_estimate|NUMERIC|Value limit for cost estimate (inactive)| | |maximum_cost_estimate|
|currency_key|STRING|Currency| | |currency_key|
|abc_classification|STRING|Customer classification (ABC analysis)| | |abc_classification|
|account_assignment_group|STRING|Account Assignment Group for this customer| | |account_assignment_group|
|delivering_plant|STRING|Delivering Plant| | |delivering_plant|
|sales_group|STRING|Sales group| | |sales_group|
|sales_office|STRING|Sales office| | |sales_office|
|item_proposal|STRING|Item proposal| | |item_proposal|
|customer_group_1|STRING|Customer group 1| | |customer_group_1|
|customer_group_2|STRING|Customer group 2| | |customer_group_2|
|customer_group_3|STRING|Customer group 3| | |customer_group_3|
|customer_group_4|STRING|Customer group 4| | |customer_group_4|
|customer_group_5|STRING|Customer group 5| | |customer_group_5|
|rebate_relevant|STRING|Indicator: Customer Is Rebate-Relevant| | |rebate_relevant|
|rebate_index|DATE|Start of validity per.for the rebate index for the customer| | |rebate_index|
|exchange_rate_type|STRING|Exchange Rate Type| | |exchange_rate_type|
|price_determination|STRING|Relevant for price determination ID| | |price_determination|
|product_attribute_1|STRING|ID for product attribute 1| | |product_attribute_1|
|product_attribute_2|STRING|ID for product attribute 2| | |product_attribute_2|
|product_attribute_3|STRING|ID for product attribute 3| | |product_attribute_3|
|product_attribute_4|STRING|ID for product attribute 4| | |product_attribute_4|
|product_attribute_5|STRING|ID for product attribute 5| | |product_attribute_5|
|product_attribute_6|STRING|ID for product attribute 6| | |product_attribute_6|
|product_attribute_7|STRING|ID for product attribute 7| | |product_attribute_7|
|product_attribute_8|STRING|ID for product attribute 8| | |product_attribute_8|
|product_attribute_9|STRING|ID for product attribute 9| | |product_attribute_9|
|product_attribute_10|STRING|ID for product attribute 10| | |product_attribute_10|
|payment_terms|STRING|Terms of payment key| | |payment_terms|
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms

