select imie, nazwisko, pe.kwota from pracownicy p
join wynagrodzenie w on w.id_pracownika = p.id_pracownika 
join pensja pe on pe.id_pensji = w.id_pensji 
order by pe.kwota asc;