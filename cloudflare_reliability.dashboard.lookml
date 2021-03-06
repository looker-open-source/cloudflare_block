- dashboard: reliability_cloudflare
  title: Reliability Cloudflare
  layout: newspaper
  elements:
  - name: Summary of Edge and Origin Response Status
    type: text
    title_text: Summary of Edge and Origin Response Status
    subtitle_text: Get an overview of the edge and origin response status codes
    row: 0
    col: 5
    width: 18
    height: 2
  - name: Detailed View
    type: text
    title_text: Detailed View
    subtitle_text: Breakdown of Origin Response Status Codes by Various Metrics
    row: 24
    col: 1
    width: 22
    height: 2
  - name: logo
    type: text
    title_text: '<img style="display: block;" class="top-nav__logo top-nav__logo--dark
      top-nav__logo--transparent" src="https://www.cloudflare.com/img/logo-cloudflare-dark.svg">'
    row: 0
    col: 1
    width: 4
    height: 2
  - title: 5xx Errors (Edge)
    name: 5xx Errors (Edge)
    model: camilia_looker
    explore: camiliame_logs
    type: single_value
    fields:
    - camiliame_logs.count
    - camiliame_logs.edge_start_timestamp_week
    fill_fields:
    - camiliame_logs.edge_start_timestamp_week
    filters:
      camiliame_logs.edge_response_status_class_5xx: "-NULL"
    sorts:
    - camiliame_logs.edge_start_timestamp_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: last week
      expression: "${camiliame_logs.count} - offset(${camiliame_logs.count}, 1)"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 2
    col: 1
    width: 7
    height: 2
  - title: 4xx Errors (Edge)
    name: 4xx Errors (Edge)
    model: camilia_looker
    explore: camiliame_logs
    type: single_value
    fields:
    - camiliame_logs.count
    - camiliame_logs.edge_start_timestamp_week
    fill_fields:
    - camiliame_logs.edge_start_timestamp_week
    filters:
      camiliame_logs.edge_response_status_class_4xx: "-NULL"
    sorts:
    - camiliame_logs.edge_start_timestamp_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: last week
      expression: "${camiliame_logs.count} - offset(${camiliame_logs.count}, 1)"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 2
    col: 8
    width: 8
    height: 2
  - title: Origin Response Status Over Time
    name: Origin Response Status Over Time
    model: camilia_looker
    explore: camiliame_logs
    type: looker_area
    fields:
    - camiliame_logs.count
    - camiliame_logs.edge_start_timestamp_hour
    - camiliame_logs.origin_response_status
    pivots:
    - camiliame_logs.origin_response_status
    fill_fields:
    - camiliame_logs.edge_start_timestamp_hour
    sorts:
    - camiliame_logs.count desc 0
    - camiliame_logs.origin_response_status
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    colors:
    - "#265780"
    - "#D98541"
    - "#C53DCC"
    - "#33992E"
    - "#36B38D"
    - "#A2BF39"
    - "#5A3DCC"
    - "#8a0f3d"
    - "#ff7aa3"
    - "#2d89bd"
    - "#8f09b0"
    - "#d94141"
    show_value_labels: false
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      200 - camiliame_logs.count: "#32e612"
      403 - camiliame_logs.count: "#f21b90"
      404 - camiliame_logs.count: "#f02e13"
      301 - camiliame_logs.count: "#4187d9"
      302 - camiliame_logs.count: "#3d6ecc"
      499 - camiliame_logs.count: "#e6de17"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: camiliame_logs.count
        name: Camiliame Logs Requests
        axisId: camiliame_logs.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 9
    col: 1
    width: 15
    height: 5
  - title: Edge Response Status Over Time
    name: Edge Response Status Over Time
    model: camilia_looker
    explore: camiliame_logs
    type: looker_area
    fields:
    - camiliame_logs.count
    - camiliame_logs.edge_start_timestamp_hour
    - camiliame_logs.edge_response_status
    pivots:
    - camiliame_logs.edge_response_status
    fill_fields:
    - camiliame_logs.edge_start_timestamp_hour
    sorts:
    - camiliame_logs.count desc 0
    - camiliame_logs.edge_response_status
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    colors:
    - "#265780"
    - "#D98541"
    - "#C53DCC"
    - "#33992E"
    - "#36B38D"
    - "#A2BF39"
    - "#5A3DCC"
    - "#8a0f3d"
    - "#ff7aa3"
    - "#2d89bd"
    - "#8f09b0"
    - "#d94141"
    show_value_labels: false
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      200 - camiliame_logs.count: "#32e612"
      403 - camiliame_logs.count: "#f21b90"
      404 - camiliame_logs.count: "#f02e13"
      301 - camiliame_logs.count: "#4187d9"
      302 - camiliame_logs.count: "#3d6ecc"
      499 - camiliame_logs.count: "#e6de17"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: camiliame_logs.count
        name: Camiliame Logs Requests
        axisId: camiliame_logs.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 4
    col: 1
    width: 15
    height: 5
  - title: 3xx Errors (Edge)
    name: 3xx Errors (Edge)
    model: camilia_looker
    explore: camiliame_logs
    type: single_value
    fields:
    - camiliame_logs.count
    - camiliame_logs.edge_start_timestamp_week
    fill_fields:
    - camiliame_logs.edge_start_timestamp_week
    filters:
      camiliame_logs.edge_response_status_class_3xx: "-NULL"
    sorts:
    - camiliame_logs.edge_start_timestamp_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: last week
      expression: "${camiliame_logs.count} - offset(${camiliame_logs.count}, 1)"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 2
    col: 16
    width: 7
    height: 2
  - title: Edge Response Error Ratio
    name: Edge Response Error Ratio
    model: camilia_looker
    explore: camiliame_logs
    type: looker_pie
    fields:
    - camiliame_logs.count
    - camiliame_logs.edge_response_status_class
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 4
    col: 16
    width: 7
    height: 5
  - title: Origin Response Error Ratio
    name: Origin Response Error Ratio
    model: camilia_looker
    explore: camiliame_logs
    type: looker_pie
    fields:
    - camiliame_logs.count
    - camiliame_logs.origin_response_status_class
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 9
    col: 16
    width: 7
    height: 5
  - title: Edge Response Status in rps
    name: Edge Response Status in rps
    model: camilia_looker
    explore: camiliame_logs
    type: looker_line
    fields:
    - camiliame_logs.edge_start_timestamp_minute15
    - camiliame_logs.count
    - camiliame_logs.edge_response_status
    pivots:
    - camiliame_logs.edge_response_status
    fill_fields:
    - camiliame_logs.edge_start_timestamp_minute15
    sorts:
    - camiliame_logs.edge_start_timestamp_minute15 desc
    - camiliame_logs.edge_response_status
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#5245ed"
    - "#ed6168"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    show_value_labels: false
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      200 - camiliame_logs.count: "#61ed65"
      404 - camiliame_logs.count: "#f3280b"
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: Ops
      orientation: left
      series:
      - id: 0 - camiliame_logs.count
        name: '0'
        axisId: camiliame_logs.count
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 500 - camiliame_logs.count
        name: '500'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Edge Start Time (15s)
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 14
    col: 1
    width: 15
    height: 5
  - title: Edge Response Status in rps
    name: Edge Response Status in rps 2
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - current_second_stats.current_ops
    - camiliame_logs.count
    - events_per_second.avg_events_per_second
    - events_per_second.max_events_per_second
    - events_per_second.min_events_per_second
    - camiliame_logs.edge_response_status
    sorts:
    - max desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: max
      label: max
      expression: "${events_per_second.max_events_per_second}"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg
      label: avg
      expression: "${events_per_second.avg_events_per_second}"
      value_format:
      value_format_name: decimal_1
      _kind_hint: measure
      _type_hint: number
    - table_calculation: current
      label: current
      expression: "${current_second_stats.current_ops}"
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - current_second_stats.current_ops
    - events_per_second.avg_events_per_second
    - events_per_second.max_events_per_second
    - events_per_second.min_events_per_second
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 14
    col: 16
    width: 7
    height: 5
  - title: Top Countries
    name: Top Countries
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - countries.country_name
    - camiliame_logs.count
    - camiliame_logs.edge_response_status
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels: {}
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 19
    col: 1
    width: 7
    height: 5
  - title: Top Client IPs and AS Number
    name: Top Client IPs and AS Number
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - camiliame_logs.client_ip
    - camiliame_logs.client_asn
    - camiliame_logs.count
    - camiliame_logs.edge_response_status
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels: {}
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 19
    col: 8
    width: 8
    height: 5
  - title: Top ASN Numbers
    name: Top ASN Numbers
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - camiliame_logs.client_asn
    - camiliame_logs.count
    - camiliame_logs.edge_response_status
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels: {}
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 19
    col: 16
    width: 7
    height: 5
  - title: Top Requested URI
    name: Top Requested URI
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - camiliame_logs.count
    - camiliame_logs.client_request_uri_wrap
    - camiliame_logs.edge_response_status
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels: {}
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 26
    col: 1
    width: 7
    height: 5
  - title: Top User Agents
    name: Top User Agents
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - camiliame_logs.client_request_user_agent_wrap
    - camiliame_logs.count
    - camiliame_logs.edge_response_status
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels: {}
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 26
    col: 8
    width: 8
    height: 5
  - title: Top Hostnames
    name: Top Hostnames
    model: camilia_looker
    explore: camiliame_logs
    type: table
    fields:
    - camiliame_logs.client_request_host
    - camiliame_logs.count
    - camiliame_logs.edge_response_status
    sorts:
    - camiliame_logs.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    series_labels: {}
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: right
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors:
      301 - camiliame_logs.count: "#7481c5"
      200 - camiliame_logs.count: "#62d467"
      403 - camiliame_logs.count: "#e02272"
      404 - camiliame_logs.count: "#f23b13"
      302 - camiliame_logs.count: "#1d97f0"
      499 - camiliame_logs.count: "#34e0e0"
      520 - camiliame_logs.count: "#d7f218"
    series_types: {}
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: 200 - camiliame_logs.count
        name: '200'
        axisId: camiliame_logs.count
      - id: 301 - camiliame_logs.count
        name: '301'
        axisId: camiliame_logs.count
      - id: 302 - camiliame_logs.count
        name: '302'
        axisId: camiliame_logs.count
      - id: 304 - camiliame_logs.count
        name: '304'
        axisId: camiliame_logs.count
      - id: 403 - camiliame_logs.count
        name: '403'
        axisId: camiliame_logs.count
      - id: 404 - camiliame_logs.count
        name: '404'
        axisId: camiliame_logs.count
      - id: 499 - camiliame_logs.count
        name: '499'
        axisId: camiliame_logs.count
      - id: 520 - camiliame_logs.count
        name: '520'
        axisId: camiliame_logs.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Date: camiliame_logs.edge_start_timestamp_hour
      Device Type: camiliame_logs.client_device_type
      Country: countries.country_name
      Client IP: camiliame_logs.client_ip
      Hostname: camiliame_logs.client_request_host
      Request URI: camiliame_logs.client_request_uri
      User Agent: camiliame_logs.client_request_user_agent
      Origin Response Status: camiliame_logs.origin_response_status
      Edge Response Status: camiliame_logs.edge_response_status
      Origin IP: camiliame_logs.origin_ip
    row: 26
    col: 16
    width: 7
    height: 5
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.edge_start_timestamp_hour
  - name: Device Type
    title: Device Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.client_device_type
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: countries.country_name
  - name: Client IP
    title: Client IP
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.client_ip
  - name: Hostname
    title: Hostname
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.client_request_host
  - name: Request URI
    title: Request URI
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.client_request_uri
  - name: User Agent
    title: User Agent
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.client_request_user_agent
  - name: Origin Response Status
    title: Origin Response Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.origin_response_status
  - name: Edge Response Status
    title: Edge Response Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.edge_response_status
  - name: Origin IP
    title: Origin IP
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: camilia_looker
    explore: camiliame_logs
    listens_to_filters: []
    field: camiliame_logs.origin_ip
