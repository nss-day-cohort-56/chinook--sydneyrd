-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)


SELECT COUNT(Customer.SupportRepId), Employee.FirstName, Employee.LastName FROM Customer
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId

