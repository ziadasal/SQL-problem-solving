/* Write your T-SQL query statement below */
SELECT X.id
FROM
    (
  SELECT LAG(temperature, 1) OVER (ORDER BY recordDate ASC) AS prev_temp,
        DATEDIFF(DAY, LAG(recordDate, 1) OVER (ORDER BY recordDate ASC), recordDate) AS DiffinDays, *
    FROM Weather
) X
WHERE X.temperature > X.prev_temp
    AND X.DiffinDays = 1;