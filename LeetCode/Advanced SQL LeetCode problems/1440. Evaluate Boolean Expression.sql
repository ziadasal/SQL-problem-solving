/* Write your T-SQL query statement below */
SELECT  left_operand,
        operator,
        right_operand,
        CASE 
            WHEN Operator = '<' AND v1.value < v2.value 
            THEN 'true'
            WHEN Operator = '>' AND v1.value > v2.value 
            THEN 'true'
            WHEN Operator = '=' AND v1.value = v2.value 
            THEN 'true'
            ELSE 'false' 
            END AS Value
FROM Expressions e
JOIN Variables v1 ON e.left_operand = v1.name
JOIN Variables v2 ON e.right_operand = v2.name