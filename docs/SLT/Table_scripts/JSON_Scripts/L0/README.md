# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0-L1-L2)
### Version
### Version 1.0
## Overview
JSON file are created for L0 staging tables along with each column description, this json files are used by Terraform to create empty tables in BigQuery

Data sources - such as SAP HANA/SAP ECC by using SLT plugin. Transformations, which sit between inputs and outputs Sinks, which are outputs - such as Big Query.
In data integration from [Cloud data fusion using SLT plugin](https://cloud.google.com/data-fusion/docs/how-to/use-sap-slt-plugin) we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.


### Below are the list to L0 staging table with respective SAP table name.


| SAP_Table      | BQ_Table                                        |
|----------------|-------------------------------------------------|
| BSAD           | account_document_customer_close_item            |
| BSEG           | account_document_item                           |
| T077X          | account_group_name                              |
| BKPF           | accounting_document_header_detail               |
| T003T          | accounting_document_type_description            |
| MCHB           | batch_level_stock_data                          |
| MCHA           | batches_data                                    |
| TVFST          | billing_block_reason_text                       |
| VBRK           | billing_header                                  |
| VBRP           | billing_line_item                               |
| STKO           | bom_header_data                                 |
| STPO           | bom_item_data                                   |
| MAST           | bom_link_data                                   |
| BUT020         | business_partner_address_details                |
| BUT000         | business_partner_general_data_details           |
| FINSC_BTTYPE_T | business_transaction_type_description           |
| T001           | company_codes                                   |
| T163M          | confirmation_category_description               |
| TKA01          | controlling_area_master                         |
| T005           | country_master                                  |
| T005T          | country_names                                   |
| TCURC          | currecny_codes                                  |
| TCURT          | currency_codes_text                             |
| T151           | customer_group                                  |
| TINCT          | customer_inco_terms_text                        |
| KNA1           | customer_master                                 |
| KNVP           | customer_partner_function                       |
| KNVV           | customer_sales                                  |
| TVLST          | delivery_block_text                             |
| LIKP           | delivery_header                                 |
| LIPS           | delivery_item                                   |
| TWLAD          | determination_address                           |
| TVKOV          | distribution_channel                            |
| T003           | document_types                                  |
| TCURW          | exchange_rate_type                              |
| TFACS          | factory_calendar                                |
| RSEG           | incoming_invoice_item_detail                    |
| PBED           | independent_requirement_data                    |
| RBKP           | invoice_receipt_header_detail                   |
| STAS           | item_selection_data                             |
| FINSC_LEDGER_T | journal_leger_description                       |
| T002T          | language_key_description                        |
| USR02          | logon_data                                      |
| MATDOC         | masterial_movement_details                      |
| MAKT           | material_description                            |
| T023T          | material_group_description                      |
| T023           | material_group_details                          |
| MARA           | material_master                                 |
| MBEW           | material_master_accounting_data                 |
| MKPF           | material_movement_header_detail                 |
| MSEG           | material_movement_item_detail                   |
| MARD           | material_storage_location                       |
| T134T          | material_type_description                       |
| T024D          | mrp_controllers                                 |
| T156HT         | mterial_mobement_type_description               |
| CAUFV          | order_header                                    |
| PBHI           | planned_independent_requirement_history         |
| PBIM           | planned_independent_requirement_material        |
| MARC           | plant_data                                      |
| T001W          | plant_details                                   |
| T024W          | plant_purchasing_organization_details           |
| TBSLT          | posting_key_description                         |
| T189T          | price_list_category                             |
| T179           | product_hierarchy                               |
| T179T          | product_hierarchy_description                   |
| AFRU           | production_order_confirmation_details           |
| AFKO           | production_order_header                         |
| AFPO           | production_order_item_details                   |
| AUFK           | production_order_master_details                 |
| CEPCT          | profit_center_description                       |
| EKET           | purchae_order_schedule_line_detail              |
| T16FE          | purchase_document_release_indicator_description |
| EKKO           | purchase_order_header_detail                    |
| EKBE           | purchase_order_history_detail                   |
| EKPO           | purchase_order_item_detail                      |
| T024E          | purchase_organizations_details                  |
| EBKN           | purchase_requisition_account_assignment         |
| EBAN           | purchase_requisition_details                    |
| T007S          | purchase_sales_tax_code_description             |
| T161T          | purchasing_document_type_description            |
| T024           | purchasing_groups_details                       |
| EINA           | purchasing_information_data                     |
| T005U          | region_text                                     |
| TVTA           | sales_area                                      |
| TSPAT          | sales_division_text                             |
| TVAST          | sales_document_block_reason_text                |
| VBKD           | sales_document_business_data                    |
| VBFA           | sales_document_flow                             |
| VBAK           | sales_document_header                           |
| VBUK           | sales_document_header_status                    |
| VBAP           | sales_document_item                             |
| TVAPT          | sales_document_item_category                    |
| VBUP           | sales_document_item_status                      |
| TVAUT          | sales_document_order_text                       |
| VBPA           | sales_document_partner                          |
| TVAGT          | sales_document_rejection_reason_description     |
| TVAG           | sales_document_rejection_reasons                |
| VBEP           | sales_document_schedule                         |
| TVAKT          | sales_document_type                             |
| TVKOT          | sales_org_text                                  |
| VFKN           | shipment_cost_accounting                        |
| VFKK           | shipment_cost_header                            |
| VFKP           | shipment_cost_item                              |
| VFSI           | shipment_cost_sub_item                          |
| VTFA           | shipment_document_flow                          |
| VTTK           | shipment_header_details                         |
| VTTP           | shipment_item_details                           |
| VTTS           | shipment_stage_data                             |
| TVSBT          | shipping_condition_text                         |
| TVST           | shipping_point_data                             |
| T001L          | storage_location_details                        |
| TVTWT          | store_organizational_unit                       |
| ADRC           | supplier_master_address_details                 |
| LFB1           | supplier_master_compnay_code_details            |
| LFA1           | supplier_master_details                         |
| ADR6           | supplier_master_email_details                   |
| LTAK           | transfer_order_header                           |
| LTAP           | transfer_order_item                             |
| TTDS           | transportation_scheduling_point                 |
| TTDST          | transportation_scheduling_point_text            |
| ACDOCA         | universal_journal_item                          |
| TJ30T          | user_status_data                                |
| JCDS           | user_statuses                                   |
| T001K          | valuation_area_details                          |
| T300           | warehouse_numbers_data                          |
| T300T          | warehouse_numbers_text                          |
| CRHD           | work_center_header_details                      |



Below are the list of json file which can be used to create the empty tables in bigquery.

| Json_File_name                                       |
|------------------------------------------------------|
| account_document_item.json                           |
| account_group_name.json                              |
| accounting_document_header_detail.json               |
| accounting_document_type_description.json            |
| batch_level_stock_data.json                          |
| batches_data.json                                    |
| billing_block_reason_text.json                       |
| billing_header.json                                  |
| billing_line_item.json                               |
| bom_header_data.json                                 |
| bom_item_data.json                                   |
| bom_link_data.json                                   |
| business_partner_address_details.json                |
| business_partner_general_data_details.json           |
| business_transaction_type_description.json           |
| company_codes.json                                   |
| confirmation_category_description.json               |
| controlling_area_master.json                         |
| country_master.json                                  |
| country_names.json                                   |
| currecny_codes.json                                  |
| currency_codes_text.json                             |
| customer_group.json                                  |
| customer_inco_terms_text.json                        |
| customer_master.json                                 |
| customer_partner_function.json                       |
| customer_sales.json                                  |
| delivery_block_text.json                             |
| delivery_header.json                                 |
| delivery_item.json                                   |
| determination_address.json                           |
| distribution_channel.json                            |
| document_types.json                                  |
| exchange_rate_type.json                              |
| factory_calendar.json                                |
| incoming_invoice_item_detail.json                    |
| independent_requirement_data.json                    |
| invoice_receipt_header_detail.json                   |
| item_selection_data.json                             |
| journal_leger_description.json                       |
| language_key_description.json                        |
| layer1_audit_table.json                              |
| logon_data.json                                      |
| masterial_movement_details.json                      |
| material_description.json                            |
| material_group_description.json                      |
| material_group_details.json                          |
| material_master_accounting_data.json                 |
| material_master.json                                 |
| material_storage_location.json                       |
| material_type_description.json                       |
| mrp_controllers.json                                 |
| mterial_mobement_type_description.json               |
| planned_independent_requirement_history.json         |
| planned_independent_requirement_material.json        |
| plant_data.json                                      |
| plant_details.json                                   |
| plant_purchasing_organization_details.json           |
| posting_key_description.json                         |
| price_list_category.json                             |
| product_hierarchy_description.json                   |
| product_hierarchy.json                               |
| production_order_confirmation_details.json           |
| production_order_header.json                         |
| production_order_item_details.json                   |
| production_order_master_details.json                 |
| profit_center_description.json                       |
| purchae_order_schedule_line_detail.json              |
| purchase_document_release_indicator_description.json |
| purchase_order_header_detail.json                    |
| purchase_order_history_detail.json                   |
| purchase_order_item_detail.json                      |
| purchase_organizations_details.json                  |
| purchase_requisition_account_assignment.json         |
| purchase_requisition_details.json                    |
| purchase_sales_tax_code_description.json             |
| purchasing_document_type_description.json            |
| purchasing_groups_details.json                       |
| purchasing_information_data.json                     |
| region_text.json                                     |
| sales_area.json                                      |
| sales_division_text.json                             |
| sales_document_block_reason_text.json                |
| sales_document_business_data.json                    |
| sales_document_flow.json                             |
| sales_document_header_status.json                    |
| sales_document_header.json                           |
| sales_document_item_category.json                    |
| sales_document_item_status.json                      |
| sales_document_item.json                             |
| sales_document_order_text.json                       |
| sales_document_partner.json                          |
| sales_document_rejection_reason_description.json     |
| sales_document_rejection_reasons.json                |
| sales_document_schedule.json                         |
| sales_document_type.json                             |
| sales_org_text.json                                  |
| shipment_cost_accounting.json                        |
| shipment_cost_header.json                            |
| shipment_cost_item.json                              |
| shipment_cost_sub_item.json                          |
| shipment_document_flow.json                          |
| shipment_header_details.json                         |
| shipment_stage_data.json                             |
| shipping_condition_text.json                         |
| shipping_point_data.json                             |
| staging_audit_table.json                             |
| storage_location_details.json                        |
| store_organizational_unit.json                       |
| supplier_master_address_details.json                 |
| supplier_master_compnay_code_details.json            |
| supplier_master_details.json                         |
| supplier_master_email_details.json                   |
| transfer_order_header.json                           |
| transfer_order_item.json                             |
| transportation_scheduling_point_text.json            |
| transportation_scheduling_point.json                 |
| universal_journal_item.json                          |
| user_status_data.json                                |
| user_statuses.json                                   |
| valuation_area_details.json                          |
| warehouse_numbers_data.json                          |
| warehouse_numbers_text.json                          |
| work_center_header_details.json                      |

### Parameter variable for all scripts.


| Variable Name     | Value (description)                                                                              |
|-------------------|--------------------------------------------------------------------------------------------------|
| $projectid        | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| $slt_l0_raw       | Raw Dataset (slt_raw) - Dataset contains raw tables.                                             |
| $slt_l0_staging   | Staging Dataset (slt_staging) - Dataset contains staging tables.                                 |
| $slt_l0_control   | Control Dataset (slt_control) - Dataset contains all control tables to create view and tables.   |
| $slt_l1_dimension | Dimension Dataset (slt_dimension) - Dataset name which contains dimension tables.                |
| $slt_l1_facts     | Fact Dataset (slt_facts) - Dataset name which contains fact tables.                              |
| $slt_l2_canonical | Canonical Dataset (slt_canonical) - Dataset which contains semantic view get data from l1 layer. |

Script to convert the create table structure to the JSON.

```sql
select table_name,
      TO_JSON_STRING(ARRAY_AGG(
      STRUCT(name, type, mode,description)
      ORDER BY ordinal_position
        )) AS columns
from
(select a.table_name,a.column_name as name,a.data_type as type, case when a.is_nullable = 'NO'
                                                       then 'REQUIRED'
                                                       else 'NULLABLE'
                                                  end as mode,b.description as description,a.ordinal_position
      from `{$projectid}.{$slt_l0_staging}`.INFORMATION_SCHEMA.COLUMNS A
          INNER JOIN `{$projectid}.{$slt_l0_staging}`.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS B
      on a.table_catalog = b.table_catalog
     and a.table_schema = b.table_schema
     and a.table_name = b.table_name
     and a.column_name = b.column_name)
group by table_name
order by table_name
```

 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms