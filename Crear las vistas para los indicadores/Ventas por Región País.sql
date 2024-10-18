--Ventas por Región/País

CREATE VIEW VentasdeRegionPais AS
SELECT 
    O.ShipCountry as Pais, 
    O.ShipRegion as Region, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
FROM 
    Orders O
join 
    [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY 
    O.ShipCountry, O.ShipRegion

	SELECT * FROM VentasDeRegionPais;
