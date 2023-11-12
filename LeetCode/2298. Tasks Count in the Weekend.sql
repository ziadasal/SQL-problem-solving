/* Write your T-SQL query statement below */
SELECT (SELECT COUNT(*)
    FROM Tasks
    WHERE FORMAT(submit_date,'dddd')='Saturday' OR FORMAT(submit_date,'dddd')='Sunday') weekend_cnt ,
    (SELECT COUNT(*)
    FROM Tasks
    WHERE FORMAT(submit_date,'dddd')!='Saturday' AND FORMAT(submit_date,'dddd')!='Sunday') working_cnt 
