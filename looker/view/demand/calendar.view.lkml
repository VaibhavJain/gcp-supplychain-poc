view: calendar {
  sql_table_name: `dev-cs-1.M5_Forecasting_Accuracy.Calendar`
    ;;

  dimension: d {
    type: string
    sql: ${TABLE}.d ;;
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

  dimension: event_name_1 {
    type: string
    sql: ${TABLE}.event_name_1 ;;
  }

  dimension: event_name_2 {
    type: string
    sql: ${TABLE}.event_name_2 ;;
  }

  dimension: event_type_1 {
    label: "Event Type"
    type: string
    sql: ${TABLE}.event_type_1 ;;
  }

  dimension: event_type_2 {
    type: string
    sql: ${TABLE}.event_type_2 ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: snap_ca {
    type: number
    sql: ${TABLE}.snap_CA ;;
  }

  dimension: snap_tx {
    type: number
    sql: ${TABLE}.snap_TX ;;
  }

  dimension: snap_wi {
    type: number
    sql: ${TABLE}.snap_WI ;;
  }

  dimension: wday {
    type: number
    sql: ${TABLE}.wday ;;
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.weekday ;;
  }

  dimension: wm_yr_wk {
    type: number
    sql: ${TABLE}.wm_yr_wk ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

# For event type in Historical Sales order (By Event Name)

  # dimension: event_type_hs {
  #   label: "Event Type (Historical Sales)"
  #   type: string
  #   sql:
  #     CASE WHEN
  #       ${event_type_1} IN ("Cultural","National","Religious","Sporting")
  #       THEN ${TABLE}.event_type_1
  #       ELSE NULL
  #       END ;;
  # }

  measure: count {
    type: count
    drill_fields: []
  }



}
