view: sales {
  sql_table_name: `looker_ds.sales` ;;

  dimension: client_id {
    type: number
    sql: ${TABLE}.Client_ID ;;
  }
  dimension: date_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Date_ID ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.ItemID ;;
  }
  dimension: location_id {
    type: number
    sql: ${TABLE}.LocationID ;;
  }
  dimension: rnad {
    type: number
    sql: ${TABLE}.Rnad ;;
  }
  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }
  dimension: sum_error {
    type: number
    sql: ${TABLE}.Sum_Error ;;
  }
  measure: count {
    type: count
    drill_fields: [date.date_id]
  }
}
