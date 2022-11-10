view: fct_join_shp_all_sources {
  sql_table_name: `positive-harbor-329408.mart_dossier.fct_join_SHP_All_sources`
    ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: date
    sql: ${date_date} ;;
  }

  dimension_group: date {
    label: ""
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

  dimension: current_vs_previous {
    hidden: yes
    type: string
    sql: case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Period'
                when ${date_date} >= (date_sub(date({% date_start parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day ))
                and ${date_date} < (date_sub(date({% date_end parameters.choose_date %}),INTERVAL ${parameters.days_days_in_period} day )) then 'Previous Period'
            end;;
  }

 dimension: current_year_vs_previous_year {
  hidden: yes
   type: string
   sql:  case when {% condition parameters.choose_date %} timestamp(${date_date}) {% endcondition %} then 'Current Year '
                when ${date_date} >= (date_sub(date({% date_start parameters.choose_date %}),INTERVAL 1 year ))
                 and ${date_date} < (date_sub(date({% date_end parameters.choose_date %}),INTERVAL 1 year )) then 'Previous Year'
           end ;;
 }

 dimension: selected_period {
  view_label: "Parameters"
   type: string
   sql: {% if parameters.previous_comparison._parameter_value == 'previous_period'%} ${current_vs_previous}
          {% elsif parameters.previous_comparison._parameter_value == 'previous_year' %} ${current_year_vs_previous_year}
          {% else %} ${current_vs_previous}
          {% endif %}
     ;;
 }



  measure: total_cost {
    type: sum
    value_format: "$0.0"
    sql: ${TABLE}.cost ;;
  }

  measure: total_ca_shp {
    type: sum
    value_format_name: usd_0
    sql: ${TABLE}.CA_SHP;;
  }

  measure: margin {
    type: number
    value_format_name: usd_0
    sql: 1.0*${total_ca_shp}/nullif(${total_cost},0) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
