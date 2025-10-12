create table if not exists pracownicy ( 
	id_pracownika SERIAL primary key,
	imie VARCHAR(3) not null,
	nazwisko VARCHAR(30) not null,
	adres varchar(100),
	telefon VARCHAR(15)
);
comment on table godziny is 'Tabela przechowuje dane o pracownikach firmy';


create table if not exists godziny (
	id_godziny SERIAL primary key,
	data DATE not null,
	liczba_godzin NUMERIC(4,2),
	id_pracownika INT not null references pracownicy(id_pracownika)
);
comment on table godziny is 'Tabela przechowuje liczbę godzin przepracowanych przez pracownika w danym dniu.';

create table if not exists pensja (
	id_pensji SERIAL not null primary key ,
	stanowisko VARCHAR(30),
	kwota NUMERIC(10,2)
);
comment on table pensja is 'Tabela przechowuje wartość pensji dla stanowisk';

create table if not exists premia ( 
	id_premii SERIAL not null primary key,
	rodzaj VARCHAR(30),
	kwota NUMERIC(5,2)
);
comment on table PREMIA is 'Tabela przechowuje premie i ich wartości';

create table if not exists wynagrodzenie ( 
	id_wynagrodzenia SERIAL not null primary key,
	data DATE not null,
	id_pracownika INT not null references pracownicy(id_pracownika),
	id_godziny INT not null references godziny(id_godziny),
	id_pensji INT not null references pensja(id_pensji),
	id_premii INT not null references premia(id_premii)
);
comment on table wynagrodzenie is 'Tabela przechowuje dane o wynagrodzeniu dla pracowników';




SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_name IN ('pracownicy', 'godziny', 'pensja', 'premia', 'wynagrodzenie');


