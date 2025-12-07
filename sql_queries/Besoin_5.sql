SELECT

Round(AVG(fv.Valeur / db.Surface_carre),2) AS avg_prix_metre_carre

FROM DimBien as db INNER JOIN FactVente as fv ON db.Id_bien = fv.Id_bien
INNER JOIN DimCommune as dc ON db.Com_id = dc.Com_id
INNER JOIN DimDepartment AS dd ON dd.Dep_id = dc.Dep_id
INNER JOIN DimRegion as dr ON dd.Reg_id = dr.Reg_id

WHERE dr.Reg_nom = 'Ile-de-France' and db.Type_local = 'Maison'