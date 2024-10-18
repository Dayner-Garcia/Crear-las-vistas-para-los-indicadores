--Productos Más Vendidos

CREATE VIEW ProductosMasVendidos as
select 
    P.ProductName, 
    SUM(OD.Quantity) AS TotalVendido
from 
    [Order Details] OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
GROUP BY 
    P.ProductName;

SELECT * FROM ProductosMasVendidos
ORDER BY TotalVendido DESC;