# The name of this view in Looker is "Routines Facescananalytics"
view: routines_facescananalytics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.routines_facescananalytics ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acne" in Explore.

  dimension: acne {
    type: number
    sql: ${TABLE}."acne" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: eye_bags {
    type: number
    sql: ${TABLE}."eye_bags" ;;
  }

  dimension: face_scan_id {
    type: number
    sql: ${TABLE}."face_scan_id" ;;
  }

  dimension: hydration {
    type: number
    sql: ${TABLE}."hydration" ;;
  }

  dimension: is_valid {
    type: yesno
    sql: ${TABLE}."is_valid" ;;
  }

  dimension: lines {
    type: number
    sql: ${TABLE}."lines" ;;
  }

  dimension: pigmentation {
    type: number
    sql: ${TABLE}."pigmentation" ;;
  }

  dimension: pores {
    type: number
    sql: ${TABLE}."pores" ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}."quality" ;;
  }

  dimension: raw_data {
    type: string
    sql: ${TABLE}."raw_data" ;;
  }

  dimension: redness {
    type: number
    sql: ${TABLE}."redness" ;;
  }

  dimension: sagging {
    type: number
    sql: ${TABLE}."sagging" ;;
  }

  dimension: translucency {
    type: number
    sql: ${TABLE}."translucency" ;;
  }

  dimension: uniformness {
    type: number
    sql: ${TABLE}."uniformness" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: wrinkles {
    type: number
    sql: ${TABLE}."wrinkles" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
