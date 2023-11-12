/* Write your T-SQL query statement below */
SELECT distinct title
FROM Content C
    Join TVProgram TV
    ON C.content_id = TV.content_id
WHERE kids_content = 'Y' and content_type = 'Movies' and program_date between '2020-06-01'and '2020-06-30'
