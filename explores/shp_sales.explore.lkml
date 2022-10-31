include: "/views/shp_sales.view"
explore: shp_sales {
  label: "Shopify Sales"
  always_filter: {
    filters: [shp_sales.partition_date: "now"]
  }
}
