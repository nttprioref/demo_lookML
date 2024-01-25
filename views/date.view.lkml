view: date {
  sql_table_name: `looker_ds.date` ;;
  drill_fields: [date_id]

  dimension: date_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DateID ;;
  }
  dimension: fiscal_month {
    type: string
    sql: ${TABLE}.FiscalMonth ;;
  }
  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.FiscalYear ;;
  }
  dimension: reporting_period_id {
    type: number
    sql: ${TABLE}.ReportingPeriodID ;;
  }
  measure: count {
    type: count
    drill_fields: [date_id, sales.count]
  }
}
