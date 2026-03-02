# Write your MySQL query statement below
SELECT M.employee_id, M.name, COUNT(E.employee_id) as reports_count, ROUND(AVG(E.age),0) as average_age
FROM Employees E
LEFT JOIN Employees M 
ON E.reports_to = M.employee_id
WHERE M.employee_id IS NOT NULL
GROUP BY M.employee_id, M.name
ORDER BY M.employee_id