# The name of this view in Looker is "Users User"
view: users_user {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.users_user ;;
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
    # This dimension will be called "Avatar" in Explore.

  dimension: avatar {
    type: string
    sql: ${TABLE}."avatar" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_joined {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."date_joined" ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}."device" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: geolocation {
    type: string
    sql: ${TABLE}."geolocation" ;;
  }

  dimension: haut_ai_subject_id {
    type: string
    sql: ${TABLE}."haut_ai_subject_id" ;;
  }

  dimension: health_data {
    type: yesno
    sql: ${TABLE}."health_data" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."is_active" ;;
  }

  dimension: is_amplitude_synced {
    type: yesno
    sql: ${TABLE}."is_amplitude_synced" ;;
  }

  dimension: is_staff {
    type: yesno
    sql: ${TABLE}."is_staff" ;;
  }

  dimension: is_superuser {
    type: yesno
    sql: ${TABLE}."is_superuser" ;;
  }

  dimension: is_verified {
    type: yesno
    sql: ${TABLE}."is_verified" ;;
  }

  dimension: language_id {
    type: string
    sql: ${TABLE}."language_id" ;;
  }

  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_login" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}."operating_system" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension_group: password_last_change {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."password_last_change" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
