--Query total number of assignments (note number of assignments must be at least 10) for each day of bootcamp.

SELECT day, COUNT(*) as total_assigments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;