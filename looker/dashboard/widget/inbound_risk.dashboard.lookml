- dashboard: inbound_risk
  title: Inbound Risk
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: 'Alerts: Inbound Orders with External Risk impacting Low Inventory'
    name: 'Alerts: Inbound Orders with External Risk impacting Low Inventory'
    model: inbound_risk
    explore: storms_tsunami
    type: looker_grid
    fields: [order.order_id_action, order.order_category, location.location_name,
      order.order_type, order.requested_delivery_date, order.actual_delivery_date,
      storms_tsunami.event_id, storms_tsunami.event_type, storms_tsunami.state, storms_tsunami.event_begin_time_month,
      order.route_id, legal_entity.city, legal_entity.Names, order.sale_price_new]
    sorts: [order.requested_delivery_date desc]
    limit: 500
    column_limit: 50
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
    column_order: ["$$$_row_numbers_$$$", order.order_id_action, order.order_category,
      location.location_name, order.order_type, legal_entity.Names, order.route_id,
      legal_entity.city, order.requested_delivery_date, order.actual_delivery_date,
      storms_tsunami.event_id, storms_tsunami.event_type, storms_tsunami.state, storms_tsunami.event_begin_time_month,
      order.Sale_Price]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      legal_entity.legal_entity_name: Names
      order.sale_price_new: Sales Price
    series_cell_visualizations:
      order.Sale_Price:
        is_active: true
      order.sale_price_new:
        is_active: true
    series_value_format:
      order.Sale_Price:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
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
    defaults_version: 1
    series_types: {}
    listen:
      Location Name: location.location_name
      State: storms_tsunami.state
    row: 5
    col: 0
    width: 24
    height: 5
  - title: Weather Events Impacting Supplier locations and open purchase orders
    name: Weather Events Impacting Supplier locations and open purchase orders
    model: inbound_risk
    explore: storms_tsunami
    type: looker_map
    fields: [storms_tsunami.event_begin_time_date, location.location, storms_tsunami.state,
      storms_tsunami.event_id, order.Sale_Price, order.order_count, storms_tsunami.event_type]
    pivots: [storms_tsunami.event_type]
    sorts: [storms_tsunami.event_type desc, storms_tsunami.event_begin_time_date desc,
      storms_tsunami.state]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Event Type Groups,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: event_type_groups, args: [storms_tsunami.event_type, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: hail, filter: '', __FILE: scl_development/dashboard/widget/inbound_risk.dashboard.lookml,
              __LINE_NUM: 101}], !!null ''], _kind_hint: dimension, _type_hint: string}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.3
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: metric
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle_and_icon
    map_marker_icon_name: bolt
    map_marker_radius_mode: equal_to_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_marker_color: []
    map_value_colors: []
    series_types: {}
    defaults_version: 1
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    listen:
      Location Name: location.location_name
      State: storms_tsunami.state
    row: 10
    col: 0
    width: 24
    height: 13
  - name: Orders At Risk
    type: text
    title_text: Orders At Risk
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: inbound_risk
    explore: storms_tsunami
    type: single_value
    fields: [order.poatrisk]
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
    custom_color: "#1A73E8"
    single_value_title: POs At Risk
    value_format: ''
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Incoming ASN at risk due to External Risk.
    listen: {}
    row: 2
    col: 8
    width: 7
    height: 3
  - title: Untitled (Copy 6)
    name: Untitled (Copy 6)
    model: inbound_risk
    explore: storms_tsunami
    type: single_value
    fields: [order.openso]
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
    custom_color: "#1A73E8"
    single_value_title: Open Sales Order
    defaults_version: 1
    listen:
      State: storms_tsunami.state
    row: 2
    col: 0
    width: 7
    height: 3
  - title: Untitled (Copy 8)
    name: Untitled (Copy 8)
    model: inbound_risk
    explore: storms_tsunami
    type: single_value
    fields: [order.povalueatrisk]
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
    custom_color: "#1A73E8"
    single_value_title: POs Value At Risk
    value_format: ''
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Incoming ASN at risk due to External Risk.
    listen: {}
    row: 2
    col: 16
    width: 7
    height: 3
  filters:
  - name: Location Name
    title: Location Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: inbound_risk
    explore: storms_tsunami
    listens_to_filters: []
    field: location.location_name
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: inbound_risk
    explore: storms_tsunami
    listens_to_filters: []
    field: storms_tsunami.state
