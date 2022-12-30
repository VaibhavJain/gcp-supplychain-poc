- dashboard: persona_1__demand_planner
  title: Persona 1 - Demand Planner
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Seasonal Historical Sales
    name: Seasonal Historical Sales
    model: persona_1_demand_planner
    explore: calendar
    type: looker_line
    fields: [sales_train_validation_long.count, calendar.date_month_name]
    fill_fields: [calendar.date_month_name]
    sorts: [calendar.date_month_name]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_train_validation_long.count,
            id: sales_train_validation_long.count, name: Count}], showLabels: false,
        showValues: true, maxValue: !!null '', minValue: 4500000, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 34, type: linear}]
    x_axis_label: Month
    font_size: '12'
    series_types: {}
    series_colors:
      sales_train_validation_long.count: "#12B5CB"
    series_labels:
      sales_train_validation_long.count: Count
    bar_arm_length: 25
    bar_arm_weight: 50
    bar_spinner_length: 100
    bar_spinner_weight: 50
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.1
    column_group_spacing_ratio:
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Store ID - Sales: sales_train_validation_long.store_id
    row: 38
    col: 0
    width: 12
    height: 9
  - name: Demand Forecast
    type: text
    title_text: Demand Forecast
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Historical Sales
    type: text
    title_text: Historical Sales
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 2
  - title: 'Total Revenue '
    name: 'Total Revenue '
    model: persona_1_demand_planner
    explore: calendar
    type: looker_map
    fields: [sales_train_validation_long.state_id, sell_prices.toal_sell_price]
    sorts: [sales_train_validation_long.state_id]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 0
    map_longitude: 258
    map_zoom: 4
    map_value_colors: ["#0A3AA2", "#56A20A"]
    map_value_scale_clamp_min: 100000
    map_value_scale_clamp_max: 100000
    defaults_version: 1
    listen:
      Store ID - Sales: sales_train_validation_long.store_id
    row: 28
    col: 0
    width: 24
    height: 10
  - title: Historical Sales Order (By Event Name)
    name: Historical Sales Order (By Event Name)
    model: persona_1_demand_planner
    explore: calendar
    type: looker_scatter
    fields: [calendar.event_name_1, calendar.event_type_1, sales_train_validation_long.count_new]
    pivots: [calendar.event_type_1]
    sorts: [calendar.event_name_1, calendar.event_type_1]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Event Type 1 Groups,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: event_type_1_groups, args: [calendar.event_type_1, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: xyz, filter: '', __FILE: scl_development/dashboard/persona/persona_1_demand_planner.dashboard.lookml,
              __LINE_NUM: 200}], !!null ''], _kind_hint: dimension, _type_hint: string}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_train_validation_long.count,
            id: Cultural - sales_train_validation_long.count, name: Cultural}, {axisId: sales_train_validation_long.count,
            id: National - sales_train_validation_long.count, name: National}, {axisId: sales_train_validation_long.count,
            id: Religious - sales_train_validation_long.count, name: Religious}, {
            axisId: sales_train_validation_long.count, id: Sporting - sales_train_validation_long.count,
            name: Sporting}], showLabels: false, showValues: true, maxValue: !!null '',
        minValue: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 34,
        type: linear}]
    font_size: '12'
    series_types: {}
    series_labels: {}
    series_point_styles:
      National - sales_train_validation_long.count: square
      Religious - sales_train_validation_long.count: triangle
      Sporting - sales_train_validation_long.count: triangle-down
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    circle_radius: 21
    linkDistance: 155
    interpolation: linear
    bar_arm_length: 25
    bar_arm_weight: 50
    bar_spinner_length: 100
    bar_spinner_weight: 50
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Store ID - Sales: sales_train_validation_long.store_id
    row: 38
    col: 12
    width: 12
    height: 9
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: persona_1_demand_planner
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
    listen:
      Item ID - Sales: sales_train_evaluation_batch_long.item_id
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: persona_1_demand_planner
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
    listen:
      Item ID - Sales: sales_train_evaluation_batch_long.item_id
    row: 5
    col: 18
    width: 6
    height: 3
  - title: Untitled
    name: Untitled
    model: persona_1_demand_planner
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
    model: persona_1_demand_planner
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
    model: persona_1_demand_planner
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
    model: persona_1_demand_planner
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
    model: persona_1_demand_planner
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
  - title: 'Sales Evaluation '
    name: 'Sales Evaluation '
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    type: looker_pie
    fields: [batch_evaluation_long.total_sales, batch_evaluation_long.dept_id]
    filters:
      batch_evaluation_long.total_sales: NOT NULL
    sorts: [batch_evaluation_long.total_sales desc]
    limit: 500
    value_labels: labels
    label_type: per
    inner_radius: 30
    start_angle: 50
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      FOODS_3: Foods _3
    color_range: ["#1A73E8", "#12B5CB", "#E52592", "#E8710A", "#F9AB00", "#7CB342",
      "#9334E6", "#80868B", "#079c98", "#A8A116", "#EA4335", "#FF8168", "#1A73E8"]
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
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map: usa
    map_projection: ''
    up_color: false
    down_color: false
    total_color: false
    listen:
      State ID: batch_evaluation_long.state_id
      Store ID: batch_evaluation_long.store_id
      Cat ID: batch_evaluation_long.cat_id
      Dept ID: batch_evaluation_long.dept_id
      Item ID: batch_evaluation_long.item_id
    row: 18
    col: 0
    width: 12
    height: 8
  - title: Short Term Demand Forecast
    name: Short Term Demand Forecast
    model: persona_1_demand_planner
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
      State ID: batch_evaluation_long.state_id
      Store ID: batch_evaluation_long.store_id
      Cat ID: batch_evaluation_long.cat_id
      Dept ID: batch_evaluation_long.dept_id
      Item ID: batch_evaluation_long.item_id
    row: 8
    col: 0
    width: 24
    height: 10
  - title: Top "n" Sales Evaluation
    name: Top "n" Sales Evaluation
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    type: looker_grid
    fields: [batch_evaluation_long.total_sales, batch_evaluation_long.rank_limit,
      batch_evaluation_long.item_id_action]
    filters:
      batch_evaluation_long.max_rank: '12'
    sorts: [batch_evaluation_long.total_sales desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'rank(${batch_evaluation_long.total_sales},${batch_evaluation_long.total_sales}
          )', label: rank, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: rank, _type_hint: number}, {category: table_calculation,
        expression: "${batch_evaluation_long.rank_limit} >= ${rank}", label: 'show
          in visualisation ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: show_in_visualisation, _type_hint: yesno}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels: {}
    series_cell_visualizations:
      batch_evaluation_long.total_sales:
        is_active: true
        value_display: true
        palette:
          palette_id: 22f16759-9d51-44b0-99bc-2415c9f7ffdf
          collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
    series_value_format: {}
    defaults_version: 1
    hidden_fields: [batch_evaluation_long.rank_limit, rank]
    hidden_points_if_no: [show_in_visualisation]
    listen:
      State ID: batch_evaluation_long.state_id
      Store ID: batch_evaluation_long.store_id
      Cat ID: batch_evaluation_long.cat_id
      Dept ID: batch_evaluation_long.dept_id
      Item ID: batch_evaluation_long.item_id
    row: 18
    col: 12
    width: 12
    height: 8
  - title: Forecasted Sales
    name: Forecasted Sales
    model: persona_1_demand_planner
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
      State ID: batch_evaluation_long.state_id
      Store ID: batch_evaluation_long.store_id
      Cat ID: batch_evaluation_long.cat_id
      Dept ID: batch_evaluation_long.dept_id
      Item ID: batch_evaluation_long.item_id
    row: 5
    col: 12
    width: 6
    height: 3
  - title: 'Total Sales Per Store '
    name: 'Total Sales Per Store '
    model: persona_1_demand_planner
    explore: calendar
    type: looker_column
    fields: [sell_prices.store_id, sell_prices.toal_sell_price, calendar.date_year]
    pivots: [calendar.date_year]
    fill_fields: [calendar.date_year]
    sorts: [sell_prices.store_id, calendar.date_year]
    limit: 500
    x_axis_gridlines: true
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
    stacking: normal
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
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: sell_prices.toal_sell_price,
            id: 2016 - sell_prices.toal_sell_price, name: '2016'}, {axisId: sell_prices.toal_sell_price,
            id: 2015 - sell_prices.toal_sell_price, name: '2015'}, {axisId: sell_prices.toal_sell_price,
            id: 2014 - sell_prices.toal_sell_price, name: '2014'}, {axisId: sell_prices.toal_sell_price,
            id: 2013 - sell_prices.toal_sell_price, name: '2013'}, {axisId: sell_prices.toal_sell_price,
            id: 2012 - sell_prices.toal_sell_price, name: '2012'}, {axisId: sell_prices.toal_sell_price,
            id: 2011 - sell_prices.toal_sell_price, name: '2011'}], showLabels: false,
        showValues: true, valueFormat: "$###,###", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 0, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_colors:
      sell_prices.toal_sell_price: "#079c98"
    series_labels: {}
    x_axis_datetime_label: "%Y"
    show_null_points: true
    interpolation: linear
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0
    value_labels: none
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Store ID - Sales: sales_train_validation_long.store_id
    row: 47
    col: 0
    width: 24
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <button type="button" style="background-color: rgb(45, 126, 234);width: 100%;height: 40px;" class="button button1">
      <a href="https://googledemo.looker.com/dashboards/329?Calendar+Date=2020%2F01%2F01+to+2020%2F07%2F02&City=&Brand=&Category=&Apply+Scenario+%28Yes%2FNo%29=yes&Scenario=0.05&Frequency=Normal+Days&Promotion+Date=2020%2F06%2F01+to+2020%2F07%2F02" target="_blank" style="color:white; font-weight:bold">Retail Demand Forecasting</a>
      </button>

      <button type="button" style="background-color: rgb(45, 126, 234);width: 100%;height: 40px;" class="button button1">
      <a href="https://googledemo.looker.com/dashboards/1102?Product%20Name=Watermelon%20Cooler&Customer=Bulls%20Eye&Ship%20to%20Location=Boston&Date%20Range=2019%2F01%2F01%20to%202021%2F08%2F02" target="_blank" style="color:white; font-weight:bold">Alerts Detail </a>
      </button>
    row: 55
    col: 0
    width: 5
    height: 4
  filters:
  - name: Store ID
    title: Store ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.store_id
  - name: Store ID - Sales
    title: Store ID - Sales
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: calendar
    listens_to_filters: []
    field: sales_train_validation_long.store_id
  - name: State ID
    title: State ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.state_id
  - name: Item ID
    title: Item ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.item_id
  - name: Cat ID
    title: Cat ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.cat_id
  - name: Dept ID
    title: Dept ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: batch_evaluation_long
    listens_to_filters: []
    field: batch_evaluation_long.dept_id
  - name: Item ID - Sales
    title: Item ID - Sales
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: persona_1_demand_planner
    explore: sales_train_evaluation_batch_long
    listens_to_filters: []
    field: sales_train_evaluation_batch_long.item_id
