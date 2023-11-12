/* Write your T-SQL query statement below */
WITH CTE AS (
        SELECT account_id , day ,
        CASE WHEN type = 'Deposit' THEN amount 
            WHEN type = 'WITHdraw' THEN -amount
        END amount
        FROM Transactions
)

SELECT account_id , day , SUM(amount) Over(PARTITION BY account_id ORDER BY day)  balance 
FROM CTE 
