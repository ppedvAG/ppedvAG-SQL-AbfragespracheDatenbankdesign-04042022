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
SELECT GETDATE()

/*
- DD Tag
- YY Jahr
- QQ Quartal
- MM Monat
- WW Woche
- MI Minute
- DW Namen vom Tag        --> DW = 1 = Montag, DW = 4 = Donnerstag
*/

-- DATEADD
-- Syntax: DATEADD(<Intervall (Sollen Tage dazugerechnet werden)>,<Anzahl, der dazugerechneten Tage|Monate|Jahr...>,<Datum>)
SELECT DATEADD(DD,1,GETDATE())
SELECT DATEADD(MM,2,'01.01.2022')
SELECT DATEADD(MI,30,GETDATE())


-- DATEDIFF
-- Syntax: DATEDIFF(<Interval (Was soll zurückgegeben werden?)>,<Startdatum>, <Enddatum>)
SELECT DATEDIFF(DD,'01.01.2022',GETDATE())
-- Ergebnis in Tagen = 04.04.2022 - 01.01.2022
--                     Enddatum   - Startdatum

-- Wie viele Monate sind es noch bis zum 1. Mai 2078?
SELECT DATEDIFF(MM,GETDATE(),'01.05.2078')


-- DATENAME
-- Syntax: DATENAME(<Interval (Name vom Tag|Monat)>,<Datum>)
SELECT DATENAME(DW,GETDATE())
SELECT DATENAME(MM,GETDATE())
SELECT DATENAME(DW,'24.12.2021')


-- DATEPART
SELECT DATEPART(MM,GETDATE())
SELECT DATEPART(DD,GETDATE())
SELECT DATEPART(YY,GETDATE())

SELECT YEAR(GETDATE())
	  ,MONTH(GETDATE())
	  ,DAY(GETDATE())




-- LTRIM und RTRIM
SELECT '                 Otto'
SELECT LTRIM('                Otto')


-- LEFT und RIGHT
-- Syntax: LEFT|RIGHT (<Zeichenkette>, <Anzahl, wie zurückgegeben werden sollen>)
SELECT LEFT('123456789',3)
SELECT RIGHT('ABCDEFGH',3)



-- SUBSTRING
SELECT SUBSTRING('Max Markus Mustermann',5,6)

-- Aufgabe: Geben Sie aus 'SQL Server - Abfragesprache und Datenbankdesign' das Wort 'Abfragesprache' zurück!
SELECT SUBSTRING('SQL Server - Abfragesprache und Datenbankdesign',14,14)


-- REVERSE
SELECT REVERSE('ppedv AG')
      ,REVERSE('GA vdepp')


-- STUFF
SELECT STUFF('maxmustermann@example.de',4,10,'**********')
