with suma_godzin as (
	select 
		id_pracownika,
		sum(liczba_godzin) as suma  
		from ksiegowosc.godziny g group by id_pracownika
)
select 
	p.imie,
	p.nazwisko
from pracownicy p 
join suma_godzin s on p.id_pracownika = s.id_pracownika
join wynagrodzenie w on w.id_pracownika = p.id_pracownika 
join premia pr on pr.id_premii = w.id_premii 
where pr.kwota = 0 and s.suma > 160;