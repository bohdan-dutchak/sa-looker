# The name of this view in Looker is "Users User"
view: users_user {
  derived_table: {
    sql:
          SELECT id,
            date_joined,
            geolocation,
            CASE
                WHEN LOWER(operating_system) LIKE '%android%' THEN 'Android'
                WHEN LOWER(operating_system) LIKE '%ios%' THEN 'iOS'
                WHEN LOWER(operating_system) != '' THEN 'Other'
                ELSE ''
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
