/* Write your T-SQL query statement below */
WITH C1 AS (
    SELECT user_id , DATEDIFF(DAY,visit_date,COALESCE(lead(visit_date) over(partition by user_id order by visit_date),'2021-1-1')) diff 
    FROM UserVisits
)

SELECT user_id, MAX(diff) biggest_window 
FROM C1
GROUP BY user_id