include: "/views/*/*"

explore: fbads_ad_updated_url {
  label: "Facebook Ads"
  description: "Data from Facebook Ads"
  fields: [ALL_FIELDS*,
             -click_through_rate,
             -total_conversion_value,
             -total_conversions,
             -average_order_value,
             -return_on_ad_spend,
             -cpc,
             -cpa,
             -conv]
}
