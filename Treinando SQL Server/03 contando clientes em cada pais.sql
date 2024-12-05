

---1. Contagem de Clientes por Pa�s
---Desafio: Escreva uma consulta que conte o n�mero de clientes por pa�s.


USE AdventureWorksDW2022

SELECT 
	G.EnglishCountryRegionName,
	COUNT (C.CustomerKey) AS 'Total de clientes'
FROM DimCustomer AS C
INNER JOIN DimGeography AS G ON G.GeographyKey = C.GeographyKey
GROUP BY G.EnglishCountryRegionName 
ORDER BY 2 DESC

