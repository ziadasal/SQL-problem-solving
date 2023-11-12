/* Write your T-SQL query statement below */

SELECT top 1 abs(salary - lead(salary) over(order by salary))  salary_difference 
FROM (
    SELECT MAX(salary) salary, 'Marketing' Dept
    FROM Salaries 
    Where department = 'Marketing'

    union 

    SELECT MAX(salary) salary, 'Engineering' Dept
    FROM Salaries 
    Where department = 'Engineering'
) newTab
Order by salary_difference Desc