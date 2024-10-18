use Northwind;

--Ventas Totales por Per�odo (A�o y Mes)

CREATE VIEW VentasTotalesPorPeriodo AS
SELECT 
    YEAR(O.OrderDate) as A�o, 
    MONTH(O.OrderDate) as Mes, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
from 
    Orders O
join 
    [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY 
    YEAR(O.OrderDate), MONTH(O.OrderDate)

	SELECT * FROM VentasTotalesPorPeriodo;