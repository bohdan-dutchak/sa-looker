view: chat_gpt_messages {
  derived_table: {
    sql:
          SELECT id,
            created_at,
            message,
            user_id,
            category

      FROM chat_gpt_usermessage
    ;;
  }
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."message";;
  }

  dimension: category {
    type: string
    sql:${TABLE}."category";;
  }

  dimension: user_id {
    type: number
    sql:${TABLE}."user_id";;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
