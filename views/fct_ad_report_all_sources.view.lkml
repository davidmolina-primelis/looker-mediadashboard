view: fct_ad_report_all_sources {
  sql_table_name: `positive-harbor-329408.mart_dossier.fct_ad_report_all_sources`;;

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
      year,
      time
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
    order_by_field: rank_source
    label: "Source - Paid media"
    description: "Paid media acquistion source"
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_no_adjustment {
    hidden: yes
    description: "It was necessary for a specific tile in Ecommerce Overview Dashboard"
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: rank_source {
    type: number
    description: "It's a field that is used to sort on a specific way the dimension called 'source'"
    hidden: yes
    sql: CASE WHEN ${source}='google ads' then 1
              WHEN ${source}='snapchat ads' then 2
              WHEN ${source}='facebook ads' then 3
              WHEN ${source}='youtube' then 4
              WHEN ${source}='pinterest ads' then 5
              WHEN ${source}='tiktok ads' then 6
              WHEN ${source}='influence' then 7
              WHEN ${source}='Adjustement line for revenue' then 8
              WHEN ${source}='adjustement shipping' then 9
              WHEN ${source}='Grand total KPIs' then 10
              WHEN ${source}='Grand total' then 11
          END;;
  }

  ### Period Analysis:

  # The common parameters and filters are located in the parameters view file.
  # This dimension creates the interval related to the current period and the previous period.
  dimension: current_vs_previous {
    label: "Current vs Previous Period"
    description: "Compare current date period versus previous period"
    hidden: yes
    type: string
    sql: case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Period'
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then 'Previous Period'
            end;;
  }

# This dimension creates the interval related to the current period and the previous year period.
  dimension: current_year_vs_previous_year {
    label: "Current Year vs Previous Year"
    description: "Compare current year period versus year"
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
    description: "Select date comparison type"
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%} ${current_vs_previous}
          {% elsif parameters.previous_comparison._parameter_value == 'previous_year' %} ${current_year_vs_previous_year}
          {% else %} ${current_vs_previous}
          {% endif %}
     ;;
  }

  dimension: date_reference {
    view_label: "Parameters"
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%}
          case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then
                concat(' From ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${start_date_current_period_year})
                      ,' To ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${end_date_current_period_year}))
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then
                concat(' From ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${start_date_previous_period})
                        ,' To ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${end_date_previous_period}))
            end
          {% else %}
          case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then
           concat(' From ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${start_date_current_period_year})
                      ,' To ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${end_date_current_period_year}))
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then
                concat(' From ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${start_date_previous_year})
                        ,' To ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${end_date_previous_year}))
           end
          {% endif %};;
  }

  dimension: start_date_current_period_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: date_add(date({% date_start parameters.choose_date %}), INTERVAL 1 day) ;;
  }

  dimension: end_date_current_period_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: date({% date_end parameters.choose_date %}) ;;
  }

  dimension: start_date_previous_period {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period}-1 day )) ;;
  }

  dimension: end_date_previous_period {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) ;;
  }

  dimension: start_date_previous_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: date_add((date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year )), INTERVAL 1 day);;
  }

  dimension: end_date_previous_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    type: string
    sql: (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) ;;
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
    label: "Total Revenues"
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

}
