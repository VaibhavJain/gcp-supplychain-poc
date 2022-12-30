view: batch_evaluation_long {
  derived_table: {
    sql: select SUBSTR(id,1,INSTR(id,'_')-1) as cat_id,
       SUBSTR(id,1,INSTR(id,'_',1,3)-1) as item_id,
       SUBSTR(id,1,INSTR(id,'_',1,2)-1) as dept_id,
       SUBSTR(id,INSTR(id,'_',1,3)+1,INSTR(id,'_',1,5)-INSTR(id,'_',1,3)-1) as store_id,
       SUBSTR(id,INSTR(id,'_',1,3)+1,INSTR(id,'_',1,4)-INSTR(id,'_',1,3)-1) as state_id,
      *
FROM
`@{PROJECT}.@{FACTS_DATASET}.batch_evaluation_long`  ;;
  }

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
      date,
      week,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: cat_id {
    type: string
    sql: ${TABLE}.cat_id ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_id_action {
    label: "Item ID"
    type: string
    sql: ${TABLE}.item_id ;;

    action: {
      label: "Notify through email"
      url: "https://hooks.zapier.com/hooks/catch/11814505/b5cqwxz/"

      form_param: {
        name: "Message"
        type: textarea
        default: "Details#
                  Item Id :- {{item_id_action._value}}
                  Total Sales :- {{total_sales._value}}"
      }

      form_param: {
        name: "Recipient"
        type: textarea
        default: ""
      }

    }
    action: {
      label: "Setup an urgent meeting"
      url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

      form_param: {
        name: "Heading"
        type: string
        default: "Let's connect urgently"
      }

      form_param: {
        name: "Description"
        type: textarea
        default: "Details#
                  Item Id :- {{item_id_action._value}}
                  Total Sales :- {{total_sales._value}}"
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
        default: ""
      }
    }


  }

  dimension: dept_id {
    type: string
    sql: ${TABLE}.dept_id ;;


  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }


  measure: total_sales {
    type: sum
    sql: ${sales} ;;

    # action: {
    #   label: "Notify through email"
    #   url: "https://hooks.zapier.com/hooks/catch/11814505/b5cqwxz/"

    #   form_param: {
    #     name: "Message"
    #     type: textarea
    #     default: "Hey could you check out Actual Sales #{{value}}.
    #     Date :- {{date_date._value}}
    #     Forecast Sales :- {{predictions_2021_12_14_t22_04_15_125_z.total_value._value}}"
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
    #     default: "Let's connect urgently for Actual Sales #{{value}}."
    #   }

    #   form_param: {
    #     name: "Description"
    #     type: textarea
    #     default: "Details as below -
    #     Date :- {{date_date._value}}
    #     Forecast Sales :- {{predictions_2021_12_14_t22_04_15_125_z.total_value._value}}"
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

  parameter: max_rank {
    label: "Max Rank"
    type: number
  }

  dimension: rank_limit {
    type: number
    sql: {% parameter max_rank %} ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_sales_evaluation {
    type: sum
    sql: ${sales} ;;
    filters: [sales: "NOT NULL"]
    }
}
