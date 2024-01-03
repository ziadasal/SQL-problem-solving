WITH CTE AS (
  SELECT app_id ,
        SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) click ,
        SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) impression
  FROM events
  WHERE EXTRACT(YEAR FROM timestamp) = 2022
  GROUP BY app_id
)

SELECT app_id , ROUND(click*100.0/impression,2)
FROM CTE
