/* Write your T-SQL query statement below */
select round(avg(case when first_order = first_time then 1.0 else 0.0 end)*100,2) immediate_percentage
from(
select distinct customer_id  , min(order_date) first_order , min(customer_pref_delivery_date ) first_time

    from Delivery
    group by customer_id) as newTab
