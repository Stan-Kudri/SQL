--4. Вставить запись о новом клиенте двумя способами:
--  a. Указать уникальный идентификатор в запросе
--  b. Не указывать явно уникальный идентификатор в запросе, идентификатор должен генерироваться автоматически.
    
--a
INSERT INTO Customers (CustomerID,CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('93','STALKER', 'Mecheny', 'ZONA', 'Chernobyl', '00011000', 'Ukrainy');    
--b    
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Stan Kudri', 'Sergey Shirokawh', '1 Vostochnay', 'Rossony', '223344', 'Belarusian');
