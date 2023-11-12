/* Write your T-SQL query statement below */
SELECT C.customer_id ,name 
FROM Customers C
JOIN Orders O 
On C.customer_id = O.customer_id
JOIN Product P
ON O.product_id = P.product_id
WHERE YEAR(order_date)=2020 and month(order_date)=6  and quantity * price >=100 
group by C.customer_id,name
Having sum(quantity*price)>=100

intersect

SELECT C.customer_id ,name 
FROM Customers C
JOIN Orders O 
On C.customer_id = O.customer_id
JOIN Product P
ON O.product_id = P.product_id
WHERE YEAR(order_date)=2020 and month(order_date)=7
group by C.customer_id,name
Having sum(quantity*price)>=100