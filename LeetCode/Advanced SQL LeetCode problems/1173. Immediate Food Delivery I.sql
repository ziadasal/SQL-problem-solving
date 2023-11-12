/* Write your T-SQL query statement below */
SELECT round(count(*)*100.0/(SELECT count(*)
    FROM delivery), 2) AS immediate_percentage
FROM delivery
WHERE order_date = customer_pref_delivery_date