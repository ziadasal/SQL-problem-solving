CREATE PROCEDURE getUserIDs(@startDate DATE, @endDate DATE, @minAmount INT) AS
BEGIN
    select distinct user_id 
    from purchases 
    where amount >= @minAmount and time_stamp between @startDate and @endDate  
    order by user_id
END