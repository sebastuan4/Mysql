#Las CTE o common table expressions es una herramienta para obtener un set de resultados temporales
#CTE VS TEMP Tables las cte suelen ser mas rapidas aunque son mas limitadas que las tablas temporales
#Las tablas temporales duran durante toda la session
with nombre_cte as (
select avg(amount) as promedio_pago from payments) 
select p.customerNumber,c.customerName,p.amount,cte.promedio_pago
from payments p
join customers c
on p.customerNumber=c.customerNumber
join #Un join sin un on se interpreta como un cross join
nombre_cte cte;

with nombre_cte as (
select avg(amount) as promedio_pago from payments),
nombre2_cte as(
select * from customers)
select p.customerNumber,c.customerName,p.amount,cte.promedio_pago
from payments p
join nombre2_cte c
on p.customerNumber=c.customerNumber
join #Un join sin un on se interpreta como un cross join
nombre_cte cte;

create temporary table temp_table
select * from payments;


select * from temp_table;



