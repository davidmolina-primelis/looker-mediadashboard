include: "/views/*"
view: common_metrics {

  measure: total_impressions {
    label: "Total Impressions"
    description: "Sum of Total impressions"
    type: sum
    sql: ${TABLE}.impressions ;;
  }

  measure: total_cost {
    label: "Total Cost"
    description: "Sum of Total Cost"
    type: sum
    sql: ${TABLE}.cost ;;
    value_format_name: usd_0
  }

  measure: total_clicks {
    label: "Total Clicks"
    description: "Sum of Total Clicks"
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: click_through_rate {
    label: "CTR (Click Through Rate)"
    description: "Clicks / Impressions"
    type: number
    sql: 1.0*${total_clicks}/nullif(${total_impressions},0) ;;
    value_format: "0.00%"
  }

  measure: total_conversion_value {
    label: "Total Revenues"
    description: "Sum of Media conversions revenues"
    type: sum
    sql: ${TABLE}.conversion_value ;;
    value_format_name: usd_0
  }

  measure: total_conversions {
    label: "Total Conversions"
    description: "Sum of Media conversions"
    type: sum
    sql: ${TABLE}.conversions ;;
    value_format: "#,##0"
  }

  measure:average_order_value {
    label: "Average Order Value"
    description: " Total Revenues / Total Conversions"
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_conversions},0) ;;
    value_format_name: usd
  }

  measure:return_on_ad_spend {
    label: "ROAS"
    description: " Total Revenues / Total Costs"
    type: number
    sql: 1.0*${total_conversion_value}/nullif(${total_cost},0) ;;
    value_format: "0.##"
  }

  measure:cpm {
    label: "CPM"
    description: " Total Cost / Total Impressions"
    type: number
    sql: 1.0*${total_cost}/nullif(${total_impressions},0)*1000 ;;
    value_format:"$#.00"
  }

  measure: cpc {
    label: "CPC"
    description: " Total Cost / Total Clicks"
    type: number
    sql: 1.0*${total_cost}/nullif(${total_clicks},0) ;;
    value_format:"$#.00"
  }

  measure: cpa {
    label: "CPA"
    description: " Total Cost / Total Conversions"
    type: number
    sql: 1.0*${total_cost}/nullif(${total_conversions},0) ;;
    value_format: "$0.00"
  }

  measure: conv {
    label: "Conv %"
    description: " Total Conversions / Total Clicks"
    type: number
    sql: 1.0*${total_conversions}/nullif(${total_clicks},0);;
    value_format_name: percent_2
  }


}
