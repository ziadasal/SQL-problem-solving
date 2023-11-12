/* Write your T-SQL query statement below */
select Y.employee_id,Y.name,count(X.employee_id) reports_count ,round(sum(X.age*1.0)/count(X.age),0) average_age 
from employees X 
join employees Y
on X.reports_to = Y.employee_id
group by Y.employee_id,Y.name
order by Y.employee_id