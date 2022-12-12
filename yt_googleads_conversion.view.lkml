view: yt_googleads_conversion {
  derived_table: {
    sql: select * from `positive-harbor-329408.source_youtube.GOOGLEADS_CONVERSION_*`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: advertising_channel_sub_type {
    type: string
    sql: ${TABLE}.advertising_channel_sub_type ;;
  }

  dimension: advertising_channel_type {
    type: string
    sql: ${TABLE}.advertising_channel_type ;;
  }

  dimension: bidding_strategy {
    type: string
    sql: ${TABLE}.bidding_strategy ;;
  }

  dimension: bidding_strategy_id {
    type: string
    sql: ${TABLE}.bidding_strategy_id ;;
  }

  dimension: bidding_strategy_type {
    type: string
    sql: ${TABLE}.bidding_strategy_type ;;
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

  dimension: conversion_category {
    type: string
    sql: ${TABLE}.conversion_category ;;
  }

  dimension: conversion_tracker_id {
    type: string
    sql: ${TABLE}.conversion_tracker_id ;;
  }

  dimension: conversion_type_name {
    type: string
    sql: ${TABLE}.conversion_type_name ;;
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

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: external_conversion_source {
    type: string
    sql: ${TABLE}.external_conversion_source ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: estimated_cross_device_conversions {
    type: number
    sql: ${TABLE}.estimated_cross_device_conversions ;;
  }

  dimension: estimated_total_conversions {
    type: number
    sql: ${TABLE}.estimated_total_conversions ;;
  }

  dimension: estimated_total_conversion_value {
    type: number
    sql: ${TABLE}.estimated_total_conversion_value ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.view_through_conversions ;;
  }

  set: detail {
    fields: [
      account_name,
      advertising_channel_sub_type,
      advertising_channel_type,
      bidding_strategy,
      bidding_strategy_id,
      bidding_strategy_type,
      campaign_id,
      campaign_labels,
      campaign_name,
      campaign_status,
      conversion_category,
      conversion_tracker_id,
      conversion_type_name,
      data_source_name,
      date,
      device,
      external_conversion_source,
      network,
      account_id,
      conversions,
      conversion_value,
      estimated_cross_device_conversions,
      estimated_total_conversions,
      estimated_total_conversion_value,
      view_through_conversions
    ]
  }
}
