-- Q4. What is the name of the employee that sold order 10266/
SELECT LastName, FirstName FROM northwind.Employees
WHERE EmployeeID = 
(SELECT EmployeeID FROM northwind.Orders
WHERE OrderID = 10266);