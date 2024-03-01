view: user_count {
  sql_table_name: users_user ;; # Replace 'your_database_schema' with your actual schema name

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: date_joined {
    type: date
    sql: ${TABLE}.date_joined ;; # This maps to the join date column in your users table
  }

  dimension_group: joined_week {
    type: time
    timeframes: [week, year]
    sql: ${date_joined} ;; # This creates dimensions for the week and year of the join date
  }

  measure: count_users {
    type: count
    drill_fields: [id] # Assuming 'details' is a set of dimensions you want to explore further
  }

  measure: cumulative_users {
    type: running_total
    sql: ${id} ;;
  }

}
