INSERT INTO obiekty (nazwa, geometria)
SELECT 
    'obiekt7', 
    ST_Union(g3.geometria, g4.geometria)
FROM obiekty AS g3, obiekty as g4
WHERE g3.nazwa = 'obiekt3'
  AND g4.nazwa = 'obiekt4';
