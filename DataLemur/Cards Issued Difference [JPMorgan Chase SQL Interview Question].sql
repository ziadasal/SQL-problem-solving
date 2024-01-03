SELECT card_name , MAX(issued_amount) - MIN(issued_amount) difference
FROM monthly_cards_issued
GROUP BY card_name 
ORDER BY difference DESC;