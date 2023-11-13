/* Write your T-SQL query statement below */
SELECT COUNT(St.account_id) accounts_count
FROM Subscriptions Su
    JOIN Streams St
    ON Su.account_id = St.account_id and (year(start_date)=2021 OR year(end_date)=2021)
WHERE year(stream_date)!=2021 OR stream_date not between start_date and end_date   