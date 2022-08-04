SELECT t.name as teacher,c.name as cohort, count(a.id) as total_assistances
FROM assistance_requests a
JOIN students s ON student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t on t.id = teacher_id
WHERE c.name = 'JUL02'
GROUP BY t.name,c.name
ORDER BY 3 DESC;