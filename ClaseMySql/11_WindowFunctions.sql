#Estas son parecidas a las Aggregate Functions
#Group by vs Partition by
#Partition by no reduce el numero de resultados, solo ordena los resultados iguales por bloques

#Row Number Esta nos regresa el numero de fila
select customerNumber,amount,row_number() 
OVER(partition by customerNumber order by amount desc) AS numero_venta_alta
from payments;

#Rank
select customerNumber,amount,rank() 
OVER(partition by customerNumber order by amount desc) AS rank_clientes
from payments;

select distinct * from payments order by amount desc limit 10

#Dense Rank
select customerNumber,amount,dense_rank() 
OVER(partition by customerNumber order by amount desc) AS numero_venta_alta
from payments;

select s.customerNumber,s.amount,s.numero_venta_alta
from
(
	select customerNumber,amount,row_number() over w as numero_venta_alta
	from payments
	window w as (partition by customerNumber order by amount desc)
) as s
where s.numero_venta_alta = 1;



#Lag regresa el valor que esta detras del valor actual
#Lead regresa el valor que esta delante del valor actual
#Diferencia entre el pago actual y el pasado
select customerNumber,paymentDate,amount,lag(amount) OVER alias  AS numero_anterior,
lead(amount) OVER alias AS numero_despues, (amount-lag(amount) over alias )as diferencia_monto_actual_al_previo
from payments
where customerNumber=103
window alias as (order by paymentDate);







