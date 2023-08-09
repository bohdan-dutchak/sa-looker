view: avg_facescans {
  derived_table: {
    sql:
      SELECT
         AVG(acne),
         AVG(lines),
         AVG(pigmentation),
         AVG(translucency),
         AVG(quality),
         AVG(eye_bags),
         AVG(pores),
         AVG(sagging),
         AVG(uniformness),
         AVG(hydration),
         AVG(redness)
      FROM routines_facescananalytics;;
  }

  dimension: acne {
    type: number
    sql: ${TABLE}."acne" ;;
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



  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}
