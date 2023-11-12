/* Write your T-SQL query statement below */
SELECT seller_id 
FROM
(
    SELECT seller_id , DENSE_RANK() OVER(ORDER BY total DESC) RK
FROM (
    SELECT seller_id, Sum(price) total
    FROM Sales
    GROUP BY seller_id
) as newTab) newTab2
WHERE RK = 1
