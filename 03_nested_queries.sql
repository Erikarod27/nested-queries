-- Q3. What are the order ids of the orders that ordered "Sasquatch Ale"?
-- Hint: Find the product id of "Sasquatch Ale" in a subquery then use 
-- that value to find the matching orders from the 'order detiails' table. 
-- Because the 'order details' table has a space in its name, you will need
-- to surround it with back ticks in the FROM clause 
SELECT OrderID FROM northwind.`Order Details`
WHERE ProductID = 
(SELECT ProductID FROM northwind.Products
WHERE ProductName IN ('Sasquatch Ale'));