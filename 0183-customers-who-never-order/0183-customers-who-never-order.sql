# Write your MySQL query statement below
-- customers who never orders, will not have any order_id

-- select name as Customers from Customers 
-- where name not in (
--     select Customers.name from Customers
-- right join Orders
-- on Customers.id=Orders.customerId
-- )


SELECT c.name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customerId = c.id
);