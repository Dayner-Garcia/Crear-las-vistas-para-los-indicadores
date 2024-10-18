--Total de Ventas por Categoría

CREATE VIEW TotalVentasCategoria AS
SELECT 
    C.CategoryName, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
FROM 
    [Order Details] OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
JOIN 
    Categories C ON P.CategoryID = C.CategoryID
GROUP BY 
    C.CategoryName

	SELECT * FROM TotalVentasCategoria;
