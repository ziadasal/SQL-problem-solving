/* Write your T-SQL query statement below */
SELECT a.id, a.year, ISNULL(b.npv,0) as npv
FROM Queries a 
LEFT JOIN NPV b 
ON a.id=b.id AND a.year=b.year
ORDER BY a.id