SELECT
  db.Id_bien,
  fv.Valeur AS Valeur_fonciere,
  db.Surface_carre AS metres_carres,
  dr.Reg_nom AS nom_region

FROM FactVente AS fv
INNER JOIN DimBien AS db ON fv.Id_bien = db.Id_bien
INNER JOIN DimCommune AS dc ON db.Com_id = dc.Com_id
INNER JOIN DimDepartment AS dd ON dc.Dep_id = dd.Dep_id
INNER JOIN DimRegion AS dr ON dd.Reg_id = dr.Reg_id

WHERE db.Type_local = 'Appartement'
  AND db.Surface_carre > 0
  AND fv.Valeur > 0

ORDER BY Valeur_fonciere DESC
LIMIT 10;
