view: fbads_ad_20200101 {
  sql_table_name: `positive-harbor-329408.source_supermetrics.FBADS_AD_*`
    ;;

  dimension: account_id {
    type: string
    description: "The ID number of your ad account, which groups your advertising activity"
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    description: "The name of your ad account, which groups your advertising activity"
    sql: ${TABLE}.account_name ;;
  }

  dimension: action_app_custom_event {
    type: number
    description: "Please note that this field will be removed on 2019-05-13. Please note that this field will be removed on 2020-01-20"
    sql: ${TABLE}.action_app_custom_event ;;
  }

  dimension: action_app_custom_event_fb_mobile_achievement_unlocked {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_achievement_unlocked ;;
  }

  dimension: action_app_custom_event_fb_mobile_activate_app {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_activate_app ;;
  }

  dimension: action_app_custom_event_fb_mobile_add_payment_info {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_add_payment_info ;;
  }

  dimension: action_app_custom_event_fb_mobile_add_to_cart {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_add_to_cart ;;
  }

  dimension: action_app_custom_event_fb_mobile_add_to_wishlist {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_add_to_wishlist ;;
  }

  dimension: action_app_custom_event_fb_mobile_complete_registration {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_complete_registration ;;
  }

  dimension: action_app_custom_event_fb_mobile_content_view {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_content_view ;;
  }

  dimension: action_app_custom_event_fb_mobile_initiated_checkout {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_initiated_checkout ;;
  }

  dimension: action_app_custom_event_fb_mobile_level_achieved {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_level_achieved ;;
  }

  dimension: action_app_custom_event_fb_mobile_purchase {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_purchase ;;
  }

  dimension: action_app_custom_event_fb_mobile_search {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_search ;;
  }

  dimension: action_app_custom_event_fb_mobile_spent_credits {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_spent_credits ;;
  }

  dimension: action_app_custom_event_fb_mobile_tutorial_completion {
    type: number
    sql: ${TABLE}.action_app_custom_event_fb_mobile_tutorial_completion ;;
  }

  dimension: action_app_custom_event_other {
    type: number
    sql: ${TABLE}.action_app_custom_event_other ;;
  }

  dimension: action_app_engagement {
    type: number
    sql: ${TABLE}.action_app_engagement ;;
  }

  dimension: action_app_install {
    type: number
    sql: ${TABLE}.action_app_install ;;
  }

  dimension: action_app_story {
    type: number
    sql: ${TABLE}.action_app_story ;;
  }

  dimension: action_app_use {
    type: number
    sql: ${TABLE}.action_app_use ;;
  }

  dimension: action_checkin {
    type: number
    sql: ${TABLE}.action_checkin ;;
  }

  dimension: action_comment {
    type: number
    sql: ${TABLE}.action_comment ;;
  }

  dimension: action_credit_spent {
    type: number
    sql: ${TABLE}.action_credit_spent ;;
  }

  dimension: action_follow {
    type: number
    description: "Please note that this field will be removed on 2017-04-18"
    sql: ${TABLE}.action_follow ;;
  }

  dimension: action_games_plays {
    type: number
    sql: ${TABLE}.action_games_plays ;;
  }

  dimension: action_gift_sale {
    type: number
    description: "Please note that this field will be removed on 2017-04-18"
    sql: ${TABLE}.action_gift_sale ;;
  }

  dimension: action_leadgen_other {
    type: number
    description: "Please note that this field will be removed on 2020-03-25"
    sql: ${TABLE}.action_leadgen_other ;;
  }

  dimension: action_like {
    type: number
    sql: ${TABLE}.action_like ;;
  }

  dimension: action_link_click {
    type: number
    sql: ${TABLE}.action_link_click ;;
  }

  dimension: action_mention {
    type: number
    sql: ${TABLE}.action_mention ;;
  }

  dimension: action_mobile_app_install {
    type: number
    sql: ${TABLE}.action_mobile_app_install ;;
  }

  dimension: action_page_engagement {
    type: number
    sql: ${TABLE}.action_page_engagement ;;
  }

  dimension: action_photo_view {
    type: number
    sql: ${TABLE}.action_photo_view ;;
  }

  dimension: action_post {
    type: number
    sql: ${TABLE}.action_post ;;
  }

  dimension: action_post_engagement {
    type: number
    sql: ${TABLE}.action_post_engagement ;;
  }

  dimension: action_post_like {
    type: number
    sql: ${TABLE}.action_post_like ;;
  }

  dimension: action_receive_offer {
    type: number
    sql: ${TABLE}.action_receive_offer ;;
  }

  dimension: action_rsvp {
    type: number
    sql: ${TABLE}.action_rsvp ;;
  }

  dimension: action_tab_view {
    type: number
    sql: ${TABLE}.action_tab_view ;;
  }

  dimension: action_value {
    type: number
    sql: ${TABLE}.action_value ;;
  }

  dimension: action_value_app_custom_event_fb_mobile_purchase {
    type: number
    sql: ${TABLE}.action_value_app_custom_event_fb_mobile_purchase ;;
  }

  dimension: action_value_app_custom_event_fb_mobile_spent_credits {
    type: number
    sql: ${TABLE}.action_value_app_custom_event_fb_mobile_spent_credits ;;
  }

  dimension: action_video_play {
    type: number
    sql: ${TABLE}.action_video_play ;;
  }

  dimension: action_video_view {
    type: number
    sql: ${TABLE}.action_video_view ;;
  }

  dimension: actions {
    type: number
    sql: ${TABLE}.actions ;;
  }

  dimension: ad_bid_info {
    type: string
    sql: ${TABLE}.ad_bid_info ;;
  }

  dimension: ad_configured_status {
    type: string
    sql: ${TABLE}.ad_configured_status ;;
  }

  dimension: ad_group_budget_remaining {
    type: number
    sql: ${TABLE}.ad_group_budget_remaining ;;
  }

  dimension: ad_group_configured_status {
    type: string
    sql: ${TABLE}.ad_group_configured_status ;;
  }

  dimension: ad_group_daily_budget {
    type: number
    sql: ${TABLE}.ad_group_daily_budget ;;
  }

  dimension_group: ad_group_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ad_group_end_date ;;
  }

  dimension: ad_group_id {
    type: string
    description: "The unique ID of the ad set you're viewing in reports"
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_lifetime_budget {
    type: number
    sql: ${TABLE}.ad_group_lifetime_budget ;;
  }

  dimension: ad_group_name {
    type: string
    description: "The name of the ad set that you're viewing in reporting"
    sql: ${TABLE}.ad_group_name ;;
  }

  dimension_group: ad_group_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ad_group_start_date ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }

  dimension_group: ad_group_updated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ad_group_updated_date ;;
  }

  dimension: ad_id {
    type: string
    description: "The unique ID of the ad that you're viewing in reporting"
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    description: "The name of the ad that you're viewing in the report"
    sql: ${TABLE}.ad_name ;;
  }

  dimension: ad_status {
    type: string
    sql: ${TABLE}.ad_status ;;
  }

  dimension: bid_amount {
    type: number
    sql: ${TABLE}.bid_amount ;;
  }

  dimension: bid_info {
    type: string
    sql: ${TABLE}.bid_info ;;
  }

  dimension: bid_type {
    type: string
    sql: ${TABLE}.bid_type ;;
  }

  dimension: call_to_action_clicks {
    type: number
    description: "The number of times people clicked the call-to-action button on your ad. Please note that this field will be removed on 2020-01-20"
    sql: ${TABLE}.call_to_action_clicks ;;
  }

  dimension: campaign_buying_type {
    type: string
    description: "The method by which you pay for and target ads in your campaigns: through dynamic auction bidding, fixed-price bidding, or reach and frequency buying"
    sql: ${TABLE}.campaign_buying_type ;;
  }

  dimension: campaign_configured_status {
    type: string
    sql: ${TABLE}.campaign_configured_status ;;
  }

  dimension_group: campaign_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaign_end_date ;;
  }

  dimension: campaign_id {
    type: string
    description: "The unique ID number of the advertising campaign that you're viewing in reporting"
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    description: "The name of the advertising campaign that you're viewing in reporting"
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_objective {
    type: string
    description: "The objective you selected for your campaign. Your objective reflects the goal you want to achieve with your advertising"
    sql: ${TABLE}.campaign_objective ;;
  }

  dimension_group: campaign_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaign_start_date ;;
  }

  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaign_status ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
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
    description: "Advertising cost converted to euros"
    sql: ${TABLE}.cost_eur ;;
  }

  dimension: cost_gbp {
    type: number
    description: "Advertising cost in your account currency"
    sql: ${TABLE}.cost_gbp ;;
  }

  dimension: cost_usd {
    type: number
    description: "Advertising cost converted to US dollars"
    sql: ${TABLE}.cost_usd ;;
  }

  dimension: creative_body {
    type: string
    sql: ${TABLE}.creative_body ;;
  }

  dimension: creative_call_to_action_type {
    type: string
    sql: ${TABLE}.creative_call_to_action_type ;;
  }

  dimension: creative_image_url {
    type: string
    sql: ${TABLE}.creative_image_url ;;
  }

  dimension: creative_link_url {
    type: string
    sql: ${TABLE}.creative_link_url ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: creative_object_story_spec_link {
    type: string
    sql: ${TABLE}.creative_object_story_spec_link ;;
  }

  dimension: creative_object_type {
    type: string
    sql: ${TABLE}.creative_object_type ;;
  }

  dimension: creative_object_url {
    type: string
    sql: ${TABLE}.creative_object_url ;;
  }

  dimension: creative_template_url {
    type: string
    sql: ${TABLE}.creative_template_url ;;
  }

  dimension: creative_thumbnail_url {
    type: string
    sql: ${TABLE}.creative_thumbnail_url ;;
  }

  dimension: creative_title {
    type: string
    sql: ${TABLE}.creative_title ;;
  }

  dimension: creative_url_tags {
    type: string
    sql: ${TABLE}.creative_url_tags ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: data_source_name {
    type: string
    description: "The name of the source for this data, as listed on supermetrics.com/docs"
    sql: ${TABLE}.data_source_name ;;
  }

  dimension_group: date {
    type: time
    description: "Date, e.g. 2017-01-31"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension_group: shard {
    type: time
    timeframes: [date, week, day_of_week, month, year]
    sql: TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d'))) ;;
  }



  dimension: destination_url {
    type: string
    sql: ${TABLE}.destination_url ;;
  }

  dimension: estimated_ad_recallers {
    type: number
    description: "An estimate of the number of additional people who may remember seeing your ads, if asked, within 2 days. This metric is only available for assets in the Brand Awareness Objective"
    sql: ${TABLE}.estimated_ad_recallers ;;
  }

  dimension: estimated_ad_recallers_lower_bound {
    type: number
    sql: ${TABLE}.estimated_ad_recallers_lower_bound ;;
  }

  dimension: estimated_ad_recallers_upper_bound {
    type: number
    sql: ${TABLE}.estimated_ad_recallers_upper_bound ;;
  }

  dimension: impression_device {
    type: string
    sql: ${TABLE}.impression_device ;;
  }

  dimension: impressions {
    type: number
    description: "The number of times your ads were on screen"
    sql: ${TABLE}.impressions ;;
  }

  dimension: landing_page_views {
    type: number
    sql: ${TABLE}.landing_page_views ;;
  }

  dimension: offline_conversions_leads {
    type: number
    sql: ${TABLE}.offline_conversions_leads ;;
  }

  dimension: offline_other_conversion {
    type: number
    sql: ${TABLE}.offline_other_conversion ;;
  }

  dimension: offsite_conversion_value_fb_pixel_add_payment_info {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_add_payment_info ;;
  }

  dimension: offsite_conversion_value_fb_pixel_add_to_cart {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_add_to_cart ;;
  }

  dimension: offsite_conversion_value_fb_pixel_add_to_wishlist {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_add_to_wishlist ;;
  }

  dimension: offsite_conversion_value_fb_pixel_complete_registration {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_complete_registration ;;
  }

  dimension: offsite_conversion_value_fb_pixel_custom {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_custom ;;
  }

  dimension: offsite_conversion_value_fb_pixel_initiate_checkout {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_initiate_checkout ;;
  }

  dimension: offsite_conversion_value_fb_pixel_lead {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_lead ;;
  }

  dimension: offsite_conversion_value_fb_pixel_purchase {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_purchase ;;
  }

  dimension: offsite_conversion_value_fb_pixel_search {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_search ;;
  }

  dimension: offsite_conversion_value_fb_pixel_view_content {
    type: number
    sql: ${TABLE}.offsite_conversion_value_fb_pixel_view_content ;;
  }

  dimension: offsite_conversions {
    type: number
    sql: ${TABLE}.offsite_conversions ;;
  }

  dimension: offsite_conversions_fb_pixel_add_payment_info {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_add_payment_info ;;
  }

  dimension: offsite_conversions_fb_pixel_add_to_cart {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_add_to_cart ;;
  }

  dimension: offsite_conversions_fb_pixel_add_to_wishlist {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_add_to_wishlist ;;
  }

  dimension: offsite_conversions_fb_pixel_complete_registration {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_complete_registration ;;
  }

  dimension: offsite_conversions_fb_pixel_custom {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_custom ;;
  }

  dimension: offsite_conversions_fb_pixel_initiate_checkout {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_initiate_checkout ;;
  }

  dimension: offsite_conversions_fb_pixel_lead {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_lead ;;
  }

  dimension: offsite_conversions_fb_pixel_purchase {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_purchase ;;
  }

  dimension: offsite_conversions_fb_pixel_search {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_search ;;
  }

  dimension: offsite_conversions_fb_pixel_view_content {
    type: number
    sql: ${TABLE}.offsite_conversions_fb_pixel_view_content ;;
  }

  dimension: offsite_conversions_key_page_view {
    type: number
    description: "Please note that this field will be removed on 2019-05-13. Please note that this field will be removed on 2020-01-20"
    sql: ${TABLE}.offsite_conversions_key_page_view ;;
  }

  dimension: offsite_conversions_leads {
    type: number
    description: "Please note that this field will be removed on 2019-05-13. Please note that this field will be removed on 2020-01-20"
    sql: ${TABLE}.offsite_conversions_leads ;;
  }

  dimension: offsite_conversions_other {
    type: number
    description: "Please note that this field will be removed on 2019-05-13. Please note that this field will be removed on 2020-01-20"
    sql: ${TABLE}.offsite_conversions_other ;;
  }

  dimension: offsite_conversions_registrations {
    type: number
    description: "Please note that this field will be removed on 2019-05-13. Please note that this field will be removed on 2020-01-20"
    sql: ${TABLE}.offsite_conversions_registrations ;;
  }

  dimension: onsite_conversion_lead_grouped {
    type: number
    sql: ${TABLE}.onsite_conversion_lead_grouped ;;
  }

  dimension: outbound_clicks {
    type: number
    description: "The number of clicks on links that take people off Facebook-owned properties"
    sql: ${TABLE}.outbound_clicks ;;
  }

  dimension: platform_position {
    type: string
    sql: ${TABLE}.platform_position ;;
  }

  dimension: post_save {
    type: number
    sql: ${TABLE}.post_save ;;
  }

  dimension: promoted_post_caption {
    type: string
    sql: ${TABLE}.promoted_post_caption ;;
  }

  dimension_group: promoted_post_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.promoted_post_created_date ;;
  }

  dimension: promoted_post_description {
    type: string
    sql: ${TABLE}.promoted_post_description ;;
  }

  dimension: promoted_post_destination_url {
    type: string
    sql: ${TABLE}.promoted_post_destination_url ;;
  }

  dimension: promoted_post_full_picture {
    type: string
    sql: ${TABLE}.promoted_post_full_picture ;;
  }

  dimension: promoted_post_icon {
    type: string
    sql: ${TABLE}.promoted_post_icon ;;
  }

  dimension: promoted_post_id {
    type: string
    sql: ${TABLE}.promoted_post_id ;;
  }

  dimension: promoted_post_ig_id {
    type: string
    sql: ${TABLE}.promoted_post_ig_id ;;
  }

  dimension: promoted_post_message {
    type: string
    sql: ${TABLE}.promoted_post_message ;;
  }

  dimension: promoted_post_name {
    type: string
    sql: ${TABLE}.promoted_post_name ;;
  }

  dimension: promoted_post_permalink_ig_url {
    type: string
    sql: ${TABLE}.promoted_post_permalink_ig_url ;;
  }

  dimension: promoted_post_permalink_url {
    type: string
    sql: ${TABLE}.promoted_post_permalink_url ;;
  }

  dimension: promoted_post_picture {
    type: string
    sql: ${TABLE}.promoted_post_picture ;;
  }

  dimension: promoted_post_privacy {
    type: string
    sql: ${TABLE}.promoted_post_privacy ;;
  }

  dimension: promoted_post_privacy_description {
    type: string
    sql: ${TABLE}.promoted_post_privacy_description ;;
  }

  dimension: promoted_post_source {
    type: string
    sql: ${TABLE}.promoted_post_source ;;
  }

  dimension: promoted_post_story {
    type: string
    sql: ${TABLE}.promoted_post_story ;;
  }

  dimension: promoted_post_type {
    type: string
    sql: ${TABLE}.promoted_post_type ;;
  }

  dimension: publisher_platform {
    type: string
    description: "Distinguishes between platforms like Facebook and Instagram"
    sql: ${TABLE}.publisher_platform ;;
  }

  dimension: reach {
    type: number
    description: "The number of people who saw your ads at least once. Reach is different from impressions, which may include multiple views of your ads by the same people"
    sql: ${TABLE}.reach ;;
  }

  dimension: reach_28_d {
    type: number
    description: "The number of people who saw your ads at least once in the last 28 days. Reach is different from impressions, which may include multiple views of your ads by the same people"
    sql: ${TABLE}.reach_28_d ;;
  }

  dimension: reach_7_d {
    type: number
    description: "The number of people who saw your ads at least once in the last 7 days. Reach is different from impressions, which may include multiple views of your ads by the same people"
    sql: ${TABLE}.reach_7_d ;;
  }

  dimension: spend_cap {
    type: number
    sql: ${TABLE}.spend_cap ;;
  }

  dimension: timezone_id {
    type: string
    sql: ${TABLE}.timezone_id ;;
  }

  dimension: unique_action_comment {
    type: number
    sql: ${TABLE}.unique_action_comment ;;
  }

  dimension: unique_action_follow {
    type: number
    description: "Please note that this field will be removed on 2017-04-18"
    sql: ${TABLE}.unique_action_follow ;;
  }

  dimension: unique_action_like {
    type: number
    sql: ${TABLE}.unique_action_like ;;
  }

  dimension: unique_action_link_click {
    type: number
    sql: ${TABLE}.unique_action_link_click ;;
  }

  dimension: unique_action_mention {
    type: number
    sql: ${TABLE}.unique_action_mention ;;
  }

  dimension: unique_action_page_engagement {
    type: number
    sql: ${TABLE}.unique_action_page_engagement ;;
  }

  dimension: unique_action_photo_view {
    type: number
    sql: ${TABLE}.unique_action_photo_view ;;
  }

  dimension: unique_action_post {
    type: number
    sql: ${TABLE}.unique_action_post ;;
  }

  dimension: unique_action_post_engagement {
    type: number
    sql: ${TABLE}.unique_action_post_engagement ;;
  }

  dimension: unique_action_post_reaction {
    type: number
    sql: ${TABLE}.unique_action_post_reaction ;;
  }

  dimension: unique_action_video_play {
    type: number
    sql: ${TABLE}.unique_action_video_play ;;
  }

  dimension: unique_action_video_view {
    type: number
    sql: ${TABLE}.unique_action_video_view ;;
  }

  dimension: unique_actions {
    type: number
    description: "The number of people who took an action that was attributed to your ads"
    sql: ${TABLE}.unique_actions ;;
  }

  dimension: unique_clicks {
    type: number
    sql: ${TABLE}.unique_clicks ;;
  }

  dimension: unique_inline_link_clicks {
    type: number
    description: "The number of people who performed an inline link click"
    sql: ${TABLE}.unique_inline_link_clicks ;;
  }

  dimension: unique_outbound_clicks {
    type: number
    description: "The number of people who performed an outbound click"
    sql: ${TABLE}.unique_outbound_clicks ;;
  }

  dimension: utm_campaign {
    type: string
    description: "Value of the utm_campaign parameter extracted from the ad destination URL"
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    description: "Value of the utm_content parameter extracted from the ad destination URL"
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    type: string
    description: "Value of the utm_medium parameter extracted from the ad destination URL"
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    description: "Value of the utm_source parameter extracted from the ad destination URL"
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    type: string
    description: "Value of the utm_term parameter extracted from the ad destination URL"
    sql: ${TABLE}.utm_term ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
    value_format_name: usd_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      creative_name,
      data_source_name,
      promoted_post_name,
      account_name,
      ad_name,
      ad_group_name,
      campaign_name
    ]
  }
}
