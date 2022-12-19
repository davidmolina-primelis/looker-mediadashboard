view: ga_ecommerce {
    sql_table_name: `positive-harbor-329408.source_supermetrics.GA_ECOMMERCE_*` ;;

  dimension: data_source_name {
    type: string
    sql: ${TABLE}.data_source_name ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }

  dimension: product_category_hierarchy {
    type: string
    sql: ${TABLE}.product_category_hierarchy ;;
  }

  dimension: product_list_name {
    type: string
    sql: ${TABLE}.product_list_name ;;
  }

  dimension: product_list_position {
    type: string
    sql: ${TABLE}.product_list_position ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.product_sku ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }

  dimension: view_id {
    type: string
    sql: ${TABLE}.view_id ;;
  }

  dimension: item_quantity {
    type: number
    sql: ${TABLE}.item_quantity ;;
  }

  dimension: item_revenue {
    type: number
    sql: ${TABLE}.item_revenue ;;
  }

  dimension: local_item_revenue {
    type: number
    sql: ${TABLE}.local_item_revenue ;;
  }

  dimension: local_product_refund_amount {
    type: number
    sql: ${TABLE}.local_product_refund_amount ;;
  }

  dimension: product_adds_to_cart {
    type: number
    sql: ${TABLE}.product_adds_to_cart ;;
  }

  dimension: product_checkouts {
    type: number
    sql: ${TABLE}.product_checkouts ;;
  }

  dimension: product_detail_views {
    type: number
    sql: ${TABLE}.product_detail_views ;;
  }

  dimension: product_list_clicks {
    type: number
    sql: ${TABLE}.product_list_clicks ;;
  }

  dimension: product_list_views {
    type: number
    sql: ${TABLE}.product_list_views ;;
  }

  dimension: product_refund_amount {
    type: number
    sql: ${TABLE}.product_refund_amount ;;
  }

  dimension: product_refunds {
    type: number
    sql: ${TABLE}.product_refunds ;;
  }

  dimension: product_removes_from_cart {
    type: number
    sql: ${TABLE}.product_removes_from_cart ;;
  }

  dimension: product_revenue_per_purchase {
    type: number
    sql: ${TABLE}.product_revenue_per_purchase ;;
  }

  dimension: quantity_added_to_cart {
    type: number
    sql: ${TABLE}.quantity_added_to_cart ;;
  }

  dimension: quantity_checked_out {
    type: number
    sql: ${TABLE}.quantity_checked_out ;;
  }

  dimension: quantity_refunded {
    type: number
    sql: ${TABLE}.quantity_refunded ;;
  }

  dimension: quantity_removed_from_cart {
    type: number
    sql: ${TABLE}.quantity_removed_from_cart ;;
  }

  dimension: unique_purchases {
    type: number
    sql: ${TABLE}.unique_purchases ;;
  }

  measure: count {
    type: count
  }

}
