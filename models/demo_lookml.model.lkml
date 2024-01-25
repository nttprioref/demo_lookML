connection: "bigqueryntt"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: demo_lookml_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_lookml_default_datagroup


explore: sales {
  join: products {
    type: left_outer
    sql_on: ${sales.item_id} = ${products.item_id}  ;;
    relationship: many_to_one
  }
  join: client_id {
    type: left_outer
    sql_on: ${sales.client_id} = ${client_id.client_id} ;;
    relationship: many_to_one
  }
  join: categories {
    type: left_outer
    sql_on: ${products.category_id} = ${categories.category_id};;
    relationship: many_to_one
  }
  join: date {
    type: left_outer
    sql_on: ${sales.date_id} = ${date.date_id};;
    relationship: many_to_one
  }
  join: regions {
    type: left_outer
    sql_on: ${sales.location_id} = ${regions.location_id};;
    relationship: many_to_one
  }
}
