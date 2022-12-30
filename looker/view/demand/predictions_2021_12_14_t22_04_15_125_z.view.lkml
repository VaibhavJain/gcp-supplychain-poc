view: predictions_2021_12_14_t22_04_15_125_z {
  sql_table_name: `dev-cs-1.M5_Forecasting_Results.predictions_2021_12_14T22_04_15_125Z`
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
  }

  dimension: predicted_sales__values {
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
    sql: ${predicted_sales__values} ;;

    # action: {
    #   label: "Notify through email"
    #   url: "https://hooks.zapier.com/hooks/catch/11814505/b5cqwxz/"

    #   form_param: {
    #     name: "Message"
    #     type: textarea
    #     default: "Hey could you check out Forecast Sales #{{value}}.
    #     Date :- {{batch_evaluation_long.date_date._value}}
    #     Actual Sales :- {{batch_evaluation_long.total_sales._value}}"
    #   }

    #   form_param: {
    #     name: "Recipient"
    #     type: textarea
    #     default: ""
    #   }

    # }
    # action: {
    #   label: "Setup an urgent meeting"
    #   url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

    #   form_param: {
    #     name: "Heading"
    #     type: string
    #     default: "Let's connect urgently for Forecast Sales #{{value}}."
    #   }

    #   form_param: {
    #     name: "Description"
    #     type: textarea
    #     default: "Details as below -
    #     Date :- {{batch_evaluation_long.date_date._value}}
    #     Actual Sales :- {{batch_evaluation_long.total_sales._value}}"
    #   }

    #   form_param: {
    #     name: "Start Date and Time (M/DD/YYYY, HH:MM Timezone)"
    #     type: string
    #     default: ""
    #   }

    #   form_param: {
    #     name: "End Date and Time (M/DD/YYYY, HH:MM Timezone)"
    #     type: string
    #     default: ""
    #   }

    #   form_param: {
    #     name: "Recipient"
    #     type: textarea
    #     default: ""
    #   }
    # }

  }
}
