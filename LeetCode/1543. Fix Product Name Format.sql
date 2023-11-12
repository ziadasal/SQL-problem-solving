/* Write your T-SQL query statement below */
SELECT Trim(LOWER(product_name)) product_name ,
    FORMAT(sale_date,'yyyy-MM') sale_date ,
    Count(product_name) total
FROM Sales
GROUP BY Trim(LOWER(product_name)) , FORMAT(sale_date,'yyyy-MM')
ORDER BY product_name , sale_date
