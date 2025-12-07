SELECT
count(fv.Id_vente) as num_appart_vendu,
db.Total_piece AS num_piece

FROM DimBien as db INNER JOIN FactVente as fv ON db.Id_bien = fv.Id_bien

WHERE db.Type_local = 'Appartement'

GROUP BY db.Total_piece