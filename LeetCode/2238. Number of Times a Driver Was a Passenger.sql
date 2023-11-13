/* Write your T-SQL query statement below */
SELECT A.driver_id ,
    COUNT(DISTINCT B.ride_id) cnt
FROM Rides A
    LEFT JOIN Rides B
    ON A.driver_id = B.passenger_id
GROUP BY A.driver_id 
