include: "/views/common_metrics.view"
view: googleads_ad {
  view_label: "Google Ads"
  sql_table_name: `positive-harbor-329408.source_supermetrics.GOOGLEADS_AD_*`;;
  extends: [common_metrics]

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

  dimension: campaign_type {
    type: string
    sql: CASE WHEN REGEXP_CONTAINS(campaign_name,"Shopping") THEN "Shopping"
              WHEN REGEXP_CONTAINS(campaign_name,"Brand") THEN "Brand"
              WHEN REGEXP_CONTAINS(campaign_name,"Performance Max") THEN "Performance Max"
         ELSE "Generic"
         END ;;
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

  dimension_group: date {
    type: time
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

  ### Period Analysis:

  # The common parameters and filters are located in the parameters view file.
  # This dimension creates the interval related to the current period and the previous period.
  dimension: current_vs_previous {
    label: "Current vs Previous Period"
    description: "Compare current date period versus previous period"
    hidden: yes
    type: string
    sql: case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Period'
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then 'Previous Period'
            end;;
  }

# This dimension creates the interval related to the current period and the previous year period.
  dimension: current_year_vs_previous_year {
    label: "Current Year vs Previous Year"
    description: "Compare current year period versus year"
    hidden: yes
    type: string
    sql:  case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Year '
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then 'Previous Year'
           end ;;
  }


  # This dimension is the one that should be selected in the explore/dashboard tile that's depend on the user's choice will show
  # the comparison between Previous Period or Previous Year Same period.
  dimension: selected_period {
    view_label: "Parameters"
    description: "Select date comparison type"
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%} ${current_vs_previous}
          {% elsif parameters.previous_comparison._parameter_value == 'previous_year' %} ${current_year_vs_previous_year}
          {% else %} ${current_vs_previous}
          {% endif %}
     ;;
  }

  measure: count {
    type: count
  }

  set: googleads_ad {
    fields: []
  }

}
