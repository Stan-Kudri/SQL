-- 8. Вывести имя клиента и количество совершенных им покупок.
SELECT ContactName, SUM(Quantity) AS SumQuantity FROM Customers, OrderDetails
	INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
WHERE OrderDetails.OrderID = Orders.OrderID
GROUP BY ContactName
