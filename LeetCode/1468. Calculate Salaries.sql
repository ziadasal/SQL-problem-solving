/* Write your T-SQL query statement below */
SELECT tab.company_id
        , tab.employee_id
        , tab.employee_name
        , CASE WHEN max_salary < 1000 THEN ROUND(salary,0)
        WHEN (max_salary >= 1000 AND max_salary <= 10000) THEN ROUND(salary * 0.76,0)
        WHEN max_salary > 1000 THEN ROUND(salary * 0.51,0)
        END AS salary
FROM
    (
SELECT * , MAX(salary) OVER(PARTITION BY company_id) max_salary
    FROM salaries
    ) tab