select 
	pe.stanowisko,
	count(w.id_premii) as liczba_premii
from wynagrodzenie w
join pensja pe on pe.id_pensji = w.id_pensji 
group by pe.stanowisko;