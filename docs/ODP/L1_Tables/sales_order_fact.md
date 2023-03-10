

## Table Name : sales_order_fact


| COLUMN NAME | DATA TYPE | Key Columns |
|---|---|---|
| sales_order_uuid | STRING |  |
| sales_order_key | STRING | sales_document \|\| '-' \|\| item_number \|\| '-' \|\|  schedule_line_number |
| sales_document | STRING |  |
| item_number | STRING |  |
| schedule_line_number | STRING |  |
| sales_document_type | STRING |  |
| material_uuid | STRING |  |
| customer_uuid | STRING |  |
| plant_uuid | STRING |  |
| customer_sales_org_uuid | STRING |  |
| supplier_uuid | STRING |  |
| material_key | STRING |  |
| plant_key | STRING |  |
| supplier_key | STRING |  |
| customer_key | STRING |  |
| customer_sales_org_key | STRING |  |
| billing_block | STRING |  |
| requested_delivery_date | DATE |  |
| document_currency | STRING |  |
| number_of_orders | NUMERIC |  |
| billing_block_1 | STRING |  |
| sd_document_category | STRING |  |
| gross_weight | NUMERIC |  |
| application_component | STRING |  |
| transfer_process | STRING |  |
| billing_block_2 | STRING |  |
| cumulative_confirmed_quantity_sales_unit | NUMERIC |  |
| cumulative_confirmed_quantity_base_unit | NUMERIC |  |
| sales_deal | STRING |  |
| cumulative_order_quantity | NUMERIC |  |
| subtotal_1 | NUMERIC |  |
| subtotal_2 | NUMERIC |  |
| subtotal_3 | NUMERIC |  |
| subtotal_4 | NUMERIC |  |
| subtotal_5 | NUMERIC |  |
| subtotal_6 | NUMERIC |  |
| minimum_delivery_quantity | NUMERIC |  |
| required_delivery_qtuantity | NUMERIC |  |
| tax_amount | NUMERIC |  |
| net_order_value | NUMERIC |  |
| net_weight | NUMERIC |  |
| special_stock_indicator | STRING |  |
| unlimited_tolerance | STRING |  |
| overdelivery_tolerance | NUMERIC |  |
| underdel_tolerance | NUMERIC |  |
| reference_document | STRING |  |
| reference_item | STRING |  |
| volume | NUMERIC |  |
| cost_in_document_currency | NUMERIC |  |
| target_quantity | NUMERIC |  |
| outline_agreement_target_value | NUMERIC |  |
| promotion | STRING |  |
| product_catalog_number | STRING |  |
| order_items | NUMERIC |  |
| net_price_sales_quantity | NUMERIC |  |
| cancel_data_record | STRING |  |
| rejection_status | STRING |  |
| incompletion_status_item | STRING |  |
| billing_incompletion_status_item | STRING |  |
| pricing_incompletion_status_item | STRING |  |
| delivery_incompletion_status_item | STRING |  |
| confirmed_quantity | NUMERIC |  |
| corrected_quantity | NUMERIC |  |
| delivery_date | DATE |  |
| schedule_line_category | STRING |  |
| loading_date | DATE |  |
| scheduled_line_blocked | STRING |  |
| required_quantity | NUMERIC |  |
| material_availability_date | DATE |  |
| base_unit_of_measure | STRING |  |
| transportation_planning_date | DATE |  |
| sales_unit | STRING |  |
| goods_issue_date | DATE |  |
| desired_delivery_date | DATE |  |
| order_quantity | NUMERIC |  |
| quotation_valid_from | DATE |  |
| order_reason | STRING |  |
| quotation_valid_to | DATE |  |
| company_code | STRING |  |
| billing_block_sd_document | STRING |  |
| local_currency | STRING |  |
| exchange_rate_type | STRING |  |
| customer_group_1 | STRING |  |
| customer_group_2 | STRING |  |
| customer_group_3 | STRING |  |
| customer_group_4 | STRING |  |
| customer_group_5 | STRING |  |
| delivery_block | STRING |  |
| statistics_currency | STRING |  |
| sd_document_category_1 | STRING |  |
| sales_office | STRING |  |
| sales_group | STRING |  |
| sales_organization | STRING |  |
| distribution_channel | STRING |  |
| reason_for_rejection | STRING |  |
| changed_on | DATE |  |
| order_probability | STRING |  |
| batch_number | STRING |  |
| credit_data_exchange_rate | NUMERIC |  |
| international_article_number | STRING |  |
| created_on | DATE |  |
| created_by | STRING |  |
| billing_block_item | STRING |  |
| weight_unit | STRING |  |
| condition_unit | STRING |  |
| condition_pricing_unit | NUMERIC |  |
| storage_location | STRING |  |
| material_group | STRING |  |
| material_entered | STRING |  |
| material_group_1 | STRING |  |
| material_group_2 | STRING |  |
| material_group_3 | STRING |  |
| material_group_4 | STRING |  |
| material_group_5 | STRING |  |
| net_order_price | NUMERIC |  |
| unloading_point_ship_to_party | STRING |  |
| bill_to_party | STRING |  |
| payer | STRING |  |
| ship_to_party | STRING |  |
| product_hierarchy | STRING |  |
| forwarding_agent | STRING |  |
| item_category | STRING |  |
| sales_employee | STRING |  |
| shipment_route | STRING |  |
| division | STRING |  |
| statistics_date | DATE |  |
| exchange_rate_statistics | NUMERIC |  |
| substitution_reason | STRING |  |
| denominator | NUMERIC |  |
| numerator | NUMERIC |  |
| conversion_factor_1 | NUMERIC |  |
| conversion_factor_2 | NUMERIC |  |
| update_date_statistics | DATE |  |
| sd_document_category_2 | STRING |  |
| volume_unit | STRING |  |
| shipping_point | STRING |  |
| document_currency_1 | STRING |  |
| target_quantity_uom | STRING |  |
| sales_district | STRING |  |
| services_rendered_date | DATE |  |
| billing_date | DATE |  |
| incoterms_part_1 | STRING |  |
| incoterms_part_2 | STRING |  |
| customer_group | STRING |  |
| account_assignment_group | STRING |  |
| exchange_rate | NUMERIC |  |
| translation_date | DATE |  |
| pricing_date | DATE |  |
| document_currency_2 | STRING |  |
| division_for_order_header | STRING |  |
| sales_document_category_reference | STRING |  |
| wbs_element | STRING |  |
| fiscal_year_variant | STRING |  |
| campaign_order_item | STRING |  |
| planning_in_apo | STRING |  |
| customer_facing_location | STRING |  |
| customer_facing_location_type | STRING |  |
| executing_location | STRING |  |
| executing_location_type | STRING |  |
| logical_system | STRING |  |
| item_usage | STRING |  |
| managing_location | STRING |  |
| managing_location_type | STRING |  |
| sales_document_shipping | STRING |  |
| picking_confirmation | STRING |  |
| picking_status | STRING |  |
| goods_movement_status | STRING |  |
| schedule_line_date | DATE |  |
| schedule_delivery_block | STRING |  |
| delivered_quantity | NUMERIC |  |
| goods_issue_date_1 | DATE |  |
| desired_delete_date | DATE |  |
| unloading_point | STRING |  |
| incterms_1 | STRING |  |
| incoterms_2 | STRING |  |
| sold_to_party | STRING |  |
| delivery_type | STRING |  |
| vendors_account_number | STRING |  |
| loading_point | STRING |  |
| route | STRING |  |
| actual_goods_movement_date | DATE |  |
| entry_time | TIME |  |
| business_area | STRING |  |
| picking_indicator | STRING |  |
| consumption_posting | STRING |  |
| warehouse_number | STRING |  |
| storage_bin | STRING |  |
| storage_type | STRING |  |
| item_type | STRING |  |
| delivery_item_category | STRING |  |
| denominator_sales_quantity | NUMERIC |  |
| numerator_sales_quantity | NUMERIC |  |
| sales_document_1 | STRING |  |
| sales_document_item | STRING |  |
| goods_issue_date_2 | DATE |  |
| division_order_header | STRING |  |
| goods_issue_delay | NUMERIC |  |
| actual_goods_issue_delay | NUMERIC |  |
| confirmation_status | STRING |  |
| billing_status_order_related | STRING |  |
| billing_status_delivery_related | STRING |  |
| overall_processing_status | STRING |  |
| overall_deliver_status | STRING |  |
| delivery_status | STRING |  |
| input_last_update_date | DATETIME |  |
| finalmd5key | STRING |  |
| dw_active_indicator | STRING |  |
| dw_start_date | DATETIME |  |
| dw_end_date | DATETIME |  |
| dw_last_update_date | DATETIME |  |