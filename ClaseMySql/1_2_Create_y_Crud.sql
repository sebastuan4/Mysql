
#Create nos permite crear cualquier cosa
#se usa create seguido de la estructura y su nombre
create database metro;

use metro;

#Con create table podemos crear tablar estas requieren columnas con tipo de dato y algunos contraints opcionales
create table usuarios(
    cedula varchar(25) Primary key, 
    fecha_nacimiento date not null ,
    nombre varchar(70) not null
);

Create table ticket(
	id int,
    cedula varchar(25),
	salida varchar(25),
	destino varchar(25)
);
#Alter table nos permite modificar datos de una tabla
Alter table usuarios 
modify column cedula varchar(25) primary key;

Alter table ticket
Add column cedula varchar(25),
Add constraint foreign key (cedula) references usuarios(cedula);

ALTER TABLE ticket
modify column salida varchar(25) not null;

#Insert into nos permite insertar datos en una tabla se requiere todas las columnas al menos de que sean AI
#y se deben entregar datos en values con el mismo tipo y orden que las columnas del insert
Insert into usuarios(cedula,fecha_nacimiento,nombre)
values('118260554','2001-11-01','Maria Juanita de las nieves');

#Select nos permite leer tablas "*" significa todas las columnas from permite decir que tabla queremos leer
select * from usuarios;
#Where permite establecer un condicional a un select, se debe especificar una columna o variable a trabajar
select * from usuarios where cedula='118260556';
#Update permite actualizar datos se dice primero la tabla y en set la columna y el elemento a modificar
#se debe usar valores unicos como criterio en el where para que este funcione correctamente
update usuarios set fecha_nacimiento = '2002-12-05' where cedula = '118260556';
#Delete permite eliminar datos de una tabla#@
delete from usuarios where cedula='118260556';


















