/* Write your T-SQL query statement below */
SELECT problem_id 
FROM Problems
Where likes*1.0 / (likes+dislikes)*100.0 <60
ORDER BY problem_id
