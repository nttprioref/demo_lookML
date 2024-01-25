view: products {
  sql_table_name: `looker_ds.products` ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryID ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.ItemID ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
