include: "/views/shp_sales.view"
explore: shp_sales {
  label: "Ecommerce Sales"
  description: "Aggregated table merging media costs with ecommerce sales"
  always_filter: {
    filters: [shp_sales.partition_date: "now"]
  }
}
