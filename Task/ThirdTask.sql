--3. Выберите информацию о сотрудниках в алфавитном порядке по Фамилии и Имени, которые имеют степень бакалавра гуманитарных наук.
SELECT * FROM [Employees]
WHERE Notes LIKE '%B%degree%'
ORDER BY LastName ASC, FirstName ASC;
