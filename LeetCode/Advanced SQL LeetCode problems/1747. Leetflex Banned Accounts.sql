/* Write your T-SQL query statement below */
SELECT distinct l1.account_id
FROM LogInfo L1
JOIN LogInfo L2
ON L1.account_id = L2.account_id AND (l1.ip_address != l2.ip_address)
WHERE (L1.login between l2.login and l2.logout)
order by l1.account_id
