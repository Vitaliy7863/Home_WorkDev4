SELECT project.id AS project_id, SUM(worker.salary * (EXTRACT(YEAR FROM AGE(FINISH_DATE, START_DATE)) * 12
       + EXTRACT(MONTH FROM AGE(FINISH_DATE, START_DATE)))) AS PRICE
FROM project_worker
JOIN project ON project_worker.project_id = project.id
JOIN worker ON project_worker.worker_id = worker.id
GROUP BY project.id
ORDER BY PRICE DESC;