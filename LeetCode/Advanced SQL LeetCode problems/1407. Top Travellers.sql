/* Write your T-SQL query statement below */
SELECT name, ISNULL(SUM(distance),0) AS travelled_distance
FROM Users U
LEFT JOIN Rides R ON R.user_id = U.id
GROUP BY U.id, name
ORDER BY 2 DESC, name ASC