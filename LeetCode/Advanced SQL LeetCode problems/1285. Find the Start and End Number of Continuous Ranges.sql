/* Write your T-SQL query statement below */
WITH C1 AS (
    SELECT log_id , row_number() OVER (ORDER BY log_id) RN 
    FROM Logs
)

SELECT MIN(log_id) start_id ,MAX(log_id) end_id 
FROM C1
GROUP BY (log_id-RN)