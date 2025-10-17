INSERT INTO buildings (geometry, name)
VALUES
  (ST_GeomFromText('POLYGON((8 4, 10.5 4, 10.5 1.5, 8 1.5, 8 4))'), 'BuildingA'),
  (ST_GeomFromText('POLYGON((4 5, 6 5, 6 7, 4 7, 4 5))'), 'BuildingB'),
  (ST_GeomFromText('POLYGON((3 6, 5 6, 5 8, 3 8, 3 6))'), 'BuildingC'),
  (ST_GeomFromText('POLYGON((9 8, 10 8, 10 9, 9 9, 9 8))'), 'BuildingD'),
  (ST_GeomFromText('POLYGON((1 1, 2 1, 2 2, 1 2, 1 1))'), 'BuildingF');

insert into roads (geometry, name) 
values 
	(ST_GeomFromText('LINESTRING(0 4.5, 12 4.5)'), 'RoadX'),
	(ST_GeomFromText('LINESTRING(7.5 0, 7.5 10.5)'), 'RoadY');

insert into poi (name, geometry)
values 
	('H', ST_GeomFromText('POINT(5.5 1.5)')),
	('I', ST_GeomFromText('POINT(9.5 6)')),
	('J', ST_GeomFromText('POINT(6.5 6)')),ś
	('K', ST_GeomFromText('POINT(6 9.5)')),
	('G', ST_GeomFromText('POINT(1 3.5)'));