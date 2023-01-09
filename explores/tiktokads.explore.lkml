include: "/views/*/*"

explore: tiktok_ads {
  label: "TikTok Ads"
  description: "Data from TikTok Ads"
  fields: [ALL_FIELDS* ]
##      ,-tiktok_ads.not_tiktok_metrics*

  join: parameters {}
}
