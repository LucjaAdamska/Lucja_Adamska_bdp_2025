-- Utwórz nową tabelę o nazwie ‘streets_reprojected’, która zawierać będzie dane z tabeli
-- T2019_KAR_STREETS przetransformowane do układu współrzędnych DHDN.Berlin/Cassini.

--CREATE TABLE streets_reprojected AS
CREATE TABLE streets_reprojected AS
SELECT 
    t.*,
    (ST_Transform(geom, 3068)) AS geom_Berlin
FROM T2019_KAR_STREETS t;
ALTER TABLE streets_reprojected DROP COLUMN geom;


select * from streets_reprojected;