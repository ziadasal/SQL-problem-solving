/* Write your T-SQL query statement below */
SELECT
    SUBSTRING(CONVERT(VARCHAR(7), order_date, 120), 1, 7) AS month   ,
    COUNT(DISTINCT order_id) AS order_count ,
    COUNT(DISTINCT customer_id) AS customer_count
FROM ORDERS
WHERE invoice > 20
GROUP BY SUBSTRING(CONVERT(VARCHAR(7), order_date, 120), 1, 7)
