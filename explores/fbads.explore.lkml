include: "/views/*/*"

explore: fbads_ad_updated_url {
  label: "Facebook Ads"
  description: "Data from Facebook Ads"
  fields: [ALL_FIELDS*,-not_fbads_metrics*]
}
