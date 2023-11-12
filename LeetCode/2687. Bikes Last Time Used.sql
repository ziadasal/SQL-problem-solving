/* Write your T-SQL query statement below */
WITH CTE AS (
    SELECT bike_number , end_time , ROW_NUMBER() over(PARTITION BY bike_number ORDER BY end_time desc ) rk
    FROM Bikes
) 

SELECT bike_number , end_time
FROM CTE
WHERE rk = 1