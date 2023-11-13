/* Write your T-SQL query statement below */
SELECT user_id , product_id
FROM (
    SELECT user_id ,
        S.product_id ,
        Dense_Rank() OVER(PARTITION BY user_id ORDER BY  SUM(price*quantity) DESC) rk
    FROM Sales S
        JOIN Product P
        ON S.product_id = P.product_id
    GROUP BY user_id, S.product_id
) AS newTab
WHERE rk = 1