select imie, nazwisko from pracownicy p 	
join wynagrodzenie w on p.id_pracownika = w.id_pracownika 
join pensja pe on w.id_pensji = pe.id_pensji 
where pe.kwota between 1500 and 3000;