/* Write your T-SQL query statement below */
WITH quiet AS (
        SELECT student_id,
            DENSE_RANK() OVER(PARTITION BY exam_id ORDER BY score ) min,
            DENSE_RANK() OVER(PARTITION BY exam_id ORDER BY score DESC) max
        FROM Exam
)  

SELECT student_id, student_name
From Student 
WHERE student_id  in (SELECT student_id from quiet  GROUP BY student_id HAVING min(min)!=1 and min(max)!=1)


