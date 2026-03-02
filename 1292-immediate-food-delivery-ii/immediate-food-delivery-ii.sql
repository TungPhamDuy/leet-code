# Write your MySQL query statement below
WITH CTE AS (
    SELECT *
    , CASE
        WHEN order_date = customer_pref_delivery_date THEN 1
        ELSE 0
    END AS FLAG
    , RANK() OVER (PARTITION BY customer_id ORDER BY order_date ASC) AS RNK
    FROM Delivery
)
SELECT
ROUND((SUM(FLAG) / COUNT(customer_id))*100,2) AS immediate_percentage
FROM CTE
WHERE RNK = 1