view: predictions_2021_12_14T02_19_46_722Z {
  sql_table_name: `dev-cs-1.M5_Forecasting_Accuracy.predictions_2021_12_14T02_19_46_722Z`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
    html: {{ rendered_value | date: "%b %d, %y" }};;
    datatype: date
  }

  # dimension: date_formatted {
  #   sql: ${date_date} ;;
  #   html: {{ rendered_value | date: "%b %d, %y" }} ;;
  # }

  # dimension_group: updated_date{
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: DATE(CONCAT(SUBSTRING( to_date(${TABLE}.date), 5,4), '-',SUBSTRING( to_date(${TABLE}.date), 1,2), '-',SUBSTRING( to_date(${TABLE}.date), 3,2)));;
  #   datatype: date
  # }

  dimension: predicted_sales__value {
    type: number
    sql: ${TABLE}.predicted_sales.value ;;
    group_label: "Predicted Sales"
    group_item_label: "Value"
  }

  dimension: sales {
    type: string
    sql: ${TABLE}.sales ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_value{
    type: sum
    sql: ${predicted_sales__value} ;;
    value_format: "#.00"
  }
}
