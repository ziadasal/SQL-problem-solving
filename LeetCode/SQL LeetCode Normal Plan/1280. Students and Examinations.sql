/* Write your T-SQL query statement below */
select st.student_id,st.student_name,s.subject_name, count(e.student_id) attended_exams
from Students st
cross join subjects s
left join Examinations e
on st.student_id = e.student_id and s.subject_name = e.subject_name
group by st.student_id, st.student_name,s.subject_name

