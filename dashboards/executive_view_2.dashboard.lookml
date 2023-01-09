- dashboard: ecommerce__global_overview_2_imported
  title: E-commerce | Global Overview 2 (imported)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wsM1UPRgOXn00FvsRCOYy4
  elements:
  - title: Cost
    name: Cost
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.total_cost]
    filters:
      fct_ad_report_all_sources.source: Grand total KPIs
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [fct_ad_report_all_sources.total_cost], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: fct_ad_report_all_sources.total_cost,
        label: Percent change from previous - Fct Ad Report All Sources Total Cost,
        source_field: fct_ad_report_all_sources.total_cost, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_cost,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: table_calculation, label: Percent
          change from previous - Fct Ad Report All Sources Total Cost, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_cost_1,
        args: [fct_ad_report_all_sources.total_cost], _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [fct_ad_report_all_sources.selected_period]
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 1
    col: 0
    width: 4
    height: 2
  - title: impressions
    name: impressions
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.total_impressions]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [fct_ad_report_all_sources.total_cost], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: fct_ad_report_all_sources.total_cost,
        label: Percent change from previous - Fct Ad Report All Sources Total Cost,
        source_field: fct_ad_report_all_sources.total_cost, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_cost,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: table_calculation, label: Percent
          change from previous - Fct Ad Report All Sources Total Impressions, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_impressions,
        args: [fct_ad_report_all_sources.total_impressions], _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [fct_ad_report_all_sources.selected_period]
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 1
    col: 4
    width: 4
    height: 2
  - title: clicks
    name: clicks
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.total_clicks]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [fct_ad_report_all_sources.total_cost], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: fct_ad_report_all_sources.total_cost,
        label: Percent change from previous - Fct Ad Report All Sources Total Cost,
        source_field: fct_ad_report_all_sources.total_cost, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_cost,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [fct_ad_report_all_sources.total_impressions],
        calculation_type: percent_difference_from_previous, category: table_calculation,
        based_on: fct_ad_report_all_sources.total_impressions, label: Percent change
          from previous - Fct Ad Report All Sources Total Impressions, source_field: fct_ad_report_all_sources.total_impressions,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_impressions,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {category: table_calculation, label: Percent
          change from previous - Fct Ad Report All Sources Total Clicks, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_clicks,
        args: [fct_ad_report_all_sources.total_clicks], _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [fct_ad_report_all_sources.selected_period]
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 1
    col: 8
    width: 4
    height: 2
  - title: CTR
    name: CTR
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.click_through_rate, fct_ad_report_all_sources.selected_period]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources Click Through Rate, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_click_through_rate,
        args: [fct_ad_report_all_sources.click_through_rate], _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: []
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 1
    col: 12
    width: 4
    height: 2
  - title: CPM
    name: CPM
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.cpm]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources Cpm, value_format: !!null '', value_format_name: percent_2,
        calculation_type: percent_difference_from_previous, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_cpm,
        args: [fct_ad_report_all_sources.cpm], _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: []
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 1
    col: 16
    width: 4
    height: 2
  - title: conversions
    name: conversions
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.total_conversions]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources Total Conversions, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_total_conversions,
        args: [fct_ad_report_all_sources.total_conversions], _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: []
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 3
    col: 0
    width: 4
    height: 2
  - title: CPC
    name: CPC
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.cpc, fct_ad_report_all_sources.selected_period]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources Cpc, value_format: !!null '', value_format_name: percent_2,
        calculation_type: percent_difference_from_previous, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_cpc,
        args: [fct_ad_report_all_sources.cpc], _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: []
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 1
    col: 20
    width: 4
    height: 2
  - title: CPA
    name: CPA
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.cpa]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources CPA, value_format: !!null '', value_format_name: percent_2,
        calculation_type: percent_difference_from_previous, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_cpa,
        args: [fct_ad_report_all_sources.cpa], _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: primelis
      palette_id: primelis-categorical-0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#D6195C",
        font_color: !!null '', color_application: {collection_id: primelis, palette_id: primelis-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: [fct_ad_report_all_sources.selected_period]
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 3
    col: 4
    width: 4
    height: 2
  - title: AOV
    name: AOV
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.average_order_value, fct_ad_report_all_sources.selected_period]
    filters:
      fct_ad_report_all_sources.source: Grand total KPIs
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources Average Order Value, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_average_order_value,
        args: [fct_ad_report_all_sources.average_order_value], _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: [fct_ad_report_all_sources.selected_period]
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 3
    col: 12
    width: 4
    height: 2
  - title: Conversion value
    name: Conversion value
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.total_conversion_value, fct_ad_report_all_sources.selected_period]
    filters:
      fct_ad_report_all_sources.source: Grand total KPIs
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    dynamic_fields: [{args: [fct_ad_report_all_sources.total_conversion_value], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: fct_ad_report_all_sources.total_conversion_value,
        label: Percent change from previous - Fct Ad Report All Sources Conversion
          Value, source_field: fct_ad_report_all_sources.total_conversion_value, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_conversion_value,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 3
    col: 16
    width: 4
    height: 2
  - title: ROAS
    name: ROAS
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.return_on_ad_spend, fct_ad_report_all_sources.selected_period]
    filters:
      fct_ad_report_all_sources.source: Grand total KPIs
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: Percent change from previous
          - Fct Ad Report All Sources ROAS, value_format: !!null '', value_format_name: percent_2,
        calculation_type: percent_difference_from_previous, table_calculation: percent_change_from_previous_fct_ad_report_all_sources_roas,
        args: [fct_ad_report_all_sources.return_on_ad_spend], _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 3
    col: 20
    width: 4
    height: 2
  - title: Conv %
    name: Conv %
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.selected_period, fct_ad_report_all_sources.conv]
    filters:
      fct_ad_report_all_sources.source: "-Grand total,-Grand total KPIs"
      fct_ad_report_all_sources.selected_period: "-NULL"
    sorts: [fct_ad_report_all_sources.selected_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: " ${fct_ad_report_all_sources.conv}\
          \ - offset(${fct_ad_report_all_sources.conv}, 1)\n\n\n", label: Dif Conv
          %, value_format: 0.00%, value_format_name: __custom, _kind_hint: measure,
        table_calculation: dif_conv, _type_hint: number}, {category: table_calculation,
        label: Percent change from previous - Fct Ad Report All Sources Conv %, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: percent_change_from_previous_fct_ad_report_all_sources_conv,
        args: [fct_ad_report_all_sources.conv], _kind_hint: measure, _type_hint: number,
        is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 3
    col: 8
    width: 4
    height: 2
  - title: Evolution Day by Day (14 days by default)
    name: Evolution Day by Day (14 days by default)
    model: primelis
    explore: fct_ad_report_all_sources
    type: looker_grid
    fields: [fct_ad_report_all_sources.date_date, fct_ad_report_all_sources.source,
      fct_ad_report_all_sources.total_cost, fct_ad_report_all_sources.cpa, fct_ad_report_all_sources.return_on_ad_spend,
      fct_ad_report_all_sources.total_conversion_value]
    pivots: [fct_ad_report_all_sources.source]
    fill_fields: [fct_ad_report_all_sources.date_date]
    filters:
      fct_ad_report_all_sources.date_date: 14 days ago for 14 days
      fct_ad_report_all_sources.source_no_adjustment: "-Grand total,-Adjustement line\
        \ for revenue,-adjustement shipping"
    sorts: [fct_ad_report_all_sources.source desc, fct_ad_report_all_sources.date_date]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      fct_ad_report_all_sources.total_cost:
        is_active: false
    series_text_format:
      fct_ad_report_all_sources.total_cost:
        align: center
      fct_ad_report_all_sources.cpa:
        align: center
      fct_ad_report_all_sources.return_on_ad_spend:
        align: center
      fct_ad_report_all_sources.total_conversion_value:
        align: center
      fct_ad_report_all_sources.source:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          custom: {id: ad677f60-12cb-4b95-cb27-4ee97e37674f, label: Custom, type: continuous,
            stops: [{color: "#ecf5ff", offset: 0}, {color: "#FFFFFF", offset: 25},
              {color: "#b0c5de", offset: 50}, {color: "#FFFFFF", offset: 75}, {color: "#0e4a87",
                offset: 100}]}, options: {steps: 5, constraints: {min: {type: minimum},
              mid: {type: number, value: 0}, max: {type: maximum}}, mirror: true,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [fct_ad_report_all_sources.total_cost]}, {type: along a scale...,
        value: !!null '', background_color: "#173589", font_color: !!null '', color_application: {
          collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5, custom: {id: 74acd6ab-4614-7e96-a192-83265f184d71,
            label: Custom, type: continuous, stops: [{color: "#f9ffce", offset: 0},
              {color: "#f4ffb7", offset: 25}, {color: "#f6ffaf", offset: 50}, {color: "#f4ff97",
                offset: 75}, {color: "#fbffd1", offset: 100}]}, options: {steps: 5,
            constraints: {min: {type: minimum}, mid: {type: number, value: 0}, max: {
                type: maximum}}, mirror: false, reverse: false, stepped: true}}, bold: false,
        italic: false, strikethrough: false, fields: [fct_ad_report_all_sources.cpa]},
      {type: along a scale..., value: !!null '', background_color: "#173589", font_color: !!null '',
        color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5, custom: {
            id: e6297019-80cf-d16b-51e6-c46e0f58d1bc, label: Custom, type: continuous,
            stops: [{color: "#ebdcd9", offset: 0}, {color: "#e8e6e0", offset: 50},
              {color: "#9897b5", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [fct_ad_report_all_sources.return_on_ad_spend]},
      {type: along a scale..., value: !!null '', background_color: "#173589", font_color: !!null '',
        color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5, custom: {
            id: 130c17d5-a7b1-d0c6-82bd-0c6c51f800e9, label: Custom, type: continuous,
            stops: [{color: "#edd8dd", offset: 0}, {color: "#ffcab1", offset: 25},
              {color: "#f5a195", offset: 50}, {color: "#eb4649", offset: 75}, {color: "#8c262f",
                offset: 100}]}, options: {steps: 5, constraints: {min: {type: minimum},
              mid: {type: number, value: 0}, max: {type: maximum}}, mirror: true,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [fct_ad_report_all_sources.total_conversion_value]}]
    defaults_version: 1
    series_column_widths:
      fct_ad_report_all_sources.date_date: 81
    listen: {}
    row: 16
    col: 0
    width: 24
    height: 10
  - name: ''
    type: text
    title_text: ''
    body_text: ''
    row: 0
    col: 10
    width: 14
    height: 1
  - title: Selected Period
    name: Selected Period
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.date_reference]
    filters:
      fct_ad_report_all_sources.selected_period: "%Current%"
    sorts: [fct_ad_report_all_sources.date_reference]
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
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 0
    col: 4
    width: 4
    height: 1
  - title: Comparison Period
    name: Comparison Period
    model: primelis
    explore: fct_ad_report_all_sources
    type: single_value
    fields: [fct_ad_report_all_sources.date_reference]
    filters:
      fct_ad_report_all_sources.selected_period: "%Previous%"
    sorts: [fct_ad_report_all_sources.date_reference]
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
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 0
    col: 0
    width: 4
    height: 1
  - title: Facebook Ads Performance
    name: Facebook Ads Performance
    model: primelis
    explore: fbads_ad_updated_url
    type: looker_grid
    fields: [fbads_ad_updated_url.campaign_type, fbads_ad_updated_url.total_cost,
      fbads_ad_updated_url.total_impressions, fbads_ad_updated_url.total_outbound_clicks,
      fbads_ad_updated_url.outbound_click_through_rate, fbads_ad_updated_url.cpm,
      fbads_ad_updated_url.cpc_fbads, fbads_ad_updated_url.total_conversions_fbads,
      fbads_ad_updated_url.cpa_fbads, fbads_ad_updated_url.conv_fbads, fbads_ad_updated_url.average_order_value_fbads,
      fbads_ad_updated_url.total_conversion_value_fbads, fbads_ad_updated_url.return_on_ad_spend_fbads,
      source_fbads]
    pivots: [source_fbads]
    filters:
      fbads_ad_updated_url.selected_period: "-NULL"
      fbads_ad_updated_url.impressions: NOT NULL
    sorts: [source_fbads desc, fbads_ad_updated_url.campaign_type desc]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, label: Δ Cost, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_cost, args: [fbads_ad_updated_url.total_cost], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ IMP, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_imp, args: [fbads_ad_updated_url.total_impressions],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: Δ
          Clicks, value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_clicks_1, args: [fbads_ad_updated_url.total_outbound_clicks],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ CTR", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: ctr, args: [fbads_ad_updated_url.outbound_click_through_rate],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ CPM", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: cpm, args: [fbads_ad_updated_url.cpm], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CPC", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: cpc, args: [fbads_ad_updated_url.cpc_fbads], _kind_hint: measure,
        _type_hint: number}, {category: dimension, description: '', label: Source
          FBAds, value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: source_fbads, args: [fbads_ad_updated_url.selected_period, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: "‎", filter: "%Current%", __FILE: primelis/dashboards/executive_view_2.dashboard.lookml,
              __LINE_NUM: 1015}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Previous, filter: "%Previos%", __FILE: primelis/dashboards/executive_view_2.dashboard.lookml,
              __LINE_NUM: 1016}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, label: " ∆ Conv", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv,
        args: [fbads_ad_updated_url.total_conversions_fbads], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CPA", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: cpa, args: [fbads_ad_updated_url.cpa_fbads], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ Conv %", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: conv_1, args: [fbads_ad_updated_url.conv_fbads], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ AOV", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: aov, args: [fbads_ad_updated_url.average_order_value_fbads],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ Revenues", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: revenues, args: [fbads_ad_updated_url.total_conversion_value_fbads],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ ROAS", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: roas, args: [fbads_ad_updated_url.return_on_ad_spend_fbads],
        _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", fbads_ad_updated_url.campaign_type, "‎_fbads_ad_updated_url.total_cost",
      "‎_d_cost", "‎_fbads_ad_updated_url.total_impressions", "‎_d_imp", "‎_fbads_ad_updated_url.total_outbound_clicks",
      "‎_d_clicks_1", "‎_fbads_ad_updated_url.outbound_click_through_rate", "‎_ctr",
      "‎_fbads_ad_updated_url.cpm", "‎_cpm", "‎_fbads_ad_updated_url.cpc_fbads", "‎\
        _cpc", "‎_fbads_ad_updated_url.total_conversions_fbads", "‎_conv", "‎_fbads_ad_updated_url.cpa_fbads",
      "‎_cpa", "‎_fbads_ad_updated_url.conv_fbads", "‎_conv_1", "‎_fbads_ad_updated_url.average_order_value_fbads",
      "‎_aov", "‎_fbads_ad_updated_url.total_conversion_value_fbads", "‎_revenues",
      "‎_fbads_ad_updated_url.return_on_ad_spend_fbads", "‎_roas"]
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_labels:
      fbads_ad_updated_url.total_outbound_clicks: Clicks
      fbads_ad_updated_url.outbound_click_through_rate: CTR
      fbads_ad_updated_url.total_conversions_fbads: Conv
      fbads_ad_updated_url.average_order_value_fbads: AOV
      fbads_ad_updated_url.total_conversion_value_fbads: Revenue
      fbads_ad_updated_url.total_cost: Cost
      fbads_ad_updated_url.total_impressions: IMP
    series_column_widths:
      fbads_ad_updated_url.campaign_type: 120
    series_cell_visualizations:
      fbads_ad_updated_url.total_cost:
        is_active: false
    series_text_format:
      fbads_ad_updated_url.selected_period: {}
      fbads_ad_updated_url.campaign_type:
        align: left
      fbads_ad_updated_url.total_cost:
        align: left
      fbads_ad_updated_url.total_impressions:
        align: left
      fbads_ad_updated_url.total_outbound_clicks:
        align: left
      fbads_ad_updated_url.outbound_click_through_rate:
        align: left
      fbads_ad_updated_url.cpm:
        align: left
      fbads_ad_updated_url.cpc_fbads:
        align: left
      fbads_ad_updated_url.total_conversions_fbads:
        align: left
      fbads_ad_updated_url.cpa_fbads:
        align: left
      fbads_ad_updated_url.conv_fbads:
        align: left
      fbads_ad_updated_url.average_order_value_fbads:
        align: left
      fbads_ad_updated_url.total_conversion_value_fbads:
        align: left
      fbads_ad_updated_url.return_on_ad_spend_fbads:
        align: left
    header_font_color: "#FFF"
    header_background_color: "#1a73e8"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots:
      Previous Period:
        is_entire_pivot_hidden: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 5
    col: 0
    width: 24
    height: 4
  - title: Google Ads Performance
    name: Google Ads Performance
    model: primelis
    explore: googleads_ad
    type: looker_grid
    fields: [googleads_ad.campaign_type, googleads_ad.total_cost, googleads_ad.total_impressions,
      googleads_ad.total_clicks, googleads_ad.click_through_rate, googleads_ad.cpm,
      googleads_ad.cpc, googleads_ad.total_conversions, googleads_ad.cpa, googleads_ad.conv,
      googleads_ad.average_order_value, googleads_ad.total_conversion_value, googleads_ad.return_on_ad_spend,
      source_gads]
    pivots: [source_gads]
    filters:
      googleads_ad.selected_period: "-NULL"
    sorts: [source_gads desc, googleads_ad.campaign_type desc]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, label: Δ Cost, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_cost, args: [googleads_ad.total_cost], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ IMP, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_imp, args: [googleads_ad.total_impressions], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ Clicks, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_clicks_1, args: [googleads_ad.total_clicks], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CTR", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: ctr, args: [googleads_ad.click_through_rate], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CPM", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: cpm, args: [googleads_ad.cpm], _kind_hint: measure, _type_hint: number},
      {category: table_calculation, label: " ∆ CPC", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: cpc,
        args: [googleads_ad.cpc], _kind_hint: measure, _type_hint: number}, {category: dimension,
        description: '', label: Source GAds, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: source_gads, args: [googleads_ad.selected_period,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: "‎", filter: "%Current%",
              __FILE: primelis/dashboards/executive_view_2.dashboard.lookml, __LINE_NUM: 1188},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Previous,
              filter: "%Previos%", __FILE: primelis/dashboards/executive_view_2.dashboard.lookml,
              __LINE_NUM: 1189}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, label: " ∆ Conv", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv,
        args: [googleads_ad.total_conversions], _kind_hint: measure, _type_hint: number},
      {category: table_calculation, label: " ∆ CPA", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: cpa,
        args: [googleads_ad.cpa], _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        label: " ∆ Conv %", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv_1,
        args: [googleads_ad.conv], _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        label: " ∆ AOV", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: aov, args: [googleads_ad.average_order_value], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ Revenues", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: revenues, args: [googleads_ad.total_conversion_value],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ ROAS", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: roas, args: [googleads_ad.return_on_ad_spend], _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", googleads_ad.campaign_type, "‎_googleads_ad.total_cost",
      "‎_d_cost", "‎_googleads_ad.total_impressions", "‎_d_imp", "‎_googleads_ad.total_clicks",
      "‎_d_clicks_1", "‎_googleads_ad.click_through_rate", "‎_ctr", "‎_googleads_ad.cpm",
      "‎_cpm", "‎_googleads_ad.cpc", "‎_cpc", "‎_googleads_ad.total_conversions",
      "‎_conv", "‎_googleads_ad.cpa", "‎_cpa", "‎_googleads_ad.conv", "‎_conv_1",
      "‎_googleads_ad.average_order_value", "‎_aov", "‎_googleads_ad.total_conversion_value",
      "‎_revenues", "‎_googleads_ad.return_on_ad_spend", "‎_roas"]
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_labels:
      googleads_ad.total_clicks: Clicks
      googleads_ad.outbound_click_through_rate: CTR
      googleads_ad.total_conversions: Conv
      googleads_ad.average_order_value: AOV
      googleads_ad.total_conversion_value: Revenue
      googleads_ad.total_cost: Cost
      googleads_ad.total_impressions: IMP
      source: Source GAds
    series_column_widths:
      googleads_ad.campaign_type: 120
    series_cell_visualizations:
      googleads_ad.total_cost:
        is_active: false
    series_text_format:
      googleads_ad.selected_period: {}
      googleads_ad.campaign_type:
        align: left
      googleads_ad.total_cost:
        align: left
      googleads_ad.total_impressions:
        align: left
      googleads_ad.total_clicks:
        align: left
      googleads_ad.click_through_rate:
        align: left
      googleads_ad.cpm:
        align: left
      googleads_ad.cpc:
        align: left
      googleads_ad.total_conversions:
        align: left
      googleads_ad.cpa:
        align: left
      googleads_ad.conv:
        align: left
      googleads_ad.average_order_value:
        align: left
      googleads_ad.total_conversion_value:
        align: left
      googleads_ad.return_on_ad_spend:
        align: left
    header_font_color: "#FFF"
    header_background_color: "#4caf50"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots:
      Previous Period:
        is_entire_pivot_hidden: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 9
    col: 0
    width: 24
    height: 4
  - title: TikTok Ads Performance
    name: TikTok Ads Performance
    model: primelis
    explore: tiktok_ads
    type: looker_grid
    fields: [tiktok_ads.campaign_type, tiktok_ads.total_cost, tiktok_ads.total_impressions,
      tiktok_ads.total_clicks, tiktok_ads.click_through_rate, tiktok_ads.cpm,
      tiktok_ads.cpc, tiktok_ads.total_conversions, tiktok_ads.cpa, tiktok_ads.conv,
      tiktok_ads.average_order_value_tiktok, tiktok_ads.total_revenue_tiktok, tiktok_ads.return_on_ad_spend_tiktok,
      source_gads]
    pivots: [source_gads]
    filters:
      tiktok_ads.selected_period: "-NULL"
    sorts: [source_gads desc, tiktok_ads.campaign_type desc]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, label: Δ Cost, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_cost, args: [tiktok_ads.total_cost], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ IMP, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_imp, args: [tiktok_ads.total_impressions], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ Clicks, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_clicks_1, args: [tiktok_ads.total_clicks], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CTR", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: ctr, args: [tiktok_ads.click_through_rate], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CPM", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: cpm, args: [tiktok_ads.cpm], _kind_hint: measure, _type_hint: number},
      {category: table_calculation, label: " ∆ CPC", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: cpc,
        args: [tiktok_ads.cpc], _kind_hint: measure, _type_hint: number}, {category: dimension,
        description: '', label: Source GAds, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: source_gads, args: [tiktok_ads.selected_period,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: "‎", filter: "%Current%",
              __FILE: primelis/dashboards/executive_view_2.dashboard.lookml, __LINE_NUM: 1188},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Previous,
              filter: "%Previos%", __FILE: primelis/dashboards/executive_view_2.dashboard.lookml,
              __LINE_NUM: 1189}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, label: " ∆ Conv", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv,
        args: [tiktok_ads.total_conversions], _kind_hint: measure, _type_hint: number},
      {category: table_calculation, label: " ∆ CPA", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: cpa,
        args: [tiktok_ads.cpa], _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        label: " ∆ Conv %", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv_1,
        args: [tiktok_ads.conv], _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        label: " ∆ AOV", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: aov, args: [tiktok_ads.average_order_value_tiktok], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ Revenues", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: revenues, args: [tiktok_ads.total_revenue_tiktok],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ ROAS", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: roas, args: [tiktok_ads.return_on_ad_spend_tiktok], _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", tiktok_ads.campaign_type, "‎_tiktok_ads.total_cost",
      "‎_d_cost", "‎_tiktok_ads.total_impressions", "‎_d_imp", "‎_tiktok_ads.total_clicks",
      "‎_d_clicks_1", "‎_tiktok_ads.click_through_rate", "‎_ctr", "‎_tiktok_ads.cpm",
      "‎_cpm", "‎_tiktok_ads.cpc", "‎_cpc", "‎_tiktok_ads.total_conversions",
      "‎_conv", "‎_tiktok_ads.cpa", "‎_cpa", "‎_tiktok_ads.conv", "‎_conv_1",
      "‎_tiktok_ads.average_order_value_tiktok", "‎_aov", "‎_tiktok_ads.total_revenue_tiktok",
      "‎_revenues", "‎_tiktok_ads.return_on_ad_spend_tiktok", "‎_roas"]
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_labels:
      tiktok_ads.total_clicks: Clicks
      tiktok_ads.outbound_click_through_rate: CTR
      tiktok_ads.total_conversions: Conv
      tiktok_ads.average_order_value_tiktok: AOV
      tiktok_ads.total_revenue_tiktok: Revenue
      tiktok_ads.total_cost: Cost
      tiktok_ads.total_impressions: IMP
      source: Source TAds
    series_column_widths:
      tiktok_ads.campaign_type: 120
    series_cell_visualizations:
      tiktok_ads.total_cost:
        is_active: false
    series_text_format:
      tiktok_ads.selected_period: {}
      tiktok_ads.campaign_type:
        align: left
      tiktok_ads.total_cost:
        align: left
      tiktok_ads.total_impressions:
        align: left
      tiktok_ads.total_clicks:
        align: left
      tiktok_ads.click_through_rate:
        align: left
      tiktok_ads.cpm:
        align: left
      tiktok_ads.cpc:
        align: left
      tiktok_ads.total_conversions:
        align: left
      tiktok_ads.cpa:
        align: left
      tiktok_ads.conv:
        align: left
      tiktok_ads.average_order_value_tiktok:
        align: left
      tiktok_ads.total_revenue_tiktok:
        align: left
      tiktok_ads.return_on_ad_spend_tiktok:
        align: left
    header_font_color: "#FFF"
    header_background_color: "#4caf50"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots:
      Previous Period:
        is_entire_pivot_hidden: true
    defaults_version: 1
    series_types: {}
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 9
    col: 0
    width: 24
    height: 4
  - title: Google Ads Performance (Copy)
    name: Google Ads Performance (Copy)
    model: primelis
    explore: googleads_ad
    type: looker_grid
    fields: [googleads_ad.campaign_type, googleads_ad.total_cost, googleads_ad.total_impressions,
      googleads_ad.total_clicks, googleads_ad.click_through_rate, googleads_ad.cpm,
      googleads_ad.cpc, googleads_ad.total_conversions, googleads_ad.cpa, googleads_ad.conv,
      googleads_ad.average_order_value, googleads_ad.total_conversion_value, googleads_ad.return_on_ad_spend,
      source_gads]
    pivots: [source_gads]
    filters:
      googleads_ad.selected_period: "-NULL"
      googleads_ad.campaign_type: "-Shopping"
    sorts: [source_gads desc, googleads_ad.campaign_type desc]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, label: Δ Cost, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_cost, args: [googleads_ad.total_cost], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ IMP, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_imp, args: [googleads_ad.total_impressions], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Δ Clicks, value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: d_clicks_1, args: [googleads_ad.total_clicks], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CTR", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: ctr, args: [googleads_ad.click_through_rate], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ CPM", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: cpm, args: [googleads_ad.cpm], _kind_hint: measure, _type_hint: number},
      {category: table_calculation, label: " ∆ CPC", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: cpc,
        args: [googleads_ad.cpc], _kind_hint: measure, _type_hint: number}, {category: dimension,
        description: '', label: Source GAds, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: source_gads, args: [googleads_ad.selected_period,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: "‎", filter: "%Current%",
              __FILE: primelis/dashboards/executive_view_2.dashboard.lookml, __LINE_NUM: 1188},
            !ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: Previous,
              filter: "%Previos%", __FILE: primelis/dashboards/executive_view_2.dashboard.lookml,
              __LINE_NUM: 1189}], !!null ''], _kind_hint: dimension, _type_hint: string},
      {category: table_calculation, label: " ∆ Conv", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv,
        args: [googleads_ad.total_conversions], _kind_hint: measure, _type_hint: number},
      {category: table_calculation, label: " ∆ CPA", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: cpa,
        args: [googleads_ad.cpa], _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        label: " ∆ Conv %", value_format: !!null '', value_format_name: percent_1,
        calculation_type: percent_change_from_previous_column, table_calculation: conv_1,
        args: [googleads_ad.conv], _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        label: " ∆ AOV", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: aov, args: [googleads_ad.average_order_value], _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: " ∆ Revenues", value_format: !!null '',
        value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: revenues, args: [googleads_ad.total_conversion_value],
        _kind_hint: measure, _type_hint: number}, {category: table_calculation, label: " ∆\
          \ ROAS", value_format: !!null '', value_format_name: percent_1, calculation_type: percent_change_from_previous_column,
        table_calculation: roas, args: [googleads_ad.return_on_ad_spend], _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", googleads_ad.campaign_type, "‎_googleads_ad.total_cost",
      "‎_d_cost", "‎_googleads_ad.total_impressions", "‎_d_imp", "‎_googleads_ad.total_clicks",
      "‎_d_clicks_1", "‎_googleads_ad.click_through_rate", "‎_ctr", "‎_googleads_ad.cpm",
      "‎_cpm", "‎_googleads_ad.cpc", "‎_cpc", "‎_googleads_ad.total_conversions",
      "‎_conv", "‎_googleads_ad.cpa", "‎_cpa", "‎_googleads_ad.conv", "‎_conv_1",
      "‎_googleads_ad.average_order_value", "‎_aov", "‎_googleads_ad.total_conversion_value",
      "‎_revenues", "‎_googleads_ad.return_on_ad_spend", "‎_roas"]
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_labels:
      googleads_ad.total_clicks: Clicks
      googleads_ad.outbound_click_through_rate: CTR
      googleads_ad.total_conversions: Conv
      googleads_ad.average_order_value: AOV
      googleads_ad.total_conversion_value: Revenue
      googleads_ad.total_cost: Cost
      googleads_ad.total_impressions: IMP
    series_column_widths:
      googleads_ad.campaign_type: 120
    series_cell_visualizations:
      googleads_ad.total_cost:
        is_active: false
    series_text_format:
      googleads_ad.selected_period: {}
      googleads_ad.campaign_type:
        align: left
      googleads_ad.total_cost:
        align: left
      googleads_ad.total_impressions:
        align: left
      googleads_ad.total_clicks:
        align: left
      googleads_ad.click_through_rate:
        align: left
      googleads_ad.cpm:
        align: left
      googleads_ad.cpc:
        align: left
      googleads_ad.total_conversions:
        align: left
      googleads_ad.cpa:
        align: left
      googleads_ad.conv:
        align: left
      googleads_ad.average_order_value:
        align: left
      googleads_ad.total_conversion_value:
        align: left
      googleads_ad.return_on_ad_spend:
        align: left
    header_font_color: "#FFF"
    header_background_color: "#4caf50"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#173589",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots:
      Previous Period:
        is_entire_pivot_hidden: true
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      Choose Date: parameters.choose_date
      Period Comparison Selector: parameters.previous_comparison
    row: 13
    col: 0
    width: 24
    height: 3
  filters:
  - name: Choose Date
    title: Choose Date
    type: field_filter
    default_value: this month
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: primelis
    explore: fct_ad_report_all_sources
    listens_to_filters: []
    field: parameters.choose_date
  - name: Period Comparison Selector
    title: Period Comparison Selector
    type: field_filter
    default_value: previous^_period
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: primelis
    explore: fct_ad_report_all_sources
    listens_to_filters: []
    field: parameters.previous_comparison
