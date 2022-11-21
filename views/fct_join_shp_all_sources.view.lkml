view: fct_join_shp_all_sources {
  sql_table_name: `positive-harbor-329408.mart_dossier.fct_join_SHP_All_sources`
    ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${date_date}) ;;
  }

  dimension_group: date {
   label: ""
    description: "Date (day, month, year)"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: cost {
    label: "Ad Cost"
    description: "Cost from media ads"
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: ca_shp {
    label: "Revenues (Ecommerce Source)"
    description: "Revenues generated from ecommerce sales"
    type: number
    value_format_name: usd_0
    sql: ${TABLE}.CA_SHP;;
  }


  ### Period Analysis:

  # The common parameters and filters are located in the parameters view file.
  # This dimension creates the interval related to the current period and the previous period.
  dimension: current_vs_previous {
    view_label: "Parameters"
    hidden: yes
    type: string
    sql: case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Period'
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then 'Previous Period'
            end;;
  }


# This dimension creates the interval related to the current period and the previous year period.
  dimension: current_year_vs_previous_year {
    view_label: "Parameters"
    hidden: no
    type: string
    sql:  case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Year'
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then 'Previous Year'
           end ;;
  }


  # This dimension is the one that should be selected in the explore/dashboard tile that's depend on the user's choice will show
  # the comparison between Previous Period or Previous Year Same period.
  dimension: selected_period {
    view_label: "Parameters"
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%} ${current_vs_previous}
          {% elsif parameters.previous_comparison._parameter_value == 'previous_year' %} ${current_year_vs_previous_year}
          {% else %} ${current_vs_previous}
          {% endif %}
     ;;
  }

  dimension: date_reference {
    type: string
    sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%}
          case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then
                concat('Current Period'
                      ,' From ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${start_date_current_period_year})
                      ,' To ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${end_date_current_period_year}))
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then
                concat('Previous Period'
                        ,' From ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${start_date_previous_period})
                        ,' To ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${end_date_previous_period}))
            end
          {% else %}
          case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then
           concat('Current Year'
                      ,' From ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${start_date_current_period_year})
                      ,' To ',FORMAT_DATE("%d-%b-%Y", TIMESTAMP ${end_date_current_period_year}))
                when ${date_date} > (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} <= (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then
                concat('Previous Year'
                        ,' From ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${start_date_previous_year})
                        ,' To ',FORMAT_TIMESTAMP("%d-%b-%Y", TIMESTAMP ${end_date_previous_year}))
           end
          {% endif %};;
  }

  dimension: start_date_current_period_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: date_add(date({% date_start parameters.choose_date %}), INTERVAL 1 day) ;;
  }

  dimension: end_date_current_period_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: date({% date_end parameters.choose_date %}) ;;
  }

  dimension: start_date_previous_period {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period}-1 day )) ;;
  }

  dimension: end_date_previous_period {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) ;;
  }

  dimension: start_date_previous_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    hidden: yes
    type: string
    sql: date_add((date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year )), INTERVAL 1 day);;
  }

  dimension: end_date_previous_year {
    description: "Auxiliar for dimension called 'date_reference'. Should stay hidden"
    type: string
    sql: (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) ;;
  }

  ###---- End of Period Analysis


  measure: count {
    label: "Count"
    description: "Count total occurence of a field"
    type: count
    drill_fields: []
  }

  measure: total_cost {
    label: "Total Cost"
    description: "Sum of Total Cost"
    type: sum
    sql: ${TABLE}.cost ;;
    value_format_name: usd_0
    value_format: "$0.0"
  }

  measure: total_ca_shp {
    label: "Total Revenues (Ecommerce Source)"
    description: " Total Revenues generated from ecommerce sales"
    type: sum
    value_format_name: usd_0
    sql: ${TABLE}.CA_SHP;;
  }

  measure: margin {
    label: "Margin"
    type: number
    value_format_name: usd_0
    sql: 1.0*${total_ca_shp}/nullif(${total_cost},0) ;;
  }


}
