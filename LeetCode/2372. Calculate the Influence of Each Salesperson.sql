/* Write your T-SQL query statement below */
SELECT S.salesperson_id , name ,isnull(SUM(price),0) total
FROM Salesperson S
LEFT JOIN Customer C 
ON S.salesperson_id = C.salesperson_id
LEFT JOIN Sales 
ON C.customer_id = Sales.customer_id
Group by S.salesperson_id,name