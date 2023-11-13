/* Write your T-SQL query statement below */
WITH CTE AS 
(
    SELECT order_id,
            AVG(quantity*1.0) avg , 
            MAX(quantity*1.0) max
    FROM OrdersDetails
    GROUP BY order_id
)


SELECT order_id
FROM CTE
WHERE max>all(SELECT avg FROM CTE)
GROUP BY order_id
