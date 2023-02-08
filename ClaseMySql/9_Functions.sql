#Funciones vs vistas vs procedimientos almacenados
#Las vistas pueden ser usadas para almacenar Selects dificiles 
#Las funciones sirven para extraer datos pero no pueden modificar nada
#Los procedimientos almacenados pueden modificar datos y realizar todas las acciones anteriores
#pero a pesar de ser tan poderosos si no se requieren estructuras tan complejas es mejor usar las otras dos.

#Diferencias entre parametros y variables
#Los parametros son variables requeridas por una funcion estas van entre parentesis (in nombre_parametro int)
#Las variables se pueden usar en cualquier parte del documento osea son de uso libre
Delimiter $$
create function f_limite_credito (v_customer_number int) returns decimal(10,2)
DETERMINISTIC
begin
declare monto decimal(10,2);
SELECT 
    creditLimit
INTO monto FROM
    customers
WHERE
    v_customer_number = customerNumber;
return monto;
end $$
Delimiter ;
select f_limite_credito(103) as limite;
drop function f_limite_credito;



Delimiter $$
create function f_buscar_customer (v_customerNumber int) returns decimal(10,2)
deterministic
begin
	DECLARE v_creditLimit decimal(10,2);
    select creditLimit into v_creditLimit from customers where v_customerNumber = customerNumber;
    return v_creditLimit;
end $$
Delimiter ;



select f_buscar_customer(103) as LIMITE_CREDITO;


