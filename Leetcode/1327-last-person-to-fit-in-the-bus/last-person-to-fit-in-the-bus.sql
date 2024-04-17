# Write your MySQL query statement below
-- select q1.person_name
-- from Queue as q1
-- join Queue as q2 on q1.turn >= q2.turn
-- group by q1.turn
-- having sum(q2.weight) <= 1000
-- limit 1

select person_name
from (
    select person_name, sum(weight) over (order by turn) as weight
    from Queue
) as q
where weight <= 1000
order by weight desc
limit 1