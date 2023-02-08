delimiter $$
#Los procedimientos almacenados nos permiten encapsular una serie de acciones
#estas acciones pueden ser llamadas a traves de call
#podemos tener parametros de entrada con in y de salida con out
delimiter $$
create procedure delete_customers(in Numero_cliente int)
begin
    delete from customers where customerNumber = Numero_cliente;
end $$
delimiter ;

call delete_customers(103);

