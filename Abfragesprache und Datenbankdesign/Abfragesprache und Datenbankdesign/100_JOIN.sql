--JOIN


--Wenn Spalten von verschiedenen oder derselbenTabellen nebeneinander sein sollen ,dann join
--es muss nich timmer der PK mit FK kombiniert werden


--INNER JOIN  .. in beiden Seiten enthalten
--LEFT JOIN ---
--RIGHT JOIN  --
--CROSS JOIN  --

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



select  *
					from TAB1 A INNER JOIN TAB2 B  ON A.SPX = B.SPY
					where
								A.SP = 10 and B.SP3 > 5



select  *
					from TAB1 A INNER JOIN TAB2 B  ON A.SPX = B.SPY
										  inner join TAB3 C		  ON C.SP1 = B.SP3
										  inner join TAB4 D	  ON  D.Spx = B.SP5
										  inner join TAB5 E		 ON E.Sp2 = F.sp7
										  inner join TAB6 F 
					where 
					 E.Sp 


select c.CompanyName, c.City
			, o.OrderID, o.OrderDate
			,od.UnitPrice, od.Quantity
			, p.ProductName
				from customers c inner join orders o									on o.CustomerID = c.CustomerID
											   inner join [Order Details] od					on od.orderid      = o.orderid
											   inner join products p								on p.ProductID    = od.ProductID

--ausgabe: Welcher Angestellte hat welches Produkte an welchen Kunden verkauft?

--Tabellen: Employees   Products  Customers, orders  , order details

select Lastname, companyname, productname
from 
		 orders o inner join Employees e				on e.EmployeeID=o.EmployeeID
						inner join [Order Details] od	on od.OrderID=o.OrderID
						inner join Products p				on p.ProductID=od.ProductID
						inner join customers c				on c.CustomerID = o.CustomerID



--Ich suche alle Ang , die auch dort sind, wo ein Kunde wohnt


select e1.LastName, e1.city, e2.city , e2.LastName
from Employees E1 inner join Employees E2 on e1.city = e2.city
where e1.lastname != e2.LastName


select * from Employees




select lastname, city, country from employees
select CompanyName, city, country from customers

--Welcher Ang hat welche Kunden, die bei ihm vor Ort sind..?

--Employees  Customers
--JOIN Spalten City = city 

select e.lastname, e.city, c.city, c.CompanyName
		from Employees e inner join customers c on c.City=e.City



--Karth Produkt.. alles mit allem
select * from customers cross join orders --91 * 830

---Kantine

--Tabelle Getränke     Tabelle Speisen
--vorsicht!!
select * from customers, orders, [Order Details]---

select * from Employees

--Liste aller Angestellten und deren pot Stellvertreter

select Lastname as Ang , City as Stadt, CIty as StvStadt, Lastname as StvName
















select * from employees
select * from orders


---LEFT JOIN


select * from tab1 A inner  join TAB2 B on A.sp = B.Sp


select * from tab1 A left  join TAB2 B on A.sp = B.Sp

--von Tab1 alle und von rechts die passenden
--Left = Right join

select * from tab2 B right  join TAB1 A on A.sp = B.Sp



--Welcher Kunde hat nichts bestellt?
--Customers (Alle) und Orders, die etwas bestellten

select c.CustomerID as KdTab, o.CustomerID as BestTab, o.orderid  from 
		customers c  left join orders o on c.customerid = o.CustomerID --832
		---von Links alle  und von rechts passende

	select c.CustomerID as KdTab, o.CustomerID as BestTab, o.orderid 
	from 
					customers c  left join orders o on c.customerid = o.CustomerID --832
	where 
				o.CustomerID is NULL --bleiben 2 übrig (Fissa / Paris)


		--Es darf keine Bestellung geben, zu der der Kunde nicht existiert

	select c.CustomerID as KdTab, o.CustomerID as BestTab, o.orderid 
	from 
					customers c  right join orders o on c.customerid = o.CustomerID --832
	where 
				c.CustomerID is NULL --bleiben 2 übrig (Fissa / Paris)





