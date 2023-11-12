/* Write your T-SQL query statement below */
SELECT ad_id,
    (CASE WHEN clicked+viewed=0 THEN 0 ELSE ROUND((clicked/CAST((clicked+viewed) AS FLOAT))*100, 2) END) AS ctr
FROM
    (
SELECT ad_id,
        SUM(ISNULL((CASE WHEN action='Clicked' THEN 1 END),0)) AS clicked,
        SUM(ISNULL((CASE WHEN action='Viewed' THEN 1 END), 0)) AS viewed,
        SUM(ISNULL((CASE WHEN action='Ignored' THEN 1 END),0)) AS ignored
    FROM Ads
    GROUP BY ad_id
) sub_table
ORDER BY ctr DESC, ad_id