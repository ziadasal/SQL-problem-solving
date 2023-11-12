/* Write your T-SQL query statement below */
WITH
    updatedOrder
    AS
    (
        SELECT order_id ,
            order_date,
            customer_id,
            Dense_Rank () OVER (PARTITION BY customer_id ORDER BY order_date DESC) Rank
        FROM Orders
    )

SELECT C.name customer_name,
    C.customer_id,
    O.order_id,
    order_date
FROM updatedOrder O
    JOIN Customers C
    ON O.customer_id = C.customer_id
WHERE Rank <= 3
ORDER BY customer_name , customer_id , order_date DESC