view: sell_prices {
  sql_table_name: `dev-cs-1.M5_Forecasting_Accuracy.sell_prices`
    ;;

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: sell_price {
    type: number
    sql: ${TABLE}.sell_price ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: wm_yr_wk {
    type: number
    sql: ${TABLE}.wm_yr_wk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: toal_sell_price {
    label: "Total Revenue"
    type: sum
    sql: ${sell_price} / 100000 ;;
    value_format: "$ ###,###.00"
  }
}
