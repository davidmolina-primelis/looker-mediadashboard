view: snapchat_ads {
  view_label: "Snapchat Ads"
  sql_table_name: `positive-harbor-329408.source_supermetrics.SCM_SNAPCHAT_STORY_OPEN_SWIPE_UP_*`;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${ad_id},${date}) ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: ad_squad_bid {
    type: number
    sql: ${TABLE}.ad_squad_bid ;;
  }

  dimension: ad_squad_daily_budget {
    type: number
    sql: ${TABLE}.ad_squad_daily_budget ;;
  }

  dimension: ad_squad_id {
    type: string
    sql: ${TABLE}.ad_squad_id ;;
  }

  dimension: ad_squad_name {
    type: string
    sql: ${TABLE}.ad_squad_name ;;
  }

  dimension: ad_status {
    type: string
    sql: ${TABLE}.ad_status ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: campaign_end_time {
    type: date
    datatype: date
    sql: ${TABLE}.campaign_end_time ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_lifetime_spend_cap {
    type: number
    sql: ${TABLE}.campaign_lifetime_spend_cap ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_start_date {
    type: date
    datatype: date
    sql: ${TABLE}.campaign_start_date ;;
  }

  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaign_status ;;
  }

  dimension: creative_id {
    type: string
    sql: ${TABLE}.creative_id ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: creative_type {
    type: string
    sql: ${TABLE}.creative_type ;;
  }

  dimension: creative_webview_url {
    type: string
    sql: ${TABLE}.creative_webview_url ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: conversion_ad_click {
    type: number
    sql: ${TABLE}.conversion_ad_click ;;
  }

  dimension: conversion_ad_click_swipe_up {
    type: number
    sql: ${TABLE}.conversion_ad_click_swipe_up ;;
  }

  dimension: conversion_add_cart {
    type: number
    sql: ${TABLE}.conversion_add_cart ;;
  }

  dimension: conversion_add_cart_swipe_up {
    type: number
    sql: ${TABLE}.conversion_add_cart_swipe_up ;;
  }

  dimension: conversion_add_cart_view {
    type: number
    sql: ${TABLE}.conversion_add_cart_view ;;
  }

  dimension: conversion_page_views {
    type: number
    sql: ${TABLE}.conversion_page_views ;;
  }

  dimension: conversion_page_views_swipe_up {
    type: number
    sql: ${TABLE}.conversion_page_views_swipe_up ;;
  }

  dimension: conversion_purchases {
    type: number
    sql: ${TABLE}.conversion_purchases ;;
  }

  dimension: conversion_purchases_swipe_up {
    type: number
    sql: ${TABLE}.conversion_purchases_swipe_up ;;
  }

  dimension: conversion_purchases_value {
    type: number
    sql: ${TABLE}.conversion_purchases_value ;;
  }

  dimension: conversion_purchases_value_swipe_up {
    type: number
    sql: ${TABLE}.conversion_purchases_value_swipe_up ;;
  }

  dimension: conversion_purchases_value_view {
    type: number
    sql: ${TABLE}.conversion_purchases_value_view ;;
  }

  dimension: conversion_purchases_view {
    type: number
    sql: ${TABLE}.conversion_purchases_view ;;
  }

  dimension: conversion_start_checkout {
    type: number
    sql: ${TABLE}.conversion_start_checkout ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_eur {
    type: number
    sql: ${TABLE}.cost_eur ;;
  }

  dimension: cost_usd {
    type: number
    sql: ${TABLE}.cost_usd ;;
  }

  dimension: effective_cost_per_install {
    type: number
    sql: ${TABLE}.effective_cost_per_install ;;
  }

  dimension: effective_cost_per_swipe_up {
    type: number
    sql: ${TABLE}.effective_cost_per_swipe_up ;;
  }

  dimension: effective_cost_per_view {
    type: number
    sql: ${TABLE}.effective_cost_per_view ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: paid_ecpm {
    type: number
    sql: ${TABLE}.paid_ecpm ;;
  }

  dimension: paid_impressions {
    type: number
    sql: ${TABLE}.paid_impressions ;;
  }

  dimension: story_opens {
    type: number
    sql: ${TABLE}.story_opens ;;
  }

  dimension: swipe_up_percent {
    type: number
    sql: ${TABLE}.swipe_up_percent ;;
  }

  dimension: swipes {
    type: number
    sql: ${TABLE}.swipes ;;
  }

  dimension: unique_impressions {
    type: number
    sql: ${TABLE}.unique_impressions ;;
  }

  dimension: video_views {
    type: number
    sql: ${TABLE}.video_views ;;
  }
}
