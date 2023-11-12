/* Write your T-SQL query statement below */
;with
    cte
    as
    (
        select
            product_name,
            p.product_id,
            o.order_id,
            order_date,
            rank() over(partition by p.product_name order by order_date desc) as ranking
        from orders o
            join products p
            on o.product_id = p.product_id
    )



select
    product_name,
    product_id,
    order_id,
    order_date
from cte
where ranking = 1
order by product_name, order_id asc