
USE AdventureWorksDW2022

--Mostre a venda m�dia por funcion�rio para cada territ�rio. A consulta deve incluir o territ�rio, o nome do funcion�rio e a venda m�dia.

SELECT 
	T.SalesTerritoryCountry,
	CONCAT(E.FirstName,' ',E.LastName) AS Funcion�rio,
	AVG(S.SalesAmount) AS Venda_media
FROM FactInternetSales AS S
	INNER JOIN DimSalesTerritory AS T ON T.SalesTerritoryKey = S.SalesTerritoryKey
	INNER JOIN DimGeography AS G ON G.SalesTerritoryKey = T.SalesTerritoryKey
	INNER JOIN DimEmployee AS E ON E.SalesTerritoryKey = T.SalesTerritoryKey
GROUP BY 
	T.SalesTerritoryCountry,
	CONCAT(E.FirstName,' ',E.LastName)
ORDER BY 
	Venda_media DESC