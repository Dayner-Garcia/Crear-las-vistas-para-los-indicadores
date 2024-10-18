--Ventas por Categoría de Producto

create view Ventasporcategoria as
select
	C.CategoryName,
	SUM(OD.Quantity * OD.UnitPrice) as TotalVentas
from 
	[Order Details] OD
join 
	Products P ON OD.ProductID = P.ProductID
Join
	Categories C ON P.CategoryID = C.CategoryID
Group By
	C.CategoryName

	SELECT * FROM VentasPorCategoria;