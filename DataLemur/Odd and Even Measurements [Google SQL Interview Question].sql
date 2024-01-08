WITH CTE AS (
  SELECT 
         CAST(measurement_time AS DATE) AS measurement_day,
         measurement_value, 
         ROW_NUMBER() OVER(PARTITION BY TO_CHAR(measurement_time, 'MM/DD/YYYY 00:00:00') ORDER BY measurement_time) rk
  FROM measurements
)

SELECT measurement_day , 
    SUM(CASE WHEN rk%2=0 THEN 0 ELSE measurement_value END) odd_sum,
    SUM(CASE WHEN rk%2=0 THEN measurement_value ELSE 0 END) even_sum
FROM CTE
GROUP BY measurement_day
ORDER BY measurement_day
