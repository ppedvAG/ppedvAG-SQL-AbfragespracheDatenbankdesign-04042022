--Unterabfrage

/*


select Spalten , (select ....) --nur ein Wert, t2.spx
from 
	Tabelle A oder (select ...) t --kann ne Tabelle sein
	inner join (select ..) t2 on t1.sp = t2.sp
where 
	A.sp < (select sum(freight)... )  --nur ein Wert
	OR
	B.sp IN (select sp from tabelle...) --mehrere Zeilen


	*/


	select *, o.sp from (select * from orders) o 
	where o.

	select *, (select  top 1 country from customers) from orders


	---Wie hoch ist die Abweichung der Frachtkosten vom maximalwert der Frachkosten
	--pro Bestellung

	--32 | 1007-32 --
	
	select orderid, customerid, freight  from orders
	select top 1 freight from orders order by freight desc


		select orderid, customerid, freight,
		(select top 1 freight from orders order by freight desc)- freight

--Welche Angestellte sind auch an Orten, wo Kunden sind...

select  lastname, country, city from employees

select companyname, country, city from customers

select  lastname, country, city from employees
where   city 
				 IN (select  city from customers) 

select lastname, country, city from employees
where  city NOT IN (select isnull(city,'XY') from Customers) 

-- isnull(Spalte, 'XY)
--wenn NULL dann was anderes ausgeben


--Liste des besten und schlechtesten Angestellten 
--gemessen an Frachtkosten (wenig ist gut , viel ist schlecht) 

select	top 1 convert(varchar(1),employeeid) + ': ' + convert(varchar(50),freight)  as Bester
		,
		( select top 1   convert(varchar(1),employeeid)  + ': ' + convert(varchar(50),freight) 
		from orders	order by freight desc) as Schlechtester
from orders
order by freight asc

--der gute
select top 1 employeeid, freight from orders order by freight asc

--der schlechte 
select top 1 employeeid, freight from orders order by freight desc

select top 1 employeeid, freight from orders order by freight asc
----------------------

select top 1 employeeid, freight from orders --order by freight desc
UNION ALL
select top 1 employeeid, freight from orders 
order by freight asc --der order  by bezeht sich auf das gesamte UNION




select * from (
select top 1 employeeid, freight from orders order by freight desc
					) t
UNION ALL
select * from (
select top 1 employeeid, freight from orders order by freight asc
					) t2

--IDEE: 
1) schreibe das Ergebnis in andere tabelle weg
	das 2te Ergenbnis dazuschrieben	
2)  Sichten 
3) CTE... 


--temporäre Tabellen
--Sichten
--Group by SUM MAX MIN