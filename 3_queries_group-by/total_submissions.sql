SELECT c.name as cohort, count(*) as total_submissions
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
JOIN assignment_submissions a ON s.id = a.student_id
GROUP BY c.name
ORDER by total_submissions DESC;