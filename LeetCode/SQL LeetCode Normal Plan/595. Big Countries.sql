/* Write your T-SQL query statement below */
SELECT name, population , area  FROM World
where area >= 3000000 OR population >= 25000000 order by name
