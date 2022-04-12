select country as LAND, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where c.country like 'U%' --and SummeFracht > 10000
group by country
order by SummeFracht --hie rgeht ALIAS


select country as LAND, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where Land like 'U%' --error
group by country
order by SummeFracht --hie rgeht ALIAS


select country as LAND, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where c.country like 'U%' --error
group by Land --error
order by SummeFracht --hie rgeht ALIAS

select country as LAND, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where c.country like 'U%' 
group by country  having sum(freight)> 10000
order by SummeFracht --hie rgeht ALIAS

----> FROM ..JOIN (ALIAS)----> WHERE (Filter) ---> GROUP BY (AGG) --> HAVING (das where für das Group by)
--> SELECT (ALIAS, Berechnungen) --> Order By---> Top1 |Distinct--> Ausgabe

--Man sollte etwas nie tun: TU NIE!!!! etwas mit hving filtern , was ein where kann..
--im HAVING sollten nur AGG stehen


select country as LAND, sum(freight)  as SummeFracht
from customers c inner join orders o on c.CustomerID=o.CustomerID
where c.country like 'U%' 
group by country  having		 = 'UK'
order by SummeFracht --hie rgeht ALIAS

