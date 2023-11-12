/* Write your T-SQL query statement below */
WITH num AS (
    SELECT team_id , count(employee_id) team_size  
    FROM Employee
    GROUP BY team_id
)

SELECT E.employee_id , team_size  
FROM Employee E
JOIN num 
ON E.team_id = num.team_id