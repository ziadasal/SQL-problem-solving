/* Write your T-SQL query statement below */
SELECT DISTINCT a.session_id
FROM Playback a 
LEFT JOIN Ads b 
ON a.customer_id=b.customer_id AND (b.timestamp between a.start_time AND a.end_time)
WHERE b.customer_id IS NULL
