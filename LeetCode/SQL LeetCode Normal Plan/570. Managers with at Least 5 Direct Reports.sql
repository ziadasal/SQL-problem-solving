/* Write your T-SQL query statement below */
select x.name 
from employee x
join employee y
on x.id = y.managerId
group by x.id,x.name
having count(x.name)>=5