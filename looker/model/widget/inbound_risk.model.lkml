connection: "@{CONNECTION}"
label: "Widget 2"

# include view from folder path /view/public/
include: "/view/public/storms_tsunami.view.lkml"

# include view from folder path /view/private/
include: "/view/private/location.view.lkml"
include: "/view/private/order.view.lkml"
include: "/view/private/legal_entity.view.lkml"
include: "/view/private/inventory.view.lkml"
include: "/view/private/product.view.lkml"

# include dashboard from folder path /dashboard/widget/
include: "/dashboard/widget/inbound_risk.dashboard.lookml"


datagroup: inbound_risk {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: inbound_risk

explore: storms_tsunami {
  label: "(1) Storms and Order Data Analysis"
  join: location {
    type: inner
    sql_on: 1 = 1 ;;
    sql_where: ST_DISTANCE(ST_GEOGPOINT(location.geo_longitude,location.geo_lattitude),ST_GEOGPOINT(storms_tsunami.event_longitude,storms_tsunami.event_latitude)) < 2000  ;;
    relationship: many_to_one

  }
#  sql_always_where: ${order.actual_delivery_date} = ${storms_tsunami.event_begin_time_date} ;;
  join: order {
    type: inner
    sql_on: ${order.location_uid} = ${location.location_uid}
      and ${order.actual_delivery_date} = date(${storms_tsunami.event_begin_time_date});;
    relationship: many_to_one
  }

  join: legal_entity {
    type: left_outer
    sql_on: ${order.key_legal_entity_uid} = ${legal_entity.legal_entity_uid} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${inventory.location_uid} = ${location.location_uid}
          and ${inventory.product_uid} = ${order.product_uid}
          and ${inventory.inventory_date1} = date(${storms_tsunami.event_begin_time_date});;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${order.product_uid} = ${product.product_uid} ;;
    relationship: many_to_one
  }
}
