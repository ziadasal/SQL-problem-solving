/* Write your T-SQL query statement below */
select project_id , round(sum(experience_years)*1.0/count(experience_years),2) average_years 
from project P
join employee E 
on P.employee_id = E.employee_id
group by project_id
order by project_id