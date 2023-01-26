--7. Вывести имена всех людей, которые покупали морские продукты.
DELETE FROM [Categories]
WHERE Description LIKE '%Sea%' OR '%fish%';
