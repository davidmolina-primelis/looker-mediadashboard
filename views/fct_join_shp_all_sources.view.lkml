view: fct_join_shp_all_sources {
  sql_table_name: `positive-harbor-329408.mart_dossier.fct_join_SHP_All_sources`
    ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${date_date},${source}) ;;
  }

  dimension_group: date {
    label: "Date"
    description: "Date (day, month, year)"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: clicks {
    label: "Ad Clicks"
    description: "Clicks on media ads"
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_value {
    label: "Ad Revenues"
    description: "Conversions value from media ads"
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: conversions {
    label: "Ad Conversions"
    description: "Conversions from media ads"
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    label: "Ad Cost"
    description: "Cost from media ads"
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: impressions {
    label: "Ad Impressions"
    description: "Impressions from media ads"
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: source {
    label: "Source - Paid media"
    description: "Paid media acquistion source"
    type: string
    sql: ${TABLE}.source ;;
  }


  ### Period Analysis:

  # The common parameters and filters are located in the parameters view file.
  # This dimension creates the interval related to the current period and the previous period.
  dimension: current_vs_previous {
    hidden: yes
    type: string
    sql: case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Period'
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then 'Previous Period'
            end;;
  }

# This dimension creates the interval related to the current period and the previous year period.
  dimension: current_year_vs_previous_year {
    hidden: yes
    type: string
    sql:  case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Year '
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then 'Previous Year'
           end ;;
  }


  # This dimension is the one that should be selected in the explore/dashboard tile that's depend on the user's choice will show
  # the comparison between Previous Period or Previous Year Same period.
  dimension: selected_period {
    view_label: "Parameters"
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%} ${current_vs_previous}
          {% elsif parameters.previous_comparison._parameter_value == 'previous_year' %} ${current_year_vs_previous_year}
          {% else %} ${current_vs_previous}
          {% endif %}
     ;;
  }

  ###---- End of Period Analysis


  measure: count {
    label: "Count"
    description: "Count total occurence of a field"
    type: count
    drill_fields: []
  }

  measure: total_impressions {
    label: "Total Impressions"
    description: "Sum of Total impressions"
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_cost {
    label: "Total Cost"
    description: "Sum of Total Cost"
    type: sum
    sql: ${TABLE}.cost ;;
    value_format_name: usd_0
    value_format: "$0.0"
  }

  measure: total_clicks {
    label: "Total Clicks"
    description: "Sum of Total Clicks"
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: click_through_rate {
    label: "CTR (Click Through Rate)"
    description: "Clicks / Impressions"
    type: number
    sql: 1.0*${total_clicks}/nullif(${total_impressions},0) ;;
    value_format: "0.00%"
  }

  measure: total_conversion_value {
    label: "Total Revenues (Media Source)"
    description: "Sum of Media conversions revenues"
    type: sum
    sql: ${TABLE}.conversion_value ;;
    value_format_name: usd_0
  }

  measure: total_conversions {
    label: "Total Conversions"
    description: "Sum of Media conversions"
    type: sum
    sql: ${TABLE}.conversions ;;
    value_format: "#,##0"
  }

  measure:average_order_value {
    label: "Average Order Value"
    description: " Total Revenues / Total Conversions"
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_conversions},0) ;;
    value_format_name: usd
  }

  measure:return_on_ad_spend {
    label: "ROAS"
    description: " Total Revenues / Total Costs"
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_cost},0) ;;
    value_format: "0.##"

    value_format_name: decimal_2

  }

  measure:cpm {
    label: "CPM"
    description: " Total Cost / Total Impressions"
    type: number
    sql: 1.0*${total_cost}/nullif(${total_impressions},0)*1000 ;;
    value_format:"$#.00"
  }

  measure: cpc {
    label: "CPC"
    description: " Total Cost / Total Clicks"
    type: number
    sql: 1.0*${total_cost}/nullif(${total_clicks},0) ;;
    value_format:"$#.00"
  }

  measure: cpa {
    label: "CPA"
    description: " Total Cost / Total Conversions"
    type: number
    sql: 1.0*${total_cost}/nullif(${total_conversions},0) ;;
    value_format: "$0.00"
  }

  measure: conv {
    label: "Conv %"
    description: " Total Conversions / Total Clicks"
    type: number
    sql: 1.0*${total_conversions}/nullif(${total_clicks},0);;
    value_format_name: percent_2
  }

  measure: total_ca_shp {
    label: "Total Revenues (Ecommerce Source)"
    description: " Total Revenues generated from ecommerce sales"
    type: sum
    value_format_name: usd_0
    sql: ${TABLE}.CA_SHP;;
  }

  measure: margin {
    type: number
    value_format_name: usd_0
    sql: 1.0*${total_ca_shp}/nullif(${total_cost},0) ;;
  }


}
