--Получитe имена клиентов и средний чек заказов, сумма которого составляет от 1000 долларов(включительно).
--Среднюю сумму заказа необходимо округлить до двух сотых
SELECT 
	OrderAmountCustomers .ContactName,
	ROUND(AVG(OrderAmountCustomers.SumByOrder),2) AS AverageCheckOrder
FROM

(
SELECT
	ContactName,
    	Customers.CustomerID,
	SUM(Price*Quantity) AS SumByOrder
FROM Customers
	INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
	INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
	INNER JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY Customers.CustomerID,OrderDetails.OrderID
)OrderAmountCustomers

GROUP BY OrderAmountCustomers.CustomerID
HAVING AverageCheckOrder >= 1000
ORDER BY AverageCheckOrder
