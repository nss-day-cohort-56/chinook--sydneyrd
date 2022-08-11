-- Which country's customers spent the most?

SELECT SUM(Invoice.Total) AS TotalSales, BillingCountry FROM  Invoice
GROUP BY BillingCountry
ORDER BY TotalSales DESC ;
