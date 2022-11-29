view: googleads_ad {
  view_label: "Google Ads"
  sql_table_name: `positive-harbor-329408.source_supermetrics.GOOGLEADS_AD_*`;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: ad_approval_status {
    type: string
    sql: ${TABLE}.ad_approval_status ;;
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

  dimension: ad_status {
    type: string
    sql: ${TABLE}.ad_status ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_labels {
    type: string
    sql: ${TABLE}.campaign_labels ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaign_status ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: custom_url_parameters {
    type: string
    sql: ${TABLE}.custom_url_parameters ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: description_1 {
    type: string
    sql: ${TABLE}.description_1 ;;
  }

  dimension: description_2 {
    type: string
    sql: ${TABLE}.description_2 ;;
  }

  dimension: destination_url {
    type: string
    sql: ${TABLE}.destination_url ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: device_preference {
    type: string
    sql: ${TABLE}.device_preference ;;
  }

  dimension: display_url {
    type: string
    sql: ${TABLE}.display_url ;;
  }

  dimension: final_url {
    type: string
    sql: ${TABLE}.final_url ;;
  }

  dimension: headline {
    type: string
    sql: ${TABLE}.headline ;;
  }

  dimension: headline_part_1 {
    type: string
    sql: ${TABLE}.headline_part_1 ;;
  }

  dimension: headline_part_2 {
    type: string
    sql: ${TABLE}.headline_part_2 ;;
  }

  dimension: headline_part_3 {
    type: string
    sql: ${TABLE}.headline_part_3 ;;
  }

  dimension: image_ad_name {
    type: string
    sql: ${TABLE}.image_ad_name ;;
  }

  dimension: image_ad_url {
    type: string
    sql: ${TABLE}.image_ad_url ;;
  }

  dimension: image_creative_image_height {
    type: number
    sql: ${TABLE}.image_creative_image_height ;;
  }

  dimension: image_creative_image_width {
    type: number
    sql: ${TABLE}.image_creative_image_width ;;
  }

  dimension: long_headline {
    type: string
    sql: ${TABLE}.long_headline ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: network_with_search_partners {
    type: string
    sql: ${TABLE}.network_with_search_partners ;;
  }

  dimension: path_1 {
    type: string
    sql: ${TABLE}.path_1 ;;
  }

  dimension: path_2 {
    type: string
    sql: ${TABLE}.path_2 ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.slot ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: short_headline {
    type: string
    sql: ${TABLE}.short_headline ;;
  }

  dimension: text_ad_description_1 {
    type: string
    sql: ${TABLE}.text_ad_description_1 ;;
  }

  dimension: text_ad_description_2 {
    type: string
    sql: ${TABLE}.text_ad_description_2 ;;
  }

  dimension: tracking_url_template {
    type: string
    sql: ${TABLE}.tracking_url_template ;;
  }

  dimension: active_view_impressions {
    type: number
    sql: ${TABLE}.active_view_impressions ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.average_position ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
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

  dimension: engagements {
    type: number
    sql: ${TABLE}.engagements ;;
  }

  dimension: gmail_forwards {
    type: number
    sql: ${TABLE}.gmail_forwards ;;
  }

  dimension: gmail_saves {
    type: number
    sql: ${TABLE}.gmail_saves ;;
  }

  dimension: gmail_secondary_clicks {
    type: number
    sql: ${TABLE}.gmail_secondary_clicks ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.interactions ;;
  }

  dimension: video_impressions {
    type: number
    sql: ${TABLE}.video_impressions ;;
  }

  dimension: video_quartile_100_views {
    type: number
    sql: ${TABLE}.video_quartile_100_views ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}.video_views ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.view_through_conversions ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      account_name,
      ad_approval_status,
      ad_group_id,
      ad_group_labels,
      ad_group_name,
      ad_group_status,
      ad_id,
      ad_labels,
      ad_status,
      ad_type,
      campaign_id,
      campaign_labels,
      campaign_name,
      campaign_status,
      currency,
      custom_url_parameters,
      data_source_name,
      date,
      description,
      description_1,
      description_2,
      destination_url,
      device,
      device_preference,
      display_url,
      final_url,
      headline,
      headline_part_1,
      headline_part_2,
      headline_part_3,
      image_ad_name,
      image_ad_url,
      image_creative_image_height,
      image_creative_image_width,
      long_headline,
      network,
      network_with_search_partners,
      path_1,
      path_2,
      slot,
      account_id,
      short_headline,
      text_ad_description_1,
      text_ad_description_2,
      tracking_url_template,
      active_view_impressions,
      average_position,
      clicks,
      conversions,
      conversion_value,
      cost,
      cost_eur,
      cost_gbp,
      cost_usd,
      engagements,
      gmail_forwards,
      gmail_saves,
      gmail_secondary_clicks,
      impressions,
      interactions,
      video_impressions,
      video_quartile_100_views,
      video_views,
      view_through_conversions
    ]
  }
}
