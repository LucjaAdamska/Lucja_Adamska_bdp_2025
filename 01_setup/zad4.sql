INSERT INTO pracownicy (imie, nazwisko, adres, telefon) VALUES
('Anna', 'Nowak', 'Warszawa, ul. Kwiatowa 12', '501123456'),
('Piotr', 'Kowalski', 'Kraków, ul. Długa 8', '502987654'),
('Maria', 'Wiśniewska', 'Łódź, ul. Krótka 5', '503345678'),
('Tomasz', 'Wójcik', 'Gdańsk, ul. Morska 3', '504111222'),
('Agnieszka', 'Kamińska', 'Poznań, ul. Polna 7', '505333444'),
('Marek', 'Lewandowski', 'Katowice, ul. Leśna 9', '506222111'),
('Joanna', 'Zielińska', 'Wrocław, ul. Lipowa 4', '507666777'),
('Paweł', 'Szymański', 'Szczecin, ul. Ogrodowa 1', '508123987'),
('Ewa', 'Woźniak', 'Bydgoszcz, ul. Parkowa 6', '509876543'),
('Krzysztof', 'Kozłowski', 'Lublin, ul. Jesienna 2', '500222333');

INSERT INTO godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 8, 1),
('2025-10-02', 7.5, 2),
('2025-10-03', 6, 3),
('2025-10-04', 8, 4),
('2025-10-05', 8, 5),
('2025-10-06', 4, 6),
('2025-10-07', 9, 7),
('2025-10-08', 7, 8),
('2025-10-09', 8, 9),
('2025-10-10', 8, 10);

INSERT INTO pensja (stanowisko, kwota) VALUES
('Kierownik', 8500.00),
('Analityk', 7200.00),
('Programista', 9000.00),
('Tester', 6000.00),
('Asystent', 4500.00),
('HR', 5000.00),
('Księgowy', 6500.00),
('Specjalista IT', 7800.00),
('Administrator', 7000.00),
('Sekretarka', 4200.00);

INSERT INTO premia (rodzaj, kwota) VALUES
('Brak', 0),
('Za wyniki', 500.00),
('Za frekwencję', 300.00),
('Uznaniowa', 700.00),
('Roczna', 999.00),
('Okolicznościowa', 400.00),
('Brak', 0),
('Projektowa', 999.00),
('Motywacyjna', 600.00),
('Specjalna', 800.00);

INSERT INTO wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-10', 1, 1, 3, 2),
('2025-10-10', 2, 2, 1, 5),
('2025-10-10', 3, 3, 4, 3),
('2025-10-10', 4, 4, 2, 1),
('2025-10-10', 5, 5, 5, 4),
('2025-10-10', 6, 6, 6, 6),
('2025-10-10', 7, 7, 7, 8),
('2025-10-10', 8, 8, 8, 9),
('2025-10-10', 9, 9, 9, 7),
('2025-10-10', 10, 10, 10, 10);