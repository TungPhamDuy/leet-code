# Write your MySQL query statement below
# có thể bỏ rows between lun, vì nếu xài order by thì ngầm đi là unbounded preceding + current
# còn nếu không có order by thì là unbounded preceding + unbounded following) vkl thiệt
WITH CTE AS (
SELECT
PERSON_NAME
, SUM(WEIGHT) OVER (ORDER BY TURN ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS ACCUMULATE_WEIGHT
FROM QUEUE
)
SELECT PERSON_NAME
FROM CTE
WHERE 1=1
AND ACCUMULATE_WEIGHT <= 1000
ORDER BY ACCUMULATE_WEIGHT DESC
LIMIT 1

