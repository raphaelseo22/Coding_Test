# Write your MySQL query statement below
SELECT 
p.product_name as product_name, a.year as year, a.price as price
FROM Sales as a
LEFT JOIN Product as p
ON a.product_id = p.product_id