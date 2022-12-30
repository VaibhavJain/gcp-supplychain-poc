

## Table Name : plant_dimension

|COLUMN NAME|DATA TYPE|description|Key Columns|plant_master|valuation_area|
|:----|:----|:----|:----|:----|:----|
|plant_uuid|STRING|Unique Generated Id|MD5 value on plant_key column| | |
|plant_key|STRING|Plant key|plant|plant| |
|plant|STRING|Plant| |plant| |
|purchasing_organization|STRING|Purchasing organization| |purchasing_organization| |
|sales_organization|STRING|Sales Organization for Intercompany Billing| |sales_organization| |
|country_key|STRING|Country Key| |country_key| |
|Region|STRING|Region (State, Province, County)| |Region| |
|postal_code|STRING|Postal Code| |postal_code| |
|name|STRING|Name| |name| |
|name_2|STRING|Name 2| |name_2| |
|street_house_number|STRING|Street and House Number| |street_house_number| |
|po_box|STRING|PO Box| |po_box| |
|city|STRING|City| |city| |
|valuationion_area|STRING|Valuation area| |valuationion_area| |
|batch_status_management|STRING|Indicator: batch status management active| |batch_status_management| |
|factory_calendar|STRING|Factory calendar key| |factory_calendar| |
|condition_plant_level|STRING|Indicator: Conditions at plant level| |condition_plant_level| |
|source_list|STRING|Indicator: Source list requirement| |source_list| |
|requirement_planning|STRING|Activating requirements planning| |requirement_planning| |
|country_code|STRING|County Code| |country_code| |
|city_code|STRING|City Code| |city_code| |
|planning_plant|STRING|Maintenance Planning Plant| |planning_plant| |
|tax_jurisdiction|STRING|Tax Jurisdiction| |tax_jurisdiction| |
|distribution_channel|STRING|Distribution channel for intercompany billing| |distribution_channel| |
|intercompany_nilling_division|STRING|Division for intercompany billing| |intercompany_nilling_division| |
|customer_number_plant|STRING|Customer Number of Plant| |customer_number_plant| |
|language_key|STRING|Language Key| |language_key| |
|sop_plant|STRING|SOP plant| |sop_plant| |
|variance_key|STRING|Variance Key| |variance_key| |
|plant_category|STRING|Plant category| |plant_category| |
|supply_number_plant|STRING|Supplier Number of Plant| |supply_number_plant| |
|sales_district|STRING|Sales District| |sales_district| |
|supply_region|STRING|Supply region (region supplied)| |supply_region| |
|plant_tax_indicator|STRING|Tax Indicator: Plant (Purchasing)| |plant_tax_indicator| |
|regular_supplier|STRING|Take Regular Supplier into Account| |regular_supplier| |
|tolerance_1|STRING|Tolerance days - Dunning level 1| |tolerance_1| |
|tolerance_2|STRING|Tolerance days - Dunning level 2| |tolerance_2| |
|tolerance_3|STRING|Tolerance days - Dunning level 3| |tolerance_3| |
|text_1st_dunning|STRING|Text name of 1st dunning of vendor declarations| |text_1st_dunning| |
|text_2nd_dunning|STRING|Text name of the 2nd dunning of vendor declarations| |text_2nd_dunning| |
|text_3rd_dunning|STRING|Text name of 3rd dunning of vendor declarations| |text_3rd_dunning| |
|po_tolerance|STRING|Number of days for PO tolerance - Compress info records - SU| |po_tolerance| |
|store_category|STRING|Store Category to Differentiate Store, Dep. Store, Shop| |store_category| |
|superior_department_store|STRING|Superior Department Store| |superior_department_store| |
|company_code|STRING|Company Code| | |company_code|
|input_last_update_date|DATETIME|Last Input read time|Greater dw_last_update_date from all input table|dw_last_update_date|dw_last_update_date|
|finalmd5key|STRING|MD5 key column for compare|MD5 key build on all input columns| | |
|dw_active_indicator|STRING|Active indicator to valid record|Audit column| | |
|dw_start_date|DATETIME|Start Date for the record|Audit column| | |
|dw_end_date|DATETIME|End Date for the record|Audit column| | |
|dw_last_update_date|DATETIME|Last update date|Audit column| | |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms

