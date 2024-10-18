
--Total de Ventas por Cliente

CREATE VIEW TotalVentasPorCliente AS
SELECT 
    C.CustomerID, 
    C.CompanyName, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
FROM 
    Orders O
JOIN 
    [Order Details] OD ON O.OrderID = OD.OrderID
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
    C.CustomerID, C.CompanyName

	SELECT * FROM TotalVentasPorCliente;
