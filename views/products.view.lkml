view: products {
  derived_table: {
    sql:
      SELECT routines_dailyproduct.id,
             created_at,
             name,
             ingredients,
             type,
             is_medication,
             product_info_id,
             group_id,
             CASE
                       WHEN LOWER(brand) LIKE 'aa%' THEN 'AA'
                       WHEN brand IN ('ACO ') THEN 'ACO'
                       WHEN brand IN ('A-derma ', 'A derma') THEN 'A-derma'
                       WHEN brand IN ('Alma K ') THEN 'Alma K'
                       WHEN LOWER(brand) LIKE 'alverde%' THEN 'Alverde'
                       WHEN LOWER(brand) LIKE 'alvira%' THEN 'Alvira'
                       WHEN LOWER(brand) LIKE 'aroma%' THEN 'Aroma'
                       WHEN brand IN ('Ahaglow', 'Ahaglow S') THEN 'Ahaglow'
                       WHEN brand IN ('Ajanta Pharma Ltd', 'Ajanta pharmaceuticals') THEN 'Ajanta Pharma Ltd'
                       WHEN brand IN ('Aroma Magic ') THEN 'Aroma Magic'
                       WHEN brand IN ('Aveeno') THEN 'Aveeno'
                       WHEN brand IN ('Avene', 'Avene ', 'avene ') THEN 'Avene'
                       WHEN LOWER(brand) LIKE '%avon%' THEN 'Avon'
                       WHEN brand IN ('Axis- Y') THEN 'AXIS-Y'
                       WHEN LOWER(brand) LIKE 'ayur%' THEN 'Ayur'
                       WHEN brand IN ('Beauty of Jeseon') THEN 'Beauty of Joseon'
                       WHEN LOWER(brand) LIKE 'bioderma%' THEN 'Bioderma'
                       WHEN LOWER(brand) LIKE 'barwa%' THEN 'Barwa'
                       WHEN LOWER(brand) LIKE 'wow%' THEN 'WOW'
                       WHEN LOWER(brand) LIKE 'vlcc%' THEN 'VLCC'
                       WHEN LOWER(brand) LIKE 'vichy%' THEN 'Vichy'
                       WHEN brand IN ('Balea', 'Balea Med') THEN 'Balea'
                       WHEN brand IN ('Bioderma') THEN 'Bioderma'
                       WHEN brand IN ('Belif') THEN 'Belief'
                       WHEN LOWER(brand) LIKE 'bielenda%' THEN 'Bielenda'
                       WHEN LOWER(brand) LIKE 'biotrade%' THEN 'Biotrade'
                       WHEN LOWER(brand) LIKE 'byoma%' THEN 'Byoma'
                       WHEN LOWER(brand) LIKE '%cera%' AND LOWER(brand) NOT IN ('ceramide', 'ceramol', 'cera di cupra') THEN 'CeraVe'
                       WHEN brand IN ('Cien', 'Cien nature', 'cien ') THEN 'Cien'
                       WHEN brand IN ('Clean & Clear', 'Clean and Clear') THEN 'Clean & Clear'
                       WHEN brand IN ('clinique ', 'CLINIQUE ', 'CLINIQUE for men ') THEN 'Clinique'
                       WHEN brand IN ('COSRX ') THEN 'COSRX'
                       WHEN LOWER(brand) LIKE 'catrice%' THEN 'Catrice'
                       WHEN LOWER(brand) LIKE 'cetaphil%' THEN 'Cetaphil'
                       WHEN LOWER(brand) LIKE 'clarins%' THEN 'Clarins'
                       WHEN brand IN ('Dove', 'Dove', 'Dove ') THEN 'Dove'
                       WHEN LOWER(brand) LIKE 'deliplus%' THEN 'deliplus'
                       WHEN LOWER(brand) LIKE 'derma%' THEN 'Derma Co'
                       WHEN LOWER(brand) LIKE 'dermina%' THEN 'DERMINA'
                       WHEN brand IN ('Essence') THEN 'Essence'
                       WHEN brand IN ('Etos fresh skin') THEN 'Etos Fresh skin'
                       WHEN brand IN ('eucerin ') THEN 'Eucerin'
                       WHEN brand IN ('Fenty Skin ') THEN 'Fenty Skin'
                       WHEN brand IN ('Fluff ') THEN 'Fluff'
                       WHEN brand IN ('Helia-D ') THEN 'Helia-D'
                       WHEN brand IN ('Innisfree ') THEN 'Innisfree'
                       WHEN brand IN ('Ipca ', 'ipca') THEN 'Ipca'
                       WHEN brand IN ('ISANA ') THEN 'ISANA'
                       WHEN brand IN ('iUNIK') THEN 'IUNIK'
                       WHEN brand IN ('Ivatherm ', 'ivatherm') THEN 'Ivatherm'
                       WHEN brand IN ('Ivy Aia ', 'Ivy Aïa') THEN 'Ivy Aia'
                       WHEN LOWER(brand) LIKE ('%jart%') THEN 'Dr Jart+'
                       WHEN brand IN ('La Roche Posay', 'La roche posay', 'La Roche-Posay', 'La roche posay ') THEN 'La Roche Posay'
                       WHEN brand IN ('Lakme', 'Lakme ') THEN 'LAKME'
                       WHEN brand IN ('Lirene', 'Lirene ') THEN 'Lirene'
                       WHEN brand IN ('Lotus Herbals ') THEN 'Lotus Herbals'
                       WHEN brand IN ('MARY & MAY', 'Mary Kay', 'MaryKay ') THEN 'MARY & MAY'
                       WHEN brand IN ('minimalist') THEN 'Minimalist'
                       WHEN LOWER(brand) LIKE ('nivea%') THEN 'NIVEA'
                       WHEN LOWER(brand) LIKE 'pond%' THEN 'PONDS'
                       WHEN LOWER(brand) LIKE 'emolene%' THEN 'Emolene'
                       WHEN LOWER(brand) LIKE 'essence%' THEN 'Essence'
                       WHEN LOWER(brand) LIKE 'etos%' THEN 'Etos'
                       WHEN LOWER(brand) LIKE 'exuviance%' THEN 'Exuviance'
                       WHEN LOWER(brand) LIKE 'florence%' THEN 'Florence'
                       WHEN LOWER(brand) LIKE 'garnier%' THEN 'Garnier'
                       WHEN LOWER(brand) LIKE '%geek%' THEN 'Geek & Gorgeous'
                       WHEN LOWER(brand) LIKE 'gerovital%' THEN 'Gerovital'
                       WHEN LOWER(brand) LIKE 'glossier%' THEN 'Glossier'
                       WHEN LOWER(brand) LIKE 'glow%' THEN 'Glow'
                       WHEN LOWER(brand) LIKE 'hapdco%' THEN 'Hapdco'
                       WHEN LOWER(brand) LIKE 'johnson%' THEN 'Johnson & Johnsons'
                       WHEN LOWER(brand) LIKE 'kruidvat%' THEN 'Kruidvat'
                       WHEN LOWER(brand) LIKE '%shiled%' THEN 'La Shield'
                       WHEN LOWER(brand) LIKE 'minimalist%' THEN 'Minimalist'
                       WHEN LOWER(brand) LIKE 'mixa%' THEN 'Mixa'
                       WHEN LOWER(brand) LIKE 'miya%' THEN 'MIYA cosmetics'
                       WHEN LOWER(brand) LIKE 'no %' THEN 'Unknown'
                       WHEN LOWER(brand) LIKE 'naturschön%' THEN 'Naturschön'
                       WHEN LOWER(brand) LIKE 'neutrogena%' THEN 'Neutrogena'
                       WHEN LOWER(brand) LIKE 'nacomi%' THEN 'Nacomi'
                       WHEN LOWER(brand) LIKE 'one.two.free%' THEN 'one.two.free'
                       WHEN LOWER(brand) LIKE 'paula%' THEN 'Paula''s choice'
                       WHEN LOWER(brand) LIKE 'pharmaceris%' THEN 'Pharmaceris'
                       WHEN LOWER(brand) LIKE 'plix%' THEN 'Plix'
                       WHEN LOWER(brand) LIKE 'plum%' THEN 'PLUM'
                       WHEN brand IN ('Puca Pure & Care', 'PUCA- Pure and care') THEN 'Puca Pure & Care'
                       WHEN brand IN ('St. Botanica', 'St.Botanica') THEN 'St. Botanica'
                       WHEN brand IN ('The body shop', 'The Body Shop') THEN 'The Body Shop'
                       WHEN brand IN ('The derma CO', 'The Dermaco') THEN 'The derma CO'
                       WHEN brand IN ('The Mom''s Co.', 'The moms co') THEN 'The Mom''s Co.'
                       WHEN brand IN ('The Ordinary', 'THE ORDINARY', 'The Ordinary.') THEN 'THE ORDINARY'
                       WHEN LOWER(brand) LIKE 'unilever%' THEN 'Unilever'
                       WHEN LOWER(brand) LIKE 'sudocrem%' THEN 'Sudocrem'
                       WHEN LOWER(brand) LIKE 'valel%' THEN 'Vaseline'
                       WHEN LOWER(brand) LIKE 'sephora%' THEN 'Sephora'
                       WHEN LOWER(brand) LIKE '%seth%' THEN 'Dr. Sheth''s'
                       ELSE brand
              END as brand
      FROM routines_dailyproduct

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

  dimension: product_info_id {
    type: number
    sql: ${TABLE}."product_info_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name";;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand";;
  }

  dimension: ingredients {
    type: string
    sql: ${TABLE}."ingredients" ;;
  }

  dimension: is_medication {
    type: yesno
    sql: ${TABLE}."is_medication" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}."group_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

}
