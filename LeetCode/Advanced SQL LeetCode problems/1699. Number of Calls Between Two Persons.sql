/* Write your T-SQL query statement below */
WITH
    c1
    AS
    (
        SELECT from_id person1 ,
               to_id person2 ,
               duration
        FROM calls
        WHERE from_id<to_id

    union all
            SELECT to_id person1 ,
                from_id person2 ,
                duration
            FROM calls
            WHERE from_id>to_id

    )

SELECT person1, person2 , count(duration) call_count , sum(duration ) total_duration
FROM c1
GROUP BY  person1 , person2
ORDER BY person1 , person2