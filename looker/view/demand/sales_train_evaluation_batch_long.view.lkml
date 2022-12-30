view: sales_train_evaluation_batch_long {
  derived_table: {
    sql: select SUBSTR(id,1,INSTR(id,'_')-1) as cat_id,
       SUBSTR(id,1,INSTR(id,'_',1,3)-1) as item_id,
       SUBSTR(id,1,INSTR(id,'_',1,2)-1) as dept_id,
       SUBSTR(id,INSTR(id,'_',1,3)+1,INSTR(id,'_',1,5)-INSTR(id,'_',1,3)-1) as store_id,
       SUBSTR(id,INSTR(id,'_',1,3)+1,INSTR(id,'_',1,4)-INSTR(id,'_',1,3)-1) as state_id,
      *
FROM
`@{PROJECT}.@{FACTS_DATASET}.sales_train_evaluationBatchLong`  ;;
  }

  drill_fields: [id]

  dimension: id  {
    primary_key: yes
    type: string
    sql:  ${TABLE}.id;;

  }
  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      quarter,
      year,
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
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


  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: cat_id {
    type: string
    sql: ${TABLE}.cat_id ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_sales {
    type: sum
    sql: ${sales} ;;
  }

  parameter: max_rank {
    label: "Max Rank"
    type: number
  }

  dimension: rank_limit {
    type: number
    sql: {% parameter max_rank %} ;;
  }
}
