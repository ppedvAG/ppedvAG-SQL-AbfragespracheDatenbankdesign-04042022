/*
@var = lokale
@@var = globale Var

lokale nur in der Session, wo sie erstellt wurde

Gültigkeitsdauer: nur während des Batches...?

Reihe von Anweisuzngen, die man am Stückausführt
GO = Batchdelimiter

Variablen machen den Code übersichtlicher..aber leider nicht schneller


*/
--Systemvariablen
select @@TRANCOUNT
select @@CPU_BUSY, @@

declare @var1 int = 0
set @var1 = 1 --manuelle zuweisen

--per ABfrage zuweisen

select @var1 = count(*) from customers --keine Ausgabe mehr
select @var1 --93
select @var1 = count(*), count(*) from customers  --verboten!!


--Warum Varablen?

--Alle Bestellungen, die eine größere Frachtkosten besitzen, als der schnitt der Frachtkosten

--der akt Schnitt der Frachtkosten


select avg(freight) from orders --79,...

--alle Bestellungen mit größeren als  der Schnitt

select * from orders where freight > (select avg(freight) from orders )
order by freight asc

select  freight- (select avg(freight) from orders ),
				* from orders where freight > (select avg(freight) from orders )
order by freight asc

declare @frachtschnitt money
select @frachtschnitt=avg(freight) from orders
select @frachtschnitt

select freight -@frachtschnitt, * from orders where freight > @frachtschnitt



declare @var2 int --NULL --
select @var2+10

declare @var2 int  = 0--0
select @var2+10

declare @varx as int , @vary as int