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

-- Aufgabe: Geben Sie alle Datens�tze der Tabelle "Employees" zur�ck?


-- Aufgabe: Ausgabe: Die Produktnummer, Produktname, die Kosten eines Produkts und die Nummer des Lieferers (SupplierID) aus der Tabelle "Products".


-- Systemfunktion
