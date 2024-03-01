# The name of this view in Looker is "Questionnaire Userquestionnaire"
view: questionnaire_userquestionnaire {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.

  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: string
    sql:
        CASE
        WHEN ${TABLE}."age" LIKE '%57%' THEN '57-61'
        WHEN ${TABLE}."age" LIKE '%22%' THEN '22-26'
        WHEN ${TABLE}."age" LIKE '%47%' THEN '47-51'
        WHEN ${TABLE}."age" LIKE '%27%' THEN '27-31'
        WHEN ${TABLE}."age" LIKE '%17%' THEN '17-21'
        WHEN ${TABLE}."age" LIKE '%37%' THEN '37-41'
        WHEN ${TABLE}."age" LIKE '%52%' THEN '52-56'
        WHEN ${TABLE}."age" LIKE '%12%' THEN '12-16'
        WHEN ${TABLE}."age" LIKE '%61%' THEN '61+'
        WHEN ${TABLE}."age" LIKE '%32%' THEN '32-36'
        WHEN ${TABLE}."age" LIKE '%42%' THEN '42-46'
        ELSE ''
    END;;
  }

  dimension: contraceptive_pill {
    type: string
    sql: ${TABLE}."contraceptive_pill" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: daily_busyness {
    type: string
    sql: ${TABLE}."daily_busyness" ;;
  }

  dimension: diet {
    type: string
    sql: ${TABLE}."diet" ;;
  }

  dimension: diet_balance {
    type: string
    sql: ${TABLE}."diet_balance" ;;
  }

  dimension: easily_stressed {
    type: string
    sql: ${TABLE}."easily_stressed" ;;
  }

  dimension: exercise_days_a_week {
    type: string
    sql:
        CASE
        WHEN ${TABLE}."exercise_days_a_week" = 'ZERO' THEN 'NO_EXERCISE'
        WHEN ${TABLE}."exercise_days_a_week" IN ('ONE', 'TWO', 'THREE') THEN 'ONE_THREE'
        WHEN ${TABLE}."exercise_days_a_week" IN ('FOUR', 'FIVE') THEN 'FOUR_FIVE'
        WHEN ${TABLE}."exercise_days_a_week" = 'SIX_PLUS' THEN 'EVERY_DAY'
        ELSE ${TABLE}."exercise_days_a_week"
    END;;
  }

  dimension: expectations {
    type: string
    sql: CASE WHEN ${TABLE}."expectations" = '' THEN 'SKIPPED' ELSE ${TABLE}."expectations" END;;
  }

  dimension: feeling_today {
    type: string
    sql: CASE WHEN ${TABLE}."feeling_today" = '' THEN 'SKIPPED' ELSE ${TABLE}."feeling_today" END;;
  }

  dimension_group: female_power {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."female_power_date" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: coffee {
    type: string
    sql: CASE WHEN 'COFFEE' = ANY(${TABLE}."guilty_pleasures") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: junk_food {
    type: string
    sql: CASE WHEN 'JUNK_FOOD_AND_SWEETS' = ANY(${TABLE}."guilty_pleasures") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: smoking {
    type: string
    sql: CASE WHEN 'SMOKING' = ANY(${TABLE}."guilty_pleasures") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: alcohol {
    type: string
    sql: CASE WHEN 'ALCOHOL' = ANY(${TABLE}."guilty_pleasures") THEN 'YES' ELSE 'NO' END;;
  }

  dimension: hours_of_sleep {
    type: string
    sql:
        CASE
          WHEN hours_of_sleep IN ('0', '1', '2', '3', '4') THEN 'ZERO_FOUR'
          WHEN hours_of_sleep IN ('5','6') THEN 'FIVE_SIX'
          WHEN hours_of_sleep IN ('7','8') THEN 'SEVEN_EIGHT'
          WHEN hours_of_sleep IN ('9','10','11','12','13','14') THEN 'NINE_PLUS'
          WHEN hours_of_sleep = '' THEN 'SKIPPED'
          ELSE hours_of_sleep
        END;;
  }

  dimension: make_up {
    type: yesno
    sql: ${TABLE}."make_up" ;;
  }

  dimension: menstruating_person {
    type: yesno
    sql: ${TABLE}."menstruating_person" ;;
  }

  dimension: skin_feel {
    type: string
    sql: CASE WHEN ${TABLE}."skin_feel" = '' THEN 'SKIPPED' ELSE ${TABLE}."skin_feel" END;;
  }

  dimension: skin_goal {
    type: string
    sql: CASE WHEN ${TABLE}."skin_goal" = '' THEN 'SKIPPED' ELSE ${TABLE}."skin_goal" END;;
  }

  dimension: skin_type {
    type: string
    sql: CASE WHEN ${TABLE}."skin_type" = '' THEN 'SKIPPED' ELSE ${TABLE}."skin_type" END;;
  }

  dimension_group: stopped_birth_control {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."stopped_birth_control_date" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }
  measure: count_users {
    type: count
    drill_fields: [id]
  }


  measure: cumulative_users {
    type: running_total
    sql: ${count_users} ;;
  }
}
