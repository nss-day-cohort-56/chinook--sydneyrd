-- Which sales agent made the most in sales over all?

SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total) AS TotalSales FROM InvoiceLine
    JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Customer on Customer.CustomerId = Invoice.CustomerId
    JOIN Employee on Employee.EmployeeId = Customer.SupportRepId
    GROUP BY Employee.EmployeeId
    ORDER BY TotalSales DESC;
    