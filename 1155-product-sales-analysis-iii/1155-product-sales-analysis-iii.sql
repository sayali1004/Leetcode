# Write your MySQL query statement below
-- select s.product_id, min(year) as first_year , quantity, price 
-- from sales s
-- join product p
-- on s.product_id=p.product_id
-- group by p.product_id;
SELECT 
  product_id, 
  year AS first_year, 
  quantity, 
  price 
FROM 
  Sales 
WHERE 
  (product_id, year) IN (
    SELECT 
      product_id, 
      MIN(year) AS year 
    FROM 
      Sales 
    GROUP BY 
      product_id
  );
