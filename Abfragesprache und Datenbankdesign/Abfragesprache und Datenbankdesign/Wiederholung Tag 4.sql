/*
VARIABLEN
IF WHILE
Proz  F()
Agg und Group by 


UP DEL


update Tabelle set sp = Wert   --bei NULL  dann =NULL

delete from tabelle where sp = Wert  | like between..

Trick 
1)  SELECT MIT JOIN
2) SELECT und Spalten auskommentieren FROM nächste Zeile
3) Update wie gehabt darüber 






*/

--erhöhe die Frachtkosten in Orders um 10%, bei den Bestellungen, die von Kunden aus DE kamen

--Orders --> Customerid --->Customers
delete orders
--update orders set freight = freight *1.1
--select *  
from customers c inner join orders o on c.customerid = o.customerid
where c.country = 'Germany'


--TIPP.. wenn etwas unsicher, was das Ergebnis betrifft


begin tran
select @@TRANCOUNT --meine TX
update customers set city = 'Rom'
where country = 'Italy'
select * from customers
--so kurz wie möglich!!!
rollback  --alles rückgängig!!..da reicht 

commit--alles ist zu 100% drin!--jede TX muss committed werde
--hier ist die tran zu Ende

