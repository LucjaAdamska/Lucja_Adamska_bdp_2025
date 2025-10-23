with nodes_reprojected as (
	select *, ST_Transform(geom, 3068) as geom_berlin
	from t2019_kar_street_node tksn 		
), 
line as ( 
	select ST_MakeLine(geom) as geom
	from input_points
)
select 
	n.gid, n.geom_berlin,
	ST_Distance(n.geom_berlin, l.geom) as distance
	from nodes_reprojected n, line l
	where ST_DWithin(n.geom_berlin, l.geom, 200);
