/* Write your T-SQL query statement below */
WITH
    CTE
    AS
    (
        SELECT user_id ,
            COUNT(DISTINCT contact_name) contact,
            SUM(CASE WHEN customer_name = contact_name THEN 1 ELSE 0 END ) trust
        FROM Contacts , Customers
        GROUP BY user_id
    )

SELECT invoice_id ,
    customer_name ,
    price ,
    isnull(contact,0) contacts_cnt ,
    isnull(trust,0) trusted_contacts_cnt
FROM Invoices I
    LEFT JOIN CTE c
    ON c.user_id = I.user_id
    LEFT JOIN Customers Cu
    ON i.user_id = cu.customer_id
ORDER BY invoice_id