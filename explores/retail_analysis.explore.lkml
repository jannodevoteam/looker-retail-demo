include: "/views/sales_data.view"
# include: "/views/feature_data.view"

explore: retail_sales {
  from: sales_data
  group_label: "Janno - @{proj_name}"
  label: "Sales Analysis"
  view_label: "sales"
  description: "This explore can be used to analyse the retail test dataset"
  hidden: no

  # join: features_data {
  #   from: feature_data
  #   view_label: "features"
  #   type: left_outer
  #   sql_on: ${retail_sales.store} = ${feature_data.store}
  #     and ${retail_sales.date} = ${feature_data.date}
  #   ;;
  #   relationship: many_to_one
  #   }
}
