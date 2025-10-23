
select count(*) from t2019_kar_poi_table p
join t2019_kar_land_use_a l
on ST_DWithin(p.geom, l.geom, 300)
where p.type = 'Sporting Goods Store';