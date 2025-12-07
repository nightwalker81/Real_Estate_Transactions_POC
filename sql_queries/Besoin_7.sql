WITH ventes_par_trimestre AS (
  SELECT
    CASE
      WHEN CAST(substr(Date, 6, 2) AS INTEGER) BETWEEN 1 AND 3 THEN 'T1'
      WHEN CAST(substr(Date, 6, 2) AS INTEGER) BETWEEN 4 AND 6 THEN 'T2'
    END AS trimestre,
    COUNT(*) AS nb_ventes
  FROM FactVente
  WHERE substr(Date, 1, 4) = '2020'
  GROUP BY trimestre
)
SELECT
  ROUND(((t2.nb_ventes - t1.nb_ventes) * 100.0) / t1.nb_ventes, 2) AS taux_evolution_pourcent
FROM ventes_par_trimestre t1
JOIN ventes_par_trimestre t2 
 ON t1.trimestre = 'T1' AND t2.trimestre = 'T2';



