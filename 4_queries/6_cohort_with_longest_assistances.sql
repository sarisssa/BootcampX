-- Query the cohort with the longest average duration of assistance requests.

SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average 
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY average DESC
LIMIT 1
