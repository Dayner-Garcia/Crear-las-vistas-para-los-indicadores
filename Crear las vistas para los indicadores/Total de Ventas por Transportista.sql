--Total de Ventas por Transportista

CREATE VIEW TotalVentasPorTransportista AS
SELECT 
    S.CompanyName AS Transportista, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
FROM 
    Orders O
JOIN 
    [Order Details] OD ON O.OrderID = OD.OrderID
JOIN 
    Shippers S ON O.ShipVia = S.ShipperID
GROUP BY 
    S.CompanyName

	SELECT * FROM TotalVentasPorTransportista
