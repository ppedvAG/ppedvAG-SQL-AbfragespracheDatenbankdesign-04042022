/*
SELECT *
FROM Tabellennamen
WHERE
*/
SELECT *
FROM Orders
WHERE CustomerID = 'ALFKI'

/*
= < > <= >= !=

AND
Der Datensatz wird nur ausgegeben, wenn beide Bedingungen stimmen.
SELECT *
FROM Orders
SELECT *
FROM Orders
WHERE Freight > 100 AND Freight < 200

OR 
Der Datensatz wird nur ausgegeben, wenn einer der beiden Bedingungen stimmt.
SELECT *
FROM Customers
WHERE CustomerID = 'ALFKI' OR Country = 'Germany'


BETWEEN
Vereinfacht Form von: Spalte >= Wert1 AND Spalte <= Wert2
SELECT *
FROM Orders
WHERE Freight BETWEEN 500 AND 2000


IN 
SELECT *
FROM Customers
WHERE Country IN('Germany','Brazil','UK','Austria')


IS NULL | IS NOT NULL
Um NULL-Werte bzw. nicht existierende Werte auszugeben oder herauszufiltern.
SELECT *
FROM Customers
WHERE Region IS NULL

SELECT *
FROM Customers
WHERE Fax IS NOT NULL
*/