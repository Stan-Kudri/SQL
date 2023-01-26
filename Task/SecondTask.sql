--2 .Вывести в алфавитном порядке все города из базы находящиеся не в Германии не во Франции и не в Англии.
SELECT * FROM Customers
WHERE Country NOT IN ('UK','France','Germany')
ORDER BY City;
