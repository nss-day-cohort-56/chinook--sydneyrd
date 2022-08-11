-- Provide a query that shows the top 5 most purchased tracks over all.


SELECT COUNT(invoiceLine.trackId) AS Purchases,  Track.name FROM InvoiceLine
JOIN Track on Track.TrackId = InvoiceLine.TrackId
GROUP BY Track.TrackId
ORDER BY Purchases DESC
LIMIT 5