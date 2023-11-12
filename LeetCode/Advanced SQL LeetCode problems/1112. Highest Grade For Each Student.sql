/* Write your T-SQL query statement below */
with
    cte
    as
    (
        select student_id, max(grade) as grade
        from enrollments
        group by student_id
    ),

    cte2
    as
    (
        select e.student_id, e.course_id, e.grade
        from enrollments e
            inner join cte c
            on c.student_id = e.student_id and c.grade = e.grade
    )
select c.student_id, min(c.course_id) as course_id, max(c.grade) as grade
from cte2 c
group by c.student_id
order by c.student_id asc