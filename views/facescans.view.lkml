view: facescans {
  derived_table: {
    sql:
      SELECT face_scan_id,
      user_id,
      rf.created_at,
      acne,
      CASE
                        WHEN acne = 100 THEN '100'
                        WHEN acne < 100 AND acne >= 90 THEN '90-100'
                        WHEN acne < 90 AND acne >= 80 THEN '80-100'
                        WHEN acne < 80 AND acne >= 70 THEN '70-80'
                        WHEN acne < 70 AND acne >= 60 THEN '60-70'
                        WHEN acne < 60 AND acne >= 50 THEN '50-60'
                        WHEN acne < 50 AND acne >= 40 THEN '40-50'
                        WHEN acne < 40 AND acne >= 30 THEN '30-40'
                        WHEN acne < 30 AND acne >= 20 THEN '20-30'
                        ELSE '<20'
                  END AS acne_range,
      eye_bags,
      hydration,
      lines,
      pigmentation,
      pores,
      quality,
      redness,
      sagging,
      translucency,
      uniformness,
      wrinkles
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

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: acne {
    type: number
    sql: ${TABLE}."acne" ;;
  }

  dimension: acne_range {
    type: string
    sql: ${TABLE}."acne_range" ;;
  }

  dimension: eye_bags {
    type: number
    sql: ${TABLE}."eye_bags" ;;
  }

  dimension: hydration {
    type: number
    sql: ${TABLE}."hydration" ;;
  }

  dimension: lines {
    type: number
    sql: ${TABLE}."lines" ;;
  }

  dimension: pigmentation {
    type: number
    sql: ${TABLE}."pigmentation" ;;
  }

  dimension: pores {
    type: number
    sql: ${TABLE}."pores" ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}."quality" ;;
  }

  dimension: redness {
    type: number
    sql: ${TABLE}."redness" ;;
  }

  dimension: sagging {
    type: number
    sql: ${TABLE}."sagging" ;;
  }

  dimension: translucency {
    type: number
    sql: ${TABLE}."translucency" ;;
  }

  dimension: uniformness {
    type: number
    sql: ${TABLE}."uniformness" ;;
  }

  dimension: wrinkles {
    type: number
    sql: ${TABLE}."wrinkles" ;;
  }

  measure: count {
    type: count
    drill_fields: [face_scan_id]
  }

}
