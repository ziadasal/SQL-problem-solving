CREATE FUNCTION getUserIDs(@startDate DATE, @endDate DATE, @minAmount INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        SELECT isnull(COUNT(DISTINCT user_id),0) user_cnt
    FROM Purchases
    WHERE (time_stamp BETWEEN @startDate AND @endDate ) AND amount >=@minAmount
    );
END