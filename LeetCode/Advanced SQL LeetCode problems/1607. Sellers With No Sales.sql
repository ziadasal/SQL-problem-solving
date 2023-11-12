/* Write your T-SQL query statement below */
SELECT
    Seller.seller_name
FROM Seller
    LEFT JOIN Orders ON Seller.seller_id = Orders.seller_id
GROUP BY  Seller.seller_name
HAVING sum(CASE WHEN year(Orders.sale_date)=2020 THEN 1 ELSE 0 END) = 0