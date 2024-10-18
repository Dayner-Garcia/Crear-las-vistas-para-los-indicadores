--Productos Más Vendidos por Categoría

CREATE VIEW ProductosMasVendidosPorCategoria AS
SELECT 
    C.CategoryName, 
    P.ProductName, 
    SUM(OD.Quantity) AS TotalVendido
FROM 
    [Order Details] OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
JOIN 
    Categories C ON P.CategoryID = C.CategoryID
GROUP BY 
    C.CategoryName, P.ProductName;

SELECT * FROM ProductosMasVendidosPorCategoria
ORDER BY CategoryName, TotalVendido DESC;