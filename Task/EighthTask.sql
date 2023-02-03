-- 8. Вывести имя клиента и количество совершенных им покупок.
SELECT
	ContactName,
	COUNT(OrderID) AS SumOrder
FROM Customers
	INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
GROUP BY ContactName
