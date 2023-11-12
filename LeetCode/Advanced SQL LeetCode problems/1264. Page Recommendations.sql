/* Write your T-SQL query statement below */
    SELECT distinct page_id recommended_page
    FROM Likes
    where user_id in (
        SELECT user2_id
        FROM Friendship
        WHERE user1_id =1

    union all
        SELECT user1_id
        FROM Friendship
        WHERE user2_id =1

)

except

    SELECT distinct page_id recommended_page
    FROM Likes
    where user_id =1
