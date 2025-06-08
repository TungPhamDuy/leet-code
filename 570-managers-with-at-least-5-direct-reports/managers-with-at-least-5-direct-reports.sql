# Write your MySQL query statement below
# tư duy:
# 1. group by managerId lại rồi đếm tổng số dòng -> số lượng direct report
# 2. join table vừa tính được vào main table với employee id -> trả về name của main table

WITH CTE AS (
    SELECT MANAGERID, COUNT(*) AS DIRECTREPORT
    FROM EMPLOYEE
    GROUP BY MANAGERID
    HAVING DIRECTREPORT >= 5
)
SELECT NAME
FROM EMPLOYEE E
JOIN CTE C
ON E.ID = C.MANAGERID
