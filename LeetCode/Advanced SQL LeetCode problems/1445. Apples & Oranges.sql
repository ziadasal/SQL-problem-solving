/* Write your T-SQL query statement below */
WITH
    apples
    AS
    (
        SELECT
            sale_date,
            sold_num
        FROM sales
        WHERE fruit = 'apples'
    ),

    oranges
    AS
    (
        SELECT
            sale_date,
            sold_num
        FROM sales
        WHERE fruit = 'oranges'
    )

SELECT a.sale_date, a.sold_num - o.sold_num AS diff
FROM apples a
    INNER JOIN oranges o
    ON a.sale_date = o.sale_date