-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID


SELECT employee.FirstName, employee.LastName, InvoiceId
FROM Customer

JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId ;

