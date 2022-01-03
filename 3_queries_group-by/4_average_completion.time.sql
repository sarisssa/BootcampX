--Query total number of assignment submissions for each cohort.

SELECT cohorts.name as cohort, COUNT(assignment_submissions.id) as total_submissions
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohort
ORDER BY total_submissions DESC;