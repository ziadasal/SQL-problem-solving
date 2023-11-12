/* Write your T-SQL query statement below */
SELECT u.name , SUM(t.amount) AS balance
FROM Users AS u
    INNER JOIN Transactions t on u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000