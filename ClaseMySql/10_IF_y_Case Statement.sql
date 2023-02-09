#El If y el Case sirven para ejecutar codigo dependiendo de un criterio
#el uso de uno o el otro puede ser gusto personal

#IF function
SELECT productLine,if(productLine = 'Motorcycles','Es moto','No es moto') as Que_es
from products;
SELECT * FROM products;
#Case
SELECT productLine,
CASE 
WHEN productLine = 'Motorcycles' 
	THEN 'Es moto' 
When productLine = "Classic Cars"
	then "Es carro clasico"
ELSE 'No es moto ni carro clasico' 
END AS Que_es 
from products;

#If 
SELECT *,Que_es
IF productLine='Motorcycles' THEN 'Es moto' 
ELSE 'No es moto' 
END IF AS Que_es
from products;