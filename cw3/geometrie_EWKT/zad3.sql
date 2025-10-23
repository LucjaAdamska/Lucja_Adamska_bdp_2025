INSERT INTO public.obiekty (nazwa, geometria)
SELECT 
    'obiekt4_cl',
    ST_MakePolygon(
    	ST_AddPoint(
        	ST_LineMerge(geometria),        
        	ST_StartPoint(ST_LineMerge(geometria)))
    )
FROM obiekty 
WHERE nazwa = 'obiekt4';