/* Write your T-SQL query statement below */
SELECT
    o.customer_id,
    c.customer_name
FROM
    Orders as o
    LEFT JOIN
    Customers as c
    ON
    c.customer_id = o.customer_id
GROUP BY
    o.customer_id, c.customer_name
HAVING
    SUM(CASE WHEN o.product_name='A' THEN 1 ELSE 0 END) >=1 AND
    SUM(CASE WHEN o.product_name='B' THEN 1 ELSE 0 END) >=1 AND
    SUM(CASE WHEN o.product_name='C' THEN 1 ELSE 0 END) = 0
ORDER BY customer_id    