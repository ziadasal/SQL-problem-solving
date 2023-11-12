/* Write your T-SQL query statement below */
select DISTINCT  product_name, year, price
from sales
join product
on sales.product_id  = product.product_id 