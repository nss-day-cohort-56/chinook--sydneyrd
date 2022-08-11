-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT SUM(invoice.total), employee.FirstName, employee.LastName FROM INVOICE
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId;
