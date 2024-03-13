view: routines_dailyquestionnaire {
  derived_table: {
    sql:
      SELECT id,
             diet_today,
             exercise_hours,
             feeling_today,
             CASE
                        WHEN hours_of_sleep <= 4 THEN "0-4 hours"
                        WHEN hours_of_sleep >= 5 AND hours_of_sleep <= 6 THEN "5-6 hours"
                        WHEN hours_of_sleep >= 7 AND hours_of_sleep <= 8 THEN "7-8 hours"
                        WHEN hours_of_sleep >= 9 AND hours_of_sleep <= 10 THEN "9-10 hours"
                        WHEN hours_of_sleep > 10 THEN "10+ hours"
                        ELSE "0 hours"
                  END AS hours_of_sleep,
             life_happened,
             skin_feel,
             sleep_quality,
             something_special,
             stress_levels,
             user_id,
             water,
             created_at,
             CASE
                        WHEN EXTRACT(MONTH FROM created_at) IN (12, 1, 2) THEN 'Winter'
                        WHEN EXTRACT(MONTH FROM created_at) IN (3, 4, 5) THEN 'Spring'
                        WHEN EXTRACT(MONTH FROM created_at) IN (6, 7, 8) THEN 'Summer'
                        ELSE 'Autumn'
                  END AS season
                  FROM routines_dailyquestionnaire
            ;;
  }
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
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


  dimension: season {
    type: string
    sql: ${TABLE}."season" ;;
  }


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
