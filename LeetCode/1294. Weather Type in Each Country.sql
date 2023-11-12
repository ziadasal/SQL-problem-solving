/* Write your T-SQL query statement below */
WITH CTE AS (
    SELECT country_name , AVG(weather_state*1.0) avg
    FROM Weather W
    JOIN Countries C
    ON W.country_id = C.country_id
    WHERE FORMAT(day,'MM-yyyy') ='11-2019'
    GROUP BY country_name
)

SELECT country_name , CASE WHEN avg <= 15 THEN 'Cold' WHEN avg >=25 THEN 'Hot' ELSE 'Warm' END weather_type 
FROM CTE
ORDER BY country_name