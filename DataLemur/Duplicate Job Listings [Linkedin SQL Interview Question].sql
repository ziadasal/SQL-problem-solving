SELECT COUNT(*)
FROM (
SELECT COUNT(company_id)
FROM job_listings
GROUP BY company_id,title, description
HAVING COUNT(job_id)>1
) AS newTab;

