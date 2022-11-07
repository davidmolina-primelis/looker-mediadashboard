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
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: click_through_rate {
    type: number
    sql: 1.0*${total_clicks}/nullif(${impressions},0) ;;
  }

  measure: total_conversion_value {
    type: sum
    sql: ${TABLE}.conversion_value ;;
  }

  measure: total_conversions {
    type: sum
    sql: ${TABLE}.conversions ;;
  }

  measure:averge_order_value {
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${impressions},0) ;;
  }

  measure:return_on_ad_spend {
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_cost},0) ;;
  }

  measure:cpm {
    type: number
    sql: 1.0*${total_cost}/nullif(${total_impressions},0)*1000 ;;
  }

}
