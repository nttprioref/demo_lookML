view: regions {
  sql_table_name: `looker_ds.regions` ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: location_id {
    type: number
    sql: ${TABLE}.LocationID ;;
  }
  dimension: region_name {
    type: string
    sql: ${TABLE}.RegionName ;;
  }
  measure: count {
    type: count
    drill_fields: [region_name]
  }
}
