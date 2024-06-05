-- Q5. WHat is the name of the customer that bought order 10266?
SELECT ContactName FROM northwind.Customers
WHERE CustomerID =
(SELECT CustomerID FROM northwind.Orders
WHERE OrderID = 10266);