view: bing_ads {
  sql_table_name: `positive-harbor-329408.source_supermetrics.BINGADS_AD_*`;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: ad_distribution {
    type: string
    sql: ${TABLE}.ad_distribution ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_labels {
    type: string
    sql: ${TABLE}.ad_group_labels ;;
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.ad_group_name ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_labels {
    type: string
    sql: ${TABLE}.ad_labels ;;
  }

  dimension: ad_path_1 {
    type: string
    sql: ${TABLE}.ad_path_1 ;;
  }

  dimension: ad_path_2 {
    type: string
    sql: ${TABLE}.ad_path_2 ;;
  }

  dimension: ad_status {
    type: string
    sql: ${TABLE}.ad_status ;;
  }

  dimension: ad_title {
    type: string
    sql: ${TABLE}.ad_title ;;
  }

  dimension: ad_title_part_1 {
    type: string
    sql: ${TABLE}.ad_title_part_1 ;;
  }

  dimension: ad_title_part_2 {
    type: string
    sql: ${TABLE}.ad_title_part_2 ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: bid_match_type {
    type: string
    sql: ${TABLE}.bid_match_type ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: data_source_name {
    type: string
    sql: ${TABLE}.data_source_name ;;
  }

  dimension_group: date {
    type: time
    timeframes: [date,month,week,year]
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: delivered_match_type {
    type: string
    sql: ${TABLE}.delivered_match_type ;;
  }

  dimension: destination_url {
    type: string
    sql: ${TABLE}.destination_url ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: final_url {
    type: string
    sql: ${TABLE}.final_url ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: top_vs_other {
    type: string
    sql: ${TABLE}.top_vs_other ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_eur {
    type: number
    sql: ${TABLE}.cost_eur ;;
  }

  dimension: cost_gbp {
    type: number
    sql: ${TABLE}.cost_gbp ;;
  }

  dimension: cost_usd {
    type: number
    sql: ${TABLE}.cost_usd ;;
  }

  measure: count {
    type: count
  }

}
