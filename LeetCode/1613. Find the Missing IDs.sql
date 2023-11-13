/* Write your T-SQL query statement below */
WITH CTE AS (
    SELECT MAX(customer_id) MAX, 1 ids
    FROM Customers
    UNION ALL 
    SELECT MAX , ids+1 ids
    FROM CTE
    WHERE ids+1<MAX
)

SELECT ids
FROM CTE

EXCEPT 

SELECT customer_id
FROM Customers