--CASE 

/*
CASE
		WHEN Bedingung then Ausdruck --klappt wie eine where Bedngung
		WHEN Bedigung then Ausdruck
		ELSE  Ausdruck
END
*/

select 
			Lastname, TitleOfCourtesy,
			CASE
					WHEN TitleOfCourtesy like 'Dr%' then 'a studierter'
					WHEN TitleOfCourtesy  = 'Mrs.' then 'Frau'
					else ' normalo'
			END as Titel
from employees


select customerid, freight ,
		CASE
			when FREIGHT < 100 then 'A'
			when FREIGHT > 500 then 'C'
			else 'B'
		END as KdTyp
from orders



