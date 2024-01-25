view: client_id {
  sql_table_name: `looker_ds.client_id` ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }
  dimension: client_id {
    type: number
    sql: ${TABLE}.Client_ID ;;
  }
  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }
  measure: count {
    type: count
  }
}
