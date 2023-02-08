#Las vistas son un select, podemos acceder a ellas a traves de su nombre con un select aparte
#estas son usadas para guardar selects complejos.
CREATE OR REPLACE VIEW V_vista AS
    SELECT 
        e.employeeNumber,e.firstName,e.lastName,e.extension,e.email,e.jobTitle,e.reportsTo,o.*
    FROM
        offices o
            JOIN
        employees e ON o.officeCode = e.officeCode;

SELECT * FROM v_vista;
