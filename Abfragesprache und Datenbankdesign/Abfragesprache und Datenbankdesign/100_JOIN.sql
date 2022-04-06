--JOIN

--INNER JOIN  .. in beiden Seiten enthalten
--LEFT JOIN
--RIGHT JOIN
--CROSS JOIN

select EmployeeID, BirthDate as GebDatum from employees

select * , City as STADT
from    TABELLE1 A INNER JOIN TABELLE2 B ON A.SP1 = B.SP2

select * 
from Customers inner join orders on customers.CustomerID=orders.CustomerID

select * --alle Spalten der FROM Tabellen
from customers C inner join orders O on  C.CustomerID= O.CustomerID

--Liste alle Famname der Angestellten und deren Bestellungen 
--zuerst * 

select		e.LastName
				, o.*
from 
				Employees e inner join orders o				
																	on e.EmployeeID=o.EmployeeID

--Produkte Products
--Bestellpositionen  order details
-- [Bestell-Nr]
---..Produkname , Menge , Preis

select P.ProductName, OD.Quantity, OD.UnitPrice
		from 
		Products P inner join [Order Details] OD ON OD.ProductID=P.ProductID


select top 3 * from products
select top 3 * from [Order Details]











select * from employees
select * from orders



