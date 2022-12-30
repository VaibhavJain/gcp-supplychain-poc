view: predictions_new {
  derived_table: {
    sql:
    select a.date,a.id,cast(a.sales as float64) as sales,cast(b.predicted_sales.value as float64) predicted_value
  from `dev-cs-1.M5_Forecasting_Accuracy.sales_train_evaluationBatchLong` a
        left join `dev-cs-1.M5_Forecasting_Accuracy.predictions_2021_12_14T02_19_46_722Z` b
    on a.id = b.id
   and a.date = cast(b.date as date)
union all
SELECT cast(date as date) as date, id, cast(coalesce(sales,'0.0') as float64) as sales, predicted_sales.value
FROM `dev-cs-1.M5_Forecasting_Results.predictions_2021_12_14T22_04_15_125Z`;;



    }


    dimension: id {
      primary_key: yes
      type: string
      sql: ${TABLE}.id ;;
    }

# Sales Train Evaluation Batchlong

    dimension: cat_id {
      type: string
      sql: SUBSTR(${TABLE}.id,1,INSTR(${TABLE}.id,'_')-1);;
    }

    dimension: item_id {
      type: string
      sql: SUBSTR(${TABLE}.id,1,INSTR(${TABLE}.id,'_',1,3)-1) ;;
    }

    dimension: dept_id {
      type: string
      sql: SUBSTR(${TABLE}.id,1,INSTR(${TABLE}.id,'_',1,2)-1) ;;
    }

    dimension: store_id {
      type: string
      sql: SUBSTR(${TABLE}.id,INSTR(${TABLE}.id,'_',1,3)+1,INSTR(${TABLE}.id,'_',1,5)-INSTR(${TABLE}.id,'_',1,3)-1 ;;
    }

    dimension: state_id {
      type: string
      sql: SUBSTR(${TABLE}.id,INSTR(${TABLE}.id,'_',1,3)+1,INSTR(${TABLE}.id,'_',1,4)-INSTR(${TABLE}.id,'_',1,3)-1;;
    }


    parameter: max_rank {
      label: "Max Rank"
      type: number
    }

    dimension: rank_limit {
      type: number
      sql: {% parameter max_rank %} ;;
    }


################################


    dimension_group: date {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week,
        month_name,
        quarter,
        year
      ]
      sql: ${TABLE}.date ;;
    }

    dimension: predicted_value {
      type: number
      sql: ${TABLE}.predicted_value ;;
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
      sql: ${predicted_value} ;;
#    value_format: "#.00"
    }

    measure: total_sales{
      type: sum
      sql: ${sales} ;;
    }

  }
