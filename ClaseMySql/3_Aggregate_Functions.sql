#Sirven para aplicar operaciones sobre una columna
#Cada ves que se usen junto con otra columna se debera usar group by
#Se puede agrupar por mas de una columna usando la , 
#ejem: group by x,y
select count(salida) from ticket;
select count(distinct salida) from ticket;
select destino,sum(precio) from ticket group by(destino);
select max(precio) from ticket;
select min(precio),salida from ticket group by(salida);
select avg(precio) from ticket;
select round(avg(precio)) from ticket;


