view: score_2021_12_14_t22_04_15_125_z {
  sql_table_name: `dev-cs-1.M5_Forecasting_Results.score_2021_12_14T22_04_15_125Z`
    ;;

  dimension: mae {
    type: number
    sql: ${TABLE}.MAE ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.Model ;;
  }

  dimension: rmse {
    type: number
    sql: ${TABLE}.RMSE ;;
  }

  dimension: rmsse {
    type: number
    sql: ${TABLE}.RMSSE ;;
  }

  dimension: wrmsse {
    type: number
    sql: ${TABLE}.WRMSSE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
