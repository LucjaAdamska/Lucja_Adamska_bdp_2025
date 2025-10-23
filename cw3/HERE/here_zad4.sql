create table if not exists input_points (  
	point_id SERIAL,
	geom geometry(Point)
);


insert into input_points values 
	(1, ST_MakePoint(8.36093, 49.03174)),
	(2, ST_MakePoint(8.39876, 49.00644));