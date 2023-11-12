SELECT Seat_id
FROM (
SELECT Seat_ID , Free , LAG(Free,1,0) OVER (ORDER BY Seat_ID ASC) PRV ,
        LEAD(free,1,0) OVER (ORDER BY Seat_id ASC) NXT
    FROM Cinema ) K
Where Free = 1 AND (PRV =1 or NXT = 1)
ORDER BY Seat_id ASC