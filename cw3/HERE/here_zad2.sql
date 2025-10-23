--Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub
--wybudowanych budynków, które znalezione zostały w zadaniu 1. Policz je wg ich kategorii.

with budynki as ( 
	select * from t2019_kar_buildings 
	where polygon_id not in (select polygon_id from t2018_kar_buildings)
),
	punkty_500_m as ( 
	select p.gid as poi_id, p.type
	from t2019_kar_poi_table p
	join budynki b
	ON ST_DWithin(p.geom::geography, b.geom::geography, 500)
) select type, count(distinct poi_id) as count
  from punkty_500_m 
  group by type;