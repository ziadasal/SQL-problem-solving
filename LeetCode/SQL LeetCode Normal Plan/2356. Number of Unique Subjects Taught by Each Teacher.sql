/* Write your T-SQL query statement below */
SELECT teacher_id , COUNT( DISTINCT Subject_id) cnt
FROM Teacher
GROUP BY teacher_id