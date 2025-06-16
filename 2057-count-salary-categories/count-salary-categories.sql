# Write your MySQL query statement below
WITH CTE AS (
    SELECT *
    , CASE
    WHEN INCOME < 20000 THEN 'Low Salary'
    WHEN INCOME BETWEEN 20000 AND 50000 THEN 'Average Salary'
    ELSE 'High Salary'
    END AS CATEGORY
    FROM ACCOUNTS
)
, CAL AS (
    SELECT * 
    , CASE WHEN CATEGORY = 'Low Salary' THEN 1 ELSE 0 END AS LOW
    , CASE WHEN CATEGORY = 'Average Salary' THEN 1 ELSE 0 END AS AVERAGE
    , CASE WHEN CATEGORY = 'High Salary' THEN 1 ELSE 0 END AS HIGH
    FROM CTE
)
SELECT 'Low Salary' AS CATEGORY, SUM(LOW) AS accounts_count
FROM CAL
UNION
SELECT 'Average Salary' AS CATEGORY, SUM(AVERAGE) AS accounts_count
FROM CAL
UNION
SELECT 'High Salary' AS CATEGORY, SUM(HIGH) AS accounts_count
FROM CAL