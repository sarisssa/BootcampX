-- Query name and id of all of the students that do not have an email or phone number.

SELECT id, name, cohort_id
FROM students
WHERE email IS NULL; 
OR phone IS NULL; 