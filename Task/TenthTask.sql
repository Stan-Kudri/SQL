--10. Покажите сколько заказов было сделано каждым грузоотправителем. Отобразите имена грузоотправителей и количество выполненных ими заказов.
SELECT
	Shippers.ShipperID,
	Shippers.ShipperName,
	COUNT(OrderID) AS CountOfOrder
FROM Shippers
	LEFT JOIN Orders ON Orders.ShipperID = Shippers.ShipperID
GROUP BY Shippers.ShipperID
