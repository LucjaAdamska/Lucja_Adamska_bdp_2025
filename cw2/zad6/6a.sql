-- a. Wyznacz całkowitą długość dróg w analizowanym mieście.
select SUM(ST_Length(geometry)) as suma_dlugosci_drog
from roads;