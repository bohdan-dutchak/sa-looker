view: samsung_users {
  derived_table: {
    sql:
     SELECT id,
            date_joined,
            geolocation,
            CASE
                WHEN LOWER(operating_system) LIKE '%samsung%' THEN 'Samsung'
                ELSE 'Other'
                END AS operating_system
      FROM users_user
    ;;
}
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: date_joined {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."date_joined" ;;
  }

  dimension: geolocation {
    type: string
    map_layer_name: countries
        sql: ${TABLE}."geolocation";;
  }

  dimension: operating_system {
    type: string
    sql:${TABLE}."operating_system";;
  }


  measure: count {
    type: count
    drill_fields: [id]
  }
}
