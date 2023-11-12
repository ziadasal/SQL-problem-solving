/* Write your T-SQL query statement below */
SELECT b.name AS warehouse_name ,
    Sum((a.width * a.length * a.height)*b.units) AS volume
FROM Products a
    JOIN Warehouse b
    ON a.product_id = b.product_id
GROUP BY b.name