--Werte aus verschiedenen Tabellen untereinander

USE [Northwind]
GO

SELECT [CustomerID]
      ,[CompanyName]
      ,[City]
      ,[Country]
INTO KundenEU
  FROM [dbo].[Customers]
  WHERE COUNTRY IN ('UK', 'Germany', 'Austria', 'Italy') --23 Zeilen


  --es müssen gleich viele Spalten und die Spalten müssen seitens des Datentyps kompatible sein
  --Alle Kunden und alle Angestellten und deren Städte und Länder..als eine Ergebnistabelle

  --UNION fügt die Ergenisse aus mehreren Abragen zu einem Ergebnis zusammen

  --der UNION IST EIN!!! SELECT 

  select Customerid, Companyname, country as Land, city from customers
  UNION
  select convert(char(5),employeeid), lastname, country , city from employees

  --Will aber noch sehen, ob Ang oder Kunde

    select Customerid, Companyname, country as Land, city, 'K'  from customers
  UNION
  select convert(char(5),employeeid), lastname, country , city, 'A' from employees

  --Wollen aber auch nocht die Region der Kunden sehen

  select Customerid, Companyname, country as Land,  city, 'K', Region  from customers
  UNION
  select convert(char(5),employeeid), lastname, country , city, 'A' , NULL from employees


  select 'A'
  UNION 
  SELECT 'B'

  select 'A'
  UNION 
  SELECT 'B'
  UNION 
  SELECT 'C'

  --<??????
  select 100
  UNION 
  SELECT 100

  select 'Otto'
  UNION -filtert doppelte Ergebnismenge
  select 'Otto'

  --Liste alle Länder der Kunde und der KundenEu Tabelle 
  --keine doppelten

  select country from customers
  UNION
  select country  from kundenEu

  --aber wenn doppelte gewünscht

    select country from customers
  UNION ALL --keine Filterung der doppelten
  select country  from kundenEu

  --UNION ALL immer dann , wenn man vorher weiss, dass es keine doppelten geben kann


  -----die gemeinsamen und die unterschiedlichen Datensätze zweier Tabellen

  --welche Datensätze sind in beiden Tabellen identisch
  --Idee:  inner join customerid = customerid  and city=city  and land = land
  --Idee: Spalte mit einem Hashwert

  select Customerid, CompanyName, country, city  from kundeneu
  intersect --vergelicht gemeinsame Ergebniszeilen
  select Customerid, CompanyName, country, city  from Customers

   select Customerid  from kundeneu
  intersect --jetzt sind s wieder mehr...
  select Customerid from Customers


  --Brauche die unterschiedlichen ..Reihgenfoleg spielt ne Rolle 

    select Customerid, CompanyName, country, city  from kundeneu
  except --alle aus KundenEU die nicht in Customers sind
  select Customerid, CompanyName, country, city  from Customers


      select Customerid, CompanyName, country, city  from Customers
  except ----alle aus Customers  die nicht in KundenEU sind
  select Customerid, CompanyName, country, city  from KundenEu
  intersect
  select
  except
















