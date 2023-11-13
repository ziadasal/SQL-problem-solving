/* Write your T-SQL query statement below */
WITH
    CTE
    AS
    (
        SELECT M.member_id ,
            name ,
            isnull(COUNT(charged_amount ),0)  sum,
            isnull(COUNT(V.visit_id ),0) cnt
        FROM Members M
            LEFT JOIN Visits V
            ON M.member_id = V.member_id
            LEFT JOIN Purchases P
            ON P.visit_id = V.visit_id
        GROUP BY M.member_id,name
    )

SELECT member_id, name ,
    CASE 
        WHEN cnt = 0 THEN 'Bronze'
        WHEN 100*SUM/cnt >= 80 THEN 'Diamond'
        WHEN 100*SUM/cnt >=50 THEN 'Gold'
        ELSE 'Silver' END category
FROM CTE

