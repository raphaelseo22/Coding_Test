# Write your MySQL query statement below
-- select distinct(t1.num) as ConsecutiveNums
-- from (
--     select l1.id, l1.num, l2.id as id2, l2.num as num2
--     from Logs as l1
--     left join Logs as l2 on l1.id = l2.id - 1
-- ) as t1
-- left join Logs as l3 on t1.id = l3.id - 2
-- where (t1.num = t1.num2) and (t1.num2 = l3.num)

select distinct l1.num as ConsecutiveNums
from Logs as l1, Logs as l2, Logs as l3
where l1.id = l2.id -1 and l2.id = l3.id - 1 and l1.num = l2.num and l2.num = l3.num