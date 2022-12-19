view: ga_traffic {
    sql_table_name: `positive-harbor-329408.source_supermetrics.GA_TRAFFIC_*` ;;


  dimension: ad_content {
    type: string
    sql: ${TABLE}.ad_content ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channel_grouping ;;
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

  dimension: full_referrer {
    type: string
    sql: ${TABLE}.full_referrer ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }

  dimension: view_id {
    type: string
    sql: ${TABLE}.view_id ;;
  }

  dimension: referral_path {
    type: string
    sql: ${TABLE}.referral_path ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: ad_clicks {
    type: number
    sql: ${TABLE}.ad_clicks ;;
  }

  dimension: ad_cost {
    type: number
    sql: ${TABLE}.ad_cost ;;
  }

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: goal_10_completions {
    type: number
    sql: ${TABLE}.goal_10_completions ;;
  }

  dimension: goal_11_completions {
    type: number
    sql: ${TABLE}.goal_11_completions ;;
  }

  dimension: goal_12_completions {
    type: number
    sql: ${TABLE}.goal_12_completions ;;
  }

  dimension: goal_13_completions {
    type: number
    sql: ${TABLE}.goal_13_completions ;;
  }

  dimension: goal_14_completions {
    type: number
    sql: ${TABLE}.goal_14_completions ;;
  }

  dimension: goal_15_completions {
    type: number
    sql: ${TABLE}.goal_15_completions ;;
  }

  dimension: goal_16_completions {
    type: number
    sql: ${TABLE}.goal_16_completions ;;
  }

  dimension: goal_17_completions {
    type: number
    sql: ${TABLE}.goal_17_completions ;;
  }

  dimension: goal_18_completions {
    type: number
    sql: ${TABLE}.goal_18_completions ;;
  }

  dimension: goal_19_completions {
    type: number
    sql: ${TABLE}.goal_19_completions ;;
  }

  dimension: goal_1_completions {
    type: number
    sql: ${TABLE}.goal_1_completions ;;
  }

  dimension: goal_20_completions {
    type: number
    sql: ${TABLE}.goal_20_completions ;;
  }

  dimension: goal_2_completions {
    type: number
    sql: ${TABLE}.goal_2_completions ;;
  }

  dimension: goal_3_completions {
    type: number
    sql: ${TABLE}.goal_3_completions ;;
  }

  dimension: goal_4_completions {
    type: number
    sql: ${TABLE}.goal_4_completions ;;
  }

  dimension: goal_5_completions {
    type: number
    sql: ${TABLE}.goal_5_completions ;;
  }

  dimension: goal_6_completions {
    type: number
    sql: ${TABLE}.goal_6_completions ;;
  }

  dimension: goal_7_completions {
    type: number
    sql: ${TABLE}.goal_7_completions ;;
  }

  dimension: goal_8_completions {
    type: number
    sql: ${TABLE}.goal_8_completions ;;
  }

  dimension: goal_9_completions {
    type: number
    sql: ${TABLE}.goal_9_completions ;;
  }

  dimension: goal_completions_all {
    type: number
    sql: ${TABLE}.goal_completions_all ;;
  }

  dimension: goal_starts_all {
    type: number
    sql: ${TABLE}.goal_starts_all ;;
  }

  dimension: goal_value_all {
    type: number
    sql: ${TABLE}.goal_value_all ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: session_duration {
    type: number
    sql: ${TABLE}.session_duration ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: total_value {
    type: number
    sql: ${TABLE}.total_value ;;
  }

  dimension: transaction_revenue {
    type: number
    sql: ${TABLE}.transaction_revenue ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
  }

}
