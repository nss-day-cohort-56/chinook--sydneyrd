-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT InvoiceLine.InvoiceLineId, invoiceLine.InvoiceId, invoiceLine.TrackId, invoiceLine.UnitPrice, track.Name FROM InvoiceLine
JOIN Track on Track.TrackId = InvoiceLine.TrackId;