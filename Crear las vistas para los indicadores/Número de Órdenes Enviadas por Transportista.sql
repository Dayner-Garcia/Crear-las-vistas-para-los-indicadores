
--Número de Órdenes Enviadas por Transportista

CREATE VIEW OrdenesPorTransportista AS
SELECT 
    S.CompanyName AS Transportista, 
    COUNT(O.OrderID) AS TotalOrdenes
FROM 
    Orders O
JOIN 
    Shippers S ON O.ShipVia = S.ShipperID
GROUP BY 
    S.CompanyName

	SELECT * FROM OrdenesPorTransportista;