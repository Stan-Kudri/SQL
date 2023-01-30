--7. Вывести имена всех людей, которые покупали морские продукты.
SELECT DISTINCT ContactName FROM Customers
  INNER JOIN Orders on Orders.CustomerID = Customers.CustomerID
  INNER JOIN OrderDetails on OrderDetails.OrderID = Orders.OrderID
  INNER JOIN Products on Products.ProductID = OrderDetails.ProductID
WHERE Products.CategoryID = 8
