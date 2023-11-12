/* Write your T-SQL query statement below */
SELECT isnull(E.employee_id,S.employee_id) employee_id
From Employees E
    FULL Join Salaries S
    ON E.employee_id=S.employee_id
WHERE E.name IS NULL or S.salary IS NULL
Order by isnull(E.employee_id,S.employee_id) 