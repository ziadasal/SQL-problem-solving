/* Write your T-SQL query statement below */
select distinct contest_id , round((count(contest_id)*1.0/(Select count(user_name) from Users))*100,2) percentage
from Register R
group by contest_id
order by percentage desc, contest_id asc
