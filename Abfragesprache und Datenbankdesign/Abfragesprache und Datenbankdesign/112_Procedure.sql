/*
Prozeduren ... immer wieder ausf�hrbar (auch INS UP DEL SEL)
liegen auf dem Server
sind schneller, da der Ausf�hrungsplan vorkompiliert ist (sofern dieser auch nach einiger Zeit nohc korrekt ist)
bildet meist komplexe Vorg�nge ab
auch gerne wg Security verwendet
--vs View (nur SELECT ) 


nicht so einfach kombinierbar mit SELECT 
wird ausgef�hrt evtl mit Parameter(n)


exec gpdemo par1, par2, n...


*/

create proc gpdemo
as
select 100
GO

exec gpdemo 
GO


alter  proc gpdemo @par1 int
as
select 100 +@par1
GO

exec gpdemo 13
GO

create or alter  proc gpdemo @par1 int,@par2 int
as
select 100 +@par1
select * from orders where freight < @par2
--INS UP DEL  EXEC
GO

exec gpdemo 13,5
GO

begin tran 
exec gpDelKunde 'ALFKI' 
rollback


--dieer Code muss in Proz gel�st werden
--wg ref Integrit�t (Beziehungen) kann man einen Kunden, der Bestellungen hat, nicht l�schen
--man muss von hinten aufr�umen

create or alter procedure  gpDelKunde @KdNr char(5)
as
--zzuerst die Orderdetails
delete from [Order Details] where orderid in (Select orderid from orders where customerid = @kdnr)
--alternativ:
--delete from [Order Details]
--from [Order Details] od inner join orders o on o.OrderID=od.OrderID
--			where o.CustomerID= @KdNr
--dann die orders
delete from orders where CustomerID = @KdNr
--dann customers wh ref Integrit�t
delete from customers where customerid = @KdNr
GO


begin tran
exec gpDelKunde 'ALFKI'
rollback
select * from customers --TEST