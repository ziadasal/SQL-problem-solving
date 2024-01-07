SELECT drug , ROUND(AVG(total_Sales - cogs),2) total_profit
FROM pharmacy_sales
GROUP BY drug
ORDER BY total_profit DESC
LIMIT 3