select id_pracownika from wynagrodzenie w
join pensja p on p.id_pensji = w.id_pensji 
join premia pr on pr.id_premii = w.id_premii 
where p.kwota > 2000 and pr.kwota = 0;