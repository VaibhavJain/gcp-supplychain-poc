# Supply Chain Digital Twin SQL scripts for CDF-SLT plugin (L0 staging to L1 Dimensions & facts)
### Version 1.0
### Overview

Use these script to load the data from L0 raw layer tables to the L0 staging layer table. In this we are converting all SAP columns to the English name and create SCD type 2.

Before executing the table to load the data from raw layer to staging layer, we need to create the table in the L0 staging layer.

For creating the table in L0 staging layer we need to have equivalent SAP column name with English Column name.

Below excel sheet has all SAP table column names with respective English column with table names.

sap_to_bq_columns.xlsx

Keep the sheet in the Drive and create an external table by pointing to this Drive.

Below script reads the above external table and start creating the tables in the Staging layer.

generate_create_ddl.sql

Note: Before creating table in staging layer this script check respective table is present in the raw layer, then only it created the table in the Staging layer.

As all these script are used for controling the tables creation, need to be under the dataset call slt_control.

Below is how you need to call the script.

```sql
CALL `{$ProjectID}.slt_control.generate_ddl`('{$ProjectId}')
```

Once tables are created need to execute the below script to load the data from raw layer to staging layer.

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

### Parameter variable for all DAG scripts.

| Variable Name         | Value (description)                                                                              |
|-----------------------|--------------------------------------------------------------------------------------------------|
| {{ projectid }}       | Project ID (dev-cs-1) - Project Id where the SLT process                                         |
| {{ slt_l0_raw }}      | Raw Dataset (slt_raw) - Dataset contains raw tables.                                             |
| {{ slt_l0_staging }}  | Staging Dataset (slt_staging) - Dataset contains staging tables.                                 |
| {{ slt_l0_control }}  | Control Dataset (slt_control) - Dataset contains all control tables to create view and tables.   |
| {{ slt_l1_dimension }}| Dimension Dataset (slt_dimension) - Dataset name which contains dimension tables.                |
| {{ slt_l1_facts }}    | Fact Dataset (slt_facts) - Dataset name which contains fact tables.                              |
| {{ slt_l2_canonical }}| Canonical Dataset (slt_canonical) - Dataset which contains semantic view get data from l1 layer. |

### There are 127 sql scripts 


| Script_Name                                                                 | SAP_Table_Name | BQ_Table_Name                                   |
|-----------------------------------------------------------------------------|----------------|-------------------------------------------------|
| raw(ACDOCA)_to_stagging(universal_journal_item).sql                         | ACDOCA         | universal_journal_item                          |
| raw(ADR6)_to_stagging(supplier_master_email_details).sql                    | ADR6           | supplier_master_email_details                   |
| raw(ADRC)_to_stagging(supplier_master_address_details).sql                  | ADRC           | supplier_master_address_details                 |
| raw(AFKO)_to_stagging(production_order_header).sql                          | AFKO           | production_order_header                         |
| raw(AFPO)_to_stagging(production_order_item_details).sql                    | AFPO           | production_order_item_details                   |
| raw(AFRU)_to_stagging(production_order_confirmation_details).sql            | AFRU           | production_order_confirmation_details           |
| raw(AUFK)_to_stagging(production_order_master_details).sql                  | AUFK           | production_order_master_details                 |
| raw(BKPF)_to_stagging(accounting_document_header_detail).sql                | BKPF           | accounting_document_header_detail               |
| raw(BSAD)_to_stagging(account_document_customer_close_item).sql             | BSAD           | account_document_customer_close_item            |
| raw(BSEG)_to_stagging(account_document_item).sql                            | BSEG           | account_document_item                           |
| raw(BUT000)_to_stagging(business_partner_general_data_details).sql          | BUT000         | business_partner_general_data_details           |
| raw(BUT020)_to_stagging(business_partner_address_details).sql               | BUT020         | business_partner_address_details                |
| raw(CAUFV)_to_stagging(order_header).sql                                    | CAUFV          | order_header                                    |
| raw(CEPCT)_to_stagging(profit_center_description).sql                       | CEPCT          | profit_center_description                       |
| raw(CRHD)_to_stagging(work_center_header_details).sql                       | CRHD           | work_center_header_details                      |
| raw(EBAN)_to_stagging(purchase_requisition_details).sql                     | EBAN           | purchase_requisition_details                    |
| raw(EBKN)_to_stagging(purchase_requisition_account_assignment).sql          | EBKN           | purchase_requisition_account_assignment         |
| raw(EINA)_to_stagging(purchasing_information_data).sql                      | EINA           | purchasing_information_data                     |
| raw(EKBE)_to_stagging(purchase_order_history_detail).sql                    | EKBE           | purchase_order_history_detail                   |
| raw(EKET)_to_stagging(purchae_order_schedule_line_detail).sql               | EKET           | purchae_order_schedule_line_detail              |
| raw(EKKO)_to_stagging(purchase_order_header_detail).sql                     | EKKO           | purchase_order_header_detail                    |
| raw(EKPO)_to_stagging(purchase_order_item_detail).sql                       | EKPO           | purchase_order_item_detail                      |
| raw(FINSC_BTTYPE_T)_to_stagging(business_transaction_type_description).sql  | FINSC_BTTYPE_T | business_transaction_type_description           |
| raw(FINSC_LEDGER_T)_to_stagging(journal_leger_description).sql              | FINSC_LEDGER_T | journal_leger_description                       |
| raw(JCDS)_to_stagging(user_statuses).sql                                    | JCDS           | user_statuses                                   |
| raw(KNA1)_to_stagging(customer_master).sql                                  | KNA1           | customer_master                                 |
| raw(KNVP)_to_stagging(customer_partner_function).sql                        | KNVP           | customer_partner_function                       |
| raw(KNVV)_to_stagging(customer_sales).sql                                   | KNVV           | customer_sales                                  |
| raw(LFA1)_to_stagging(supplier_master_details).sql                          | LFA1           | supplier_master_details                         |
| raw(LFB1)_to_stagging(supplier_master_compnay_code_details).sql             | LFB1           | supplier_master_compnay_code_details            |
| raw(LIKP)_to_stagging(delivery_header).sql                                  | LIKP           | delivery_header                                 |
| raw(LIPS)_to_stagging(delivery_item).sql                                    | LIPS           | delivery_item                                   |
| raw(LTAK)_to_stagging(transfer_order_header).sql                            | LTAK           | transfer_order_header                           |
| raw(LTAP)_to_stagging(transfer_order_item).sql                              | LTAP           | transfer_order_item                             |
| raw(MAKT)_to_stagging(material_description).sql                             | MAKT           | material_description                            |
| raw(MARA)_to_stagging(material_master).sql                                  | MARA           | material_master                                 |
| raw(MARC)_to_stagging(plant_data).sql                                       | MARC           | plant_data                                      |
| raw(MARD)_to_stagging(material_storage_location).sql                        | MARD           | material_storage_location                       |
| raw(MAST)_to_stagging(bom_link_data).sql                                    | MAST           | bom_link_data                                   |
| raw(MATDOC)_to_stagging(masterial_movement_details).sql                     | MATDOC         | masterial_movement_details                      |
| raw(MBEW)_to_stagging(material_master_accounting_data).sql                  | MBEW           | material_master_accounting_data                 |
| raw(MCHA)_to_stagging(batches_data).sql                                     | MCHA           | batches_data                                    |
| raw(MCHB)_to_stagging(batch_level_stock_data).sql                           | MCHB           | batch_level_stock_data                          |
| raw(MKPF)_to_stagging(material_movement_header_detail).sql                  | MKPF           | material_movement_header_detail                 |
| raw(MSEG)_to_stagging(material_movement_item_detail).sql                    | MSEG           | material_movement_item_detail                   |
| raw(PBED)_to_stagging(independent_requirement_data).sql                     | PBED           | independent_requirement_data                    |
| raw(PBHI)_to_stagging(planned_independent_requirement_history).sql          | PBHI           | planned_independent_requirement_history         |
| raw(PBIM)_to_stagging(planned_independent_requirement_material).sql         | PBIM           | planned_independent_requirement_material        |
| raw(RBKP)_to_stagging(invoice_receipt_header_detail).sql                    | RBKP           | invoice_receipt_header_detail                   |
| raw(RSEG)_to_stagging(incoming_invoice_item_detail).sql                     | RSEG           | incoming_invoice_item_detail                    |
| raw(STAS)_to_stagging(item_selection_data).sql                              | STAS           | item_selection_data                             |
| raw(STKO)_to_stagging(bom_header_data).sql                                  | STKO           | bom_header_data                                 |
| raw(STPO)_to_stagging(bom_item_data).sql                                    | STPO           | bom_item_data                                   |
| raw(T001)_to_stagging(company_codes).sql                                    | T001           | company_codes                                   |
| raw(T001K)_to_stagging(valuation_area_details).sql                          | T001K          | valuation_area_details                          |
| raw(T001L)_to_stagging(storage_location_details).sql                        | T001L          | storage_location_details                        |
| raw(T001W)_to_stagging(plant_details).sql                                   | T001W          | plant_details                                   |
| raw(T002T)_to_stagging(language_key_description).sql                        | T002T          | language_key_description                        |
| raw(T003)_to_stagging(document_types).sql                                   | T003           | document_types                                  |
| raw(T003T)_to_stagging(accounting_document_type_description).sql            | T003T          | accounting_document_type_description            |
| raw(T005)_to_stagging(country_master).sql                                   | T005           | country_master                                  |
| raw(T005T)_to_stagging(country_names).sql                                   | T005T          | country_names                                   |
| raw(T005U)_to_stagging(region_text).sql                                     | T005U          | region_text                                     |
| raw(T007S)_to_stagging(purchase_sales_tax_code_description).sql             | T007S          | purchase_sales_tax_code_description             |
| raw(T16FE)_to_stagging(purchase_document_release_indicator_description).sql | T16FE          | purchase_document_release_indicator_description |
| raw(T023)_to_stagging(material_group_details).sql                           | T023           | material_group_details                          |
| raw(T023T)_to_stagging(material_group_description).sql                      | T023T          | material_group_description                      |
| raw(T024)_to_stagging(purchasing_groups_details).sql                        | T024           | purchasing_groups_details                       |
| raw(T024D)_to_stagging(mrp_controllers).sql                                 | T024D          | mrp_controllers                                 |
| raw(T024E)_to_stagging(purchase_organizations_details).sql                  | T024E          | purchase_organizations_details                  |
| raw(T024W)_to_stagging(plant_purchasing_organization_details).sql           | T024W          | plant_purchasing_organization_details           |
| raw(T077X)_to_stagging(account_group_name).sql                              | T077X          | account_group_name                              |
| raw(T134T)_to_stagging(material_type_description).sql                       | T134T          | material_type_description                       |
| raw(T151)_to_stagging(customer_group).sql                                   | T151           | customer_group                                  |
| raw(T156HT)_to_stagging(mterial_mobement_type_description).sql              | T156HT         | mterial_mobement_type_description               |
| raw(T161T)_to_stagging(purchasing_document_type_description).sql            | T161T          | purchasing_document_type_description            |
| raw(T163M)_to_stagging(confirmation_category_description).sql               | T163M          | confirmation_category_description               |
| raw(T179)_to_stagging(product_hierarchy).sql                                | T179           | product_hierarchy                               |
| raw(T179T)_to_stagging(product_hierarchy_description).sql                   | T179T          | product_hierarchy_description                   |
| raw(T189T)_to_stagging(price_list_category).sql                             | T189T          | price_list_category                             |
| raw(T300)_to_stagging(warehouse_numbers_data).sql                           | T300           | warehouse_numbers_data                          |
| raw(T300T)_to_stagging(warehouse_numbers_text).sql                          | T300T          | warehouse_numbers_text                          |
| raw(TBSLT)_to_stagging(posting_key_description).sql                         | TBSLT          | posting_key_description                         |
| raw(TCURC)_to_stagging(currecny_codes).sql                                  | TCURC          | currecny_codes                                  |
| raw(TCURT)_to_stagging(currency_codes_text).sql                             | TCURT          | currency_codes_text                             |
| raw(TCURW)_to_stagging(exchange_rate_type).sql                              | TCURW          | exchange_rate_type                              |
| raw(TFACS)_to_stagging(factory_calendar).sql                                | TFACS          | factory_calendar                                |
| raw(TINCT)_to_stagging(customer_inco_terms_text).sql                        | TINCT          | customer_inco_terms_text                        |
| raw(TJ30T)_to_stagging(user_status_data).sql                                | TJ30T          | user_status_data                                |
| raw(TKA01)_to_stagging(controlling_area_master).sql                         | TKA01          | controlling_area_master                         |
| raw(TSPAT)_to_stagging(sales_division_text).sql                             | TSPAT          | sales_division_text                             |
| raw(TTDS)_to_stagging(transportation_scheduling_point).sql                  | TTDS           | transportation_scheduling_point                 |
| raw(TTDST)_to_stagging(transportation_scheduling_point_text).sql            | TTDST          | transportation_scheduling_point_text            |
| raw(TVAG)_to_stagging(sales_document_rejection_reasons).sql                 | TVAG           | sales_document_rejection_reasons                |
| raw(TVAGT)_to_stagging(sales_document_rejection_reason_description).sql     | TVAGT          | sales_document_rejection_reason_description     |
| raw(TVAKT)_to_stagging(sales_document_type).sql                             | TVAKT          | sales_document_type                             |
| raw(TVAPT)_to_stagging(sales_document_item_category).sql                    | TVAPT          | sales_document_item_category                    |
| raw(TVAST)_to_stagging(sales_document_block_reason_text).sql                | TVAST          | sales_document_block_reason_text                |
| raw(TVAUT)_to_stagging(sales_document_order_text).sql                       | TVAUT          | sales_document_order_text                       |
| raw(TVFST)_to_stagging(billing_block_reason_text).sql                       | TVFST          | billing_block_reason_text                       |
| raw(TVKOT)_to_stagging(sales_org_text).sql                                  | TVKOT          | sales_org_text                                  |
| raw(TVKOV)_to_stagging(distribution_channel).sql                            | TVKOV          | distribution_channel                            |
| raw(TVLST)_to_stagging(delivery_block_text).sql                             | TVLST          | delivery_block_text                             |
| raw(TVSBT)_to_stagging(shipping_condition_text).sql                         | TVSBT          | shipping_condition_text                         |
| raw(TVST)_to_stagging(shipping_point_data).sql                              | TVST           | shipping_point_data                             |
| raw(TVTA)_to_stagging(sales_area).sql                                       | TVTA           | sales_area                                      |
| raw(TVTWT)_to_stagging(store_organizational_unit).sql                       | TVTWT          | store_organizational_unit                       |
| raw(TWLAD)_to_stagging(determination_address).sql                           | TWLAD          | determination_address                           |
| raw(USR02)_to_stagging(logon_data).sql                                      | USR02          | logon_data                                      |
| raw(VBAK)_to_stagging(sales_document_header).sql                            | VBAK           | sales_document_header                           |
| raw(VBAP)_to_stagging(sales_document_item).sql                              | VBAP           | sales_document_item                             |
| raw(VBEP)_to_stagging(sales_document_schedule).sql                          | VBEP           | sales_document_schedule                         |
| raw(VBFA)_to_stagging(sales_document_flow).sql                              | VBFA           | sales_document_flow                             |
| raw(VBKD)_to_stagging(sales_document_business_data).sql                     | VBKD           | sales_document_business_data                    |
| raw(VBPA)_to_stagging(sales_document_partner).sql                           | VBPA           | sales_document_partner                          |
| raw(VBRK)_to_stagging(billing_header).sql                                   | VBRK           | billing_header                                  |
| raw(VBRP)_to_stagging(billing_line_item).sql                                | VBRP           | billing_line_item                               |
| raw(VBUK)_to_stagging(sales_document_header_status).sql                     | VBUK           | sales_document_header_status                    |
| raw(VBUP)_to_stagging(sales_document_item_status).sql                       | VBUP           | sales_document_item_status                      |
| raw(VFKK)_to_stagging(shipment_cost_header).sql                             | VFKK           | shipment_cost_header                            |
| raw(VFKN)_to_stagging(shipment_cost_accounting).sql                         | VFKN           | shipment_cost_accounting                        |
| raw(VFKP)_to_stagging(shipment_cost_item).sql                               | VFKP           | shipment_cost_item                              |
| raw(VFSI)_to_stagging(shipment_cost_sub_item).sql                           | VFSI           | shipment_cost_sub_item                          |
| raw(VTFA)_to_stagging(shipment_document_flow).sql                           | VTFA           | shipment_document_flow                          |
| raw(VTTK)_to_stagging(shipment_header_details).sql                          | VTTK           | shipment_header_details                         |
| raw(VTTP)_to_stagging(shipment_item_details).sql                            | VTTP           | shipment_item_details                           |
| raw(VTTS)_to_stagging(shipment_stage_data).sql                              | VTTS           | shipment_stage_data                             |

 
Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms