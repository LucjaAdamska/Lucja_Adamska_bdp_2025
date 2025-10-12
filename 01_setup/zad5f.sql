with suma_godzin as (
	select 
		id_pracownika,
		sum(liczba_godzin) as suma  
		from ksiegowosc.godziny g group by id_pracownika
)
select 
	p.imie,
	p.nazwisko,
	greatest(s.suma - 160, 0) as liczba_nadgodzin
from pracownicy p 
join suma_godzin s on p.id_pracownika = s.id_pracownika
order by liczba_nadgodzin desc;