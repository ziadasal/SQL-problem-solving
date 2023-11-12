/* Write your T-SQL query statement below */
WITH
    fav_product
    AS
    (
        SELECT
            customer_id,
            product_id,
            count(product_id) AS orders,
            dense_rank() OVER (PARTITION BY  customer_id  ORDER BY count(product_id) DESC) AS rank
        FROM Orders
        GROUP BY  customer_id, product_id
    )

SELECT f.customer_id, f.product_id, p.product_name
FROM fav_product AS f
    JOIN Products AS p
    ON p.product_id = f.product_id
WHERE rank = 1