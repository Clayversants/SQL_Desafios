
--7. Produtos N�o Vendidos
--Desafio: Identifique produtos que n�o tiveram vendas registradas.

USE AdventureWorksDW2022

SELECT
   P.EnglishProductName,
   SUM(S.OrderQuantity) AS VENDAS
FROM DimProduct AS P
LEFT JOIN FactInternetSales AS S ON S.ProductKey = P.ProductKey
GROUP BY 
    P.EnglishProductName
HAVING SUM(S.OrderQuantity) IS NULL

ORDER BY 2 ASC
