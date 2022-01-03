-- Query total number of students from first three cohorts.

SELECT COUNT(id)
FROM students
WHERE cohort_id <= 3;