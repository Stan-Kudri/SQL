--9. Вывести имена и ID пяти самых покупаемых продуктов. А также сколько их было продано.
SELECT
	ProductName,
    Products.ProductID,
    SUM(Quantity) AS SumQuantity 
FROM Products
	JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
GROUP BY ProductName 
ORDER BY SUM(Quantity) DESC
LIMIT 5
