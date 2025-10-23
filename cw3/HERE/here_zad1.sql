select * from t2019_kar_buildings
limit 10;

select * from t2018_kar_buildings
limit 10;

-- Znajdź budynki, które zostały wybudowane lub wyremontowane na przestrzeni roku (zmiana
-- pomiędzy 2018 a 2019).

select * from t2019_kar_buildings 
where polygon_id not in (select polygon_id from t2018_kar_buildings);
