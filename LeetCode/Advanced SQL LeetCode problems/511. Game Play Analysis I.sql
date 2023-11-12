/* Write your T-SQL query statement below */

Select A.player_id ,
    Min(A.event_date) As first_login
From Activity A
GROUP By A.player_id