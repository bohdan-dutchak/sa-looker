# The name of this view in Looker is "Routines Dailyproduct"
view: routines_dailyproduct {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.routines_dailyproduct ;;
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
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql:CASE
                 WHEN LOWER(${TABLE}."brand") LIKE 'aa%' THEN 'AA'
                 WHEN ${TABLE}."brand" IN ('ACO ') THEN 'ACO'
                 WHEN ${TABLE}."brand" IN ('A-derma ', 'A derma') THEN 'A-derma'
                 WHEN ${TABLE}."brand" IN ('Alma K ') THEN 'Alma K'
                 WHEN LOWER(${TABLE}."brand") LIKE 'alverde%' THEN 'Alverde'
                 WHEN LOWER(${TABLE}."brand") LIKE 'alvira%' THEN 'Alvira'
                 WHEN LOWER(${TABLE}."brand") LIKE 'aroma%' THEN 'Aroma'
                 WHEN ${TABLE}."brand" IN ('Ahaglow', 'Ahaglow S') THEN 'Ahaglow'
                 WHEN ${TABLE}."brand" IN ('Ajanta Pharma Ltd', 'Ajanta pharmaceuticals') THEN 'Ajanta Pharma Ltd'
                 WHEN ${TABLE}."brand" IN ('Aroma Magic ') THEN 'Aroma Magic'
                 WHEN ${TABLE}."brand" IN ('Aveeno') THEN 'Aveeno'
                 WHEN ${TABLE}."brand" IN ('Avene', 'Avene ', 'avene ') THEN 'Avene'
                 WHEN LOWER(${TABLE}."brand") LIKE '%avon%' THEN 'Avon'
                 WHEN ${TABLE}."brand" IN ('Axis- Y') THEN 'AXIS-Y'
                 WHEN LOWER(${TABLE}."brand") LIKE 'ayur%' THEN 'Ayur'
                 WHEN ${TABLE}."brand" IN ('Beauty of Jeseon') THEN 'Beauty of Joseon'
                 WHEN LOWER(${TABLE}."brand") LIKE 'bioderma%' THEN 'Bioderma'
                 WHEN LOWER(${TABLE}."brand") LIKE 'barwa%' THEN 'Barwa'
                 WHEN LOWER(${TABLE}."brand") LIKE 'wow%' THEN 'WOW'
                 WHEN LOWER(${TABLE}."brand") LIKE 'vlcc%' THEN 'VLCC'
                 WHEN LOWER(${TABLE}."brand") LIKE 'vichy%' THEN 'Vichy'
                 WHEN ${TABLE}."brand" IN ('Balea', 'Balea Med') THEN 'Balea'
                 WHEN ${TABLE}."brand" IN ('Bioderma') THEN 'Bioderma'
                 WHEN ${TABLE}."brand" IN ('Belif') THEN 'Belief'
                 WHEN LOWER(${TABLE}."brand") LIKE 'bielenda%' THEN 'Bielenda'
                 WHEN LOWER(${TABLE}."brand") LIKE 'biotrade%' THEN 'Biotrade'
                 WHEN LOWER(${TABLE}."brand") LIKE 'byoma%' THEN 'Byoma'
                 WHEN ${TABLE}."brand" IN ('Cera Ve', 'CeraVe', 'Cerave ', 'cera ve ', 'Cerave ', 'cera e and dermalogica') THEN 'CeraVe'
                 WHEN ${TABLE}."brand" IN ('Cien', 'Cien nature', 'cien ') THEN 'Cien'
                 WHEN ${TABLE}."brand" IN ('Clean & Clear', 'Clean and Clear') THEN 'Clean & Clear'
                 WHEN ${TABLE}."brand" IN ('clinique ', 'CLINIQUE ', 'CLINIQUE for men ') THEN 'Clinique'
                 WHEN ${TABLE}."brand" IN ('COSRX ') THEN 'COSRX'
                 WHEN LOWER(${TABLE}."brand") LIKE 'catrice%' THEN 'Catrice'
                 WHEN LOWER(${TABLE}."brand") LIKE 'cetaphil%' THEN 'Cetaphil'
                 WHEN LOWER(${TABLE}."brand") LIKE 'clarins%' THEN 'Clarins'
                 WHEN ${TABLE}."brand" IN ('Dove', 'Dove', 'Dove ') THEN 'Dove'
                 WHEN LOWER(${TABLE}."brand") LIKE 'deliplus%' THEN 'deliplus'
                 WHEN LOWER(${TABLE}."brand") LIKE 'derma%' THEN 'Derma Co'
                 WHEN LOWER(${TABLE}."brand") LIKE 'dermina%' THEN 'DERMINA'
                 WHEN ${TABLE}."brand" IN ('Essence') THEN 'Essence'
                 WHEN ${TABLE}."brand" IN ('Etos fresh skin') THEN 'Etos Fresh skin'
                 WHEN ${TABLE}."brand" IN ('eucerin ') THEN 'Eucerin'
                 WHEN ${TABLE}."brand" IN ('Fenty Skin ') THEN 'Fenty Skin'
                 WHEN ${TABLE}."brand" IN ('Fluff ') THEN 'Fluff'
                 WHEN ${TABLE}."brand" IN ('Helia-D ') THEN 'Helia-D'
                 WHEN ${TABLE}."brand" IN ('Innisfree ') THEN 'Innisfree'
                 WHEN ${TABLE}."brand" IN ('Ipca ', 'ipca') THEN 'Ipca'
                 WHEN ${TABLE}."brand" IN ('ISANA ') THEN 'ISANA'
                 WHEN ${TABLE}."brand" IN ('iUNIK') THEN 'IUNIK'
                 WHEN ${TABLE}."brand" IN ('Ivatherm ', 'ivatherm') THEN 'Ivatherm'
                 WHEN ${TABLE}."brand" IN ('Ivy Aia ', 'Ivy Aïa') THEN 'Ivy Aia'
                 WHEN LOWER(${TABLE}."brand") LIKE ('%jart%') THEN 'Dr Jart+'
                 WHEN ${TABLE}."brand" IN ('La Roche Posay', 'La roche posay', 'La Roche-Posay', 'La roche posay ') THEN 'La Roche Posay'
                 WHEN ${TABLE}."brand" IN ('Lakme', 'Lakme ') THEN 'LAKME'
                 WHEN ${TABLE}."brand" IN ('Lirene', 'Lirene ') THEN 'Lirene'
                 WHEN ${TABLE}."brand" IN ('Lotus Herbals ') THEN 'Lotus Herbals'
                 WHEN ${TABLE}."brand" IN ('MARY & MAY', 'Mary Kay', 'MaryKay ') THEN 'MARY & MAY'
                 WHEN ${TABLE}."brand" IN ('minimalist') THEN 'Minimalist'
                 WHEN LOWER(${TABLE}."brand") LIKE ('nivea%') THEN 'NIVEA'
                 WHEN LOWER(${TABLE}."brand") LIKE 'pond%' THEN 'PONDS'
                 WHEN LOWER(${TABLE}."brand") LIKE 'emolene%' THEN 'Emolene'
                 WHEN LOWER(${TABLE}."brand") LIKE 'essence%' THEN 'Essence'
                 WHEN LOWER(${TABLE}."brand") LIKE 'etos%' THEN 'Etos'
                 WHEN LOWER(${TABLE}."brand") LIKE 'exuviance%' THEN 'Exuviance'
                 WHEN LOWER(${TABLE}."brand") LIKE 'florence%' THEN 'Florence'
                 WHEN LOWER(${TABLE}."brand") LIKE 'garnier%' THEN 'Garnier'
                 WHEN LOWER(${TABLE}."brand") LIKE '%geek%' THEN 'Geek & Gorgeous'
                 WHEN LOWER(${TABLE}."brand") LIKE 'gerovital%' THEN 'Gerovital'
                 WHEN LOWER(${TABLE}."brand") LIKE 'glossier%' THEN 'Glossier'
                 WHEN LOWER(${TABLE}."brand") LIKE 'glow%' THEN 'Glow'
                 WHEN LOWER(${TABLE}."brand") LIKE 'hapdco%' THEN 'Hapdco'
                 WHEN LOWER(${TABLE}."brand") LIKE 'johnson%' THEN 'Johnson & Johnsons'
                 WHEN LOWER(${TABLE}."brand") LIKE 'kruidvat%' THEN 'Kruidvat'
                 WHEN LOWER(${TABLE}."brand") LIKE '%shiled%' THEN 'La Shield'
                 WHEN LOWER(${TABLE}."brand") LIKE 'minimalist%' THEN 'Minimalist'
                 WHEN LOWER(${TABLE}."brand") LIKE 'mixa%' THEN 'Mixa'
                 WHEN LOWER(${TABLE}."brand") LIKE 'miya%' THEN 'MIYA cosmetics'
                 WHEN LOWER(${TABLE}."brand") LIKE 'no %' THEN 'Unknown'
                 WHEN LOWER(${TABLE}."brand") LIKE 'naturschön%' THEN 'Naturschön'
                 WHEN LOWER(${TABLE}."brand") LIKE 'neutrogena%' THEN 'Neutrogena'
                 WHEN LOWER(${TABLE}."brand") LIKE 'nacomi%' THEN 'Nacomi'
                 WHEN LOWER(${TABLE}."brand") LIKE 'one.two.free%' THEN 'one.two.free'
                 WHEN LOWER(${TABLE}."brand") LIKE 'paula%' THEN 'Paula''s choice'
                 WHEN LOWER(${TABLE}."brand") LIKE 'pharmaceris%' THEN 'Pharmaceris'
                 WHEN LOWER(${TABLE}."brand") LIKE 'plix%' THEN 'Plix'
                 WHEN LOWER(${TABLE}."brand") LIKE 'plum%' THEN 'PLUM'
                 WHEN ${TABLE}."brand" IN ('Puca Pure & Care', 'PUCA- Pure and care') THEN 'Puca Pure & Care'
                 WHEN ${TABLE}."brand" IN ('St. Botanica', 'St.Botanica') THEN 'St. Botanica'
                 WHEN ${TABLE}."brand" IN ('The body shop', 'The Body Shop') THEN 'The Body Shop'
                 WHEN ${TABLE}."brand" IN ('The derma CO', 'The Dermaco') THEN 'The derma CO'
                 WHEN ${TABLE}."brand" IN ('The Mom''s Co.', 'The moms co') THEN 'The Mom''s Co.'
                 WHEN ${TABLE}."brand" IN ('The Ordinary', 'THE ORDINARY', 'The Ordinary.') THEN 'THE ORDINARY'
                 WHEN LOWER(${TABLE}."brand") LIKE 'unilever%' THEN 'Unilever'
                 WHEN LOWER(${TABLE}."brand") LIKE 'sudocrem%' THEN 'Sudocrem'
                 WHEN LOWER(${TABLE}."brand") LIKE 'valel%' THEN 'Vaseline'
                 WHEN LOWER(${TABLE}."brand") LIKE 'sephora%' THEN 'Sephora'
                 WHEN LOWER(${TABLE}."brand") LIKE '%seth%' THEN 'Dr. Sheth''s'
                 ELSE ${TABLE}."brand"
END ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}."group_id" ;;
  }

  dimension: ingredients {
    type: string
    sql: ${TABLE}."ingredients" ;;
  }

  dimension: is_medication {
    type: yesno
    sql: ${TABLE}."is_medication" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: product_info_id {
    type: number
    sql: ${TABLE}."product_info_id" ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}."size" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
