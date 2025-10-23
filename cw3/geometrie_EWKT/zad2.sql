with shortest_line as (
	select
		ST_ShortestLine(g3.geometria, g4.geometria) as linia
	from obiekty as g3, obiekty as g4
	where g3.nazwa = 'obiekt3' and g4.nazwa = 'obiekt4' ),
	buffered as ( 
		select ST_Buffer(linia, 5) as bufor
		from shortest_line )
	select ST_Area(bufor) as pow_buforu
	from buffered;