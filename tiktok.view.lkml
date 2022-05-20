view: tiktok {
  derived_table: {
    sql: SELECT * FROM `positive-harbor-329408.source_supermetrics.TIK_AD_20220426` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.ad_group_name ;;
  }

  dimension: ad_group_opt_status {
    type: string
    sql: ${TABLE}.ad_group_opt_status ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: ad_opt_status {
    type: string
    sql: ${TABLE}.ad_opt_status ;;
  }

  dimension: ad_status {
    type: string
    sql: ${TABLE}.ad_status ;;
  }

  dimension: ad_text {
    type: string
    sql: ${TABLE}.ad_text ;;
  }

  dimension: adgroup_placement {
    type: string
    sql: ${TABLE}.adgroup_placement ;;
  }

  dimension: advertiser_address {
    type: string
    sql: ${TABLE}.advertiser_address ;;
  }

  dimension: advertiser_balance {
    type: number
    sql: ${TABLE}.advertiser_balance ;;
  }

  dimension: advertiser_company {
    type: string
    sql: ${TABLE}.advertiser_company ;;
  }

  dimension: advertiser_country {
    type: string
    sql: ${TABLE}.advertiser_country ;;
  }

  dimension: advertiser_currency {
    type: string
    sql: ${TABLE}.advertiser_currency ;;
  }

  dimension: advertiser_email {
    type: string
    sql: ${TABLE}.advertiser_email ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: advertiser_license_number {
    type: string
    sql: ${TABLE}.advertiser_license_number ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }

  dimension: advertiser_phone_number {
    type: string
    sql: ${TABLE}.advertiser_phone_number ;;
  }

  dimension: advertiser_status {
    type: string
    sql: ${TABLE}.advertiser_status ;;
  }

  dimension: advertiser_timezone {
    type: string
    sql: ${TABLE}.advertiser_timezone ;;
  }

  dimension: app_download_url {
    type: string
    sql: ${TABLE}.app_download_url ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.app_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: app_package {
    type: string
    sql: ${TABLE}.app_package ;;
  }

  dimension: app_type {
    type: string
    sql: ${TABLE}.app_type ;;
  }

  dimension: audience_rule {
    type: string
    sql: ${TABLE}.audience_rule ;;
  }

  dimension: audience_type {
    type: string
    sql: ${TABLE}.audience_type ;;
  }

  dimension: bid {
    type: number
    sql: ${TABLE}.bid ;;
  }

  dimension: bid_type {
    type: string
    sql: ${TABLE}.bid_type ;;
  }

  dimension: billing_method {
    type: string
    sql: ${TABLE}.billing_method ;;
  }

  dimension: call_to_action {
    type: string
    sql: ${TABLE}.call_to_action ;;
  }

  dimension: campaign_budget {
    type: number
    sql: ${TABLE}.campaign_budget ;;
  }

  dimension: campaign_budget_mode {
    type: string
    sql: ${TABLE}.campaign_budget_mode ;;
  }

  dimension: campaign_creation_date {
    type: date
    datatype: date
    sql: ${TABLE}.campaign_creation_date ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_modify_date {
    type: date
    datatype: date
    sql: ${TABLE}.campaign_modify_date ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_objective_type {
    type: string
    sql: ${TABLE}.campaign_objective_type ;;
  }

  dimension: campaign_operation_status {
    type: string
    sql: ${TABLE}.campaign_operation_status ;;
  }

  dimension: conversion_bid {
    type: number
    sql: ${TABLE}.conversion_bid ;;
  }

  dimension: cpv_video_duration {
    type: string
    sql: ${TABLE}.cpv_video_duration ;;
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

  dimension: deep_bid_type {
    type: string
    sql: ${TABLE}.deep_bid_type ;;
  }

  dimension: deep_cpabid {
    type: number
    sql: ${TABLE}.deep_cpabid ;;
  }

  dimension: deep_external_action {
    type: string
    sql: ${TABLE}.deep_external_action ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: external_action {
    type: string
    sql: ${TABLE}.external_action ;;
  }

  dimension: image_mode {
    type: string
    sql: ${TABLE}.image_mode ;;
  }

  dimension: is_comment_disable {
    type: yesno
    sql: ${TABLE}.is_comment_disable ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: landing_page_url {
    type: string
    sql: ${TABLE}.landing_page_url ;;
  }

  dimension: optimize_goal {
    type: string
    sql: ${TABLE}.optimize_goal ;;
  }

  dimension: pacing {
    type: string
    sql: ${TABLE}.pacing ;;
  }

  dimension: pixel_id {
    type: string
    sql: ${TABLE}.pixel_id ;;
  }

  dimension: placement_type {
    type: string
    sql: ${TABLE}.placement_type ;;
  }

  dimension: playable_url {
    type: string
    sql: ${TABLE}.playable_url ;;
  }

  dimension: profile_image {
    type: string
    sql: ${TABLE}.profile_image ;;
  }

  dimension_group: schedule_end_time {
    type: time
    datatype: datetime
    sql: ${TABLE}.schedule_end_time ;;
  }

  dimension_group: schedule_start_time {
    type: time
    datatype: datetime
    sql: ${TABLE}.schedule_start_time ;;
  }

  dimension: schedule_type {
    type: string
    sql: ${TABLE}.schedule_type ;;
  }

  dimension: statistic_type {
    type: string
    sql: ${TABLE}.statistic_type ;;
  }

  dimension: target_age {
    type: string
    sql: ${TABLE}.target_age ;;
  }

  dimension: target_android_osv {
    type: string
    sql: ${TABLE}.target_android_osv ;;
  }

  dimension: target_connection_type {
    type: string
    sql: ${TABLE}.target_connection_type ;;
  }

  dimension: target_device_price {
    type: string
    sql: ${TABLE}.target_device_price ;;
  }

  dimension: target_gender {
    type: string
    sql: ${TABLE}.target_gender ;;
  }

  dimension: target_ios_osv {
    type: string
    sql: ${TABLE}.target_ios_osv ;;
  }

  dimension: target_languages {
    type: string
    sql: ${TABLE}.target_languages ;;
  }

  dimension: target_operation_system {
    type: string
    sql: ${TABLE}.target_operation_system ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  dimension: add_billing_events {
    type: number
    sql: ${TABLE}.add_billing_events ;;
  }

  dimension: app_install_events {
    type: number
    sql: ${TABLE}.app_install_events ;;
  }

  dimension: button_click_events {
    type: number
    sql: ${TABLE}.button_click_events ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: paid_comments {
    type: number
    sql: ${TABLE}.paid_comments ;;
  }

  dimension: complete_payment_events {
    type: number
    sql: ${TABLE}.complete_payment_events ;;
  }

  dimension: consultation_events {
    type: number
    sql: ${TABLE}.consultation_events ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: download_detail_page_events {
    type: number
    sql: ${TABLE}.download_detail_page_events ;;
  }

  dimension: paid_follows {
    type: number
    sql: ${TABLE}.paid_follows ;;
  }

  dimension: form_submission_events {
    type: number
    sql: ${TABLE}.form_submission_events ;;
  }

  dimension: form_detail_page_browse_events {
    type: number
    sql: ${TABLE}.form_detail_page_browse_events ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: initiate_checkout_events {
    type: number
    sql: ${TABLE}.initiate_checkout_events ;;
  }

  dimension: paid_likes {
    type: number
    sql: ${TABLE}.paid_likes ;;
  }

  dimension: web_place_order_events {
    type: number
    sql: ${TABLE}.web_place_order_events ;;
  }

  dimension: online_consultation_events {
    type: number
    sql: ${TABLE}.online_consultation_events ;;
  }

  dimension: page_browse_consultation_events {
    type: number
    sql: ${TABLE}.page_browse_consultation_events ;;
  }

  dimension: page_browse_events {
    type: number
    sql: ${TABLE}.page_browse_events ;;
  }

  dimension: product_details_page_browse_events {
    type: number
    sql: ${TABLE}.product_details_page_browse_events ;;
  }

  dimension: real_time_app_installs {
    type: number
    sql: ${TABLE}.real_time_app_installs ;;
  }

  dimension: real_time_conversions {
    type: number
    sql: ${TABLE}.real_time_conversions ;;
  }

  dimension: real_time_results {
    type: number
    sql: ${TABLE}.real_time_results ;;
  }

  dimension: results {
    type: number
    sql: ${TABLE}.results ;;
  }

  dimension: secondary_goal_result {
    type: number
    sql: ${TABLE}.secondary_goal_result ;;
  }

  dimension: paid_shares {
    type: number
    sql: ${TABLE}.paid_shares ;;
  }

  dimension: level_achieve_events {
    type: number
    sql: ${TABLE}.level_achieve_events ;;
  }

  dimension: level_achieve_value {
    type: number
    sql: ${TABLE}.level_achieve_value ;;
  }

  dimension: add_billing_value {
    type: number
    sql: ${TABLE}.add_billing_value ;;
  }

  dimension: add_payment_info_events {
    type: number
    sql: ${TABLE}.add_payment_info_events ;;
  }

  dimension: add_to_wishlist_events {
    type: number
    sql: ${TABLE}.add_to_wishlist_events ;;
  }

  dimension: add_to_wishlist_value {
    type: number
    sql: ${TABLE}.add_to_wishlist_value ;;
  }

  dimension: app_add_to_cart_events {
    type: number
    sql: ${TABLE}.app_add_to_cart_events ;;
  }

  dimension: app_add_to_cart_value {
    type: number
    sql: ${TABLE}.app_add_to_cart_value ;;
  }

  dimension: button_click_consultation_value {
    type: number
    sql: ${TABLE}.button_click_consultation_value ;;
  }

  dimension: button_click_value {
    type: number
    sql: ${TABLE}.button_click_value ;;
  }

  dimension: checkout_events {
    type: number
    sql: ${TABLE}.checkout_events ;;
  }

  dimension: checkout_value {
    type: number
    sql: ${TABLE}.checkout_value ;;
  }

  dimension: total_complete_payment_value {
    type: number
    sql: ${TABLE}.total_complete_payment_value ;;
  }

  dimension: complete_tutorial_events {
    type: number
    sql: ${TABLE}.complete_tutorial_events ;;
  }

  dimension: complete_tutorial_value {
    type: number
    sql: ${TABLE}.complete_tutorial_value ;;
  }

  dimension: consultation_value {
    type: number
    sql: ${TABLE}.consultation_value ;;
  }

  dimension: create_role_events {
    type: number
    sql: ${TABLE}.create_role_events ;;
  }

  dimension: create_role_value {
    type: number
    sql: ${TABLE}.create_role_value ;;
  }

  dimension: create_group_events {
    type: number
    sql: ${TABLE}.create_group_events ;;
  }

  dimension: create_group_value {
    type: number
    sql: ${TABLE}.create_group_value ;;
  }

  dimension: download_detail_page_value {
    type: number
    sql: ${TABLE}.download_detail_page_value ;;
  }

  dimension: download_button_value {
    type: number
    sql: ${TABLE}.download_button_value ;;
  }

  dimension: form_button_clicks_value {
    type: number
    sql: ${TABLE}.form_button_clicks_value ;;
  }

  dimension: form_detail_page_browse_value {
    type: number
    sql: ${TABLE}.form_detail_page_browse_value ;;
  }

  dimension: form_submission_value {
    type: number
    sql: ${TABLE}.form_submission_value ;;
  }

  dimension: in_app_ad_clicks {
    type: number
    sql: ${TABLE}.in_app_ad_clicks ;;
  }

  dimension: in_app_ad_click_value {
    type: number
    sql: ${TABLE}.in_app_ad_click_value ;;
  }

  dimension: in_app_ad_impressions {
    type: number
    sql: ${TABLE}.in_app_ad_impressions ;;
  }

  dimension: in_app_ad_impressions_value {
    type: number
    sql: ${TABLE}.in_app_ad_impressions_value ;;
  }

  dimension: initiate_checkout_value {
    type: number
    sql: ${TABLE}.initiate_checkout_value ;;
  }

  dimension: join_group_events {
    type: number
    sql: ${TABLE}.join_group_events ;;
  }

  dimension: join_group_value {
    type: number
    sql: ${TABLE}.join_group_value ;;
  }

  dimension: launch_app_events {
    type: number
    sql: ${TABLE}.launch_app_events ;;
  }

  dimension: loan_apply_events {
    type: number
    sql: ${TABLE}.loan_apply_events ;;
  }

  dimension: loan_approval_events {
    type: number
    sql: ${TABLE}.loan_approval_events ;;
  }

  dimension: loan_disbursement_events {
    type: number
    sql: ${TABLE}.loan_disbursement_events ;;
  }

  dimension: login_events {
    type: number
    sql: ${TABLE}.login_events ;;
  }

  dimension: next_day_open_events {
    type: number
    sql: ${TABLE}.next_day_open_events ;;
  }

  dimension: web_place_order_value {
    type: number
    sql: ${TABLE}.web_place_order_value ;;
  }

  dimension: online_consultation_value {
    type: number
    sql: ${TABLE}.online_consultation_value ;;
  }

  dimension: page_browse_consultation_value {
    type: number
    sql: ${TABLE}.page_browse_consultation_value ;;
  }

  dimension: page_search_value {
    type: number
    sql: ${TABLE}.page_search_value ;;
  }

  dimension: product_details_page_browse_value {
    type: number
    sql: ${TABLE}.product_details_page_browse_value ;;
  }

  dimension: purchase_events {
    type: number
    sql: ${TABLE}.purchase_events ;;
  }

  dimension: purchase_value {
    type: number
    sql: ${TABLE}.purchase_value ;;
  }

  dimension: registration_events {
    type: number
    sql: ${TABLE}.registration_events ;;
  }

  dimension: search_events {
    type: number
    sql: ${TABLE}.search_events ;;
  }

  dimension: spend_credits_events {
    type: number
    sql: ${TABLE}.spend_credits_events ;;
  }

  dimension: spend_credits_value {
    type: number
    sql: ${TABLE}.spend_credits_value ;;
  }

  dimension: start_trial_events {
    type: number
    sql: ${TABLE}.start_trial_events ;;
  }

  dimension: subscribe_events {
    type: number
    sql: ${TABLE}.subscribe_events ;;
  }

  dimension: subscribe_value {
    type: number
    sql: ${TABLE}.subscribe_value ;;
  }

  dimension: unlock_achievement_events {
    type: number
    sql: ${TABLE}.unlock_achievement_events ;;
  }

  dimension: unlock_achievement_value {
    type: number
    sql: ${TABLE}.unlock_achievement_value ;;
  }

  dimension: user_registration_value {
    type: number
    sql: ${TABLE}.user_registration_value ;;
  }

  dimension: view_content_events {
    type: number
    sql: ${TABLE}.view_content_events ;;
  }

  dimension: view_content_value {
    type: number
    sql: ${TABLE}.view_content_value ;;
  }

  dimension: web_add_to_cart_value {
    type: number
    sql: ${TABLE}.web_add_to_cart_value ;;
  }

  dimension: user_registration_events {
    type: number
    sql: ${TABLE}.user_registration_events ;;
  }

  dimension: video_play_actions {
    type: number
    sql: ${TABLE}.video_play_actions ;;
  }

  dimension: video_views_p100 {
    type: number
    sql: ${TABLE}.video_views_p100 ;;
  }

  dimension: video_views_p25 {
    type: number
    sql: ${TABLE}.video_views_p25 ;;
  }

  dimension: video_views_p50 {
    type: number
    sql: ${TABLE}.video_views_p50 ;;
  }

  dimension: video_views_p75 {
    type: number
    sql: ${TABLE}.video_views_p75 ;;
  }

  dimension: video_watched_2s {
    type: number
    sql: ${TABLE}.video_watched_2s ;;
  }

  dimension: video_watched_6s {
    type: number
    sql: ${TABLE}.video_watched_6s ;;
  }

  dimension: web_add_to_cart_events {
    type: number
    sql: ${TABLE}.web_add_to_cart_events ;;
  }

  set: detail {
    fields: [
      ad_group_id,
      ad_group_name,
      ad_group_opt_status,
      ad_group_status,
      ad_id,
      ad_name,
      ad_opt_status,
      ad_status,
      ad_text,
      adgroup_placement,
      advertiser_address,
      advertiser_balance,
      advertiser_company,
      advertiser_country,
      advertiser_currency,
      advertiser_email,
      advertiser_id,
      advertiser_license_number,
      advertiser_name,
      advertiser_phone_number,
      advertiser_status,
      advertiser_timezone,
      app_download_url,
      app_id,
      app_name,
      app_package,
      app_type,
      audience_rule,
      audience_type,
      bid,
      bid_type,
      billing_method,
      call_to_action,
      campaign_budget,
      campaign_budget_mode,
      campaign_creation_date,
      campaign_id,
      campaign_modify_date,
      campaign_name,
      campaign_objective_type,
      campaign_operation_status,
      conversion_bid,
      cpv_video_duration,
      data_source_name,
      date,
      deep_bid_type,
      deep_cpabid,
      deep_external_action,
      display_name,
      external_action,
      image_mode,
      is_comment_disable,
      keywords,
      landing_page_url,
      optimize_goal,
      pacing,
      pixel_id,
      placement_type,
      playable_url,
      profile_image,
      schedule_end_time_time,
      schedule_start_time_time,
      schedule_type,
      statistic_type,
      target_age,
      target_android_osv,
      target_connection_type,
      target_device_price,
      target_gender,
      target_ios_osv,
      target_languages,
      target_operation_system,
      video_id,
      add_billing_events,
      app_install_events,
      button_click_events,
      clicks,
      paid_comments,
      complete_payment_events,
      consultation_events,
      conversions,
      cost,
      download_detail_page_events,
      paid_follows,
      form_submission_events,
      form_detail_page_browse_events,
      impressions,
      initiate_checkout_events,
      paid_likes,
      web_place_order_events,
      online_consultation_events,
      page_browse_consultation_events,
      page_browse_events,
      product_details_page_browse_events,
      real_time_app_installs,
      real_time_conversions,
      real_time_results,
      results,
      secondary_goal_result,
      paid_shares,
      level_achieve_events,
      level_achieve_value,
      add_billing_value,
      add_payment_info_events,
      add_to_wishlist_events,
      add_to_wishlist_value,
      app_add_to_cart_events,
      app_add_to_cart_value,
      button_click_consultation_value,
      button_click_value,
      checkout_events,
      checkout_value,
      total_complete_payment_value,
      complete_tutorial_events,
      complete_tutorial_value,
      consultation_value,
      create_role_events,
      create_role_value,
      create_group_events,
      create_group_value,
      download_detail_page_value,
      download_button_value,
      form_button_clicks_value,
      form_detail_page_browse_value,
      form_submission_value,
      in_app_ad_clicks,
      in_app_ad_click_value,
      in_app_ad_impressions,
      in_app_ad_impressions_value,
      initiate_checkout_value,
      join_group_events,
      join_group_value,
      launch_app_events,
      loan_apply_events,
      loan_approval_events,
      loan_disbursement_events,
      login_events,
      next_day_open_events,
      web_place_order_value,
      online_consultation_value,
      page_browse_consultation_value,
      page_search_value,
      product_details_page_browse_value,
      purchase_events,
      purchase_value,
      registration_events,
      search_events,
      spend_credits_events,
      spend_credits_value,
      start_trial_events,
      subscribe_events,
      subscribe_value,
      unlock_achievement_events,
      unlock_achievement_value,
      user_registration_value,
      view_content_events,
      view_content_value,
      web_add_to_cart_value,
      user_registration_events,
      video_play_actions,
      video_views_p100,
      video_views_p25,
      video_views_p50,
      video_views_p75,
      video_watched_2s,
      video_watched_6s,
      web_add_to_cart_events
    ]
  }
}
