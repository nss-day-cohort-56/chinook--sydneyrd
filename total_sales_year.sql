-- What are the respective total sales for each of those years? -- How many Invoices were there in 2009 and 2011?

SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2011-12-31 00:00:00';