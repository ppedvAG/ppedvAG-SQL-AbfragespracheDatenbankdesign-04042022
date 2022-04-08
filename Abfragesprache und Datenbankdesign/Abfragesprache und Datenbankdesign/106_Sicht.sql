--Sichten  VIEWS

--gemerkte Abfragen, die wie tabellen funktionieren
--aha ?!   

--- CREATE ---> DROP ---> ALTER DB Objekte Tabellen Sichten Prozeduren  Funktionen
--- INS -- > DELETE --> UPDATE   Datensätze

--Grund für Sichten:
--komplexe Statements wiederverwendbar vereinfacht
--aber auch vorallem aus Security Gründen



CREATE VIEW vName
AS
Select ..... -- UNION .. TOP DISTINCT .. es müssen alle Ergebnisspalten müssen Namen haben


create view vKundenEu
as
select * from customers where country in ('Italy', 'Germany', 'France', 'Austria')


select * from vKundenEu 

select * from  (
		select * from customers where country in ('Italy', 'Germany', 'France', 'Austria')
					) vKundenEu2




-- Abfragen in der alle wichtigen Infos zu Kunden und Umsatz drin ist..
--Sicht nicht zweckentfremden.. sondern nur für den Zwec (alle Tabellen der Sicht ) 

--Companyname, country city  (Customers)
--Orderid, freight orderdate     (orders)
--quantity, unitprice				  (order details)
--productname                         (products)
--lastname								  (Employees)


create view vKundeUmsatz
as
select 
				Companyname, c.country, c.city  ,
				o.Orderid, freight, orderdate  , 
				quantity, od.unitprice,	(		quantity* od.unitprice	) as PosSumme	 ,
				productname   ,                   
				lastname					
from 
			customers c inner join orders o					on c.CustomerID=o.CustomerID
								 inner join [Order Details] od	on od.OrderID = o.OrderID
								 inner join Employees e			on e.EmployeeID= o.EmployeeID
								 inner join Products p				on p.ProductID=od.ProductID

--vKundeUmsatz hat kleine Daten , sondern nur die Abfrage im Hintergrund

select * from  vKundeUmsatz

--welcher Kunde hat welches Produkt gekauft, dann

select  Companyname, productname from  vKundeUmsatz where possumme < 100


--Sichten ändern

ALTER VIEW Sichtname
as
SELECT ....


ALTER view vKundeUmsatz
as
select 
				Companyname, c.country, c.city  ,
				o.Orderid, freight, orderdate  , 
				quantity, od.unitprice,	(		quantity* od.unitprice	) as PosSumme	 ,
				productname   ,                   
				lastname		, e.employeeid			
from 
			customers c inner join orders o					on c.CustomerID=o.CustomerID
								 inner join [Order Details] od	on od.OrderID = o.OrderID
								 inner join Employees e			on e.EmployeeID= o.EmployeeID
								 inner join Products p				on p.ProductID=od.ProductID


ALTER view vKundeUmsatz
as
select 
			* from products

--seit SQL 2016 
CREATE OR ALTER VIEW vName
as
SELECT



--SUSI ist extrem neugierig --> Angestellte (Sp Gehalt)

--Zugriff auf Ang Tabelle wird für Susi verweigert
--Susi soll aber Adresse und Tel von Personal finden
--Sicht (Namen, Adresse und Tel) Recht für Lesen an Susi ..geht


--Suche alle Kunden heraus, die weniger als 10 Frachtkosten hatten

--Companyname, freight


select distinct companyname, freight from vKundeumsatz where freight < 10



select 
				Companyname, 
				freight			
from 
			customers c inner join orders o					on c.CustomerID=o.CustomerID
			where freight < 10