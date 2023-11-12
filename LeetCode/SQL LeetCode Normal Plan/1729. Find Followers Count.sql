/* Write your T-SQL query statement below */
SELECT user_id , COUNT(user_id) followers_count
FROM Followers
GROUP BY user_id