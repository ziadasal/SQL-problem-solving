/* Write your T-SQL query statement below */
WITH
    unpivoted
    AS
    (
        SELECT winner, year, games, count(*) Over(PARTITION BY winner) AS grand_slams_count
        FROM championships 
    UNPIVOT
        (winner FOR games IN (Wimbledon,Fr_open,US_open,Au_open)) AS unpvt
    )


SELECT p.*, grand_slams_count
FROM (SELECT distinct winner, grand_slams_count
    FROM unpivoted) u LEFT JOIN players p
    ON u.winner = p.player_id