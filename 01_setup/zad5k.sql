with suma_pracownikow as ( 
	select 
		p.id_pracownika,
		pe.stanowisko
	from pracownicy p
	join wynagrodzenie w on w.id_pracownika = p.id_pracownika 
	join pensja pe on pe.id_pensji = w.id_pensji 
)
select 
	stanowisko,
	count(id_pracownika) as liczba_pracownikow
from suma_pracownikow
group by stanowisko;
