-- Provide a query that shows the total sales per country.

SELECT COUNT(Invoice.InvoiceId), BillingCountry FROM  Invoice
GROUP BY BillingCountry;