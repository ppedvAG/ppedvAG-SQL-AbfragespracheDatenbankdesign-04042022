/*

%
Ergänzung mit einem oder mehreren Zeichen

SELECT *
FROM Customers
WHERE Country LIKE 'A%'

SELECT * 
FROM Orders
WHERE OrderID LIKE '102%'

SELECT *
FROM Customers
WHERE ContactName LIKE 'P%o'

SELECT *
FROM Customers
WHERE CompanyName LIKE '%de'

------------------------------------------------------------------------------

_   (Unterstrich)

SELECT *
FROM Customers
WHERE City LIKE '_ünchen'

SELECT *
FROM Customers 
WHERE Country LIKE 'German_'

SELECT *
FROM Customers 
WHERE Country LIKE 'Fr_nc_'


------------------------------------------------------------------------------------
[]


SELECT *
FROM Products
WHERE ProductName LIKE '[abc]%'
WHERE ProductName LIKE '%[abc]'
WHERE ProductName LIKE '%[abc]%'



[ - ]

SELECT *
FROM Products
WHERE ProductName LIKE '[d-h]%'


[^ ]

SELECT *
FROM Customers
WHERE Country LIKE '[^df]%'
SELECT *
FROM Customers



-- Aufgabe: Geben Sie alle Kunden aus, die ein %-Zeichen im Firmennamen haben.
*/