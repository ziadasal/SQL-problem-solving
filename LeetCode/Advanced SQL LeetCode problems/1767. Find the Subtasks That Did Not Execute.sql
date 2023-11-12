/* Write your T-SQL query statement below */
WITH rec AS (
    SELECT task_id , 1 As subtask
    FROM Tasks
    
    UNION ALL

    SELECT Tasks.task_id , subtask+1 AS subtask
    FROM rec 
    JOIN Tasks
    ON Tasks.task_id = rec.task_id
    where subtask < Tasks.subtasks_count 
)

SELECT task_id , subtask subtask_id 
FROM rec

EXCEPT 

SELECT * 
FROM Executed