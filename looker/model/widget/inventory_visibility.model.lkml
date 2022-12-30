connection: "@{CONNECTION}"
label: "Widget 4"

# include view from folder path /view/inventory/
include: "/view/inventory/FORECAST.view.lkml"
include: "/view/inventory/ORDER.view.lkml"
include: "/view/inventory/INVENTORY.view.lkml"
include: "/view/inventory/LOCATION.view.lkml"
include: "/view/inventory/PRODUCT.view.lkml"

# include dashboard from folder path /dashboard/widget/
include: "/dashboard/widget/inventory_visibility.dashboard.lookml"

datagroup: inventory_visibility {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: inventory_visibility

explore: FORECAST {
  label: "(1)  Forecast - Order - Inventory Analysis"

  join: ORDER {
    type: left_outer
    sql_on: ${FORECAST.location_uid} = ${ORDER.location_uid}
      and ${FORECAST.product_uid} = ${ORDER.product_uid} ;;
    relationship: many_to_one
  }

  join: INVENTORY {
    type: left_outer
    sql_on:  ${FORECAST.location_uid} = ${INVENTORY.location_uid}
      and ${FORECAST.product_uid} = ${INVENTORY.product_uid};;
    relationship: many_to_one
  }

  join: LOCATION {
    type: left_outer
    sql_on:  ${FORECAST.location_uid} = ${LOCATION.location_uid};;
    relationship: many_to_one
  }

  join: PRODUCT {
    type: left_outer
    sql_on:  ${FORECAST.product_uid} = ${PRODUCT.product_uid};;
    relationship: many_to_one
  }
}
