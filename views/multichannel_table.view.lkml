view: multichannel_table {
derived_table: {
  sql: SELECT 'Facebook' as channel,ad_id,campaign_id,campaign_name,ad_group_id,
  ad_group_name,ad_status,campaign_status,data_source_name,date,
  impression_device as device,publisher_platform as network,account_id,cost_usd,clicks,impressions,conversion_value as conversions,
  offsite_conversion_value_fb_pixel_purchase as revenue
      FROM `{{ bigquery_project._parameter_value | replace: "'", "" }}.source_supermetrics.FBADS_AD_*` where ((( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY))) AND ( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY), INTERVAL 120 DAY)))))
            union all
            SELECT 'Google' as channel,ad_id,campaign_id,campaign_name,
  ad_group_id,ad_group_name,ad_status,campaign_status,data_source_name,date,
  device,network,account_id,cost_usd,clicks,active_view_impressions as impressions,conversions,
  null as revenue
            FROM `{{ bigquery_project._parameter_value | replace: "'", "" }}.source_supermetrics.GOOGLEADS_AD_*` where ((( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY))) AND ( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY), INTERVAL 120 DAY)))))
 --     union all
 --           SELECT 'TikTok' as channel,ad_id,campaign_id,campaign_name,
 -- ad_group_id,ad_group_name,ad_status,campaign_operation_status as campaign_status,data_source_name,date,
--  null as device,null as network,null as account_id,cost as cost_usd,clicks,impressions,conversions,
--  purchase_value as revenue
--            FROM `{{ bigquery_project._parameter_value | replace: "'", "" }}.source_supermetrics.TIK_AD_*` where ((( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY))) AND ( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY), INTERVAL 120 DAY)))))
--union all
--            SELECT 'Bing' as channel,ad_id,campaign_id,campaign_name,
--  ad_group_id,ad_group_name,ad_status,null as campaign_status,data_source_name,date,
--  device_os as device,network,account_id,cost_usd,clicks,impressions,conversions,
--  revenue
--            FROM `{{ bigquery_project._parameter_value | replace: "'", "" }}.source_supermetrics.BINGADS_AD_*` where ((( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY))) AND ( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -119 DAY), INTERVAL 120 DAY)))))


      ;;
}

measure: count {
  type: count
}

  parameter: bigquery_project {
    type: string
    default_value: "positive-harbor-329408"
    allowed_value: {
      label: "Dossier"
      value: "positive-harbor-329408" }
    allowed_value: {
      label: "Izac"
      value: "izac-dashboard" }
  }

dimension: channel {
  type: string
  sql: ${TABLE}.channel ;;
}

dimension: ad_id {
  type: string
  sql: ${TABLE}.ad_id ;;
}

dimension: campaign_id {
  type: string
  sql: ${TABLE}.campaign_id ;;
}

dimension: campaign_name {
  type: string
  sql: ${TABLE}.campaign_name ;;
  link: {
    label: "Ouvrir campagne"
    url: "https://ads.gogle.com/{{ campaign_id._value }}"
  }

  link: {
    label: "Ouvrir dashboard campagne"
    url: "/dashboards/4?Campaign+ID={{ campaign_id._value }}"
  }


}

dimension: ad_group_id {
  type: string
  sql: ${TABLE}.ad_group_id ;;
}

dimension: ad_group_name {
  type: string
  sql: ${TABLE}.ad_group_name ;;
}

dimension: ad_status {
  type: string
  sql: ${TABLE}.ad_status ;;
}


dimension: campaign_status {
  type: string
  sql: ${TABLE}.campaign_status ;;
}

dimension: data_source_name {
  type: string
  sql: ${TABLE}.data_source_name ;;
}

dimension_group: date {
  type: time
  sql: timestamp(${TABLE}.date) ;;
}

dimension: device {
  type: string
  sql: ${TABLE}.device ;;
}

dimension: network {
  type: string
  sql: ${TABLE}.network ;;
}

dimension: account_id {
  type: string
  sql: ${TABLE}.account_id ;;
}

dimension: cost_usd {
  type: number
  sql: ${TABLE}.cost_usd ;;
}

dimension: clicks {
  type: number
  sql: ${TABLE}.clicks ;;
}

dimension: impressions {
  type: number
  sql: ${TABLE}.impressions ;;
}

dimension: conversions {
  type: number
  sql: ${TABLE}.conversions ;;
}

dimension: revenue {
  type: number
  sql: ${TABLE}.revenue ;;
}

dimension: brand {
  type: yesno
  sql: ${campaign_name} like '%Brand%'  ;;
}


  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: usd_0
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
  }

  measure: total_conversions {
    type: sum
    sql: ${conversions} ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;
  }

  measure: total_cost {
    label: "Total Spend"
    type: sum
    sql: ${cost_usd} ;;
    value_format_name: usd_0
    html: <p style="color: black; font-size:300%; text-align:center">{{ rendered_value }}</p> ;;
  }

  measure: roas {
    type: number
    sql: 1*${total_cost}/nullif(${total_revenue},0) ;;
    value_format_name: percent_2

  }

  measure: cpc {
    type: number
    sql: 1*${total_cost}/nullif(${total_clicks},0) ;;
    value_format_name: usd

  }

  measure: cpa {
    type: number
    sql: 1*${total_revenue}/nullif(${total_conversions},0) ;;
    value_format_name: usd

  }

  dimension: date_period {
    label_from_parameter: date_granularity
    sql:
      {% if date_granularity._parameter_value == "DAY" %}
        ${date_date}
      {% elsif  date_granularity._parameter_value == "ISOWEEK" %}
        ${date_week}
      {% elsif  date_granularity._parameter_value == "MONTH" %}
        ${date_month}
      {% elsif  date_granularity._parameter_value == "QUARTER" %}
        ${date_quarter}
      {% elsif  date_granularity._parameter_value == "YEAR" %}
        ${date_year}
       {% endif %} ;;
  }


  parameter: date_granularity {
    type: unquoted
    allowed_value: { value: "DAY" label: "Day"}
    allowed_value: { value: "ISOWEEK" label: "Week"}
    allowed_value: { value: "MONTH" label: "Month"}
    allowed_value: { value: "QUARTER" label: "Quarter"}
    allowed_value: { value: "YEAR" label: "Year"}
    default_value: "MONTH"
  }

  parameter: complete_period {
    type: unquoted
    allowed_value: { value: "Yes" }
    allowed_value: { value: "No" }
    default_value: "Yes"
  }



  dimension_group: current {
    hidden: yes
    type: time
    sql:{% if   complete_period._parameter_value == "Yes" %}
          cast(date_add(current_date, INTERVAL -1 {% parameter date_granularity %} ) as timestamp)
          {% elsif  complete_period._parameter_value == "No" %}
          cast(current_date as timestamp)
          {% endif %} ;;
  }


  dimension: current_period {
    hidden: yes
    label_from_parameter: date_granularity
    sql:
      {% if   date_granularity._parameter_value == "DAY" %}
        ${current_date}
      {% elsif  date_granularity._parameter_value == "ISOWEEK" %}
        ${current_week}
      {% elsif  date_granularity._parameter_value == "MONTH" %}
        ${current_month}
      {% elsif  date_granularity._parameter_value == "QUARTER" %}
        ${current_quarter}
      {% elsif  date_granularity._parameter_value == "YEAR" %}
        ${current_year}
       {% endif %} ;;
  }

  dimension_group: previous {
    hidden: yes
    type: time
    sql: {% if   complete_period._parameter_value == "Yes" %}
           cast(date_add(current_date, INTERVAL -2 {% parameter date_granularity %} ) as timestamp)
           {% elsif  complete_period._parameter_value == "No" %}
           cast(date_add(current_date, INTERVAL -1 {% parameter date_granularity %} ) as timestamp)
           {% endif %}
           ;;

  }

  dimension: previous_period {
    hidden: yes
    label_from_parameter: date_granularity
    sql:
      {% if   date_granularity._parameter_value == "DAY" %}
        ${previous_date}
      {% elsif  date_granularity._parameter_value == "ISOWEEK" %}
        ${previous_week}
      {% elsif  date_granularity._parameter_value == "MONTH" %}
        ${previous_month}
      {% elsif  date_granularity._parameter_value == "QUARTER" %}
        ${previous_quarter}
      {% elsif  date_granularity._parameter_value == "YEAR" %}
        ${previous_year}
       {% endif %} ;;
  }




  dimension: period_comparison {
    type: string
    description: "The reporting period as selected by the Period Filter"
    sql:
    case WHEN ${date_period} is not null then
        CASE
            WHEN ${date_period}= ${current_period}
                  THEN 'This {% parameter date_granularity %}'
            WHEN ${date_period} = ${previous_period}
                  THEN 'Previous {% parameter date_granularity %}'
                  end
        END;;
  }



  filter: first_period_filter {
    view_label: "_PoP"
    group_label: "Arbitrary Period Comparisons"
    description: "Choose the first date range to compare against. This must be before the second period"
    type: date
  }

  filter: second_period_filter {
    view_label: "_PoP"
    group_label: "Arbitrary Period Comparisons"
    description: "Choose the second date range to compare to. This must be after the first period"
    type: date
  }

## ------------------ HIDDEN HELPER DIMENSIONS  ------------------ ##

  dimension: days_from_start_first {
    view_label: "_PoP"
    hidden: yes
    type: duration_day
    sql_start: {% date_start first_period_filter %} ;;
    sql_end: ${date_raw} ;;
  }

  dimension: days_from_start_second {
    view_label: "_PoP"
    hidden: yes
    type: duration_day
    sql_start: {% date_start second_period_filter %} ;;
    sql_end: ${date_raw} ;;
  }

## ------------------ DIMENSIONS TO PLOT ------------------ ##

  dimension: days_from_first_period {
    view_label: "_PoP"
    description: "Select for Grouping (Rows)"
    group_label: "Arbitrary Period Comparisons"
    type: number
    sql:
        CASE
        WHEN ${days_from_start_second} >= 0
        THEN ${days_from_start_second}
        WHEN ${days_from_start_first} >= 0
        THEN ${days_from_start_first}
        END;;
  }


  dimension: period_selected {
    view_label: "_PoP"
    group_label: "Arbitrary Period Comparisons"
    label: "First or second period"
    description: "Select for Comparison (Pivot)"
    type: string
    sql:
        CASE
            WHEN {% condition first_period_filter %}${date_raw} {% endcondition %}
            THEN 'First Period'
            WHEN {% condition second_period_filter %}${date_raw} {% endcondition %}
            THEN 'Second Period'
            END ;;
  }

## Filtered measures






drill_fields: [
    channel,
    ad_id,
    campaign_id,
    campaign_name,
    ad_group_id,
    ad_group_name,
    ad_status,
    campaign_status,
    data_source_name,
    device,
    network,
    account_id,
    cost_usd,
    clicks,
    impressions,
    conversions,
    revenue
  ]

}
