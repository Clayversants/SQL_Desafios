
USE AdventureWorksDW2022

--M�DIA PRE�O
SELECT
    AVG(UnitPrice)
FROM FactInternetSales


--PRODUTOS ABAIXO DA M�DIA DO VALOR
SELECT
    ProductKey,
	UnitPrice
FROM FactInternetSales
WHERE UnitPrice  <= ( SELECT
    AVG(UnitPrice)
FROM FactInternetSales)
ORDER BY 2 DESC


--PRODUTOS ACIMA DA M�DIA DE VALOR
SELECT
    ProductKey,
	UnitPrice
FROM FactInternetSales
WHERE UnitPrice  >= ( SELECT
    AVG(UnitPrice)
FROM FactInternetSales)
ORDER BY 2 DESC




