
create table if not exists T2019_KAR_BRIDGES as 
select 
	ST_Intersection(r.geom, w.geom) as geom
from t2019_kar_railways r
join t2019_kar_waters w 
on ST_Intersects(r.geom, w.geom)
where ST_IsEmpty(ST_Intersection(r.geom, w.geom)) = FALSE;

select * from T2019_KAR_BRIDGES;