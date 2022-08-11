-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name


SELECT Total, customer.FirstName, customer.LastName, customer.Country, employee.FirstName, employee.LastName
FROM Invoice
JOIN Customer ON customer.CustomerId = invoice.CustomerId
JOIN Employee ON employee.EmployeeId = customer.SupportRepId;