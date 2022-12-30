- dashboard: inventory_visibility_
  title: 'Inventory Visibility '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Inventory Status
    name: Inventory Status
    model: inventory_visibility
    explore: FORECAST
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ORDER.total_requested_quantity, FORECAST.total_forecast_quantity, FORECAST.projected_inventory]
    filters:
      ORDER.order_category: purchase order
      ORDER.status: open
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: true
    style_FORECAST.total_inventory_quantity: "#1A73E8"
    show_title_FORECAST.total_inventory_quantity: true
    title_placement_FORECAST.total_inventory_quantity: below
    value_format_FORECAST.total_inventory_quantity: ''
    style_ORDER.total_requested_quantity: "#12B5CB"
    show_title_ORDER.total_requested_quantity: true
    title_placement_ORDER.total_requested_quantity: below
    value_format_ORDER.total_requested_quantity: ''
    show_comparison_ORDER.total_requested_quantity: false
    style_FORECAST.total_forecast_quantity: "#E52592"
    show_title_FORECAST.total_forecast_quantity: true
    title_placement_FORECAST.total_forecast_quantity: below
    value_format_FORECAST.total_forecast_quantity: ''
    show_comparison_FORECAST.total_forecast_quantity: false
    style_FORECAST.projected_inventory: "#E8710A"
    show_title_FORECAST.projected_inventory: true
    title_placement_FORECAST.projected_inventory: below
    value_format_FORECAST.projected_inventory: ''
    show_comparison_FORECAST.projected_inventory: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      FORECAST.total_inventory_quantity:
        is_active: true
      ORDER.total_requested_quantity:
        is_active: true
        palette:
          palette_id: 6086e5c9-c25f-9ef6-aba9-2a12fab8db26
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#12B5CB"
          - "#1a73e8"
      FORECAST.total_forecast_quantity:
        is_active: true
        palette:
          palette_id: 741fcf53-ba41-e8bb-5b72-d52a810e90c0
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#E52592"
          - "#e81782"
      FORECAST.projected_inventory:
        is_active: true
        palette:
          palette_id: 6dee4a77-bd4e-0015-cd01-4c3ba39449a7
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#E8710A"
          - "#e88614"
    series_text_format:
      FORECAST.total_forecast_quantity: {}
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ORDER.total_requested_quantity]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: FORECAST.total_inventory_quantity,
            id: FORECAST.total_inventory_quantity, name: Current On Hand}, {axisId: ORDER.total_requested_quantity,
            id: ORDER.total_requested_quantity, name: Incoming Arrivals}, {axisId: FORECAST.total_forecast_quantity,
            id: FORECAST.total_forecast_quantity, name: Projected Sales}, {axisId: FORECAST.projected_inventory,
            id: FORECAST.projected_inventory, name: Projected Inventory}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    legend_position: center
    font_size: 1em
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 0
    col: 0
    width: 19
    height: 5
  - title: Valuation
    name: Valuation
    model: inventory_visibility
    explore: FORECAST
    type: single_value
    fields: [FORECAST.valuation]
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
    single_value_title: Lost Sales Amount
    series_types: {}
    defaults_version: 1
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 0
    col: 19
    width: 5
    height: 5
  - title: Inventory Status graph
    name: Inventory Status graph
    model: inventory_visibility
    explore: FORECAST
    type: looker_column
    fields: [ORDER.total_requested_quantity, FORECAST.total_forecast_quantity, FORECAST.projected_inventory,
      FORECAST.forecast_week]
    fill_fields: [FORECAST.forecast_week]
    filters:
      ORDER.order_category: purchase order
      ORDER.status: open
    sorts: [FORECAST.forecast_week]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: FORECAST.total_inventory_quantity,
            id: FORECAST.total_inventory_quantity, name: Current On Hand}, {axisId: ORDER.total_requested_quantity,
            id: ORDER.total_requested_quantity, name: Incoming Arrivals}, {axisId: FORECAST.total_forecast_quantity,
            id: FORECAST.total_forecast_quantity, name: Projected Sales}, {axisId: FORECAST.projected_inventory,
            id: FORECAST.projected_inventory, name: Projected Inventory}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: 1em
    series_types:
      FORECAST.total_forecast_quantity: line
    series_colors:
      ORDER.total_requested_quantity: "#12B5CB"
      FORECAST.total_forecast_quantity: "#E52592"
      FORECAST.projected_inventory: "#E8710A"
    series_labels: {}
    trend_lines: []
    column_spacing_ratio: 0.4
    font_size_main: '12'
    orientation: horizontal
    dividers: true
    show_title_FORECAST.total_inventory_quantity: true
    title_placement_FORECAST.total_inventory_quantity: below
    show_title_ORDER.total_requested_quantity: true
    title_placement_ORDER.total_requested_quantity: below
    style_FORECAST.total_forecast_quantity: "#F9AB00"
    title_placement_FORECAST.total_forecast_quantity: below
    style_FORECAST.projected_inventory: "#f5362e"
    title_placement_FORECAST.projected_inventory: below
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 5
    col: 0
    width: 24
    height: 9
  - title: Inventory Status Table
    name: Inventory Status Table
    model: inventory_visibility
    explore: FORECAST
    type: looker_grid
    fields: [ORDER.total_requested_quantity, FORECAST.total_forecast_quantity, FORECAST.projected_inventory,
      FORECAST.forecast_date, FORECAST.valuation_table]
    fill_fields: [FORECAST.forecast_date]
    filters:
      ORDER.order_category: purchase order
      ORDER.status: open
    sorts: [FORECAST.forecast_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      FORECAST.total_inventory_quantity:
        is_active: true
      ORDER.total_requested_quantity:
        is_active: true
        palette:
          palette_id: 6086e5c9-c25f-9ef6-aba9-2a12fab8db26
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#12B5CB"
          - "#1a73e8"
      FORECAST.total_forecast_quantity:
        is_active: true
        palette:
          palette_id: 741fcf53-ba41-e8bb-5b72-d52a810e90c0
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#E52592"
          - "#e81782"
      FORECAST.projected_inventory:
        is_active: true
        palette:
          palette_id: 6dee4a77-bd4e-0015-cd01-4c3ba39449a7
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#E8710A"
          - "#e88614"
      FORECAST.valuation_table:
        is_active: true
        palette:
          palette_id: 13b899e2-f8de-e58e-3b52-dfa02696b1ca
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e6140e"
          - "#e8140b"
    series_text_format:
      FORECAST.total_forecast_quantity: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [ORDER.total_requested_quantity]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: FORECAST.total_inventory_quantity,
            id: FORECAST.total_inventory_quantity, name: Current On Hand}, {axisId: ORDER.total_requested_quantity,
            id: ORDER.total_requested_quantity, name: Incoming Arrivals}, {axisId: FORECAST.total_forecast_quantity,
            id: FORECAST.total_forecast_quantity, name: Projected Sales}, {axisId: FORECAST.projected_inventory,
            id: FORECAST.projected_inventory, name: Projected Inventory}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    legend_position: center
    font_size: 1em
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size_main: '12'
    orientation: horizontal
    dividers: true
    show_title_FORECAST.total_inventory_quantity: true
    title_placement_FORECAST.total_inventory_quantity: below
    show_title_ORDER.total_requested_quantity: true
    title_placement_ORDER.total_requested_quantity: below
    style_FORECAST.total_forecast_quantity: "#F9AB00"
    title_placement_FORECAST.total_forecast_quantity: below
    style_FORECAST.projected_inventory: "#f5362e"
    title_placement_FORECAST.projected_inventory: below
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 14
    col: 0
    width: 24
    height: 7
  - title: 'Inventory Health: Aging Drill down'
    name: 'Inventory Health: Aging Drill down'
    model: inventory_visibility
    explore: FORECAST
    type: looker_scatter
    fields: [INVENTORY.number_on_hand, INVENTORY.day_in_inventory_tier]
    fill_fields: [INVENTORY.day_in_inventory_tier]
    sorts: [INVENTORY.day_in_inventory_tier]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: INVENTORY.number_on_hand,
            id: INVENTORY.number_on_hand, name: Number on Hand}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Months
    size_by_field: INVENTORY.number_on_hand
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 21
    col: 0
    width: 24
    height: 9
  - title: 'Inventory Distribution: On-Hand'
    name: 'Inventory Distribution: On-Hand'
    model: inventory_visibility
    explore: FORECAST
    type: looker_map
    fields: [LOCATION.location, LOCATION.city, LOCATION.country, LOCATION.region,
      FORECAST.projected_inventory]
    sorts: [FORECAST.projected_inventory desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 55
    map_longitude: -120
    map_zoom: 3
    map_marker_radius_min: 2
    map_value_colors: ["#f89088", "#6aa84f"]
    map: usa
    map_projection: ''
    outer_border_color: "#78d0e7"
    inner_border_color: "#78d0e7"
    point_color: "#000080"
    map_color: "#edecdf"
    point_radius: 2
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: [LOCATION.region]
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 30
    col: 0
    width: 12
    height: 10
  - title: 'Inventory Distribution: Forecast'
    name: 'Inventory Distribution: Forecast'
    model: inventory_visibility
    explore: FORECAST
    type: looker_map
    fields: [LOCATION.location, LOCATION.city, LOCATION.country, LOCATION.region,
      FORECAST.total_forecast_quantity]
    sorts: [FORECAST.total_forecast_quantity desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: car
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: log
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 55
    map_longitude: -120
    map_zoom: 3
    map_marker_radius_fixed: 5
    map_marker_radius_max:
    map_value_colors: ["#e69138", "#93c47d"]
    map: usa
    map_projection: ''
    outer_border_color: "#78d0e7"
    inner_border_color: "#78d0e7"
    point_color: "#000080"
    map_color: "#edecdf"
    point_radius: 2
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: [LOCATION.region]
    listen:
      Date: FORECAST.forecast_date
      Location: LOCATION.city
      Product Description: PRODUCT.product_description
      Product Category: PRODUCT.product_type
    row: 30
    col: 12
    width: 12
    height: 10
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 2022/03/14 to 2022/04/25
    allow_multiple_values: true
    required: true
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: inventory_visibility
    explore: FORECAST
    listens_to_filters: []
    field: FORECAST.forecast_date
  - name: Product Category
    title: Product Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: inventory_visibility
    explore: FORECAST
    listens_to_filters: []
    field: PRODUCT.product_type
  - name: Product Description
    title: Product Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: inventory_visibility
    explore: FORECAST
    listens_to_filters: []
    field: PRODUCT.product_description
  - name: Location
    title: Location
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: inventory_visibility
    explore: FORECAST
    listens_to_filters: []
    field: LOCATION.city
