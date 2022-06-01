view: multichannel_table {
derived_table: {
  sql:
  SELECT 'Facebook' as channel,ad_id,campaign_id,campaign_name,ad_group_id,
  ad_group_name,ad_status,campaign_status,data_source_name,date,
  impression_device as device,publisher_platform as network,account_id,cost_usd,clicks,impressions,unique_outbound_clicks as conversions,
  offsite_conversion_value_fb_pixel_purchase as revenue
      FROM `{{ bigquery_project._parameter_value | replace: "'", "" }}.source_supermetrics.FBADS_AD_*` where ((( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -509 DAY))) AND ( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -509 DAY), INTERVAL 510 DAY)))))
            union all
            SELECT 'Google' as channel,ad_id,campaign_id,campaign_name,
  ad_group_id,ad_group_name,ad_status,campaign_status,data_source_name,date,
  device,network,account_id,cost_usd,clicks,active_view_impressions as impressions,conversions,
  null as revenue
            FROM `{{ bigquery_project._parameter_value | replace: "'", "" }}.source_supermetrics.GOOGLEADS_AD_*` where ((( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) >= ((TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -509 DAY))) AND ( TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d')))  ) < ((TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -509 DAY), INTERVAL 510 DAY)))))
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

      persist_for: "96 hours"
      partition_keys: ["date"]
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
  suggest_persist_for: "96 hours"
  type: string
  sql: ${TABLE}.channel ;;
}

  dimension: channel_logo {
    type: string
    sql: ${channel};;
      html: {% if channel._value == "Facebook" %}
        <img src="https://images.ctfassets.net/k49d63tr8kcn/2vF3ZElXKIGwqSaKKYEiWc/b8a3ad438abea53938f2a2b5625e1549/facebook_ads_logo_240x90_web.svg">
        {% elsif channel._value == "Google" %}
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Google_Ads_logo.svg/192px-Google_Ads_logo.svg.png" height="240" width="240">
        {% elsif brand._value == "TikTok" %}
        <img src="https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/Hanes-logo.svg/150px-Hanes-logo.svg.png">
        {% elsif brand._value == "Bing"%}
        {% else %}
        {% endif %} ;;
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
    url: "/dashboards/4?Campaign+ID={{ campaign_id._value }}&Bigquery+Project={{ bigquery_project._value }}"
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
  suggest_persist_for: "96 hours"
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
  suggest_persist_for: "96 hours"
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
  hidden: yes
}

dimension: clicks {
  type: number
  sql: ${TABLE}.clicks ;;
  hidden: yes
}

dimension: impressions {
  type: number
  sql: ${TABLE}.impressions ;;
  hidden: yes
}

dimension: conversions {
  type: number
  sql: ${TABLE}.conversions ;;
  hidden: yes
}

dimension: revenue {
  type: number
  sql: ${TABLE}.revenue ;;
  hidden: yes
}

dimension: brand {
  type: yesno
  sql: ${campaign_name} like '%rand%'    ;;
}


  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: large_usd
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
    value_format_name: large_number
  }

  measure: total_conversions {
    type: sum
    sql: ${conversions} ;;
    value_format_name: large_number
  }

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;
    value_format_name: large_number
  }

  measure: total_cost {
    label: "Total Spend"
    type: sum
    sql: ${cost_usd} ;;
    value_format_name: large_usd
    # html: <p style="color: black; font-size:300%; text-align:center">{{ rendered_value }}</p> ;;
  }

  # measure: total_cost_html {
  #   label: "Total Spend"
  #   type: sum
  #   sql: ${cost_usd} ;;
  #   value_format_name: usd_0
  #   html: <p style="color: black; font-size:300%; text-align:center">{{ rendered_value }}</p> ;;
  # }

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




  filter: period_filter {
    description: "Choose the first date range to compare against. This must be before the second period"
    type: date
  }

  parameter: compared_to{
    type: unquoted
    allowed_value: { value: "previous" label: "Previous Period"}
    allowed_value: { value: "last_year" label: "Same Period Last year"}
    default_value: "Yes"
  }


  dimension: duration {
    hidden: yes
    type: duration_day
    sql_start:  CAST({% date_start period_filter %} AS DATE);;
    sql_end: CAST({% date_end period_filter %} AS DATE) ;;
  }





  dimension_group: previous_start {
     hidden: yes
    type: time
    datatype: date
    sql: {% if   compared_to._parameter_value == "previous" %}
           date_add(CAST({% date_start period_filter %} AS DATE), INTERVAL -${duration} day )
           {% elsif  compared_to._parameter_value == "last_year" %}
           date_add(CAST({% date_start period_filter %} AS DATE), INTERVAL -1 year )
           {% endif %}
           ;;

  }

  dimension_group: previous_end {
     hidden: yes
    type: time
    datatype: date
    sql: {% if   compared_to._parameter_value == "previous" %}
    date_add(CAST({% date_end period_filter %} AS DATE), INTERVAL -${duration}  day )
    {% elsif  compared_to._parameter_value == "last_year" %}
    date_add(CAST({% date_end period_filter %} AS DATE), INTERVAL -1 year )
    {% endif %}
    ;;

  }




  dimension: period_comparison {
    type: string
    description: "The reporting period as selected by the Period Filter"
    sql:
    case WHEN ${date_date} is not null then
        CASE
            WHEN ${date_date} >=CAST( {% date_start period_filter %} as date) and ${date_date} <= CAST({% date_end period_filter %} as date)
                  THEN 'This period'
            WHEN ${date_date} >= ${previous_start_date} and ${date_date} <= ${previous_end_date}
                  THEN 'Previous period'
                  end
        END;;
  }











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
