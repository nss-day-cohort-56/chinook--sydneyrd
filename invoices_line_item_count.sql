-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice

SELECT COUNT(InvoiceLine.InvoiceId), Invoice.InvoiceId FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId;