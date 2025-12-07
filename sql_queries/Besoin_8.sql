SELECT
  dr.Reg_nom AS nom_region,
  ROUND(AVG(fv.Valeur / db.Surface_carre), 2) AS prix_au_metre_carre
FROM FactVente AS fv
INNER JOIN DimBien AS db ON fv.Id_bien = db.Id_bien
INNER JOIN DimCommune AS dc ON db.Com_id = dc.Com_id
INNER JOIN DimDepartment AS dd ON dc.Dep_id = dd.Dep_id
INNER JOIN DimRegion AS dr ON dd.Reg_id = dr.Reg_id
WHERE db.Total_piece > 4
  AND db.Type_local = 'Appartement'
  AND db.Surface_carre > 0
  AND fv.Valeur > 0
GROUP BY dr.Reg_nom
ORDER BY prix_au_metre_carre DESC;

