/* Write your T-SQL query statement below */
SELECT user_id , sum(price*quantity) spending
FROM Sales S
JOIN Product P
ON S.product_id = P.product_id
Group by user_id
ORDER BY spending DESC , user_id