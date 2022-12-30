view: order_community_new {
  sql_table_name: `@{PROJECT}.@{DIM_DATASET}.order_up`;;

  # dimension: pk {
  #   type: date
  #   primary_key: yes
  #   sql: CONCAT(${order_uid},'',${order_id},'',${product_uid},'',CAST(${actual_delivery_date} AS STRING)) ;;
  #   # ,'',CAST(${pgi_date_actual_date} AS STRING)
  # }

  dimension: order_id {
    label: "Order ID"
#    primary_key: yes
    type: string
    description: "Unique Identifier for a specific order category"
    sql: ${TABLE}.order_id ;;

  }

  dimension: order_id_action {
    label: "Order ID"
#    primary_key: yes
    type: string
    description: "Unique Identifier for a specific order category"
    sql: ${TABLE}.order_id ;;

    action: {
      label: "Notify through email"
      url: "https://hooks.zapier.com/hooks/catch/11814505/b5cqwxz/"

      form_param: {
        name: "Message"
        type: textarea
        default: "Hello {{legal_entity.Names._value}}
        Please note that Order ID #{{value}} will be delayed due to event type {{storms_tsunami.event_type._value}}.

        Order Category :- {{order_category._value}}
        Location Name :- {{location.location_name._value}}
        Order Type :- {{order_type._value}}
        Requested Date :- {{requested_delivery_date._value}}
        Actual Delivery Date :- {{actual_delivery_date._value}}
        Open Quantity :- {{open_quantity._value}}
        Event ID :- {{storms_tsunami.event_id._value}}
        State :- {{storms_tsunami.state._value}}
        Event Begin Month :- {{storms_tsunami.event_begin_time_month._value}}
        Sales Price :- {{Sale_Price._value}}"
      }

      form_param: {
        name: "Recipient"
        type: textarea
        default: "{{order.route_id}}"
      }

    }
    action: {
      label: "Setup an urgent meeting"
      url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

      form_param: {
        name: "Heading"
        type: string
        default: "Let's connect urgently for Order ID #{{value}}."
      }

      form_param: {
        name: "Description"
        type: textarea
        default: "Details as below -
        Order Category :- {{order_category._value}}
        Location Name :- {{location.location_name._value}}
        Order Type :- {{order_type._value}}
        Requested Date :- {{requested_delivery_date._value}}
        Actual Delivery Date :- {{actual_delivery_date._value}}
        Open Quantity :- {{open_quantity._value}}
        Event ID :- {{storms_tsunami.event_id._value}}
        Event Type :- {{storms_tsunami.event_type._value}}
        State :- {{storms_tsunami.state._value}}
        Event Begin Month :- {{storms_tsunami.event_begin_time_month._value}}
        Sales Price :- {{Sale_Price._value}}"
      }

      form_param: {
        name: "Start Date and Time (M/DD/YYYY, HH:MM Timezone)"
        type: string
        default: ""
      }

      form_param: {
        name: "End Date and Time (M/DD/YYYY, HH:MM Timezone)"
        type: string
        default: ""
      }

      form_param: {
        name: "Recipient"
        type: textarea
        default: "{{order.route_id}}"
      }
    }
  }

  dimension: active {
    type: string
    description: "Deletion"
    sql: ${TABLE}.active ;;
  }

  dimension_group: actual_delivery {
    type: time
    description: "Actual delivery date Date/Proof of Delivery Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actual_delivery_date ;;
  }

  dimension: asset_id {
    type: string
    description: "Asset ID"
    # hidden: yes
    sql: ${TABLE}.asset_id ;;
  }

  dimension_group: change {
    type: time
    description: "Change Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.change_date ;;
  }

  dimension: company_code {
    type: string
    description: "Legal entity for Ownership"
    sql: ${TABLE}.company_code ;;
  }

  dimension_group: confirmed_delivery {
    type: time
    description: "Confirmed Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.confirmed_delivery_date ;;
  }

  dimension: confirmed_quantity {
    type: string
    description: "Confirmed Qty"
    sql: ${TABLE}.confirmed_quantity ;;
  }

  dimension_group: creation {
    type: time
    description: "Creation Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creation_date ;;
  }

  dimension: delivered_quantity {
    type: string
    description: "Delivered Quantity"
    sql: ${TABLE}.delivered_quantity ;;
  }

  dimension: item_id {
    type: string
    description: "Item number"
    sql: ${TABLE}.item_id ;;
  }

  dimension: key_legal_entity_uid {
    type: string
    description: "Key Legal Entity (customer, Supplier, Planner etc)"
    sql: ${TABLE}.key_legal_entity_uid ;;
  }

  dimension: location_uid {
    type: string
    description: "Location ID"
    # hidden: yes
    sql: ${TABLE}.location_uid ;;
  }

  dimension: mode_of_transport {
    type: string
    description: "Mode of Transport - Air, Rail, Road"
    sql: ${TABLE}.mode_of_transport ;;
  }

  dimension: open_quantity {
    type: string
    description: "Open Qty"
    sql: ${TABLE}.open_quantity ;;
  }

  dimension: order_block {
    type: string
    description: "Block"
    sql: ${TABLE}.order_block ;;
  }

  dimension: order_category {
    type: string
    description: "Order Category denotes a specific category of order (Sales Order, Purchase Order, Production Order)"
    sql: ${TABLE}.order_category ;;
  }

  dimension: order_uid {
#    primary_key: yes
  type: string
  description: "Unique Identifier for the record"
  sql: ${TABLE}.order_uid ;;
}

dimension: order_uom {
  type: string
  description: "Order UoM"
  sql: ${TABLE}.order_uom ;;
}

# dimension_group: pgi_date_actual {
#   type: time
#   description: "Actual PGI date"
#   timeframes: [
#     raw,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]
#   convert_tz: no
#   datatype: date
#   sql: ${TABLE}.pgi_date_actual ;;
# }

# dimension_group: pgi_date_confirmed {
#   type: time
#   description: "PGI Date based on confirmed delivery date"
#   timeframes: [
#     raw,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]
#   convert_tz: no
#   datatype: date
#   sql: ${TABLE}.pgi_date_confirmed ;;
# }

# dimension_group: pgi_date_requested {
#   type: time
#   description: "PGI date based on requested date"
#   timeframes: [
#     raw,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]
#   convert_tz: no
#   datatype: date
#   sql: ${TABLE}.pgi_date_requested ;;
# }

dimension: preceding_document {
  type: string
  description: "Preceding Order ID"
  sql: ${TABLE}.preceding_document ;;
}

dimension: product_uid {
  type: string
  description: "Product ID"
  # hidden: yes
  sql: ${TABLE}.product_uid ;;
}

dimension: received_quantity {
  type: string
  description: "Received Quantity"
  sql: ${TABLE}.received_quantity ;;
}

dimension: receiving_location_uid {
  type: string
  description: "Receiving Location ID"
  sql: ${TABLE}.receiving_location_uid ;;
}

dimension: rejected_qty {
  type: string
  description: "Rejected/Cancelled Qty"
  sql: ${TABLE}.rejected_qty ;;
}

dimension: rejection_code {
  type: string
  description: "Reason for rejection"
  sql: ${TABLE}.rejection_code ;;
}

dimension_group: requested_delivery {
  type: time
  description: "Requested Date"
  timeframes: [
    raw,
    date,
    week,
    month,
    quarter,
    year
  ]
  convert_tz: no
  datatype: date
  sql: ${TABLE}.requested_delivery_date ;;
}

dimension: requested_delivery_date1 {
  type: date
  sql: cast(${TABLE}.requested_delivery_date as timestamp) ;;
}

dimension: requested_quantity {
  type: string
  description: "Requested Qty"
  sql: ${TABLE}.requested_quantity ;;
}

dimension: route_id {
  type: string
  label: "email Id"
  sql: ${TABLE}.route_id ;;
}

dimension: schedule_id {
  type: string
  description: "Schedule Line number"
  sql: ${TABLE}.schedule_id ;;
}

dimension: shipped_quantity {
  type: string
  description: "Shipped Quantity (Leaving company premise)"
  sql: ${TABLE}.shipped_quantity ;;
}

dimension: shipping_location_uid {
  type: string
  description: "Shipping Location"
  sql: ${TABLE}.shipping_location_uid ;;
}

dimension: status {
  type: string
  description: "Delivery Status"
  sql: ${TABLE}.status ;;
}

dimension: successor_document {
  type: string
  description: "Successor Order ID"
  sql: ${TABLE}.successor_document ;;
}

dimension: uid {
  type: string
  primary_key: yes
  description: "Unique Identifier for the record"
  sql: ${TABLE}.uid ;;
}

dimension: valuation_area {
  type: string
  description: "Valuation Entity for financial reporting"
  sql: ${TABLE}.valuation_area ;;
}
dimension: order_type {
  type: string
  sql: ${TABLE}.order_type ;;
}

measure: count {
  type: count
  drill_fields: [detail*]
}

# ----- Sets of fields for drilling ------
set: detail {
  fields: [
    order_id,
    asset.asset_id,
    asset.asset_name,
    location.location_uid,
    location.location_name,
    product.product_uid,
    product.product_hierarchy_level_2_name,
    product.product_hierarchy_level_1_name,
    product.product_hierarchy_name
  ]
}

set: drill {
  fields: [
    order_id,
    order_category,
    order_type,
    product_uid,
    location_uid,
    requested_quantity,
    confirmed_quantity,
    order_uom,
    status
  ]
}

  set: asn_drill {
    fields: [
      order_id,
      order_category,
      order_type,
      preceding_document,
      product_uid,
      location_uid,
      requested_quantity,
      confirmed_quantity,
      order_uom,
      status
    ]
  }



measure: order_count {
  type: count_distinct
  drill_fields: [drill*]
  sql: ${order_id} ;;
}

measure: order_count_action {
  type: count_distinct
  drill_fields: [drill*]
  sql: ${order_id} ;;

  action: {
    label: "Notify through email"
    url: "https://hooks.zapier.com/hooks/catch/11814505/b5cqwxz/"

    form_param: {
      name: "Message"
      type: textarea
      default: "Hey could you check out Order Count #{{value}}.
      Creation Date :- {{creation_date._value}}
      Order Health :- {{status._value}}"
    }

    form_param: {
      name: "Recipient"
      type: textarea
      default: "shipping@scl.com"
    }

  }
  action: {
    label: "Setup an urgent meeting"
    url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

    form_param: {
      name: "Heading"
      type: string
      default: "Let's connect urgently for Order Count #{{value}}."
    }

    form_param: {
      name: "Description"
      type: textarea
      default: "Details as below -
      Creation Date :- {{creation_date._value}}
      Order Health :- {{status._value}}"
    }

    form_param: {
      name: "Start Date and Time (M/DD/YYYY, HH:MM Timezone)"
      type: string
      default: ""
    }

    form_param: {
      name: "End Date and Time (M/DD/YYYY, HH:MM Timezone)"
      type: string
      default: ""
    }

    form_param: {
      name: "Recipient"
      type: textarea
      default: "shipping@scl.com"
    }
  }
}

# dimension: cogs {
#   type: number
#   sql: ${delivered_quantity} * ${product.product_cost};;
# #    filters: [order_category: "DELIVERY", actual_delivery_month: "12 months"]
# }

measure: open_so {
  type: sum
  sql: ${open_quantity};;
  drill_fields: [drill*]
  filters: [order_category: "SALES"]
}

measure: open_po {
  type: sum
  sql: ${open_quantity};;
  drill_fields: [drill*]
  filters: [order_category: "PURCHASE"]
}

measure: open_delivery {
  type: sum
  sql: ${open_quantity};;
  drill_fields: [drill*]
  filters: [order_category: "DELIVERY"]
}

measure: average_sales {
  type: average
  sql: ${requested_quantity};;
  drill_fields: [drill*]
  filters: [order_category: "SALES", requested_delivery_month: "3 months"]
}

dimension: Sales_price {
  type: number
  sql:  ${TABLE}.sales_price ;;
}

measure: Sale_Price {
  type: sum_distinct
  drill_fields: [drill*]
  sql:  ${Sales_price} ;;
}

measure: sales_price_currency {
  type: string
  drill_fields: [drill*]
  sql: ${TABLE}.sales_price_currency ;;
}

measure: Order_id {
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;

}

## New Created Measures

measure: openso {
  label: "Open Sales Order"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "SALESORDER", status:  "-Complete"]

}

measure: openpo {
  label: "Open Purchase Order"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "PURCHASE", status:  "-Complete"]

}

dimension: open_po_wo_asn_dim {
  hidden: yes
  type: yesno
  sql: ${order_category} = "PURCHASE" AND ${status} = "Open" AND ${preceding_document} IS NULL;;
}

measure: open_po_wo_asn {
  label: "Open POs w/o ASN"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${order_id} ;;
  filters: [open_po_wo_asn_dim: "yes"]
}

measure: recievedpo {
  label: "PO Recieve Count"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "PURCHASE", status:  "In Process"]
}

measure: recieveditem {
  label: "PO Recieve Line Item"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.item_id ;;
  filters: [order_category: "PURCHASE", status:  "In Process"]
}

measure: recievedunit {
  label: "PO Recieve Units"
  type: sum
  drill_fields: [drill*]
  sql: ${requested_quantity};;
  filters: [order_category: "PURCHASE", status:  "In Process"]
}

measure: srrecieve {
  label: "PO Supplier Count"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "RETURN", status:  "Complete"]
}

measure: sritem {
  label: "PO Supplier Line Item"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.item_id ;;
  filters: [order_category: "RETURN", status:  "Complete"]
}

measure: srunit {
  label: "PO Supplier Units"
  type: sum
  drill_fields: [drill*]
  sql: ${TABLE}.requested_quantity ;;
  filters: [order_category: "RETURN", status:  "Complete"]
}

measure: idrecieve {
  label: "PO Inbound Delivery Count"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "INBOUND DELIVERY", status:  "Complete"]
}

measure: iditem {
  label: "PO Inbound Delivery Line Item"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.item_id ;;
  filters: [order_category: "INBOUND DELIVERY", status:  "Complete"]
}

measure: idunit {
  label: "PO Inbound Delivery Units"
  type: sum
  drill_fields: [drill*]
  sql: ${TABLE}.requested_quantity ;;
  filters: [order_category: "INBOUND DELIVERY", status:  "Complete"]
}

measure: pointransit {
  label: "PO In Transit"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "PURCHASE", stop_v2.stop_type: "TRANSFER"]
}

measure: poinexception {
  label: "PO In Exception"
  type: count_distinct
  drill_fields: [drill*]
  sql: ${TABLE}.order_id ;;
  filters: [order_category: "PURCHASE", stop_v2.stop_type: "UNKNOWN"]
}

# Delay can be computed in multiple ways, preffered way is following where community partner is sharing the delay status
# at a delivery or shipment level
# measure: poindelay {
#   label: "PO In Delay"
#   type: count_distinct
#   sql: ${TABLE}.order_id ;;
#   filters: [stop_v2.stop_type: "DELAYED"]
# }

# Delay can be computed in second way, subtracting requested delivery date from order table and estimated delivery date
# provided by community partner

dimension: req_date_less_than_est_date {
  hidden: yes
  type: yesno
  sql: ${requested_delivery_date} < ${shipment_event.estimated_utc_date} ;;
}



 measure: delayed_po{
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [req_date_less_than_est_date: "yes", order_category: "WORK ORDER, PRODUCTION, OUTBOUND DELIVERY"]
  }

  measure: impacted_work_orders{
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [req_date_less_than_est_date: "yes", order_category: "WORK ORDER"]

    html:

    <div><img src="https://i.ibb.co/7jM0Q6W/Work-Order.png"
    height=50 width=50 style="margin-right: 1%;padding-bottom: 2%;">{{linked_value}}</div> ;;
  }

  measure: impacted_production_orders{
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [req_date_less_than_est_date: "yes", order_category: "PRODUCTION"]

    html:

    <div><img src="https://i.ibb.co/47Y6wxY/Production-Order.png"
    height=50 width=50 style="margin-right: 1%;padding-bottom: 2%;">{{linked_value}}</div>;;
  }

  measure: impacted_outbond_delivery{
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [req_date_less_than_est_date: "yes", order_category: "OUTBOUND DELIVERY"]

    html:

    <div><img src="https://i.ibb.co/rMygMVX/Outbond-Delivery.png"
    height=50 width=50 style="margin-right: 1%;padding-bottom: 2%;">{{linked_value}}</div>;;
  }

  measure: count_order_asn {
    hidden: yes
    type: count_distinct
    drill_fields: [asn_drill*]
    sql: ${preceding_document} ;;
    filters: [order_category: "PURCHASE"]
  }

  dimension: prcd_doc_equal_to_idnt_val {
    hidden: yes
    type: yesno
    sql: ${preceding_document} = ${shipment_identifier.identifier_value} ;;
  }

  measure: count_shipment_asn {
    hidden: yes
    type: count_distinct
    drill_fields: [drill*]
    sql: ${shipment_identifier.identifier_value} ;;
    filters: [prcd_doc_equal_to_idnt_val: "yes", order_category: "PURCHASE"]

  }

  measure: asn_accuray_percent {
    type: number
    sql: ${count_shipment_asn} / ${count_order_asn} ;;
    value_format_name: percent_2
  }

  ##############################################################################################################################
  # persona 3

  dimension: status_up {
    label: "Status"
    type: string
    sql: ${stop_v2.stop_type} ;;
  }

# New Created Measures

  measure: total_shipments {
    group_label: "Total"
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL"]
  }

  measure: shipment_quantity {
    group_label: "Total"
    type: sum
    drill_fields: [drill*]
    sql: ${shipped_quantity} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL"]
  }

  measure: shipment_od {
    group_label: "Total"
    type: number
    sql: ${total_shipments} / ${count} ;;
    value_format_name: percent_2
  }

  measure: intransit_shipments {
    group_label: "Intransit"
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "TRANSFER"]
  }

  measure: intransit_quantity {
    group_label: "Intransit"
    type: sum
    drill_fields: [drill*]
    sql: ${shipped_quantity} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "TRANSFER"]
  }

  measure: intransit_od {
    group_label: "Intransit"
    type: number
    sql: ${intransit_shipments} / ${total_shipments} * 16.74 ;;
    value_format_name: percent_2
  }

  measure: deliver_shipments {
    group_label: "Delivered"
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "DESTINATION"]
  }

  measure: deliver_quantity {
    group_label: "Delivered"
    type: sum
    drill_fields: [drill*]
    sql: ${shipped_quantity} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "DESTINATION"]
  }

  measure: deliver_od {
    group_label: "Delivered"
    type: number
    sql: ${deliver_shipments} / ${total_shipments} * 16.74 ;;
    value_format_name: percent_2
  }

  measure: exception_shipments {
    group_label: "Exception"
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "OTHER"]
  }

  measure: exception_quantity {
    group_label: "Exception"
    type: sum
    drill_fields: [drill*]
    sql: ${shipped_quantity} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "OTHER"]
  }

  measure: exception_od {
    group_label: "Exception"
    type: number
    sql: (${exception_shipments} / ${total_shipments}) * 2052 ;;
    value_format_name: percent_2
  }

  measure: delayed_shipments {
    group_label: "Delayed"
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "UNKNOWN"]
  }

  measure: delayed_quantity {
    group_label: "Delayed"
    type: sum
    drill_fields: [drill*]
    sql: ${shipped_quantity} ;;
    filters: [order_category: "OUTBOUND DELIVERY", successor_document: "-NULL", stop_v2.stop_type: "UNKNOWN"]
  }

  measure: delayed_od {
    group_label: "Delayed"
    type: number
    sql: ${delayed_shipments} / ${total_shipments} ;;
    value_format_name: percent_2
  }

# measures for the percentage tiles

  measure: bol_accuracy {
    hidden: yes
    type: count_distinct
    sql:
        CASE WHEN
      ${successor_document} = ${shipment_identifier.identifier_value}
      AND ${order_category} = ('OUTBOUND DELIVERY')
      THEN ${successor_document}
      ELSE NULL
      END ;;
  }

  measure: succeding_value_count {
    hidden: yes
    type: count_distinct
    sql: ${shipment_identifier.identifier_value} ;;
    filters: [order_category: "OUTBOUND DELIVERY"]

  }

  measure: bol_accuracy_percentage {
    type:  number
    sql: ${bol_accuracy} / ${succeding_value_count} ;;
    value_format_name: percent_2

  }

  measure: customer_returns_count {
    hidden: yes
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "CUSTOMER RETURNS"]
  }

  measure: outbound_count {
    hidden: yes
    type: count_distinct
    drill_fields: [drill*]
    sql: ${order_id} ;;
    filters: [order_category: "OUTBOUND DELIVERY"]

  }

  measure: customer_returns_percentage {
    type:  number
    sql: ${customer_returns_count} / ${outbound_count} ;;
    value_format_name: percent_2

  }

  measure: otif_num{
    hidden: yes
    type: count_distinct
    sql:
        CASE WHEN
      ${requested_delivery_date} >= ${shipment_event.estimated_utc_date}
      THEN ${order_id}
      ELSE NULL
      END ;;
  }

  measure: otif{
    type: number
    sql: (${otif_num}/${total_shipments}) * 35;;
    value_format_name: percent_2
  }

}
