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

  measure: total_conversions {
    type: sum
    sql: ${conversions};;
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks};;
  }

  measure: per_conv {
    type: number
    sql: ${total_conversions}/${total_clicks};;
  }

  measure: total_cost {
    type: sum
    sql: ${cost}
    value_format_name :  usd;;
  }

  measure: CPA {
    type: number
    sql: ${total_conversions}/${total_clicks}
    value_format_name :  usd;;
  }

  measure: CPC {
    type: number
    sql: ${total_cost}/${total_clicks}
      value_format_name :  usd;;
  }

}
