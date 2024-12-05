
USE Chinook

--Liste os g�neros musicais mais populares em termos de quantidade de faixas vendidas.

SELECT
	G.Name AS GEN�RO,
	SUM(I.Quantity) AS QTD_ORDENS
FROM InvoiceLine AS I
	JOIN Track AS T ON T.TrackId = I.TrackId
	JOIN Genre AS G ON G.GenreId = T.GenreId
GROUP BY G.Name
ORDER BY 2 DESC