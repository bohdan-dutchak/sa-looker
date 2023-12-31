# The name of this view in Looker is "Routines Dailyquestionnaire"
view: routines_dailyquestionnaire {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.routines_dailyquestionnaire ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Diet Today" in Explore.

  dimension: diet_today {
    type: string
    sql: ${TABLE}."diet_today" ;;
  }

  dimension: exercise_hours {
    type: string
    sql: ${TABLE}."exercise_hours" ;;
  }

  dimension: feeling_today {
    type: string
    sql: ${TABLE}."feeling_today" ;;
  }

  dimension: hours_of_sleep {
    type: number
    sql: ${TABLE}."hours_of_sleep" ;;
  }

  dimension: coffee {
    type: string
    sql: CASE WHEN 'COFFEE' = ANY(${TABLE}."life_happened") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: junk_food {
    type: string
    sql: CASE WHEN 'JUNK_FOOD_AND_SWEETS' = ANY(${TABLE}."life_happened") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: smoking {
    type: string
    sql: CASE WHEN 'SMOKING' = ANY(${TABLE}."life_happened") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: alcohol {
    type: string
    sql: CASE WHEN 'ALCOHOL' = ANY(${TABLE}."life_happened") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: skin_feel {
    type: string
    sql: ${TABLE}."skin_feel" ;;
  }

  dimension: sleep_quality {
    type: string
    sql: ${TABLE}."sleep_quality" ;;
  }

  dimension: something_special {
    type: string
    sql: ${TABLE}."something_special" ;;
  }

  dimension: stress_levels {
    type: string
    sql: ${TABLE}."stress_levels" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: water {
    type: number
    sql: ${TABLE}."water" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
