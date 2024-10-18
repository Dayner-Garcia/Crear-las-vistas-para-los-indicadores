use Northwind;

--Ventas Totales por Período (Año y Mes)

CREATE VIEW VentasTotalesPorPeriodo AS
SELECT 
    YEAR(O.OrderDate) as Año, 
    MONTH(O.OrderDate) as Mes, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
from 
    Orders O
join 
    [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY 
    YEAR(O.OrderDate), MONTH(O.OrderDate)

	SELECT * FROM VentasTotalesPorPeriodo;