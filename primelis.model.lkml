connection: "dossier_-_bigquery"

include: "/views/*/*.lkml"
include: "/explores/*.explore"
#include: "/dashboards/*"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# explore: fbads_ad {
#   label: "Facebook Ads"
#   view_label: "Facebook Ads"
#   always_filter: {
#     filters: [fbads_ad.shard_date: "last 20 days"]
#   }
# }

named_value_format: large_usd { value_format: "[>=1000000]\"$\"0.00,,\"M\";[>=1000]\"$\"0.00,\"K\";\"$\"0.00" }
named_value_format: large_number { value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0" }
