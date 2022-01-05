--Query total number of assistance_requests for a teacher.

SELECT teachers.name, COUNT(assistance_requests.*) AS total_assistances 
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name; 