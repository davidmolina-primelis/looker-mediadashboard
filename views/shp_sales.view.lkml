view: shp_sales {
  view_label: "Shopify Sales"
  sql_table_name: `positive-harbor-329408.source_supermetrics.SHP_SALES_*`;;

  measure: count {
    type: count
  }

  dimension: customer_city {
    group_label: "Customer location"
    type: string
    sql: ${TABLE}.customer_city ;;
  }

  dimension: customer_country {
    group_label: "Customer location"
    type: string
    sql: ${TABLE}.customer_country ;;
  }

  dimension: customer_country_code {
    group_label: "Customer location"
    type: string
    sql: ${TABLE}.customer_country_code ;;
  }

  dimension_group: customer_created_at {
    type: time
    datatype: datetime
    sql: ${TABLE}.customer_created_at ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_first_name {
    type: string
    sql: ${TABLE}.customer_first_name ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_last_name {
    type: string
    sql: ${TABLE}.customer_last_name ;;
  }

  dimension_group: customer_last_order_created_at {
    type: time
    timeframes: [raw,date,week,month,year]
    datatype: datetime
    sql: ${TABLE}.customer_last_order_created_at ;;
  }

  dimension: customer_lifetime_duration {
    type: string
    sql: ${TABLE}.customer_lifetime_duration ;;
  }

  dimension: data_source_name {
    type: string
    sql: ${TABLE}.data_source_name ;;
  }

  dimension_group: partition {
    type: time
    timeframes: [raw,date,month,month_name,week,year]
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: line_item_id {
    type: string
    sql: ${TABLE}.line_item_id ;;
  }

  dimension: line_item_is_gift_card {
    type: yesno
    sql: ${TABLE}.line_item_is_gift_card ;;
  }

  dimension: line_item_type {
    type: string
    sql: ${TABLE}.line_item_type ;;
  }

  dimension_group: order_cancelled_at {
    type: time
    datatype: datetime
    sql: ${TABLE}.order_cancelled_at ;;
  }

  dimension: order_channel {
    type: string
    sql: ${TABLE}.order_channel ;;
  }

  dimension_group: order_closed_at {
    type: time
    datatype: datetime
    sql: ${TABLE}.order_closed_at ;;
  }

  dimension: order_confirmed {
    type: yesno
    sql: ${TABLE}.order_confirmed ;;
  }

  dimension_group: order_created_at {
    type: time
    datatype: datetime
    sql: ${TABLE}.order_created_at ;;
  }

  dimension: order_currency_code {
    type: string
    sql: ${TABLE}.order_currency_code ;;
  }

  dimension: order_discount_code {
    type: string
    sql: ${TABLE}.order_discount_code ;;
  }

  dimension: order_display_fulfillment_status {
    type: string
    sql: ${TABLE}.order_display_fulfillment_status ;;
  }

  dimension: order_email {
    type: string
    sql: ${TABLE}.order_email ;;
  }

  dimension: order_fully_paid {
    type: yesno
    sql: ${TABLE}.order_fully_paid ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_is_returning_customer {
    type: yesno
    sql: ${TABLE}.order_is_returning_customer ;;
  }

  dimension: order_landing_page_url {
    type: string
    sql: ${TABLE}.order_landing_page_url ;;
  }

  dimension: order_location {
    type: string
    sql: ${TABLE}.order_location ;;
  }

  dimension: order_name {
    type: string
    sql: ${TABLE}.order_name ;;
  }

  dimension: order_note {
    type: string
    sql: ${TABLE}.order_note ;;
  }

  dimension: order_referral_code {
    type: string
    sql: ${TABLE}.order_referral_code ;;
  }

  dimension: order_referrer_url {
    type: string
    sql: ${TABLE}.order_referrer_url ;;
  }

  dimension: order_shipping_description {
    type: string
    sql: ${TABLE}.order_shipping_description ;;
  }

  dimension: order_utm_content {
    type: string
    sql: ${TABLE}.order_utm_content ;;
  }

  dimension: order_utm_medium {
    type: string
    sql: ${TABLE}.order_utm_medium ;;
  }

  dimension: order_utm_name {
    type: string
    sql: ${TABLE}.order_utm_name ;;
  }

  dimension: order_utm_source {
    type: string
    sql: ${TABLE}.order_utm_source ;;
  }

  dimension: order_utm_term {
    type: string
    sql: ${TABLE}.order_utm_term ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: shop_id {
    type: string
    sql: ${TABLE}.shop_id ;;
  }

  dimension: shop_name {
    type: string
    sql: ${TABLE}.shop_name ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: variant_id {
    type: string
    sql: ${TABLE}.variant_id ;;
  }

  dimension: discounts {
    type: number
    sql: ${TABLE}.discounts ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.gross_sales ;;
  }

  dimension: items {
    type: number
    sql: ${TABLE}.items ;;
  }

  dimension: net_sales {
    type: number
    sql: ${TABLE}.net_sales ;;
  }

  dimension: returns {
    type: number
    sql: ${TABLE}.returns ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.shipping ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

}
