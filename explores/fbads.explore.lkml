include: "/views/*/*"

explore: fbads_ad_updated_url {
  label: "Facebook Ads"
  description: "Data from Facebook Ads"
  fields: [ALL_FIELDS*,
             -fbads_ad_updated_url.not_fbads_metrics*
]
  join: parameters {}
}
