# Write your MySQL query statement below
# Tận dụng việc check boolean của SQL, 1 là true, 0 là false, tính sum để đếm
SELECT 'Low Salary' AS CATEGORY, SUM(INCOME<20000) AS accounts_count
FROM ACCOUNTS
UNION 
SELECT 'Average Salary' AS CATEGORY, SUM(INCOME>=20000 AND INCOME<=50000) AS accounts_count
FROM ACCOUNTS
UNION 
SELECT 'High Salary' AS CATEGORY, SUM(INCOME>50000) AS accounts_count
FROM ACCOUNTS