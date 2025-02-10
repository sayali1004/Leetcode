# Write your MySQL query statement below
SELECT sell_date, 
       COUNT(DISTINCT product) AS num_sold,
       (SELECT GROUP_CONCAT(DISTINCT product ORDER BY product) 
        FROM Activities AS A2 
        WHERE A2.sell_date = A1.sell_date) AS products
FROM Activities AS A1
GROUP BY sell_date;


