WITH commune_avg AS (
  SELECT 
    dc.Com_nom AS commune,
    dd.Dep_id AS dep_code,
    dd.Dep_nom AS departement_nom,
    ROUND(AVG(fv.Valeur), 2) AS avg_valeur,
    ROW_NUMBER() OVER (PARTITION BY dd.Dep_id ORDER BY AVG(fv.Valeur) DESC) AS rank_commune
  FROM FactVente AS fv
  JOIN DimBien AS db ON fv.Id_bien = db.Id_bien
  JOIN DimCommune AS dc ON db.Com_id = dc.Com_id
  JOIN DimDepartment AS dd ON dc.Dep_id = dd.Dep_id
  WHERE dd.Dep_id IN (6, 13, 33, 59, 69)
  GROUP BY dc.Com_id, dc.Com_nom, dd.Dep_id, dd.Dep_nom
)

SELECT * 
FROM commune_avg
WHERE rank_commune <= 3
ORDER BY dep_code, rank_commune;
