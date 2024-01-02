SELECT EXTRACT(month FROM submit_date) mth , product_id , ROUND(AVG(stars),2) avg_stars
FROM reviews
GROUP BY EXTRACT(month FROM submit_date) , product_id 
ORDER BY mth , product_id