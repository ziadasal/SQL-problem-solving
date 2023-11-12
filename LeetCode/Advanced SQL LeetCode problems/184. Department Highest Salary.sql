/* Write your T-SQL query statement below */
WITH
    updated
    AS
    (
        SELECT id,
            name ,
            salary ,
            departmentId ,
            DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) RANK
        FROM Employee
    )
SELECT D.name Department  , E.name Employee  , salary Salary
FROM Department D
    JOIN updated E
    ON D.id = E.departmentId
WHERE Rank = 1
ORDER BY salary