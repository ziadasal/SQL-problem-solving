/* Write your T-SQL query statement below */
WITH
    updated
    AS
    (
        SELECT transaction_id,
            DENSE_RANK() OVER (PARTITION BY CAST(day AS date) ORDER BY amount DESC) AS Rank
        FROM Transactions
    )
SELECT transaction_id
FROM updated
WHERE Rank=1
ORDER BY transaction_id