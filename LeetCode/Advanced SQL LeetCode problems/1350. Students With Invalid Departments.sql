/* Write your T-SQL query statement below */
SELECT id, name
FROM students
WHERE department_id NOT IN  (SELECT id
FROM Departments) 