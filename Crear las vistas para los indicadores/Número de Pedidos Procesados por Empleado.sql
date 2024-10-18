--Número de Pedidos Procesados por Empleado

create view PedidosPorEmpleados as
SELECT 
    E.EmployeeID, 
    E.FirstName + ' ' + E.LastName AS NombreEmpleado, 
    COUNT(O.OrderID) AS TotalPedidos
FROM 
    Orders O
Join 
    Employees E ON O.EmployeeID = E.EmployeeID
GROUP BY 
    E.EmployeeID, E.FirstName, E.LastName

	SELECT * FROM PedidosPorEmpleados