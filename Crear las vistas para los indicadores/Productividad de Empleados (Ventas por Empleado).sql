--Productividad de Empleados (Ventas por Empleado)

create view VentasPorEmpleado as
select 
    E.EmployeeID, 
    E.FirstName + ' ' + E.LastName AS NombreEmpleado, 
    SUM(OD.Quantity * OD.UnitPrice) AS TotalVentas
FROM 
    Orders O
JOIN 
    [Order Details] OD ON O.OrderID = OD.OrderID
JOIN 
    Employees E ON O.EmployeeID = E.EmployeeID
GROUP BY 
    E.EmployeeID, E.FirstName, E.LastName

	SELECT * FROM VentasPorEmpleado;