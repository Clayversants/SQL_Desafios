
USE AdventureWorksDW2022

-- Crie uma consulta que liste o n�mero de clientes por cidade, ordenado pelo n�mero de clientes em ordem decrescente.

SELECT
	G.City,
	SUM(S.OrderQuantity) AS CLIENTES
FROM FactInternetSales AS S
INNER JOIN DimCustomer AS C ON C.CustomerKey = S.CustomerKey
INNER JOIN DimGeography AS G ON G.GeographyKey = C.GeographyKey
GROUP BY G.City
ORDER BY CLIENTES DESC