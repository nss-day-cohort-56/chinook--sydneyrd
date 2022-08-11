-- Provide a query that shows the most purchased track(s) of 2013.

SELECT COUNT(invoiceLine.trackId) AS Purchases, Track.name FROM InvoiceLine
JOIN Track on Track.TrackId = InvoiceLine.TrackId
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId

WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2011-12-31 00:00:00'
GROUP BY Track.TrackId
ORDER BY Purchases DESC
;