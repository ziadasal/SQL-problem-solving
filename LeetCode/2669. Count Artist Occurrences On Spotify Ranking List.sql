/* Write your T-SQL query statement below */
SELECT artist , COUNT(artist) occurrences
FROM Spotify
GROUP BY artist
ORDER BY occurrences DESC , artist 