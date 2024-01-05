SELECT artist_name, rk 
FROM (
  SELECT artist_name , COUNT(rank) , DENSE_RANK() OVER(ORDER BY COUNT(rank)DESC) rk
  FROM artists
  JOIN songs 
  ON artists.artist_id = songs.artist_id
  JOIN global_song_rank 
  ON songs.song_id = global_song_rank.song_id
  WHERE rank<=10
  GROUP BY artist_name 
) as NewTab
WHERE rk <=5
ORDER BY  rk 