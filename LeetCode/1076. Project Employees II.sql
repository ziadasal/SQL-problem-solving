/* Write your T-SQL query statement below */
WITH CTE AS 
(
    SELECT project_id ,
        COUNT(employee_id) OVER (PARTITION BY project_id) Total 
    FROM PROJECT
)

SELECT DISTINCT project_id 
FROM
(
SELECT project_id,
     Dense_RANK() OVER(ORDER BY Total DESC) rk
FROM CTE 
) AS newTab
WHERE rk = 1