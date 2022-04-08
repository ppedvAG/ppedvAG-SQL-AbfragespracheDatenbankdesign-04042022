/*
temp Tabelle


lokale temp Tabelle:  #tabellenname
existiert nur solange bis: der Ersteller seine Verbindung schliesst oder die temp Tabelle löscht
Zugriff nur in der Session in der sie gemacht wurde


globale temp Tabelle:  ##tabellename
existiert nur solange bis: der Ersteller seine Verbindung schliesst oder die temp Tabelle löscht
Zugriff auch in anderen Sessions


Wofür verwenden?

Zwischenergbnisse

..führen zu dem Effekt: tattkomplexe Statements ...--> mehrere Schritte 


vgl. zu Sicht: Daten werden nicht aktualsiert.. eine Sicht dagegen schon.. weil immer eine Abfrage ausgeführt
#
--bester und schlechtester Angestellter
*/

select * from (
select top 1 employeeid, freight from orders order by freight desc
					) t
UNION ALL
select * from (
select top 1 employeeid, freight from orders order by freight asc
					) t2


--Schrittweise


select top 1 employeeid, freight, 'gute' as typ 
into #t1
from orders order by freight desc


select top 1 employeeid, freight, 'schlechte' as Typ
into #t2
from orders order by freight asc

select * from #t1
UNION ALL
select *  from #t2

--Alternative

select top 1 employeeid, freight, 'gute' as typ 
into #tx
from orders order by freight desc

insert into #tx
select top 1 employeeid, freight, 'bad' as Typ 
from orders order by freight asc

select * from #tx

drop table #tx

*/

select *   into #tab      from customers  --die ist in der DB tempDB
select *   into tab      from customers    --die ist der DB Northwind
select *   into ##tab      from customers  --die ist in der tempDB


drop table #tab

select * from #tab
select * from ##tab