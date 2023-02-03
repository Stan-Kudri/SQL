--2 .Вывести в алфавитном порядке все города из базы находящиеся не в Германии не во Франции и не в Англии.
SELECT City
FROM Customers
WHERE Customers.Country NOT IN ('UK','France','Germany')

UNION 
SELECT City
FROM Suppliers
WHERE Suppliers.Country NOT IN ('UK','France','Germany')
