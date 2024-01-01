SELECT *
FROM (
SELECT DISTINCT user_id ,
        EXTRACT(Day FROM MAX(post_date)- MIN(post_date) ) days_between
    FROM posts
    WHERE DATE_PART('YEAR',post_date)=2021
    GROUP BY user_id
) AS newTab
WHERE days_between !=0;