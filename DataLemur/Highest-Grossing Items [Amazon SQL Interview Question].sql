WITH CTE AS (
  SELECT CATEGORY , product ,SUM(spend) spend, RANK() OVER(PARTITION BY category ORDER BY SUM(spend) DESC) rk 
  FROM product_spend
  WHERE EXTRACT(year FROM transaction_date) =2022
  GROUP BY category , product
)

SELECT category , product, spend 
FROM CTE
WHERE rk in (1,2)
ORDER BY category, spend DESC

