# The name of this view in Looker is "Questionnaire Userquestionnaire"
view: questionnaire_userquestionnaire {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.questionnaire_userquestionnaire ;;
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
    sql: ${TABLE}."age" ;;
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
    sql: ${TABLE}."exercise_days_a_week" ;;
  }

  dimension: expectations {
    type: string
    sql: ${TABLE}."expectations" ;;
  }

  dimension: feeling_today {
    type: string
    sql: ${TABLE}."feeling_today" ;;
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

  dimension: guilty_pleasures {
    type: string
    sql: ${TABLE}."guilty_pleasures" ;;
  }

  dimension: hours_of_sleep {
    type: string
    sql: ${TABLE}."hours_of_sleep" ;;
  }

  dimension: is_logging_menstruation {
    type: yesno
    sql: ${TABLE}."is_logging_menstruation" ;;
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
    sql: ${TABLE}."skin_feel" ;;
  }

  dimension: skin_goal {
    type: string
    sql: ${TABLE}."skin_goal" ;;
  }

  dimension: skin_type {
    type: string
    sql: ${TABLE}."skin_type" ;;
  }

  dimension: smoking_preferences {
    type: string
    sql: ${TABLE}."smoking_preferences" ;;
  }

  dimension_group: stopped_birth_control {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."stopped_birth_control_date" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
