-- 8. Вывести имя клиента и количество совершенных им покупок.
SELECT ContactName, SUM(Quantity) AS SumQuantity
FROM Customers
	INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
	INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
GROUP BY ContactName
