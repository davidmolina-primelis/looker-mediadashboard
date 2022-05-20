view: bingads {
  derived_table: {
    sql: SELECT * FROM `positive-harbor-329408.source_supermetrics.BINGADS_AD_20220102` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

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

  dimension: date {
    type: date
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

  set: detail {
    fields: [
      account_id,
      account_name,
      account_number,
      description,
      ad_distribution,
      ad_group_id,
      ad_group_labels,
      ad_group_name,
      ad_group_status,
      ad_id,
      ad_labels,
      ad_path_1,
      ad_path_2,
      ad_status,
      ad_title,
      ad_title_part_1,
      ad_title_part_2,
      ad_type,
      bid_match_type,
      campaign_id,
      campaign_name,
      currency,
      data_source_name,
      date,
      delivered_match_type,
      destination_url,
      device_os,
      device_type,
      final_url,
      network,
      top_vs_other,
      utm_campaign,
      utm_content,
      utm_medium,
      utm_source,
      utm_term,
      clicks,
      conversions,
      impressions,
      revenue,
      cost,
      cost_eur,
      cost_gbp,
      cost_usd
    ]
  }
}
