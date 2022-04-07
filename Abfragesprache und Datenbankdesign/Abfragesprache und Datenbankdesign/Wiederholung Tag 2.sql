use northwind;
GO


select * from Tabelle
where		SP >  
					< 
					>=   
					<= 
					like ( nur hier Wildcards)  % belieb viele Stellen   _ ein Zeichen genau  [ABC]  [A-D|M-R|0-4|^x]
					= 
					in 
					between

/*
datetime (ms)  aber nur rel genau 2 bis 3 ms 
smalldatetime (sek)
date 
time 
datetime2 (ns)
datetimeoffset (Zeitzone)

--fixe Länge fixe Typen .. sonst var...
'Otto'
varchar(50) 'Otto'  4
nvarchar(50)  'Otto' 4*2   8
char(50)   'Otto                                                               ' 50 
nchar(50) 'Otto                                                              ' 50* 2
text() --nie verwenden   bis 2 GB 



der Platz auf der HDD kostet ja nix... SSD mit 250GB 30 Euro
--der Platz muss  1:1 in RAM





*/



select * from employees

select * from orders
--Gebe alle Bestellungen aus, aus dem Jahr 1997 (orderdate)

select * from orders where orderdate like '%1997%' --408 korrekt.. aber besch*** langsam und schlecht
select * from orders where orderdate between '1.1.1997' and '31.12.1997' --408  -
- korrekt aber falsch--aber es würde der Rest von 31.12 fehlen
select * from orders where datepart(yy,orderdate) = 1997 --korrekt aber langsam
select * from orders where year(orderdate) = 1997  -- korrekt aber langsam
select * from orders where orderdate >= '1.1.1997' AND orderdate <= '31.12.1997'-- korrekt aber schnell und falsch


select * from orders where orderdate between '1.1.1997' and '31.12.1997 23:59:59.999' --schnell, eigtl korrekt, aber falsch




