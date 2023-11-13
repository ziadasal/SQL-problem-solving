/* Write your T-SQL query statement below */
WITH CTE AS 
(
    SELECT * ,
            DENSE_RANK() OVER(PARTITION BY city_id ORDER BY degree DESC ,day) rk
    FROM Weather
)

SELECT city_id , day , degree 
FROM CTE
WHERE rk = 1 