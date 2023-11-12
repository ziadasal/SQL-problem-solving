/* Write your T-SQL query statement below */
SELECT product_id, Sum(quantity) total_quantity 
FROM Sales
GROUP BY product_id
