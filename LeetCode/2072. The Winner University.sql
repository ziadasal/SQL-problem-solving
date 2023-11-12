/* Write your T-SQL query statement below */
Declare @count_N INT , @count_C INT

SET @count_N = (SELECT COUNT(score) FROM NewYork WHERE score>=90 )
SET @count_C = (SELECT COUNT(score) FROM California WHERE score>=90 )

SELECT CASE WHEN @count_N>@count_C THEN 'New York University' 
            WHEN @count_N<@count_C THEN 'California University'
            ELSE 'No Winner' END Winner
