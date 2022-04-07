

/*
SELECT ...
FROM ...
WHERE ..
ORDER BY ASC (default) | DESC
*/

select * from orders
order by Freight desc

select employeeid as AngID, freight as fracht ,* from orders
order by AngId asc, Fracht asc

select * from orders 
order by Employeeid desc, freight asc

select customerid, orderdate, shipvia, freight, freight *1.19 , shipcountry from orders
order by 5 -- die Stelle der Spalte


