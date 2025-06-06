# Write your MySQL query statement below
WITH CTE AS (
    SELECT *
    FROM STUDENTS
    CROSS JOIN SUBJECTS
)
SELECT C.STUDENT_ID, C.STUDENT_NAME, C.SUBJECT_NAME, COALESCE(E.ATTENDED_EXAMS, 0) AS ATTENDED_EXAMS
FROM CTE C
LEFT JOIN (
    SELECT STUDENT_ID, SUBJECT_NAME, COUNT(*) AS ATTENDED_EXAMS
    FROM EXAMINATIONS
    GROUP BY STUDENT_ID, SUBJECT_NAME
) E
ON C.STUDENT_ID = E.STUDENT_ID
AND C.SUBJECT_NAME = E.SUBJECT_NAME
WHERE 1=1
GROUP BY C.STUDENT_ID, C.STUDENT_NAME, C.SUBJECT_NAME
ORDER BY C.STUDENT_ID, C.STUDENT_NAME
