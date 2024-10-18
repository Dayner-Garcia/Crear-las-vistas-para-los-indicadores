--Clientes Atendidos por Empleado

CREATE view ClientesAtendidosPorEmpleado AS
SELECT 
    E.EmployeeID, 
    E.FirstName + ' ' + E.LastName AS NombreEmpleado, 
    COUNT(DISTINCT O.CustomerID) AS ClientesAtendidos
FROM 
    Orders O
JOIN 
    Employees E ON O.EmployeeID = E.EmployeeID
GROUP BY 
    E.EmployeeID, E.FirstName, E.LastName

	SELECT * FROM ClientesAtendidosPorEmpleado;