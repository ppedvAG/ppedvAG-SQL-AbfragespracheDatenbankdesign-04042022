--INSERT

/*
Daten aus anderen tabellen in best Tabellen einf�gen

Daten aus best Tabelle nin nicht best Tabellen einf�gen

Manuell Daten einf�gen
	aber nicht alle Spalten f�llen
*/

--FALL 1: Daten aus best Tabelle in eine nicht best Tabelle

select SP, SP, SP INTO TABELLE. from Tabelle / Sicht where ...
--Tabelle wird anlgelegt und �bernimmt auch die Datentypen und Daten
--falls Berechnungen.. alle Spalten m�ssen einen Name haben-- Alias

select companyname , customerid  
INTO KdLondon ----hier!!!
from customers where city = 'LONDON'

select * from kdLondon

-- Fall 2 : aus best tabellen in best Tabellen

insert into  kdLondon ---Tabellen m�ssen gleiche Spaltenzahl und Reihenfolge haben
select  companyname , customerid   from customers where city = 'Graz'

-- Fall 3 manuell Werte reinschreiben

insert into kdlondon (Companyname, customerid)  values
									('ppedv', 'ppedv')

insert into kdlondon (customerid, Companyname)  values
									('pped2', 'Microsoft GmbH'), 
									('pped3', 'Microsoft AG'),	
									('pped4', 'Microsoft KG')


----UPDATE

update tabelle set sp = Wert where spx = Wert

update kdLondon set companyname = 'MS AG' where customerid = 'pped4'

select * from kdlondon


--Kopie der Orders

select * into o1 from orders


--update alle Frachtkosten um  +10% dort, wo das Product 17 gekauft wurde

--- zuerst die Abfrage, die die betroffene DS ausgibt
--dann select und Select Spalten  eine Zeile bingen  und auskommentieren
--dann update dar�ber ..fertig

update o1 set freight = freight *1.1
--select distinct * 
from o1 inner join [Order Details] od on o1.OrderID = od.OrderID where productid = 17



--delete  -- ganzen DS l�schen

select * from kdlondon

delete from KdLondon where customerid = 'pped4'


--l�sche alle DS aus o1 , die vom angstellten Davolio verkauft wurden

--zuerst die Abfrage!!!
--dann select auskommentieren 
--dann delete dar�ber
delete from o1
--select  distinct lastname, orderid
from o1 inner join Employees e1 on e1.EmployeeID=o1.EmployeeID
			where lastname = 'Davolio'

			select * from o1


	--l�sche die Frachtkosten bei der Bestellung 10248 aus o1 raus

	--update
	update o1 set freight = NULL where orderid = 10248

	select * from o1



	-- AGG
	---GROUP BY  SUM MIN MAX
	-- IF WHILE 
	--PROZ VARIABLEN F()


	select sum(freight), min(freight), max(freight), avg(freight), count(*) from orders

	select orderid , freight, (select avg(freight) from orders) -freight from orders


	--gesamte Umsatz der Firma 


	select productid,sum(quantity*unitprice)  from [Order Details]


	exec spUmsatz 'ALFKI'




















