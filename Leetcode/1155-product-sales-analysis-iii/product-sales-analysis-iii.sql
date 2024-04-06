# Write your MySQL query statement below
select s1.product_id, s2.first_year, quantity, price
from Sales as s1
join (
    select product_id, min(year) as first_year
    from Sales
    group by product_id
) as s2 on s1.product_id = s2.product_id and s1.year = s2.first_year
