SELECT
  FORMAT(trans_date, 'yyyy-MM') AS month,
        country,
        COUNT(trans_date) AS trans_count,
        SUM(CASE WHEN state like '%approved%' THEN 1 ELSE 0 END) AS approved_count,
        SUM(amount) AS trans_total_amount,
        SUM(CASE WHEN state like '%approved%' THEN amount ELSE 0 END) AS approved_total_amount
    FROM Transactions
    GROUP BY FORMAT(trans_date, 'yyyy-MM'), country
order by month