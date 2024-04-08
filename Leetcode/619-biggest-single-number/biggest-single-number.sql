# Write your MySQL query statement below
select if(length(max(num)) >= 1, max(num), null) as num
from (
    select *
    from MyNumbers
    group by num
    having count(num) = 1
) as t
