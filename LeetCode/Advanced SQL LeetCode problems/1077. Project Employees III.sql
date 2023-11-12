/* Write your T-SQL query statement below */
SELECT project_id,
    employee_id
FROM (
    SELECT project_id,
        E.employee_id,
        name,
        experience_years,
        DENSE_RANK() OVER(PARTITION BY project_id ORDER BY experience_years DESC) RANK
    FROM Employee E
        JOIN Project P
        ON E.employee_id = P.employee_id
) AS newTab
WHERE Rank = 1
