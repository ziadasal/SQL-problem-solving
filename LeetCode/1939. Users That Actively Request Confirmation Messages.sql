/* Write your T-SQL query statement below */

with
    timediff
    AS
    (
        SELECT user_id, time_stamp,
            datediff(second,time_stamp,
  lead(time_stamp) OVER(PARTITION BY user_id ORDER BY time_stamp)) AS timediff
        FROM confirmations
    )

SELECT distinct user_id
FROM timediff
WHERE timediff <= (24*60*60)