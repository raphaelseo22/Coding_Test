# Write your MySQL query statement below
select stu.student_id, student_name, sub.subject_name,count(exam.student_id) as attended_exams
    from students as stu
    inner join subjects as sub
    left join examinations as exam on stu.student_id = exam.student_id and sub.subject_name = exam.subject_name
    group by stu.student_id, student_name, sub.subject_name
    order by stu.student_id, sub.subject_name