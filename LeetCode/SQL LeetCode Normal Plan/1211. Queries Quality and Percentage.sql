/* Write your T-SQL query statement below */
SELECT 
    query_name, ROUND(AVG(ratio),2) AS quality,
    ROUND(COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM (
    SELECT 
        query_name, rating,
        CAST(rating AS DECIMAL)/ position AS ratio
    FROM 
        Queries
) AS subquery
GROUP BY query_name 
ORDER BY quality DESC;
