/* Write your T-SQL query statement below */
WITH rec AS (
        SELECT employee_id , 0 hierarchy
        FROM Employees
        WHERE employee_id !=1 AND manager_id =1

        union all 

        SELECT Employees.employee_id , rec.hierarchy + 1  AS hierarchy
        FROM Employees 
        JOIN rec
        ON rec.employee_id = Employees.manager_id
        WHERE rec.hierarchy<=3  
)

SELECT employee_id
FROM rec