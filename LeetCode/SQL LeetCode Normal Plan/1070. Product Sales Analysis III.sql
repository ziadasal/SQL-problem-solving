/* Write your T-SQL query statement below */
SELECT product_id, year AS first_year, quantity, price
FROM (
    SELECT *, RANK() OVER(PARTITION BY product_id ORDER BY year) AS year_rank
    FROM Sales
) AS first_sale
WHERE year_rank = 1;