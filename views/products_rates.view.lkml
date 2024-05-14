view: products_rates {
  derived_table: {
    sql:
      SELECT routines_dailyproduct.id,
             created_at,
             name,
             type,
             is_medication,
             product_info_id,
             group_id,
             accessibility_score,
             efficiency_score,
             preference_score,
             satisfaction_score,
             easy_to_use_score,
             CASE
                       WHEN LOWER(brand) LIKE 'aa%' THEN 'AA'
                       WHEN brand IN ('ACO ') THEN 'ACO'
                       WHEN brand IN ('A-derma ', 'A derma') THEN 'A-derma'
                       WHEN brand IN ('Alma K ') THEN 'Alma K'
                       WHEN LOWER(brand) LIKE '%alverde%' THEN 'Alverde'
                       WHEN LOWER(brand) LIKE '%alvira%' THEN 'Alvira'
                       WHEN LOWER(brand) LIKE '%aroma%' THEN 'Aroma'
                       WHEN brand IN ('Ahaglow', 'Ahaglow S') THEN 'Ahaglow'
                       WHEN brand IN ('Ajanta Pharma Ltd', 'Ajanta pharmaceuticals') THEN 'Ajanta Pharma Ltd'
                       WHEN brand IN ('Aroma Magic ') THEN 'Aroma Magic'
                       WHEN brand IN ('Aveeno') THEN 'Aveeno'
                       WHEN brand IN ('Avene', 'Avene ', 'avene ', 'Avène') THEN 'Avene'
                       WHEN LOWER(brand) LIKE '%avon%' THEN 'Avon'
                       WHEN brand IN ('Axis- Y') THEN 'AXIS-Y'
                       WHEN LOWER(brand) LIKE 'ayur%' THEN 'Ayur'
                       WHEN LOWER(brand) LIKE '%aesthetic%' THEN 'AESTHETIC SCIENCE'
                       WHEN brand IN ('Beauty of Jeseon') THEN 'Beauty of Joseon'
                       WHEN LOWER(brand) LIKE 'bioderma%' THEN 'Bioderma'
                       WHEN LOWER(brand) LIKE 'barwa%' THEN 'Barwa'
                       WHEN LOWER(brand) LIKE 'wow%' THEN 'WOW'
                       WHEN LOWER(brand) LIKE 'vlcc%' THEN 'VLCC'
                       WHEN LOWER(brand) LIKE 'vichy%' THEN 'Vichy'
                       WHEN brand IN ('Balea', 'Balea Med') THEN 'Balea'
                       WHEN LOWER(brand) LIKE '%bioderma%' THEN 'Bioderma'
                       WHEN brand IN ('Belif') THEN 'Belief'
                       WHEN LOWER(brand) LIKE 'bielenda%' THEN 'Bielenda'
                       WHEN LOWER(brand) LIKE 'biotrade%' THEN 'Biotrade'
                       WHEN LOWER(brand) LIKE '%byoma%' THEN 'Byoma'
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
                       WHEN LOWER(brand) LIKE '%essence%' THEN 'Essence'
                       WHEN LOWER(brand) LIKE '%etos fresh skin%' THEN 'Etos Fresh skin'
                       WHEN LOWER(brand) LIKE '%eucerin%' THEN 'Eucerin'
                       WHEN LOWER(brand) LIKE '%fenty%' THEN 'Fenty Skin'
                       WHEN brand IN ('Fluff ') THEN 'Fluff'
                       WHEN brand IN ('Helia-D ') THEN 'Helia-D'
                       WHEN brand IN ('Innisfree ') THEN 'Innisfree'
                       WHEN brand IN ('Ipca ', 'ipca') THEN 'Ipca'
                       WHEN LOWER(brand) LIKE '%isana%' THEN 'ISANA'
                       WHEN brand IN ('iUNIK') THEN 'IUNIK'
                       WHEN brand IN ('Ivatherm ', 'ivatherm') THEN 'Ivatherm'
                       WHEN brand IN ('Ivy Aia ', 'Ivy Aïa') THEN 'Ivy Aia'
                       WHEN LOWER(brand) LIKE '%jart%' THEN 'Dr Jart+'
                       WHEN brand IN ('La Roche Posay', 'La roche posay', 'La Roche-Posay', 'La roche posay ') OR LOWER(brand) LIKE ('%posay%') THEN 'La Roche Posay'
                       WHEN LOWER(brand) LIKE '%lakm%' THEN 'LAKME'
                       WHEN brand IN ('Lirene', 'Lirene ') THEN 'Lirene'
                       WHEN brand IN ('Lotus Herbals ') THEN 'Lotus Herbals'
                       WHEN brand IN ('MARY & MAY', 'Mary Kay', 'MaryKay ') THEN 'Mary Kay'
                       WHEN brand IN ('minimalist') THEN 'Minimalist'
                       WHEN LOWER(brand) LIKE ('%nivea%') THEN 'NIVEA'
                       WHEN LOWER(brand) LIKE '%pond%' THEN 'PONDS'
                       WHEN LOWER(brand) LIKE '%emolene%' THEN 'Emolene'
                       WHEN LOWER(brand) LIKE '%essence%' THEN 'Essence'
                       WHEN LOWER(brand) LIKE '%etos%' THEN 'Etos'
                       WHEN LOWER(brand) LIKE '%exuviance%' THEN 'Exuviance'
                       WHEN LOWER(brand) LIKE '%florence%' THEN 'Florence'
                       WHEN LOWER(brand) LIKE '%garnier%' THEN 'Garnier'
                       WHEN LOWER(brand) LIKE '%geek%' THEN 'Geek & Gorgeous'
                       WHEN LOWER(brand) LIKE '%gerovital%' THEN 'Gerovital'
                       WHEN LOWER(brand) LIKE '%glossier%' THEN 'Glossier'
                       WHEN LOWER(brand) LIKE '%glow%' THEN 'Glow'
                       WHEN LOWER(brand) LIKE '%hapdco%' THEN 'Hapdco'
                       WHEN LOWER(brand) LIKE '%johnson%' THEN 'Johnson & Johnsons'
                       WHEN LOWER(brand) LIKE '%kruidvat%' THEN 'Kruidvat'
                       WHEN LOWER(brand) LIKE '%shiled%' THEN 'La Shield'
                       WHEN LOWER(brand) LIKE '%minimalist%' THEN 'Minimalist'
                       WHEN LOWER(brand) LIKE '%mixa%' THEN 'Mixa'
                       WHEN LOWER(brand) LIKE '%miya%' THEN 'MIYA cosmetics'
                       WHEN LOWER(brand) LIKE '%no %' THEN 'Unknown'
                       WHEN LOWER(brand) LIKE '%naturschön%' THEN 'Naturschön'
                       WHEN LOWER(brand) LIKE '%neutrogena%' THEN 'Neutrogena'
                       WHEN LOWER(brand) LIKE '%nacomi%' THEN 'Nacomi'
                       WHEN LOWER(brand) LIKE '%one.two.free%' THEN 'one.two.free'
                       WHEN LOWER(brand) LIKE '%paula%' THEN 'Paula''s choice'
                       WHEN LOWER(brand) LIKE '%pharmaceris%' THEN 'Pharmaceris'
                       WHEN LOWER(brand) LIKE '%plix%' THEN 'Plix'
                       WHEN LOWER(brand) LIKE '%plum%' THEN 'PLUM'
                       WHEN brand IN ('Puca Pure & Care', 'PUCA- Pure and care') THEN 'Puca Pure & Care'
                       WHEN brand IN ('St. Botanica', 'St.Botanica') THEN 'St. Botanica'
                       WHEN brand IN ('The body shop', 'The Body Shop') THEN 'The Body Shop'
                       WHEN brand IN ('The derma CO', 'The Dermaco', 'THE co derma') THEN 'The derma CO'
                       WHEN brand IN ('The Mom''s Co.', 'The moms co') THEN 'The Mom''s Co.'
                       WHEN brand IN ('The Ordinary', 'THE ORDINARY', 'The Ordinary.') OR LOWER(brand) LIKE '%the ordinary%' OR LOWER(brand) LIKE '%ordinary%'  THEN 'THE ORDINARY'
                       WHEN LOWER(brand) LIKE '%unilever%' THEN 'Unilever'
                       WHEN LOWER(brand) LIKE '%sudocrem%' THEN 'Sudocrem'
                       WHEN LOWER(brand) LIKE '%vaselin%' THEN 'Vaseline'
                       WHEN LOWER(brand) LIKE '%sephora%' THEN 'Sephora'
                       WHEN LOWER(brand) LIKE '%seth%' THEN 'Dr. Sheth''s'
                       WHEN LOWER(brand) LIKE '%thermale%' THEN 'EAU Thermale Avene'
                       WHEN brand IN ('BIOTHERM', 'BIOTHERM HOMME', 'BIOTHERN', 'BIOTHERW', 'IBIOTHERM') THEN 'THE ORDINARY'
                       WHEN brand IN ('facetheory', 'Facetheory', 'Facetherapy') THEN 'Facetheory'
                       WHEN LOWER(brand) LIKE '%biosthetique%' THEN 'LA BIOSTHETIQUE PARIS'
                       WHEN LOWER(brand) LIKE '%esthe%' THEN 'Lady Esther'
                       WHEN LOWER(brand) LIKE '%beauty from the sea%' THEN 'Repêchage Beauty from the sea'
                       WHEN LOWER(brand) LIKE '%skin therapy%' THEN 'Skin Therapy'
                       WHEN LOWER(brand) LIKE '%synergy therm%' THEN 'Synergy Therm Cosmetics'
                       WHEN LOWER(brand) LIKE '%ayurveda%' THEN 'T.A.C the ayurveda CO'
                       WHEN LOWER(brand) LIKE '%the1nkey%' OR LOWER(brand) LIKE 'theinkey' THEN 'THEINKEYLIST'
                       WHEN LOWER(brand) LIKE '%adidas%' THEN 'Adidas'
                       WHEN LOWER(brand) LIKE '%body shop%' OR LOWER(brand) LIKE '%body the shop%' or LOWER(brand) LIKE '%the body therapy%' THEN 'The Body Shop'
                       WHEN LOWER(brand) LIKE '%the co%' OR LOWER(brand) LIKE '%the derma co%' OR LOWER(brand) LIKE '%the darma co%' or LOWER(brand) LIKE '%the dermaco%' THEN 'The Derma Co'
                       WHEN brand IN ('THE FACE SHOP', 'THEFACESHOP') THEN 'The Face Shop'
                       WHEN LOWER(brand) LIKE '%the man company%' THEN 'The Man Company'
                       WHEN LOWER(brand) LIKE '%moms%' THEN 'The Moms Co'
                       WHEN LOWER(brand) LIKE '%ritual%' THEN 'Rituals'
                       WHEN LOWER(brand) LIKE '%pink found%' THEN 'The Pink Foundry'
                       WHEN brand IN ('Acne derm', 'ACNEDERM', 'ACNE-DERM') THEN 'The Face Shop'
                       WHEN LOWER(brand) LIKE '%acnemoist%' THEN 'Acnemoist'
                       WHEN LOWER(brand) LIKE '%acnesta%' THEN 'Actestar'
                       WHEN LOWER(brand) LIKE '%acnesti%' THEN 'Acnestil'
                       WHEN LOWER(brand) LIKE '%apotekens%' OR LOWER(brand) LIKE '%apothekens%' OR LOWER(brand) LIKE '%arotekens%' THEN 'ACO Apotekens Composita'
                       WHEN LOWER(brand) LIKE '%acqua alle rosse%' THEN 'Acqua Alle Rosse'
                       WHEN LOWER(brand) LIKE '%adapal%' THEN 'Adapalene Gel'
                       WHEN LOWER(brand) LIKE '%a derma%' OR LOWER(brand) LIKE '%a-derma%' THEN 'A-DERMA LABORATOIRE DERMATOLOGIQUE VEGETAL'
                       WHEN LOWER(brand) LIKE '%acnemyci%' OR LOWER(brand) LIKE '%acne-myci%' THEN 'Acne-Mycin'
                       WHEN LOWER(brand) LIKE '%anixa%' THEN 'anixa Life Sciences'
                       WHEN LOWER(brand) LIKE '%skinceuticals%' THEN 'SkinCeuticals'
                       WHEN LOWER(brand) LIKE '%anixa%' THEN 'anixa Life Sciences'
                       WHEN LOWER(brand) LIKE '%drunk elephant%' THEN 'Drunk Elephant'
                       WHEN LOWER(brand) LIKE '%olay%' THEN 'Olay'
                       WHEN LOWER(brand) LIKE '%cetaphil%' THEN 'Cetaphil'
                       WHEN LOWER(brand) LIKE '%clinique%' THEN 'Clinique'
                       WHEN LOWER(brand) LIKE '%tatcha%' THEN 'Tatcha'
                       WHEN LOWER(brand) LIKE '%aveeno%' THEN 'Aveeno'
                       WHEN LOWER(brand) LIKE '%clinique%' THEN 'Clinique'
                       WHEN LOWER(brand) LIKE '%herbivore%' THEN 'Herbivore'
                       WHEN LOWER(brand) LIKE '%dot%' AND brand NOT IN ('ADOT', 'EVODOTIKO', 'PRODOT') THEN 'Dot and Key Skincare'
                       WHEN LOWER(brand) LIKE '%lakou%' THEN 'Lakou'
                       WHEN LOWER(brand) LIKE '%mama%' THEN 'Mamaearth'
                       WHEN LOWER(brand) LIKE '%apollo %' THEN 'Apollo Cosmetics'
                       WHEN LOWER(brand) LIKE '%basiclab%' THEN 'BasicLab'
                       WHEN LOWER(brand) LIKE '%body works%' OR LOWER(brand) LIKE '%bodywio%' THEN 'Bath & Body Works'
                       WHEN LOWER(brand) LIKE '%aqualogi%' THEN 'Aqualogica'




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


  dimension: accessibility_score {
    type: number
    sql: ${TABLE}."accessibility_score" ;;
  }

  dimension: efficiency_score {
    type: number
    sql: ${TABLE}."efficiency_score" ;;
  }

  dimension: preference_score {
    type: number
    sql: ${TABLE}."preference_score" ;;
  }


  dimension: satisfaction_score {
    type: number
    sql: ${TABLE}."satisfaction_score" ;;
  }


  dimension: easy_to_use_score {
    type: number
    sql: ${TABLE}."easy_to_use_score" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

}
