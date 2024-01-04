SELECT age_bucket,
  ROUND(SUM(CASE WHEN activity_type='send' THEN time_spent ELSE 0 END)*100.0/SUM(CASE WHEN activity_type='send' OR activity_type='open'  THEN time_spent ELSE 0 END)*1.0,2) send_perc,
  ROUND(SUM(CASE WHEN activity_type='open' THEN time_spent ELSE 0 END)*100.0/SUM(CASE WHEN activity_type='send' OR activity_type='open'  THEN time_spent ELSE 0 END)*1.0,2) open_perc 
FROM activities
JOIN age_breakdown 
ON activities.user_id = age_breakdown.user_id
GROUP BY age_bucket

