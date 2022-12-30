connection: "@{CONNECTION}"
label: "Widget 1"

# include view from folder path /view/demand/
include: "/view/demand/sales_train_evaluation_batch_long.view.lkml*"
include: "/view/demand/predictions_2021_12_14T02_19_46_722Z.view.lkml"
include: "/view/demand/sales_train_validation_long.view.lkml"
include: "/view/demand/score_2021_12_14_t22_04_15_125_z.view.lkml"
include: "/view/demand/batch_evaluation_long.view.lkml"
include: "/view/demand/predictions_2021_12_14_t22_04_15_125_z.view.lkml"

# include dashboard from folder path /dashboard/widget/
include: "/dashboard/widget/demand_forcasting.dashboard.lookml"

datagroup: demand_forecasting {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demand_forecasting

explore: sales_train_evaluation_batch_long {
  label: "(1) Demand Forecasting"
  join: predictions_2021_12_14T02_19_46_722Z {
    type: left_outer
    sql_on: ${sales_train_evaluation_batch_long.id} = ${predictions_2021_12_14T02_19_46_722Z.id}
          and
          ${sales_train_evaluation_batch_long.date_date} = date(${predictions_2021_12_14T02_19_46_722Z.date_date});;
    relationship: one_to_one

  }

}


explore: score_2021_12_14_t22_04_15_125_z {
  label: "(2) Scores"
}


explore: batch_evaluation_long {
  label: "(3) Updated Demand Forecasting"
  join: predictions_2021_12_14_t22_04_15_125_z {
    type: left_outer
    sql_on: ${batch_evaluation_long.id} = ${predictions_2021_12_14_t22_04_15_125_z.id}
          and
          ${batch_evaluation_long.date_date} = date(${predictions_2021_12_14_t22_04_15_125_z.date_date});;
    relationship: one_to_one

  }

}
