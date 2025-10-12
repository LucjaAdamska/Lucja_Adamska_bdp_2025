SELECT 
    pe.stanowisko,
    SUM(pe.kwota + pr.kwota) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON pe.id_pensji = w.id_pensji
JOIN ksiegowosc.premia pr ON pr.id_premii = w.id_premii
GROUP BY pe.stanowisko
ORDER BY suma_wynagrodzen DESC;