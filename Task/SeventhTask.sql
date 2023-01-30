--7. Вывести имена всех людей, которые покупали морские продукты.
SELECT DISTINCT CustomerName FROM Customers
JOIN Orders on Orders.CustomerID = Customers.CustomerID
JOIN OrderDetails on OrderDetails.OrderID = Orders.OrderID
JOIN Products on Products.ProductID = OrderDetails.ProductID
WHERE Products.CategoryID = 8
