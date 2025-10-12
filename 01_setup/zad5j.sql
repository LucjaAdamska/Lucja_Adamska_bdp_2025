select imie, nazwisko, pe.kwota as kwota_pensji, pr.kwota as kwota_premii from pracownicy p
join wynagrodzenie w on w.id_pracownika = p.id_pracownika 
join pensja pe on pe.id_pensji = w.id_pensji 
join premia pr on pr.id_premii = w.id_premii 
order by pe.kwota desc, pr.kwota desc;