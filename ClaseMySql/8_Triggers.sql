use classicmodels
#Los triggers como dice la palabra son gatillos que se accionan despues o antes de una accion
#pueden ser usados con los updates, inserts y deletes y estos nos permiten hacer cualquier accion
#estos no pueden ser llamados como los procedimientos pero si los podemos provocar si hacemos
#la accion que pide el trigger, en este caso cuando realizamos un insert se activara antes de subir los datos.
Delimiter $$
create trigger limite_credito before insert on payments for each row
	begin
		declare LimiteCredito decimal(10,2);
        set @LimiteCredito = (select f_buscar_customer(new.customerNumber));
        if @LimiteCredito < new.amount then 
			insert into orders(orderDate,requiredDate,shippedDate,estado,comments,customerNumber)
			values(curdate(),curdate(),curdate(),'Error','Prueba el trigger funciona',new.customerNumber);
            set new.amount=0;
		end if;
	end $$
Delimiter ;
insert into payments(customerNumber,checkNumber,paymentDate,amount)
values(103,'8489f689',curdate(),4448797);
select * from payments where customerNumber=103;
select * from customers;
select * from orders where customerNumber=103;



