--Número de Órdenes por Cliente

CREATE VIEW OrdenesPorCliente AS
SELECT 
    C.CustomerID, 
    C.CompanyName, 
    COUNT(O.OrderID) AS TotalOrdenes
from 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
    C.CustomerID, C.CompanyName

	
SELECT * FROM OrdenesPorCliente;