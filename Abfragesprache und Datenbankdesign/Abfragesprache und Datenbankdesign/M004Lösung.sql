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