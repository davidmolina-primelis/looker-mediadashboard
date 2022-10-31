explore: fct_join_shp_all_sources {}
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
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
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
