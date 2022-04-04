USE Northwind
GO

SELECT 1000         AS Zahl
	  ,'Hallo Welt' AS String
      ,CompanyName
	  ,GETDATE()	AS GETDATE	
FROM Customers



-- Logischer Fluss
SELECT OrderID
      ,CustomerID
FROM Orders


-- Ausgabe
SELECT *
FROM Orders

-- Aufgabe: Geben Sie alle Datensätze der Tabelle "Employees" zurück?


-- Aufgabe: Ausgabe: Die Produktnummer, Produktname, die Kosten eines Produkts und die Nummer des Lieferers (SupplierID) aus der Tabelle "Products".


-- Systemfunktion
