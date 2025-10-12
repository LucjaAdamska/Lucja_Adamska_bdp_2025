select 
	sum(pe.kwota) + sum(pr.kwota) as suma_wynagrodzen
from pensja pe
join wynagrodzenie w on w.id_pensji = pe.id_pensji 
join premia pr on w.id_premii = pr.id_premii;
