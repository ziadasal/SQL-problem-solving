/* Write your T-SQL query statement below */
SELECT
    employee_id ,
    IIF(    employee_id % 2 <> 0
AND
    name not like 'M%',salary,0 ) bonus
FROM
    Employees
ORDER BY employee_id