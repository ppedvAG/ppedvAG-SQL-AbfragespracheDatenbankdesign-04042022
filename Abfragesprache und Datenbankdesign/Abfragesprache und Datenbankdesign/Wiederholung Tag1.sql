-- Aufgabe 1
/* Chef: Ich m�chte eine Ausgabe aller Bestellungen. Gib mir aber nur die Bestellungsnummer,
         die Identit�tsnummer des Kunden und des jeweiligen Angestellten, das Bestelldatum und
		 die Frachtkosten.
*/
SELECT OrderID
      ,CustomerID
	  ,EmployeeID
	  ,OrderDate
	  ,Freight
FROM Orders


-- Aufgabe 2
/* Die Mehrwertsteuer von Frachtkosten wurde auf 19% erh�ht. Geben Sie die alten Frachtkosten und
   die neuen Frachtkosten (Freight * ...) aus.
*/
SELECT Freight        AS OldFreight
      ,Freight * 1.19 AS NewFreight
FROM Orders



-- Aufgabe 3
/* Wie viele Tagen sind es noch bis zu Ihrem n�chsten Geburtstag und wie war der Name des Tages an dem Sie geboren wurden?
*/
SELECT DATEDIFF(DD,GETDATE(),'24.10.2022')
      ,DATENAME(DW,DATEDIFF(DD,GETDATE(),'24.10.2022'))


-- Aufgabe 4
/* Der Name eines Kunden namens Markus Robert von Denhapen soll zu Markus Lukas von Denhapen ge�ndert werden.
*/
SELECT STUFF('Markus Robert von Denhapen',8,6,'Lukas')
