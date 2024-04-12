# Write your MySQL query statement below
select p1.product_id, new_price as price
from Products as p1
left join (
    select product_id, max(change_date) as change_date
    from Products as p2
    where change_date <= '2019-08-16'
    group by product_id
) as p2 on p1.product_id = p2.product_id and p1.change_date = p2.change_date
where p2.change_date is not null

union

select product_id, 10 as price 
from Products
where product_id not in (
    select distinct product_id
    from Products
    where change_date <= '2019-08-16'
)