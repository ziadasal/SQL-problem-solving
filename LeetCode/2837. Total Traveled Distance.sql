/* Write your T-SQL query statement below */
SELECT Users.user_id , name , ISNULL(SUM(distance),0) 'traveled distance' 
FROM Users 
LEFT JOIN Rides 
ON Users.user_id = Rides.user_id
GROUP BY Users.user_id , name
ORDER BY Users.user_id