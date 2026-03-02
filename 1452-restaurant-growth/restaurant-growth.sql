# Write your MySQL query statement below
WITH CTE AS (
    SELECT
    visited_on
    , SUM(amount) amount
    FROM Customer 
    GROUP BY visited_on
)
, CTE2 AS (
SELECT visited_on
, SUM(amount) OVER (ORDER BY visited_on ASC ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as amount
, ROUND(SUM(amount) OVER (ORDER BY visited_on ASC ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)/7,2) as average_amount
, RANK() OVER (ORDER BY visited_on ASC) as rnk
FROM CTE
)
SELECT visited_on, amount, average_amount
FROM CTE2 
WHERE rnk >=7
