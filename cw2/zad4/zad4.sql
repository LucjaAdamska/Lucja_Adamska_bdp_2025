create table buildings (
	id SERIAL primary key,
	geometry GEOMETRY(POLYGON),
	name VARCHAR(30)
);

create table roads ( 
	id SERIAL primary key,
	geometry GEOMETRY(LINESTRING),
	name VARCHAR(30)
)

create table poi(
	id SERIAL primary key,
	geometry GEOMETRY(POINT),
	name VARCHAR(30)
);