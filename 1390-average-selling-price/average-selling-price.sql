# Write your MySQL query statement below
WITH CTE AS (
    SELECT U.*
    , P.price
    FROM UnitsSold U
    LEFT JOIN Prices P 
    ON U.product_id = P.product_id
    WHERE U.purchase_date BETWEEN P.start_date AND P.end_date
)
SELECT P.product_id, ROUND(COALESCE(SUM(C.units * C.price),0)/COALESCE(SUM(C.units),1),2) as average_price 
FROM (SELECT DISTINCT product_id FROM Prices) P
LEFT JOIN CTE C
ON P.product_id = C.product_id
GROUP BY P.product_id