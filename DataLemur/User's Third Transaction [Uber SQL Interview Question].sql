SELECT user_id , spend , transaction_date 
FROM (
  SELECT * , row_number() over(PARTITION BY user_id ORDER BY transaction_date) rn 
  FROM transactions
) as newTab
WHERE rn = 3