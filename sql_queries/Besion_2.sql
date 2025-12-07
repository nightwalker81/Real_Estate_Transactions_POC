SELECT
    dr.Reg_nom As region,
    count(fv.Id_vente) AS num_appart_vendu
    

FROM FactVente AS fv

INNER JOIN DimBien AS db ON fv.Id_bien = db.Id_bien
INNER JOIN DimCommune AS dc ON db.Com_id = dc.Com_id
INNER JOIN DimDepartment AS dd ON dc.Dep_id = dd.Dep_id
INNER JOIN DimRegion AS dr ON dd.Reg_id = dr.Reg_id

WHERE db.Type_local = 'Appartement'

  AND CAST(((CAST(strftime('%m', 
REPLACE (
    fv.Date
  , '/'
  , '-'
)) AS INTEGER) -1) / 3 + 1) AS INTEGER) = 1

GROUP BY dr.Reg_id, dr.Reg_nom