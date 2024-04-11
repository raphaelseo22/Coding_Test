# Write your MySQL query statement below
select employee_id, name, reports_count, average_age
from Employees as e1
join (
    select reports_to, count(employee_id) as reports_count, round(avg(age)) as average_age
    from Employees
    group by reports_to
) as e2 on e1.employee_id = e2.reports_to
order by employee_id