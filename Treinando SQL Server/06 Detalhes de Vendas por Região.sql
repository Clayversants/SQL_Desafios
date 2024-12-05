
--4. Detalhes de Vendas por Regi�o
--Desafio: Liste o total de vendas, dividido por regi�o, e inclua o nome da regi�o e a quantidade de pedidos.

USE AdventureWorksDW2022

SELECT TOP 100
    ST.SalesTerritoryRegion,
	COUNT(S.OrderQuantity) AS QTDS_PEDIDOS,
    SUM(S.SalesAmount) AS TOTAL_VENDAS
FROM FactInternetSales AS S
INNER JOIN DimSalesTerritory AS ST ON ST.SalesTerritoryKey = S.SalesTerritoryKey
GROUP BY ST.SalesTerritoryRegion
ORDER BY 3 DESC