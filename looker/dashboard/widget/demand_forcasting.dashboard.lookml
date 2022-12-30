- dashboard: demand_forecasting
  title: Demand Forecasting
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - name: Demand Forecast
    type: text
    title_text: Demand Forecast
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: demand_forecasting
    explore: sales_train_evaluation_batch_long
    type: single_value
    fields: [predictions_2021_12_14T02_19_46_722Z.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4490e8"
    single_value_title: MAPE
    value_format: "-"
    defaults_version: 1
    listen: {}
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: demand_forecasting
    explore: sales_train_evaluation_batch_long
    type: single_value
    fields: [predictions_2021_12_14T02_19_46_722Z.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4490e8"
    single_value_title: Forecast Horizon
    value_format: '28'
    defaults_version: 1
    listen: {}
    row: 5
    col: 18
    width: 6
    height: 3
  - title: Untitled
    name: Untitled
    model: demand_forecasting
    explore: score_2021_12_14_t22_04_15_125_z
    type: single_value
    fields: [score_2021_12_14_t22_04_15_125_z.model]
    sorts: [score_2021_12_14_t22_04_15_125_z.model]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    custom_color: "#4490e8"
    single_value_title: Model
    value_format: ''
    font_size_main: ''
    orientation: auto
    style_score_2021_12_14_t22_04_15_125_z.model: "#3A4245"
    show_title_score_2021_12_14_t22_04_15_125_z.model: true
    title_placement_score_2021_12_14_t22_04_15_125_z.model: below
    value_format_score_2021_12_14_t22_04_15_125_z.model: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    title_hidden: true
    listen: {}
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Untitled
    name: Untitled (2)
    model: demand_forecasting
    explore: score_2021_12_14_t22_04_15_125_z
    type: single_value
    fields: [score_2021_12_14_t22_04_15_125_z.rmsse]
    sorts: [score_2021_12_14_t22_04_15_125_z.rmsse]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4490e8"
    single_value_title: RMSSE
    value_format: ''
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 2
    col: 18
    width: 6
    height: 3
  - title: Untitled
    name: Untitled (3)
    model: demand_forecasting
    explore: score_2021_12_14_t22_04_15_125_z
    type: single_value
    fields: [score_2021_12_14_t22_04_15_125_z.mae]
    sorts: [score_2021_12_14_t22_04_15_125_z.mae]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4490e8"
    single_value_title: MAE
    value_format: "###,###"
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 5
    col: 6
    width: 6
    height: 3
  - title: Untitled
    name: Untitled (4)
    model: demand_forecasting
    explore: score_2021_12_14_t22_04_15_125_z
    type: single_value
    fields: [score_2021_12_14_t22_04_15_125_z.rmse]
    sorts: [score_2021_12_14_t22_04_15_125_z.rmse]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4490e8"
    single_value_title: RMSE
    value_format: "###,###"
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 2
    col: 12
    width: 6
    height: 3
  - title: Untitled
    name: Untitled (5)
    model: demand_forecasting
    explore: score_2021_12_14_t22_04_15_125_z
    type: single_value
    fields: [score_2021_12_14_t22_04_15_125_z.wrmsse]
    sorts: [score_2021_12_14_t22_04_15_125_z.wrmsse]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4490e8"
    single_value_title: WRMSSE
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 5
    col: 0
    width: 6
    height: 3
  - title: Actual vs Forecast
    name: Actual vs Forecast
    model: demand_forecasting
    explore: batch_evaluation_long
    type: looker_line
    fields: [batch_evaluation_long.date_date, batch_evaluation_long.total_sales, predictions_2021_12_14_t22_04_15_125_z.total_value]
    fill_fields: [batch_evaluation_long.date_date]
    sorts: [batch_evaluation_long.date_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: batch_evaluation_long.total_sales,
            id: batch_evaluation_long.total_sales, name: Actual}, {axisId: predictions_2021_12_14_t22_04_15_125_z.total_value,
            id: predictions_2021_12_14_t22_04_15_125_z.total_value, name: Forecast}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_colors:
      predictions_2021_12_14_t22_04_15_125_z.total_value: "#F9AB00"
      batch_evaluation_long.total_sales: "#12B5CB"
    series_labels:
      batch_evaluation_long.total_sales: Actual
      predictions_2021_12_14_t22_04_15_125_z.total_value: Forecast
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Item ID - Forecast: batch_evaluation_long.item_id
      State ID - Forecast: batch_evaluation_long.state_id
      Cat ID - Forecast: batch_evaluation_long.cat_id
      Store ID -  Forecast: batch_evaluation_long.store_id
      Dept ID - Forecast: batch_evaluation_long.dept_id
    row: 8
    col: 0
    width: 24
    height: 10
  - title: Forecasted Sales
    name: Forecasted Sales
    model: demand_forecasting
    explore: batch_evaluation_long
    type: single_value
    fields: [predictions_2021_12_14_t22_04_15_125_z.total_value]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#F9AB00"
    single_value_title: Forecast Sale Count
    value_format: "###,###"
    defaults_version: 1
    listen:
      Item ID - Forecast: batch_evaluation_long.item_id
      State ID - Forecast: batch_evaluation_long.state_id
      Cat ID - Forecast: batch_evaluation_long.cat_id
      Store ID -  Forecast: batch_evaluation_long.store_id
      Dept ID - Forecast: batch_evaluation_long.dept_id
    row: 5
    col: 12
    width: 6
    height: 3
  filters:
  - name: State ID - Forecast
    title: State ID - Forecast
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: demand_forecasting
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.state_id
  - name: Store ID -  Forecast
    title: Store ID -  Forecast
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: demand_forecasting
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.store_id
  - name: Cat ID - Forecast
    title: Cat ID - Forecast
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: demand_forecasting
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.cat_id
  - name: Dept ID - Forecast
    title: Dept ID - Forecast
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: demand_forecasting
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.dept_id
  - name: Item ID - Forecast
    title: Item ID - Forecast
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: demand_forecasting
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.item_id
