-- b. Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu reprezentującego budynek o nazwie BuildingA.
SELECT 
    geometry,
    ST_Area(geometry) AS area,
    ST_Perimeter(geometry) AS perimeter
FROM buildings
WHERE name = 'BuildingA';