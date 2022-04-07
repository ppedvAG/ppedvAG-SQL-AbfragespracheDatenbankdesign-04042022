select getdate()
select 100*2

select companyname, country, city from customers

/*
SELECT 
			Spalten , Variablen
			'Txt' , Zahl,
			F(Spalten), F(Wert),
			*--alle Spalten 
			(select ...) --ein Wert 
			Mathe as Aliasname
FROM   TABELLE1 A  INNER|LEFT|RIGHT|CROSS TABELLE2 B ON A.SP1 = B.SP2  -- Datentypen müssen passen
								    INNER|LEFT|RIGHT|CROSS TABELLE3 C ON C.SP1 = A.SP2 AND C.SP3 = B.SP4
									INNER|LEFT|RIGHT|CROSS TABELLE3 C ON C.SP1 = A.SP2 AND C.SP3 = B.SP4
									....
WHERE 
				C.SP3 = B.SP4
				AND | OR
				SP > Wert
				between | in
				like % _ []  [%]  '


*/

--suche alle in Customers, die in Companyname ein ' haben

select * from customers where companyname like '%''%'


--Suche alle Bestellungen , 
--die unter 2 Frachtkosten haben  
--oder vom Angestellten Nr 2 verkauft wurden 
--und über USA verschifft wurden

--War das so gedacht..?

--bei AND und OR ..immer Klammern setzen
select * from orders
		where 
					freight < 2					OR
				 (  employeeid = 2			AND				shipcountry = 'USA'  )

						
select * from orders
		where 
					(freight < 2					OR 	employeeid = 2	)
					AND				
					shipcountry = 'USA'  




--Welcher Kunden hat das Produkt Chai
--im Jahr 1997 gekauft 
--und dabei weniger als 10 Frachtkosten gehabt

--Customers --(Customerid)--> Orders--(orderid)-->Order Details --(Productid)--> Products
set statistics io, time on
select C.CompanyName
		, O.orderdate, o.Freight
		, p.ProductName  from 
		customers c inner join orders o					on c.CustomerID=o.CustomerID
						    inner join [Order Details] od	on od.OrderID	  =o.OrderID
							inner join Products p				on p.ProductID  =od.ProductID
where 
			year(o.orderdate)=1997
			--o.orderdate between '1.1.1997' and '31.12.1997 23:59:59.997'
			AND
			o.freight < 2
			AND
			p.ProductName like 'Chai%'
			--

set statistics io, time off

		where year (sp) = 
					datum between

					FamName  like 'M%'
					left(famname,1)= 'M' 


					select C.CompanyName
		, O.orderdate, o.Freight
		, p.ProductName  from 
		customers c inner join orders o					on c.CustomerID=o.CustomerID
						    inner join [Order Details] od	on od.OrderID	  =o.OrderID
							inner join Products p				on p.ProductID  =od.ProductID
where 
			year(o.orderdate)=1997
			--o.orderdate between '1.1.1997' and '31.12.1997 23:59:59.997'
			AND
			o.freight < 2
			AND
			p.ProductName like 'Chai%'


select C.CompanyName
		, O.orderdate, o.Freight
		, p.ProductName  from 
		customers c inner join orders o					on c.CustomerID=o.CustomerID
						    inner join [Order Details] od	on od.OrderID	  =o.OrderID
							inner join Products p				on p.ProductID  =od.ProductID
where 
			o.orderdate between '1.1.1997' and '31.12.1997 23:59:59.997'
			AND
			o.freight < 2
			AND
			p.ProductName like 'Chai%'