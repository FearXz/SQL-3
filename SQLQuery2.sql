-- 1
SELECT COUNT(*) AS TOTALE_ORDINI FROM Orders 
-- 2
SELECT COUNT(*) AS TOTALE_CLIENTI FROM Customers;
--3
SELECT COUNT(*) AS CLIENTI_LONDON FROM Customers WHERE City = 'London';
--4
SELECT AVG(Freight) AS MEDIA_COSTO_TRASPORTO FROM Orders;
--5
SELECT AVG(Freight) AS MEDIA_COSTO_BOTTM FROM Orders WHERE CustomerID = 'BOTTM';
--6
SELECT CustomerID, SUM(Freight) AS TOTALE_PER_ID FROM Orders GROUP BY CustomerID;
--7
SELECT city, COUNT(*) AS CUSTOMER_CITY	FROM Customers GROUP BY city;
--8 
SELECT OrderID, SUM(UnitPrice*Quantity) AS TOTALE_PER_ORDINE FROM [Order Details]  GROUP BY OrderID;
--9
SELECT SUM(UnitPrice*Quantity) AS TOTALE_10248 FROM [Order Details]  WHERE OrderID = 10248;
--10
SELECT CategoryName, COUNT(*) AS COUNT_CATEGORIE  FROM Products INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID  GROUP BY CategoryName;
--11
SELECT ShipCountry, COUNT(*) AS SPEDIZIONI_PER_PAESE  FROM Orders GROUP BY ShipCountry;
--12
SELECT ShipCountry, avg(Freight) AS MEDIA_FREIGHT_PAESE  FROM Orders GROUP BY ShipCountry;