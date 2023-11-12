/* Write your T-SQL query statement below */
SELECT DISTINCT emp_id , firstname, lastname , max(salary) salary, department_id
FROM salary
GROUP BY emp_id , firstname, lastname , department_id