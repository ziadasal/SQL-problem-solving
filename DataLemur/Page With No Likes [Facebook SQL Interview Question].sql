SELECT page_id FROM pages
WHERE page_id not in (SELECT page_id FROM page_likes GROUP BY page_id)
ORDER BY page_id ASC
;