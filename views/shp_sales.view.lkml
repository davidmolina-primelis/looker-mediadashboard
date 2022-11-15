view: shp_sales {
  view_label: "Shopify Sales"
  sql_table_name: `positive-harbor-329408.source_supermetrics.SHP_SALES_*`;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: concat(${line_item_id},${date_date}) ;;
  }

  dimension: customer_city {
    group_label: "Customer location"
    label : "City"
    description : "Customer City"
    type: string
    sql: ${TABLE}.customer_city ;;
  }

  dimension: customer_country {
    group_label: "Customer location"
    label : "Country"
    description : "Customer Country"
    type: string
    sql: ${TABLE}.customer_country ;;
  }

  dimension: customer_country_code {
    group_label: "Customer location"
    label : "Country Code"
    description : "Customer Country Code"
    type: string
    sql: ${TABLE}.customer_country_code ;;
  }

  dimension_group: customer_created_at {
    label : "First Purchase date"
    description : "Customer Created at"
    type: time
    datatype: datetime
    sql: ${TABLE}.customer_created_at ;;
  }

  dimension: customer_email {
    label : "First Purchase date"
    description : "Customer Created at"
    type: string
    sql: ${TABLE}.customer_email ;;
  }

  dimension: customer_first_name {
    label : "First Name"
    description : "Customer First Name"
    type: string
    sql: ${TABLE}.customer_first_name ;;
  }

  dimension: customer_id {
    label : "Customer ID"
    description : "Customer Unique ID"
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_last_name {
    label : "Last Name"
    description : "Customer Last Name"
    type: string
    sql: ${TABLE}.customer_last_name ;;
  }

  dimension_group: customer_last_order_created_at {
    label : "Last Order Date"
    description : "Customer Last Order Date"
    type: time
    timeframes: [raw,date,week,month,year]
    datatype: datetime
    sql: ${TABLE}.customer_last_order_created_at ;;
  }

  dimension: customer_lifetime_duration {
    label : "Customer lifetime duration"
    description : "Duration between first purchase and last purchase"
    type: string
    sql:cast( ${TABLE}.customer_lifetime_duration as INT) ;;
  }

  dimension: lifetime_tier {
    type: tier
    tiers: [0,30,60,90]
    sql: ${customer_lifetime_duration} ;;
    style: integer
  }

  dimension: data_source_name {
    label : "Data Source Name"
    description : "Name of customer data source"
    type: string
    sql: ${TABLE}.data_source_name ;;
  }

  dimension_group: date {
    label: ""
    description : "Partition for Date"
    type: time
    timeframes: [raw,date,month,month_name,week,year]
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: line_item_id {
    label : "Line Item ID"
    description : "ID of product purchased within a transaction"
    type: string
    sql: ${TABLE}.line_item_id ;;
  }

  dimension: line_item_is_gift_card {
    label : "Item is Gift Card"
    description : "Yes or No"
    type: yesno
    sql: ${TABLE}.line_item_is_gift_card ;;
  }

  dimension: line_item_type {
    label : "Line Item Type"
    description : "Type of product purchased within a transaction"
    type: string
    sql: ${TABLE}.line_item_type ;;
  }

  dimension_group: order_cancelled_at {
    label : "Order Cancel Date"
    type: time
    datatype: datetime
    sql: ${TABLE}.order_cancelled_at ;;
  }

  dimension: order_channel {
    label : "Order Channel"
    type: string
    sql: ${TABLE}.order_channel ;;
  }

  dimension_group: order_closed_at {
    label : "Order Closed date"
    type: time
    datatype: datetime
    sql: ${TABLE}.order_closed_at ;;
  }

  dimension: order_confirmed {
    label : "Order Confirmed"
    description : "Yes or No"
    type: yesno
    sql: ${TABLE}.order_confirmed ;;
  }

  dimension_group: order_created_at {
    label : "Order Creation date"
    type: time
    datatype: datetime
    sql: ${TABLE}.order_created_at ;;
  }

  dimension: order_currency_code {
    label : "Order Currency"
    type: string
    sql: ${TABLE}.order_currency_code ;;
  }

  dimension: order_discount_code {
    label : "Order Discount Code"
    type: string
    sql: ${TABLE}.order_discount_code ;;
  }

  dimension: order_display_fulfillment_status {
    label : "Order Status"
    type: string
    sql: ${TABLE}.order_display_fulfillment_status ;;
  }

  dimension: order_email {
    label : "Order Email"
    description : "Customer email associated with order"
    type: string
    sql: ${TABLE}.order_email ;;
  }

  dimension: order_fully_paid {
    label : "Order Fully Paid"
    description : "Yes or No"
    type: yesno
    sql: ${TABLE}.order_fully_paid ;;
  }

  dimension: order_id {
    label : "Order ID"
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_is_returning_customer {
    label : "Order is Returning Customer"
    description : "Yes or No"
    type: yesno
    sql: ${TABLE}.order_is_returning_customer ;;
  }

  dimension: order_landing_page_url {
    label : "Order Landing URL"

    type: string
    sql: ${TABLE}.order_landing_page_url ;;
  }

  dimension: order_location {
    label : "Order Location"
    type: string
    sql: ${TABLE}.order_location ;;
  }

  dimension: order_name {
    label : "Order Name"
    type: string
    sql: ${TABLE}.order_name ;;
  }

  dimension: order_note {
    label : "Order Note"
    type: string
    sql: ${TABLE}.order_note ;;
  }

  dimension: order_referral_code {
    label : "Order Referral Code"
    type: string
    sql: ${TABLE}.order_referral_code ;;
  }

  dimension: order_referrer_url {
    label : "Order Referral URL"
    type: string
    sql: ${TABLE}.order_referrer_url ;;
  }

  dimension: order_shipping_description {
    label : "Order Shipping Description"
    type: string
    sql: ${TABLE}.order_shipping_description ;;
  }

  dimension: order_utm_content {
    label : "Order UTM content"
    type: string
    sql: ${TABLE}.order_utm_content ;;
  }

  dimension: order_utm_medium {
    label : "Order UTM medium"
    type: string
    sql: ${TABLE}.order_utm_medium ;;
  }

  dimension: order_utm_name {
    label : "Order UTM name"
    type: string
    sql: ${TABLE}.order_utm_name ;;
  }

  dimension: order_utm_source {
    label : "Order UTM source"
    type: string
    sql: ${TABLE}.order_utm_source ;;
  }

  dimension: order_utm_term {
    label : "Order UTM term"
    type: string
    sql: ${TABLE}.order_utm_term ;;
  }

  dimension: price {
    label : "Product Price"
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    label : "Product ID"
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: shop_id {
    label : "Shop ID"
    type: string
    sql: ${TABLE}.shop_id ;;
  }

  dimension: shop_name {
    label : "Shop Name"
    type: string
    sql: ${TABLE}.shop_name ;;
  }


  dimension: sku {
    label : "Product SKU"
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: variant_id {
    label : "Product Variant ID"
    type: string
    sql: ${TABLE}.variant_id ;;
  }

  dimension: discounts {
    label : "Discounts"
    type: number
    sql: ${TABLE}.discounts ;;
  }

  dimension: gross_sales {
    label : "Gross Sales"
    type: number
    sql: ${TABLE}.gross_sales ;;
  }

  dimension: items {
    label : "Order Items"
    type: number
    sql: ${TABLE}.items ;;
  }

  dimension: net_sales {
    label : "net Sales"
    type: number
    sql: ${TABLE}.net_sales ;;
  }

  dimension: returns {
    label : "Returns"
    type: number
    sql: ${TABLE}.returns ;;
  }

  dimension: shipping {
    label : "Shipping"
    type: number
    sql: ${TABLE}.shipping ;;
  }

  dimension: tax {
    label : "Tax"
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: total_sales {
    label : "Total Sales"
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  measure: count {
    label : "Count"
    type: count
  }

}
