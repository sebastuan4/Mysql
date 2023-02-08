#Los Joins permiten unir dos o mas tablas entre si
#para facilitar esta tarea se le usan alias a las tablas para eso se usa as
#on se usa para demarcar con que criterio se van a unir las tablas
select n.Profesor, count(e.nombre)
from notas_clase as n
join estudiantes as e
on n.id=e.id
group by n.Profesor;



