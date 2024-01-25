view: categories {
  sql_table_name: `looker_ds.categories` ;;
  drill_fields: [category_id]

  dimension: category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CategoryID ;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }
  measure: count {
    type: count
    drill_fields: [category_id, category_name]
  }
}
