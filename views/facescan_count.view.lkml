view: facescan_count {
  derived_table: {
    sql:
      SELECT face_scan_id,
      user_id,
      rf.created_at,
          FROM public.routines_facescananalytics
          INNER JOIN public.routines_facescan rf on public.routines_facescananalytics.face_scan_id = rf.id
     ;;
  }
  drill_fields: [face_scan_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: face_scan_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."face_scan_id" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: created_week {
    type: time
    timeframes: [week, year]
    sql: ${TABLE}."created_at" ;; # This creates dimensions for the week and year of the join date
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }


  measure: facescan_count {
    type: count
    drill_fields: [face_scan_id]
  }

  measure: cumulative_facescans {
    type: running_total
    sql: ${facescan_count} ;;
  }

}
