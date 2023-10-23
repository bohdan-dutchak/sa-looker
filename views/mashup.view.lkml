view: mashup {
 derived_table: {
   sql:
    SELECT rdp1.brand AS b1, rdp2.brand AS b2, COUNT(*) AS cnt
    FROM routines_dailyproduct rdp1
             iNNER JOIN routines_dailyproduct rdp2 ON rdp1.group_id = rdp2.group_id
    GROUP BY 1, 2
    HAVING COUNT(*) > 50
       AND rdp1.brand != ''
       AND rdp2.brand != ''
       AND rdp1.brand != rdp2.brand
    ORDER BY 3 DESC
     ;;
 }

  dimension: Brand1 {
    type: string
    sql: ${TABLE}."b1" ;;
  }

  dimension: Brand2 {
    type: string
    sql: ${TABLE}."b2" ;;
  }

  dimension: Count {
    type: number
    sql: ${TABLE}."cnt" ;;
  }

}
