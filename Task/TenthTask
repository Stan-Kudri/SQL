--10. Покажите сколько заказов было сделано каждым грузоотправителем. Отобразите имена грузоотправителей и количество выполненных ими заказов.
SELECT Shippers.ShipperID, Shippers.ShipperName, SUM(Quantity) AS AmountOfShipments FROM Shippers, OrderDetails
	INNER JOIN Orders ON Orders.ShipperID = Shippers.ShipperID
	WHERE OrderDetails.OrderID = Orders.OrderID
GROUP BY Shippers.ShipperID
