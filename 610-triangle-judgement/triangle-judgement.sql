# Write your MySQL query statement below
SELECT *
, CASE
WHEN X+Y<=Z THEN 'No'
WHEN X+Z<=Y THEN 'No'
WHEN Z+Y<=X THEN 'No'
ELSE 'Yes' END AS TRIANGLE
FROM TRIANGLE
