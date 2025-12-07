WITH avg_prices AS (
    SELECT 
        db.Total_piece,
        AVG(fv.Valeur * 1.0 / db.Surface_carre) AS avg_price_per_m2
    FROM FactVente AS fv INNER JOIN DimBien AS db ON fv.Id_bien = db.Id_bien
    WHERE db.Total_piece IN (2, 3)
    GROUP BY db.Total_piece)
,

p2 AS (SELECT round(avg_price_per_m2,2) AS p2 FROM avg_prices WHERE Total_piece = 2),
p3 AS (SELECT round(avg_price_per_m2,2) AS p3 FROM avg_prices WHERE Total_piece = 3)

SELECT 
    p2.p2,
    p3.p3,
   round(((p2.p2 - p3.p3) / p3.p3) * 100,2) AS percentage_difference
FROM 
    p2, p3;
