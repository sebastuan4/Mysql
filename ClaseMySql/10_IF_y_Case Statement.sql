#El If y el Case sirven para ejecutar codigo dependiendo de un criterio
#el uso de uno o el otro puede ser gusto personal

#IF function
SELECT *,if(productLine = 'Motorcycles','Es moto','No es moto' ) as Que_es
from products;

#Case
SELECT *,CASE WHEN productLine = 'Motorcycles' 
THEN 'Es moto' 
ELSE 'No es moto' 
END AS Que_es 
from products;

#If
SELECT *,Que_es
IF productLine='Motorcycles' THEN 'Es moto' 
ELSE 'No es moto' 
END IF AS Que_es
from products;