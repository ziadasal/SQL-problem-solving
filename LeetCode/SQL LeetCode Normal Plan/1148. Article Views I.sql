/* Write your T-SQL query statement below */
SELECT distinct author_id id 
FROM Views 
WHERE author_id = viewer_id
order by author_id