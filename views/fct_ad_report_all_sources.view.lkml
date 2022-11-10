view: fct_ad_report_all_sources {
  sql_table_name: `positive-harbor-329408.mart_dossier.fct_ad_report_all_sources`
    ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${date_date},${source}) ;;
  }

  dimension_group: date {
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
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }


  dimension: current_vs_previous {
    hidden: yes
    type: string
    sql: case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Period'
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then 'Previous Period'
            end;;
  }

  dimension: current_year_vs_previous_year {
    hidden: yes
    type: string
    sql:  case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Year '
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then 'Previous Year'
           end ;;
  }

  dimension: selected_period {
    view_label: "Parameters"
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%} ${current_vs_previous}
          {% elsif parameters.previous_comparison._parameter_value == 'previous_year' %} ${current_year_vs_previous_year}
          {% else %} ${current_vs_previous}
          {% endif %}
     ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_cost {
    type: sum
    sql: ${TABLE}.cost ;;
    value_format_name: usd_0
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: click_through_rate {
    type: number
    sql: 1.0*${total_clicks}/nullif(${total_impressions},0) ;;
    value_format: "0.00%"
  }

  measure: total_conversion_value {
    label: "Conversion Value"
    type: sum
    sql: ${TABLE}.conversion_value ;;
  }

  measure: total_conversions {
    type: sum
    sql: ${TABLE}.conversions ;;
    value_format: "#,##0"
  }

  ### check this measure ###

  measure:average_order_value {
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_impressions},0) ;;
  }

  # measure: aov {
  #   type: sum
  #   sql: 1.0*${conversion_value}/nullif(${conversions},0) ;;
  # }

  measure:return_on_ad_spend {
    label: "ROAS"
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_cost},0) ;;
    value_format: "0.##"
  }

  measure:cpm {
    type: number
    sql: 1.0*${total_cost}/nullif(${total_impressions},0)*1000 ;;
    value_format:"$#.00"
  }

  measure: cpc {
    type: number
    sql: 1.0*${total_cost}/nullif(${total_clicks},0) ;;
    value_format:"$#.00"
  }

   measure: CPA {
    type: number
    sql: 1.0*${total_cost}/nullif(${total_conversions},0) ;;
    value_format: "$0.00"
    }

   ### check this measure ###
  measure: Conv {
    label: "Conv %"
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_clicks},0);;
  }

}
