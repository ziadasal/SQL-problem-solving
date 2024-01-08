SELECT ROUND(100.00*SUM(CASE WHEN p1.country_id = p2.country_id THEN 0.00 ELSE 1.00 END) / COUNT(call_time)*1.00,1)
FROM phone_calls p
JOIN phone_info p1 
ON p.caller_id = p1.caller_id
JOIN phone_info p2
ON p.receiver_id = p2.caller_id;