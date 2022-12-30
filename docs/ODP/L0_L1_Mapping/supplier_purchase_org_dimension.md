
## Table Name : supplier_purchase_org_dimension

|COLUMN NAME|DATA TYPE|description|Key Columns|supply_master|supplier_purchasing_organization|
|:----|:----|:----|:----|:----|:----|
|supplier_purchase_org_uuid|STRING|Unique Generated Id|MD5 value on supplier_purchase_org_key column| | |
|supplier_purchase_org_key|STRING|Supplier Purchase Org Key|vendors_account_number || ‘-’ || purchasing_organization|vendors_account_number|purchasing_organization|
|vendors_account_number|STRING|Account Number of Vendor or Creditor| |vendors_account_number| |
|purchasing_organization|STRING|Purchasing organization| | |purchasing_organization|
|vendor_account_group|STRING|Vendor account group| |vendor_account_group| |
|title|STRING|Title| |title| |
|train_station|STRING|Train station| |train_station| |
|international_location_number_1|STRING|International location number (part 1)| |international_location_number_1| |
|international_location_number_2|STRING|International location number (Part 2)| |international_location_number_2| |
|authorization_group|STRING|Authorization Group| |authorization_group| |
|industry_key|STRING|Industry key| |industry_key| |
|check_digit|STRING|Check digit for the international location number| |check_digit| |
|data_line|STRING|Data communication line no.| |data_line| |
|date_medium_exchange_indicator|STRING|Report key for data medium exchange| |date_medium_exchange_indicator| |
|instruction_key|STRING|Instruction key for data medium exchange| |instruction_key| |
|created_on|DATE|Date on which the Record Was Created| |created_on| |
|created_by|STRING|Name of Person who Created the Object| |created_by| |
|isr_subscriber_number|STRING|ISR subscriber number| |isr_subscriber_number| |
|group_key|STRING|Group key| |group_key| |
|customer_number|STRING|Customer Number| |customer_number| |
|country_key|STRING|Country Key| |country_key| |
|alternative_payee|STRING|Account Number of the Alternative Payee| |alternative_payee| |
|central_deletion_flag|STRING|Central Deletion Flag for Master Record| |central_deletion_flag| |
|name_1|STRING|Name 1| |name_1| |
|name_2|STRING|Name 2| |name_2| |
|name_3|STRING|Name 3| |name_3| |
|name_4|STRING|Name 4| |name_4| |
|city|STRING|City| |city| |
|district|STRING|District| |district| |
|post_office_box|STRING|PO Box| |post_office_box| |
|po_box_postal_code|STRING|P.O. Box Postal Code| |po_box_postal_code| |
|postal_code|STRING|Postal Code| |postal_code| |
|region|STRING|Region (State, Province, County)| |region| |
|sort_field|STRING|Sort field| |sort_field| |
|central_posting_block|STRING|Central posting block| |central_posting_block| |
|central_purchasing_block|STRING|Centrally imposed purchasing block| |central_purchasing_block| |
|language_key|STRING|Language Key| |language_key| |
|tax_number_1|STRING|Tax Number 1| |tax_number_1| |
|tax_number_2|STRING|Tax Number 2| |tax_number_2| |
|tax_number_3|STRING|Tax Number 3| |tax_number_3| |
|sales_equalization_tax|STRING|Indicator: Business Partner Subject to Equalization Tax?| |sales_equalization_tax| |
|liable_for_vat|STRING|Liable for VAT| |liable_for_vat| |
|street_and_house_number|STRING|Street and House Number| |street_and_house_number| |
|telebox_number|STRING|Telebox number| |telebox_number| |
|telephone_1|STRING|First telephone number| |telephone_1| |
|telephone_2|STRING|Second telephone number| |telephone_2| |
|fax_number|STRING|Fax Number| |fax_number| |
|teletex_number|STRING|Teletex number| |teletex_number| |
|telex_number|STRING|Telex number| |telex_number| |
|one_time_account|STRING|Indicator: Is the account a one-time account?| |one_time_account| |
|payee_in_document|STRING|Indicator: Alternative Payee in Document Allowed?| |payee_in_document| |
|trading_partner|STRING|Company ID of Trading Partner| |trading_partner| |
|fiscal_address|STRING|Account number of the master record with fiscal address| |fiscal_address| |
|vat_registration_number|STRING|VAT Registration Number| |vat_registration_number| |
|natural_person|STRING|Natural Person| |natural_person| |
|block_function|STRING|Function That Will Be Blocked| |block_function| |
|matchcode_name_1|STRING|Search term for matchcode search| |matchcode_name_1| |
|matchcode_name_2|STRING|Search term for matchcode search| |matchcode_name_2| |
|matchcode_city|STRING|Search term for matchcode search| |matchcode_city| |
|place_of_birth|STRING|Place of birth of the person subject to withholding tax| |place_of_birth| |
|date_of_birth|DATE|Date of Birth of the Person Subject to Withholding Tax| |date_of_birth| |
|sex|STRING|Key for the Sex of the Person Subject to Withholding Tax| |sex| |
|credit_information_number|STRING|Credit Information Number| |credit_information_number| |
|last_external_review|DATE|Last External Review| |last_external_review| |
|actual_qm_system|STRING|Supplier's QM system| |actual_qm_system| |
|reference_account_group|STRING|Reference Account Group for One-Time Account (Vendor)| |reference_account_group| |
|post_office_box_city|STRING|PO Box city| |post_office_box_city| |
|plant|STRING|Plant| |plant| |
|vendor_sub_range_relevant|STRING|Indicator: vendor sub-range relevant| |vendor_sub_range_relevant| |
|plant_level_relevant|STRING|Indicator: plant level relevant| |plant_level_relevant| |
|factory_calendar|STRING|Factory calendar key| |factory_calendar| |
|tax_jurisdiction|STRING|Tax Jurisdiction| |tax_jurisdiction| |
|payment_block|STRING|Payment Block| |payment_block| |
|address|STRING|Address| |address| |
|tax_number_4|STRING|Tax Number 4| |tax_number_4| |
|tax_number_5|STRING|Tax Number 5| |tax_number_5| |
|purchasing_organization_block|STRING|Purchasing block at purchasing organization level| | |purchasing_organization_block|
|purchasing_organization_delete_flag|STRING|Deletion Indicator for Supplier at Purchasing Level| | |purchasing_organization_delete_flag|
|abc_indicator|STRING|ABC indicator| | |abc_indicator|
|order_currency|STRING|Purchase order currency| | |order_currency|
|responsible_salesperson|STRING|Responsible Salesperson at Supplier's Office| | |responsible_salesperson|
|telephone_number|STRING|Supplier's Telephone Number| | |telephone_number|
|minimum_order_value|NUMERIC|Minimum order value| | |minimum_order_value|
|payment_terms|STRING|Terms of payment key| | |payment_terms|
|incoterms_1|STRING|Incoterms (Part 1)| | |incoterms_1|
|incoterms_2|STRING|Incoterms (Part 2)| | |incoterms_2|
|gr_based_invoice|STRING|Indicator: GR-Based Invoice Verification| | |gr_based_invoice|
|acknowledgment_required|STRING|Order Acknowledgment Requirement| | |acknowledgment_required|
|schems_group_supplier|STRING|Group for Calculation Schema (Supplier)| | |schems_group_supplier|
|automatic_purchase_order|STRING|Automatic Generation of Purchase Order Allowed| | |automatic_purchase_order|
|mode_of_transport|STRING|Mode of Transport at the Border (Intrastat)| | |mode_of_transport|
|customs_office|STRING|Customs Office: Office of Exit/Entry for Foreign Trade| | |customs_office|
|price_date_control|STRING|Price Determination (Pricing) Date Control| | |price_date_control|
|purchasing_group|STRING|Purchasing Group| | |purchasing_group|
|subsequient_settlement|STRING|Indicator: vendor subject to subseq. settlement accounting| | |subsequient_settlement|
|business_volumn_comparison|STRING|Comparison/agreement of business volumes necessary| | |business_volumn_comparison|
|evaluated_receipt_settlement|STRING|Evaluated Receipt Settlement (ERS)| | |evaluated_receipt_settlement|
|planned_delivery_time|NUMERIC|Planned Delivery Time in Days| | |planned_delivery_time|
|planning_calendar|STRING|Planning Calendar| | |planning_calendar|
|planning_cycle|STRING|Planning cycle| | |planning_cycle|
|order_entry_supplier|STRING|Order entry by supplier| | |order_entry_supplier|
|supplier_price_marking|STRING|Price marking, supplier| | |supplier_price_marking|
|rack_jobbing|STRING|Rack-jobbing: supplier| | |rack_jobbing|
|price_determination|STRING|Indicator: "relev. to price determination (vend. hierarchy)| | |price_determination|
|qualifying_discount_kind_granted|STRING|Indicator whether discount in kind granted| | |qualifying_discount_kind_granted|
|subsequient_settlement_index|STRING|Indicator: index compilation for subseq. settlement active| | |subsequient_settlement_index|
|document_index_active|STRING|Indicator: Doc. index compilation active for purchase orders| | |document_index_active|
|returns_supplier|STRING|Indicates whether supplier is returns supplier| | |returns_supplier|
|sort_criterion|STRING|Supplier sort criterion for materials| | |sort_criterion|
|confimration_control|STRING|Confirmation Control Key| | |confimration_control|
|rounding_profile|STRING|Rounding Profile| | |rounding_profile|
|unit_of_measure_group|STRING|Unit of Measure Group| | |unit_of_measure_group|
|supplier_service_level|NUMERIC|Supplier Service Level| | |supplier_service_level|
|load_building_restriction_profile|STRING|Restriction Profile for PO-Based Load Building| | |load_building_restriction_profile|
|automatic_evaluated_receipt|STRING|Automatic evaluated receipt settlement for return items| | |automatic_evaluated_receipt|
|account_supplier|STRING|Our account number with the supplier| | |account_supplier|
|release_creation_profile|STRING|Release Creation Profile| | |release_creation_profile|
|proact_control_profile|STRING|Profile for transferring material data via IDoc PROACT| | |proact_control_profile|
|settlement_management|STRING|Indicator: Relevant for Settlement Management| | |settlement_management|
|revaluation_allowed|STRING|Revaluation allowed| | |revaluation_allowed|
|shipping_conditions|STRING|Shipping Conditions| | |shipping_conditions|
|service_based_invoice_verification|STRING|Indicator for Service-Based Invoice Verification| | |service_based_invoice_verification|
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms

