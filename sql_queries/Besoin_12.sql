SELECT 
    
round(((count(fv.Id_vente) * 1.0 / dc.PTOT) * 1000),2) AS trans_per_1000,
dc.Com_nom AS nom_commune

FROM FactVente as fv 
INNER JOIN DimCommune as dc ON dc.Com_id = fv.Com_id

WHERE dc.PTOT > 10000

GROUP BY dc.Com_id , dc.Com_nom
ORDER BY trans_per_1000 DESC
LIMIT 20