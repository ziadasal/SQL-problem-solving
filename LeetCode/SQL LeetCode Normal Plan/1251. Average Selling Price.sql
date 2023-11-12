/* Write your T-SQL query statement below */
select P.product_id  , isnull(round(((sum(price*units)*1.0))/sum(units),2),0) as 'average_price'
from UnitsSold U 
right join Prices P
on U.product_id = P.product_id
where purchase_date  >= start_date and purchase_date  <= end_date Or purchase_date is null
group by P.product_id
