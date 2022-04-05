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