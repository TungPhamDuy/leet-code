-- Enhance solution
-- vì chỉ tính 1 giá trị thôi nên mình có thể group by để tính luôn
SELECT 
QUERY_NAME
, ROUND(AVG(RATING/POSITION),2) AS QUALITY
, ROUND(
    SUM(CASE
    WHEN RATING < 3
    THEN 1
    ELSE 0
    END) / COUNT(*) *100
    ,2) AS POOR_QUERY_PERCENTAGE
FROM QUERIES
WHERE 1=1
GROUP BY QUERY_NAME