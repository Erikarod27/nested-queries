-- Q1. What is the product name(s) of the most expensive product?
-- Hont: Find the max price in a subquery and then use that value to 
-- find products whose price equals that value.
SELECT ProductName FROM northwind.Products
WHERE UnitPrice = 
(SELECT MAX(UnitPrice) FROM northwind.Products);