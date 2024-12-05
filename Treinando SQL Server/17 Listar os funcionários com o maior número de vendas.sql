
USE AdventureWorksDW2022

-- Crie uma consulta que mostre os 5 funcion�rios com o maior n�mero de vendas realizadas, com seus IDs e o total de vendas associadas a cada um.

SELECT 
	EmployeeKey,
	SUM(OrderQuantity) AS QTD_VENDAS
FROM FactResellerSales
GROUP BY EmployeeKey
ORDER BY QTD_VENDAS DESC