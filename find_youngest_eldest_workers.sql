SELECT 'ELDEST' AS TYPE, MIN(birthday) AS DATA_VALUE
FROM worker
UNION ALL
SELECT 'YOUNGEST' AS TYPE, MAX(birthday) AS DATA_VALUE
FROM worker;