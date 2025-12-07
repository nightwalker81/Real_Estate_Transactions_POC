SELECT
    count(fv.Id_vente) AS num_appart_vendu
    

FROM FactVente AS fv

INNER JOIN DimBien AS db ON fv.Id_bien = db.Id_bien

WHERE db.Type_local = 'Appartement'

  AND CAST(((CAST(strftime('%m', 
REPLACE (
    fv.Date
  , '/'
  , '-'
)) AS INTEGER) -1) / 3 + 1) AS INTEGER) = 1

