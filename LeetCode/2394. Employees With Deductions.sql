/* Write your T-SQL query statement below */
WITH CTE AS (
    SELECT distinct employee_id,
            Sum(DateDIFF(ss,in_time,out_time)*1.0/60.0) Over (Partition by employee_id) time
    FROM Logs
)

SELECT E.employee_id 
FROM Employees E
FULL JOIN CTE
ON E.employee_id = CTE.employee_id
WHERE needed_hours*60 > isnull(round(time*10,0)/10,0)  
ORDER BY E.employee_id