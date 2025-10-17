-- d. Wypisz nazwy i obwody 2 budynków o największej powierzchni.
select 
	name,
	ST_Perimeter(geometry) as obwód
from buildings b
order by obwód desc
limit 2;
