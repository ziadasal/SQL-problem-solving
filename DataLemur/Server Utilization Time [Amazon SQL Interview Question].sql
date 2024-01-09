WITH CTE AS (SELECT server_id , 
CASE WHEN session_status ='start' THEN DATE_PART('day', lead(status_time) over(PARTITION BY server_id ORDER BY status_time)::timestamp - status_time::timestamp) * 24 + 
              DATE_PART('hour', lead(status_time) over(PARTITION BY server_id ORDER BY status_time)::timestamp - status_time::timestamp)  Else 0 END time
FROM server_utilization
)

SELECT  ROUND(Sum(time)/24)
FROM CTE
