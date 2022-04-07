--TOP... eigtl immer mit order by kombinieren

--select top (Anzahl)..| top 10 percent with ties 
select top Spalten...from tabellen
select top 7 percent spalten, * from 

select top 3 * from customers --welche 3 ersten Zeilen? wie die phyikalisch rumliegen

select top 3 * from orders order by freight 


/*
select top 3 * from customers
select top 3 * from orders
select top 3  * from employees

*/

--Wir suche die höchsten Frachtkosten --welcher Kunde war das (Customerid)?


select top 1 customerid, freight from orders order by freight desc

--QUICK ...1007.64

select * from orders order by freight

--Unser Geschäft "die wilde 13" feiert 13jähriges Jubiläum
--alle 13 Angestellten haben pro Jahr 13 MIO Gewinn 
--laden 13 Kunden ein auf eine Kreuzfahrt 
--die ersten nach Frachtkosten aufsteigend

select top 13 customerid, freight   from orders order by freight asc

select top 13 with ties customerid, freight   from orders order by freight asc

--Distinct filtert doppelte Ergebniszeilen
select distinct   country from customers

--und läßt sich mit TOP kombinieren
select distinct  top 10 country from customers
