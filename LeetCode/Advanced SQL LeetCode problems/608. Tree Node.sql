/* Write your T-SQL query statement below */
SELECT id , Case When p_id is null THEN 'Root' 
                 WHEN id in (select distinct p_id
    from Tree) THEN 'Inner'
                 ELSE 'Leaf' END type
FROM Tree