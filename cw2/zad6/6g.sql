-- g. Wybierz te budynki, których centroid (ST_Centroid) znajduje się powyżej drogi o nazwie RoadX.

select b.* from buildings b, roads r
where r.name = 'RoadX'
and ST_Y(ST_Centroid(b.geometry)) > ST_Y(ST_Centroid(r.geometry));




