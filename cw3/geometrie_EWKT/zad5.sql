SELECT 
    SUM(ST_Area(ST_Buffer(geometria, 5))) AS total_buffer_area
FROM obiekty
WHERE GeometryType(geometria) NOT IN ('CIRCULARSTRING', 'COMPOUNDCURVE', 'CURVEPOLYGON');