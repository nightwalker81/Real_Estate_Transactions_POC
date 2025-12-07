SELECT 
  dc.Com_nom AS nom_commune,
  COUNT(fv.Id_vente) AS sales_count
FROM FactVente AS fv
JOIN DimBien AS db ON fv.Id_bien = db.Id_bien
JOIN DimCommune AS dc ON db.Com_id = dc.Com_id
WHERE substr(fv.Date, 1, 4) = '2020'
  AND CAST(substr(fv.Date, 6, 2) AS INTEGER) BETWEEN 1 AND 3 -- Q1
GROUP BY dc.Com_id, dc.Com_nom
HAVING COUNT(fv.Id_vente) >= 50
ORDER BY sales_count DESC;