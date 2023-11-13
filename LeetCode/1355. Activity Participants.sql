/* Write your T-SQL query statement below */
WITH CTE AS (
    SELECT activity ,
        DENSE_RANK() OVER(ORDER BY COUNT(name) DESC) max,
        DENSE_RANK() OVER(ORDER BY COUNT(name) ) min
    FROM Friends 
    GROUP BY activity
)

SELECT activity
FROM CTE
WHERE max != 1

INTERSECT 

SELECT activity
FROM CTE
WHERE min != 1