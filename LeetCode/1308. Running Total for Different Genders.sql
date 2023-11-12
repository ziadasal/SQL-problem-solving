/* Write your T-SQL query statement below */
SELECT gender , day , (
            SELECT sum(score_points) 
            FROM scores s2 
            Where s2.day <=s1.day 
                    AND s1.gender=s2.gender 
                    ) total
FROM scores S1
GROUP BY gender , day 
ORDER BY gender , day