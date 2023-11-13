/* Write your T-SQL query statement below */
SELECT 
SUM((CASE WHEN B.chest_id IS NOT NULL THEN c.apple_count ELSE 0 END)+b.apple_count) AS apple_count,
SUM((CASE WHEN B.chest_id IS NOT NULL THEN c.orange_count ELSE 0 END)+b.orange_count) AS orange_count
FROM Boxes b
LEFT JOIN Chests c
ON b.chest_id = c.chest_id