/* Write your T-SQL query statement below */
SELECT X.symbol metal , Y.symbol nonmetal
FROM Elements X ,Elements Y
WHERE X.type = 'Metal' and Y.type = 'Nonmetal'