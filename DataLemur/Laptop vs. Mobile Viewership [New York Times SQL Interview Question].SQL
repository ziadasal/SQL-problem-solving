SELECT SUM(CASE WHEN device_type ='laptop' THEN 1 ELSE 0 END) laptop_views,
    SUM(CASE WHEN device_type ='laptop' THEN 0 ELSE 1 END) mobile_views
FROM viewership;