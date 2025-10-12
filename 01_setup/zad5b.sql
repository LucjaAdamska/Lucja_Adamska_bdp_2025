select id_pracownika from wynagrodzenie
join pensja on wynagrodzenie.id_pensji = pensja.id_pensji 
where pensja.kwota > 1000;
