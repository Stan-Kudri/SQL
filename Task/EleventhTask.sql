--11. *Получитe имена клиентов и средний чек заказов, который сумма которого составляет от 1000 долларов(включительно).
--Среднюю сумму заказа необходимо округлить до двух сотых.
SELECT
	ContactName,
	ROUND(AVG(Price*Quantity), 2) AS AverageCheckOrder
FROM Customers
	INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
	INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
	INNER JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY Customers.ContactName
HAVING AverageCheckOrder > 1000
