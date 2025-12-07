SELECT
  dd.Dep_nom AS nom_departement,
  ROUND(AVG(fv.Valeur / db.Surface_carre), 2) AS prix_metre_carre_moyen
FROM DimBien AS db
INNER JOIN  FactVente AS fv ON db.id_bien = fv.id_bien
INNER JOIN DimCommune AS dc ON db.Com_id = dc.Com_id
Inn DimDepartment AS dd ON dc.Dep_id = dd.Dep_id
WHERE db.Surface_carre > 0 AND fv.Valeur > 0
GROUP BY dd.Dep_id, dd.Dep_nom
ORDER BY prix_metre_carre_moyen DESC
LIMIT 10;
