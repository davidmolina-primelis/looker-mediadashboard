connection: "dossier_-_bigquery"

include: "/views/*.lkml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# explore: fbads_ad {
#   label: "Facebook Ads"
#   view_label: "Facebook Ads"
#   always_filter: {
#     filters: [fbads_ad.shard_date: "last 20 days"]
#   }
# }

explore: multichannel_table {
  label: "Campaigns, ads and clicks"
  view_label: "Channel"
  always_filter: {
    filters: [first_period_filter: "NOT NULL", second_period_filter: "NOT NULL", period_selected:"-NULL"]
  }
}
