select 
	avg(pe.kwota+pr.kwota) as srednia_pensja,
	min(pe.kwota+pr.kwota) as min_pensja,
	max(pe.kwota+pr.kwota) as max_pensja 
from pensja pe 
join wynagrodzenie w on pe.id_pensji =	w.id_pensji 
join premia pr on pr.id_premii = w.id_premii 
where pe.stanowisko = 'Kierownik';

