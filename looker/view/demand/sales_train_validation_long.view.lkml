view: sales_train_validation_long {
  sql_table_name: `dev-cs-1.M5_Forecasting_Accuracy.sales_train_validation_long`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: cat_id {
    type: string
    sql: ${TABLE}.cat_id ;;
  }

  dimension: days {
    type: string
    sql: ${TABLE}.Days ;;
  }

  dimension: dept_id {
    type: string
    sql: ${TABLE}.dept_id ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
    map_layer_name: us_states
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_new {
    type: count
    drill_fields: [id]
    filters: [calendar.event_type_1: "Cultural, National, Religious, Sporting"]
  }


}
