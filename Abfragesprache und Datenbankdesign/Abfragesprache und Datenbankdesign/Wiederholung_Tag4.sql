--Wiederholung

/*
JOIN  SUBQUERIES TOP DISTINCT  ORDER BY

SELECT	
				DISTINCT --doppelte Ergebniszeilen filtern
				TOP n | n percent with ties
				Spalten,
				(Select ...) -- nur ein Wert
				'Txt' | Zahl  as Alias
				Math
				f()
FROM
			    TAB1 A | (SELECT ...) t   --keine groﬂen Bedingungen evtl Alias , wenn Berechnungen
										INNER |LEFT|RIGHT|CROSS JOIN TAB3 C
															ON C.sp = t.spx
										INNER |LEFT|RIGHT|CROSS JOIN  Tab4 D
															ON ...
WHERE 
				t.sp = 
						<        > 
						between in  
						like 
						>= <= 
						!= <>
						not in not between
						is null  is not null------------------------ isnull(Spalte, 0)
				AND | OR --- Regel: Klammern setzen! weil AND st‰rker gebunden
UNION | EXCEPT |INTERSECT  | UNION ALL --filtert keine doppelten
ORDER BY 
				SP asc | SP desc , n
				1,2,3,n...

*/

--- ABC ANLAYSE

select * from orders 
-- 0 bis 100     ---> A
--> 100 <= 500 --> B
--> > 500 --> C Kunde

--Customerid   Frachtkosten  A B oder C 

--VINET | 32 | A
--830 

select customerid, freight , 'A' as KdTyp from orders where freight <100
UNION ALL
select customerid, freight , 'C'  from orders where freight >500
UNION ALL
select customerid, freight , 'B'  from orders where freight between 100 and 500
order by freight desc


select customerid, freight ,
		CASE
			when FREIGHT < 100 then 'A'
			when FREIGHT > 500 then 'C'
			else 'B'
		END as KdTyp
from orders


--- ABC









