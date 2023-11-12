/* Write your T-SQL query statement below */
WITH cte AS
    (
        SELECT *, RANK() OVER(ORDER BY date) rk , RANK() OVER(ORDER BY date)-rk_in newRank
        FROM (
                SELECT fail_date  date, 'failed' period_state , RANK() OVER(ORDER BY fail_date) rk_in
                FROM failed
                WHERE fail_date BETWEEN '2019-01-01' AND '2019-12-31'

            UNION ALL

                SELECT success_date date, 'succeeded' period_state , RANK() OVER(ORDER BY success_date) rk_in
                FROM Succeeded
                WHERE success_date BETWEEN '2019-01-01' AND '2019-12-31'

) AS newTab
    )


SELECT period_state , MIN(date) start_date, MAX(date) end_date
FROM cte
GROUP BY period_state,newRank
ORDER BY start_date