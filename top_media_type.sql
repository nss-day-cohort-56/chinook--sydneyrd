-- Provide a query that shows the most purchased Media Type.


SELECT COUNT(Track.MediaTypeId), MediaType.Name FROM InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.Name ;