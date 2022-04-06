-- Aufgabe 1
SELECT *
FROM Customers
WHERE Country = 'France'

-- Aufgabe 2
SELECT *
FROM Customers
WHERE City = 'Buenos Aires'

-- Aufgabe 3
SELECT *
FROM Customers
WHERE Country IN('Spain','Portugal')


-- Aufgabe 4
SELECT *
FROM Products
WHERE UnitsInStock > 100

-- Aufgabe 5
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE ProductID BETWEEN 10 AND 15

-- Aufgabe 6
SELECT ProductID, ProductName, UnitPrice, SupplierID
FROM Products
WHERE SupplierID IN(2,7,15)

-- Aufgabe 7
SELECT ProductID, ProductName, SupplierID, UnitsInStock, UnitPrice
FROM Products
WHERE SupplierID IN(5,10,15) AND
      UnitsInStock > 10 AND
	  UnitPrice < 100


-- Aufgabe 8
SELECT OrderID
      ,FORMAT(ShippedDate,'dd.MM.yyyy')  AS Lieferdatum
	  ,FORMAT(RequiredDate,'dd.MM.yyyy') AS Wunschtermin
	  ,DATEDIFF(DD,RequiredDate,ShippedDate) AS Lieferverzögerung
FROM Orders
WHERE DATEDIFF(DD,RequiredDate,ShippedDate) IS NOT NULL