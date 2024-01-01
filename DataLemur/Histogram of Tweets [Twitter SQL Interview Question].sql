WITH CTE AS (
  SELECT user_id , COUNT(msg) num_of_tweets
  FROM tweets
  WHERE DATE_PART('YEAR',tweet_date) = 2022
  GROUP BY user_id
)

SELECT num_of_tweets tweet_bucket , COUNT(user_id) users_num
FROM CTE
GROUP BY num_of_tweets
ORDER BY tweet_bucket