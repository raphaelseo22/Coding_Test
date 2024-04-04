# Write your MySQL query statement below
select round(sum(if(datediff(a2.event_date, a1.first_login) = 1, 1, 0)) / count(distinct a1.player_id), 2) as fraction
from (
    select player_id, min(event_date) as first_login
    from Activity
    group by player_id
) as a1
join Activity as a2 on a1.player_id = a2.player_id
