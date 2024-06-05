-- Q2. What is the order id, shipping name, and shipping address
-- of all orders shipped via "Federal Shipping"? Hint: Find 
-- the shipper id of "Federal Shipping" in a subquery and then
-- use that value to find the orders that used that shipper
SELECT OrderId, ShipName, ShipAddress
FROM northwind.Orders
WHERE ShipVia =
(SELECT ShipperID FROM northwind.Shippers
WHERE ShipperID = 3);