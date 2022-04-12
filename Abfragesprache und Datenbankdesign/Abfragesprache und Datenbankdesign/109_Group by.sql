


--AGGREGATE --temp Tabellen

select min(freight), max(freight), avg(freight), sum(freight), count(*), count(freight)
from orders


--count(*), count(freight)
--avg(summ/anzahl
-- AVG zählt nicht die NULLS mit 

select count(region), count(*) from customers

--count(*) --Anzahl aller Zeilen
--count(orderid)



-- wenn Region = NULL


--Summe pro ..

select country, count(*) from customers
group by country

---Tipp.. schreibe zuerst mal das hin, was du sehen willst
--             group by ..alle Spalten des SELECT in Group by, dann die AGG entfernen und evt Alias
select shipcountry, employeeid as AngiD, sum(freight)
from orders
group by shipcountry, employeeid  
order by 2,1

--errechne die Summe der Frachtkosten pro Kunde in Orders
select top 1 customerid, sum(freight) as Summe from orders
group by customerid
order by summe desc

--Kunde mit höchsten Frachtkosten?

---aber nur die wo..aus einem Land kommen, das mit U beginnt (country des Kunden)

--Land des Kunden, Summe der Feachtkosten

select 
from ..join....
where
group by
order by

select country, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where c.country like 'U%'
group by country
order by 1,2


--aber nun nur die DS, die mehr als 10000 Frachtkosten haben...

select country, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where c.country like 'U%' and SummeFracht > 10000
group by country
order by 1,2



--Wir brauchen die Rechnungssummen der Bestellungen...?

--orderid (summe (...)..

select orderid, sum(quantity* unitprice) as RngSumme
	from [Order Details]
	group by orderid


select o.orderid,sum(od.quantity *od.unitprice) 
	from 
				orders o inner join [Order Details] od on o.orderid = od.OrderID 
	group by o.orderid


	---Anzahl der Kunden pro Stadt-Land in Customers


	select Country, City, count(*) 
	from customers
	group by Country, City
	order by Country, City


	--Ergänze die Abfrage um die Firma
	--Ausgabe: Firmenname,    sum(quantity* unitprice)  = UMSATZ
	--Ausgabe: Firma, BestellNr, RngSumme
	--die Wo : RngSumme > 10000 und von AngId (1,3,5,9)
	--sortiert nach Firma und Umsatz


	select orderid, sum(quantity* unitprice) as RngSumme
	from [Order Details]
	group by orderid


	 select			  companyname
						, o.orderid
						, sum(unitprice*quantity)  as RngSumme
		from 
						customers c inner join		orders o						on o.CustomerID=c.CustomerID
											  inner join		[Order Details] od		On od.OrderID    =o.OrderID
		where 
						employeeid in (1,3,5,9)
		group by companyname, o.orderid 
		having 
						sum(unitprice*quantity)   > 10000
	order by  Companyname, RngSumme

	


	select Companyname, orderid, sum(Possumme)  as RngSumme
	from vKundeUmsatz
		where 
						employeeid in (1,3,5,9)
		group by companyname, orderid 
		having 
						sum(Possumme)   > 10000
	order by Companyname, RngSumme

	--Was macht ROLLUP und was macht CUBE
	--ROLLUP macht das hierarchisch
	--CUBE jede Variation--Datawarehouse--Würfel Cube

	select country, city , count(*) from customers 
	group by country,city with cube
	order by 1,2

		select country, city , count(*) as Anzahl
		into #t
		from customers 
	group by country,city with rollup
	order by 1,2




	select * from #t where country is null and city is null
















