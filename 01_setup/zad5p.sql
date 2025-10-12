delete from pracownicy pr
where pr.id_pracownika in ( 
	select 
		w.id_pracownika
		from wynagrodzenie w 
		join pensja p on p.id_pensji = w.id_pensji 
		where p.kwota < 1200
);